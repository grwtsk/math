# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CurrentModule.Varianta5933b2b0b05d52d73b32d22266f4a1d0d3c05e5bb0877895a0ec43878ddbb19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc19ddf2f47f489d19a24bfbda6ba1be58c1e626` · SHA-256 `a5933b2b0b05d52d73b32d22266f4a1d0d3c05e5bb0877895a0ec43878ddbb19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jon Eugster. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jon Eugster
-/
module

import Lake.Load.Manifest

open Lean (Name)

namespace ImportGraph

/-- Read the name of the main module from the `lake-manifest`. -/
public def getCurrentModule : IO Name := do

  match (← Lake.Manifest.load? ⟨"lake-manifest.json"⟩) with
  | none =>
    throw <| IO.userError "import-graph: lake-manifest.json not found; run from a Lake package root"
  | some manifest =>
    -- TODO: This assumes that the `package` and the default `lean_lib`
    -- have the same name up to capitalisation.
    -- Would be better to read the `.defaultTargets` from the
    -- `← getRootPackage` from `Lake`, but I can't make that work with the monads involved.
    return manifest.name.capitalize
```
