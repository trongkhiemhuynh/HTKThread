//
//  ViewController.swift
//  DesignPatternTest
//
//  Created by macOS on 11/5/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        gcdTest()
    }

}

extension ViewController: ThreadTest {
    func gcdTest() {
        let serialQueue = DispatchQueue(label: "com.serial")
        let concurrentQueue = DispatchQueue(label: "com.concurrent", qos: .default, attributes: .concurrent, autoreleaseFrequency: .never, target: nil)
        
        for i in 1...1000 {
            serialQueue.async {
                print("🦄 \(i)")
            }
        }
        
        for j in Range(uncheckedBounds: (1, 100)) {
            concurrentQueue.async {
                print("🦁 \(j)")
            }
        }
        
    }
    
    func operationTest() {
        
    }
    
    func timerTest() {
        
    }
    
    
}
