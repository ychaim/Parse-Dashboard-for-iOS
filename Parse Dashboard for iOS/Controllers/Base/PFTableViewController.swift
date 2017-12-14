//
//  PFTableViewController.swift
//  Parse Dashboard for iOS
//
//  Copyright © 2017 Nathan Tannar.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//  Created by Nathan Tannar on 11/21/17.
//

import UIKit

class PFTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func handleError(_ error: String?) {
        let error = error?.capitalized ?? "Unexpected Error"
        let ping = Ping(text: error, style: .danger)
        print(error)
        ping.show(animated: true, duration: 3)
    }
    
    func handleSuccess(_ message: String?) {
        let message = message?.capitalized ?? "Success"
        let toast = Toast(text: message)
        toast.present(navigationController ?? self, animated: true, duration: 3)
    }
}