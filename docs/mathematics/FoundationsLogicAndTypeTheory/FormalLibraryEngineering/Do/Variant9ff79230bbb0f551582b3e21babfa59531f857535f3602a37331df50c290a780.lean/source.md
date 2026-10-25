# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Do.Variant9ff79230bbb0f551582b3e21babfa59531f857535f3602a37331df50c290a780

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8e16c9f8b2cd0fe90c30ecbf0fdf509046e2f28` · SHA-256 `9ff79230bbb0f551582b3e21babfa59531f857535f3602a37331df50c290a780`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.ProofMode
public import Std.Tactic.Do.Syntax

@[expose] public section

/-!
This directory contains the syntax definition for tactics related to the proof mode of `Std.Do.SPred`.
Their builtin implementation lives in `Lean.Elab.Tactic.Do` to enable using the tactics without
public importing `Lean`.
-/
```
