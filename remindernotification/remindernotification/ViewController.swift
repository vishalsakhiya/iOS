//
//  ViewController.swift
//  remindernotification
//
//  Created by qodors on 13/10/17.
//  Copyright © 2017 qodors. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var datepicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    @IBAction func datepickerdidselectnewdate(_ sender: UIDatePicker) {
        let selectedDate = sender.date
        print("selected date  \(selectedDate)")
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate?.scheduleNotification(at: selectedDate)
    }
}

