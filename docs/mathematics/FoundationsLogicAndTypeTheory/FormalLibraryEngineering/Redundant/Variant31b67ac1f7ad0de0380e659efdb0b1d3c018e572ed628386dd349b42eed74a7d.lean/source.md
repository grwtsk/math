# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Redundant.Variant31b67ac1f7ad0de0380e659efdb0b1d3c018e572ed628386dd349b42eed74a7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7faa004720b314fce1c4130eac4e0e9509039f66` · SHA-256 `31b67ac1f7ad0de0380e659efdb0b1d3c018e572ed628386dd349b42eed74a7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public import Lean.Environment
public import Lean.Data.NameMap.Basic
public import Lean.CoreM
import ImportGraph.Imports.ImportGraph

open Lean

namespace Lean.Environment

/--
Return the redundant imports (i.e. those transitively implied by another import)
amongst a candidate list of imports.
-/
public partial def findRedundantImports (env : Environment) (imports : Array Name) : NameSet :=
  let run := visit env.importGraph imports
  let (_, seen) := imports.foldl (fun ⟨v, s⟩ n => run v s n) ({}, {})
  seen
where
  visit (Γ) (targets) (visited) (seen) (n) : NameSet × NameSet :=
    if visited.contains n then
      (visited, seen)
    else
      let imports := (Γ.find? n).getD #[]
      let (visited', seen') := imports.foldl (fun ⟨v, s⟩ t => visit Γ targets v s t) (visited, seen)
      (visited'.insert n,
        imports.foldl (fun s t => if targets.contains t then s.insert t else s) seen')

end Lean.Environment

/--
Return the redundant imports (i.e. those transitively implied by another import)
of a specified module (or the current module if `none` is specified).
-/
public def redundantImports (n? : Option Name := none) : CoreM NameSet := do
  let env ← getEnv
  let imports := env.importsOf (n?.getD (env.header.mainModule))
  return env.findRedundantImports imports
```
