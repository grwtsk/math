# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Neg.Variant4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0695c91e3da17cdb76de5f3c188c4e4f55e2dbe4` · SHA-256 `4a6d5ff93765161068d15c33273c0f10f4fa19a28bfcf058aa10d5222933af5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Const
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Neg
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Not
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Add

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.neg` from `Impl.Operations.Neg`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

theorem denote_blastNeg (aig : AIG α) (value : BitVec w) (target : RefVec aig w)
    (assign : α → Bool)
    (htarget : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, target.get idx hidx, assign⟧ = value.getLsbD idx) :

    ∀ (idx : Nat) (hidx : idx < w),
        ⟦(blastNeg aig target).aig, (blastNeg aig target).vec.get idx hidx, assign⟧
          =
        (-value).getLsbD idx := by
  intro idx hidx
  rw [BitVec.neg_eq_not_add]
  unfold blastNeg
  dsimp only
  rw [denote_blastAdd]
  · intro idx hidx
    simp [hidx, htarget]
  · simp

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
