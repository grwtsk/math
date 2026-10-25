# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Not.Variant02f4cf6a908bcbb0a7896e6a8a2e43d6571bc31506431e85c002e470fe931ffc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1842ef79c8dcdda9ebb489ec1590ce16612d419` · SHA-256 `02f4cf6a908bcbb0a7896e6a8a2e43d6571bc31506431e85c002e470fe931ffc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Not

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.not` from `Impl.Operations.Not`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

@[simp]
theorem denote_blastNot (aig : AIG α) (target : RefVec aig w)
    (assign : α → Bool) :
    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastNot aig target).aig, (blastNot aig target).vec.get idx hidx, assign⟧
          =
        !⟦aig, target.get idx hidx, assign⟧ := by
  intro idx hidx
  unfold blastNot
  simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
