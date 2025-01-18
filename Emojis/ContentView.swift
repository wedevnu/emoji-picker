//
//  ContentView.swift
//  Emojis
//
//  Created by Nicole on 1/17/25.
//

import SwiftUI

enum Emojis: String, CaseIterable {
    case monkey = "🙈"
    case vomit = "🤢"
    case nails = "💅"
    case heart = "😍"
}

struct ContentView: View {
    
    @State var emojiDisplay: Emojis = .monkey
    
    var body: some View {
        NavigationView{
            VStack{
                Text(emojiDisplay.rawValue)
                    .font(.system(size:100))
                
                Picker("Select Emoji", selection: $emojiDisplay){
                    ForEach(Emojis.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }.pickerStyle(.segmented)
                    .padding()
            }.navigationTitle("Emoji Picker")
        }
    }
}

#Preview {
    ContentView()
}
