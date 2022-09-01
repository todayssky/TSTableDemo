//
//  ContentView.swift
//  Shared
//
//  Created by todayssky on 2022/08/31.
//

import SwiftUI
import TSTable

struct ContentView: View {
    @State var selection: TSTablePerson?
    var body: some View {
        VStack {
            TSTableView(
                elements: TSTablePerson.getMock(),
                selection: $selection,
                TSTableColumn(name: "name", value: \.givenName),
                TSTableColumn(name: "familyName", value: \.familyName),
                TSTableColumn(name: "emailAddress", value: \.emailAddress, widthRatio: 0.5)
            )
            .font(.footnote)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
