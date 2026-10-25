# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeStar.Variantfc04b05b5c9f1b28c72f184c7830661fee5e49efe3fb54e316f7dd6595bb3b73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35c0d6d1b7faeaa960680470d12411aadb417ba9` · SHA-256 `fc04b05b5c9f1b28c72f184c7830661fee5e49efe3fb54e316f7dd6595bb3b73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Matthew Robert Ballard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Init
import Lean.Elab.Term

/-!
# Support for `Sort*` and `Type*`.

These elaborate as `Sort u` and `Type u` with a fresh implicit universe variable `u`.
-/

open Lean

/-- The syntax `variable (X Y ... Z : Sort*)` creates a new distinct implicit universe variable
for each variable in the sequence. -/
elab "Sort*" : term => do
  let u ← Lean.Meta.mkFreshLevelMVar
  Elab.Term.levelMVarToParam (.sort u)

/-- The syntax `variable (X Y ... Z : Type*)` creates a new distinct implicit universe variable
`> 0` for each variable in the sequence. -/
elab "Type*" : term => do
  let u ← Lean.Meta.mkFreshLevelMVar
  Elab.Term.levelMVarToParam (.sort (.succ u))
```
