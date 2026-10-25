# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CurrentModule.Variant21dd68fac4a866f16f1a60d6c5bf99d3a335e5411d0f214a659c45eee4b7f9f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c7e47342c876d32dfd6d2baf72c743ab7ec105b` · SHA-256 `21dd68fac4a866f16f1a60d6c5bf99d3a335e5411d0f214a659c45eee4b7f9f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
    -- TODO: should this be caught?
    pure .anonymous
  | some manifest =>
    -- TODO: This assumes that the `package` and the default `lean_lib`
    -- have the same name up to capitalisation.
    -- Would be better to read the `.defaultTargets` from the
    -- `← getRootPackage` from `Lake`, but I can't make that work with the monads involved.
    return manifest.name.capitalize
```
