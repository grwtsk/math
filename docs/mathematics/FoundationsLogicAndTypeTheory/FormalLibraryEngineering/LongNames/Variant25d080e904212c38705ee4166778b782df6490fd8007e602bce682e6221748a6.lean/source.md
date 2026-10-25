# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LongNames.Variant25d080e904212c38705ee4166778b782df6490fd8007e602bce682e6221748a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2216e66300ad6e0b2025f7e0f08c0aa454da9074` · SHA-256 `25d080e904212c38705ee4166778b782df6490fd8007e602bce682e6221748a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Lean.Name
import Mathlib.Lean.Expr.Basic

/-!
# Commands `#long_names` and `#long_instances`

For finding declarations with excessively long names.
-/

open Lean Meta Elab

/-- Helper function for `#long_names` and `#long_instances`. -/
def printNameHashMap (h : Std.HashMap Name (Array Name)) : IO Unit :=
  for (m, names) in h.toList do
    IO.println "----"
    IO.println $ m.toString ++ ":"
    for n in names do
      IO.println n

/--
Lists all declarations with a long name, gathered according to the module they are defined in.
Use as `#long_names` or `#long_names 100` to specify the length.
-/
elab "#long_names " N:(num)? : command =>
  Command.runTermElabM fun _ => do
    let N := N.map TSyntax.getNat |>.getD 50
    let namesByModule ← allNamesByModule (fun n => n.toString.length > N)
    let namesByModule := namesByModule.filter fun m _ => m.getRoot.toString = "Mathlib"
    printNameHashMap namesByModule

/--
Lists all instances with a long name beginning with `inst`,
gathered according to the module they are defined in.
This is useful for finding automatically named instances with absurd names.

Use as `#long_names` or `#long_names 100` to specify the length.
-/
elab "#long_instances " N:(num)?: command =>
  Command.runTermElabM fun _ => do
    let N := N.map TSyntax.getNat |>.getD 50
    let namesByModule ← allNamesByModule
      (fun n => n.getString.startsWith "inst" && n.getString.length > N)
    let namesByModule := namesByModule.filter fun m _ => m.getRoot.toString = "Mathlib"
    printNameHashMap namesByModule
```
