# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExclamation.Variantf98b19966930a809e6784d95d9a2e8ee02339f7084465e00b76d37918f0b3f14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5935d32048c321878b7262266ef7941ab93ee7ca` · SHA-256 `f98b19966930a809e6784d95d9a2e8ee02339f7084465e00b76d37918f0b3f14`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joshua Clune. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joshua Clune
-/
import Mathlib.Init
import Lean.Elab.Tactic.ElabTerm

/-! # `clear!` tactic -/

namespace Mathlib.Tactic
open Lean Meta Elab.Tactic

/-- A variant of `clear` which clears not only the given hypotheses but also any other hypotheses
    depending on them -/
elab (name := clear!) "clear!" hs:(ppSpace colGt ident)* : tactic => do
  let fvarIds ← getFVarIds hs
  liftMetaTactic1 fun goal ↦ do
    goal.tryClearMany <| (← collectForwardDeps (fvarIds.map .fvar) true).map (·.fvarId!)

end Mathlib.Tactic
```
