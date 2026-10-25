# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LongNames.Variant18663aea25a1da8483980c0d44eaf84c49c210875d077fee577cbe210545afdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `081b0dfe749d67daa8bb3916003257e8b3ab4423` · SHA-256 `18663aea25a1da8483980c0d44eaf84c49c210875d077fee577cbe210545afdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Lean.Name
import Mathlib.Lean.Expr.Basic
import Lean.Elab.Command

/-!
# Commands `#long_names` and `#long_instances`

For finding declarations with excessively long names.
-/

open Lean Meta Elab

/-- Helper function for `#long_names` and `#long_instances`. -/
def printNameHashMap (h : Std.HashMap Name (Array Name)) : IO Unit :=
  for (m, names) in h.toList do
    IO.println "----"
    IO.println <| m.toString ++ ":"
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
      (fun n => n.lastComponentAsString.startsWith "inst" && n.lastComponentAsString.length > N)
    let namesByModule := namesByModule.filter fun m _ => m.getRoot.toString = "Mathlib"
    printNameHashMap namesByModule
```
