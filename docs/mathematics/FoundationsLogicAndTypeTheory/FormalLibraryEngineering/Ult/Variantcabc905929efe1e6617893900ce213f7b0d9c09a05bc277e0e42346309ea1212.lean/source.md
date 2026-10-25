# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ult.Variantcabc905929efe1e6617893900ce213f7b0d9c09a05bc277e0e42346309ea1212

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b7e8395e899b37fa8378acf658d4f6563bace2f` · SHA-256 `cabc905929efe1e6617893900ce213f7b0d9c09a05bc277e0e42346309ea1212`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Carry
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Operations.Not
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Ult

@[expose] public section

/-!
This module contains the verification of the bitblaster for `BitVec.ult` from `Impl.Operations.Ult`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVPred

variable [Hashable α] [DecidableEq α]

theorem mkUlt_denote_eq (aig : AIG α) (lhs rhs : BitVec w) (input : BinaryRefVec aig w)
    (assign : α → Bool)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, input.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ⟦mkUlt aig input, assign⟧ = BitVec.ult lhs rhs := by
  rw [BitVec.ult_eq_not_carry]
  unfold mkUlt
  simp only [denote_projected_entry, denote_mkNotCached]
  congr 1
  rw [BVExpr.bitblast.mkOverflowBit_eq_carry (input := ⟨w, _, _⟩) (lhs := lhs) (rhs := ~~~rhs)]
  · simp
  · dsimp only
    intro idx hidx
    rw [AIG.LawfulVecOperator.denote_mem_prefix (f := BVExpr.bitblast.blastNot) (h := ?h)]
    case h => simp [Ref.hgate]
    apply hleft
  · dsimp only
    intro idx hidx
    simp only [hidx, BitVec.getLsbD_eq_getElem, BitVec.getElem_not]
    rw [BVExpr.bitblast.denote_blastNot, hright, BitVec.getLsbD_eq_getElem]

end BVPred

end Std.Tactic.BVDecide
```
