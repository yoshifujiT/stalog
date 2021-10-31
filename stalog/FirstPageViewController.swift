//
//  FirstPageViewController.swift
//  stalog
//
//  Created by ToruYoshifuji on 2021/10/31.
//

import Foundation
import UIKit

class FirstPageViewController: UIViewController {

    lazy var button: UIButton = {
        let view = UIButton.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        view.setTitle("次のページへ", for: .normal)
        view.addTarget(self, action: #selector(nextPage(_:)), for: .touchDown)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink

        view.addSubview(button)

        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }

    @objc func nextPage(_ sender: UIButton) {
        let secondPageViewController = SecondPageViewController.init()
        navigationController?.pushViewController(secondPageViewController, animated: true)
    }
}
