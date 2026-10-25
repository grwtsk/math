# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pretty.Variant005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79d34b772d0ec8179062e6290ba37ebcf4c430da` · SHA-256 `005504d9fb64d07d4182cc6082ff91a9f1f5a039c143c1e6cb375d89ec78394b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Evgenia Karunus, Kyle Miller
-/
import Lean.Meta.Basic
import Mathlib.Tactic.Explode.Datatypes

/-!
# Explode command: pretty

This file contains UI code to render the Fitch table.
-/

open Lean
namespace Mathlib.Explode

/--
Given a list of `MessageData`s, make them of equal length.
We need this in order to form columns in our Fitch table.

```lean
padRight ["hi", "hello"] = ["hi   ", "hello"]
```
-/
def padRight (mds : List MessageData) : MetaM (List MessageData) := do
  -- 1. Find the max length of the word in a list
  let mut maxLength := 0
  for md in mds do
    maxLength := max maxLength (← md.toString).length

  -- 2. Pad all words in a list with " "
  let pad (md : MessageData) : MetaM MessageData := do
    let padWidth : Nat := maxLength - (← md.toString).length
    return md ++ "".pushn ' ' padWidth

  mds.mapM pad

/-- Render a particular row of the Fitch table. -/
def rowToMessageData :
    List MessageData → List MessageData → List MessageData → List Entry → MetaM MessageData
  | line :: lines, dep :: deps, thm :: thms, en :: es => do
    let pipes := String.join (List.replicate en.depth "│ ")
    let pipes := match en.status with
      | Status.sintro => s!"├ "
      | Status.intro  => s!"│ {pipes}┌ "
      | Status.cintro => s!"│ {pipes}├ "
      | Status.lam    => s!"│ {pipes}"
      | Status.reg    => s!"│ {pipes}"

    let row := m!"{line}│{dep}│ {thm} {pipes}{en.type}\n"
    return (← rowToMessageData lines deps thms es).compose row
  | _, _, _, _ => return MessageData.nil

/-- Given all `Entries`, return the entire Fitch table. -/
def entriesToMessageData (entries : Entries) : MetaM MessageData := do
  -- ['1', '2', '3']
  let paddedLines ← padRight <| entries.l.map fun entry => m!"{entry.line!}"
  -- ['   ', '1,2', '1  ']
  let paddedDeps ← padRight <| entries.l.map fun entry =>
    String.intercalate "," <| entry.deps.map (fun dep => (dep.map toString).getD "_")
  -- ['p  ', 'hP ', '∀I ']
  let paddedThms ← padRight <| entries.l.map (·.thm)

  rowToMessageData paddedLines paddedDeps paddedThms entries.l

end Explode

end Mathlib
````
