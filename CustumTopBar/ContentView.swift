//
//  ContentView.swift
//  CustumTopBar
//
//  Created by Võ Thanh Sang on 6/30/20.
//

import SwiftUI

struct ContentView: View {
    @State var currentTable = 0
    
    var body: some View {
        
        VStack{
            Picker(selection: $currentTable, label: Text("")) {
                Image(systemName: "house.fill").tag(0)
                Image(systemName: "flame.fill").tag(1)
                Image(systemName: "paperplane.fill").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            .padding(.top, 10)
            Spacer()
            
            if currentTable == 0 {
                page1()
            }
            if currentTable == 1 {
                page2()
            }
            if currentTable == 2 {
                page3()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct page1: View {
    var body: some View {
        Text("Page 1")
    }
}

struct page2: View {
    var body: some View {
        Text("Page 2")
    }
}

struct page3: View {
    var body: some View {
        Text("Page 3")
    }
}
