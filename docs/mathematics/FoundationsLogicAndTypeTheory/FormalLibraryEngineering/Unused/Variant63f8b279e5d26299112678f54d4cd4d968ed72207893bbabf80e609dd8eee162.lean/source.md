# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unused.Variant63f8b279e5d26299112678f54d4cd4d968ed72207893bbabf80e609dd8eee162

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdf7073c96116daba1c0fd28f2f9294162ffb783` · SHA-256 `63f8b279e5d26299112678f54d4cd4d968ed72207893bbabf80e609dd8eee162`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.CoreM
import ImportGraph.Graph.TransitiveClosure
import ImportGraph.Imports.ImportGraph
import ImportGraph.Imports.RequiredModules

open Lean

/--
Returns a `List (Name × List Name)` with a key for each module `n` in `amongst`,
whose corresponding value is the list of modules `m` in `amongst` which are transitively imported by `n`,
but no declaration in `n` makes use of a declaration in `m`.
-/
public def unusedTransitiveImports (amongst : List Name) (verbose : Bool := false) : CoreM (List (Name × List Name)) := do
  let env ← getEnv
  let transitiveImports := env.importGraph.transitiveClosure
  let transitivelyRequired ← env.transitivelyRequiredModules' amongst verbose
  amongst.mapM fun n => do return (n,
    let unused := (transitiveImports.find? n).getD {} \ (transitivelyRequired.find? n |>.getD {})
    amongst.filter (fun m => unused.contains m))
```
