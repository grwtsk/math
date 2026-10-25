# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eq.Variantd3f391cbc796afbfae915cb486147dcf4d5980a2d0561df8c5bdad4ffc64c0e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08693b1edeb467dc26c291949db84f18ca9392e1` · SHA-256 `d3f391cbc796afbfae915cb486147dcf4d5980a2d0561df8c5bdad4ffc64c0e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Eq
import Init.Data.BitVec.Bootstrap

@[expose] public section

/-!
This module contains the verification of the `BitVec` equality bitblaster from `Impl.Operations.Eq`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVPred

variable [Hashable α] [DecidableEq α]

theorem mkEq_denote_eq (aig : AIG α) (pair : AIG.BinaryRefVec aig w) (assign : α → Bool)
    (lhs rhs : BitVec w)
    (hleft : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, pair.lhs.get idx hidx, assign⟧ = lhs.getLsbD idx)
    (hright : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, pair.rhs.get idx hidx, assign⟧ = rhs.getLsbD idx) :
    ⟦mkEq aig pair, assign⟧ = (lhs == rhs) := by
  unfold mkEq
  rw [Bool.eq_iff_iff]
  simp only [RefVec.denote_fold_and, RefVec.denote_zip, denote_mkBEqCached, beq_iff_eq]
  constructor
  · intro h
    ext i h'
    rw [← BitVec.getLsbD_eq_getElem, ← BitVec.getLsbD_eq_getElem, ← hleft, ← hright]
    · simp [h, h']
    · omega
    · omega
  · intro h idx hidx
    rw [hleft, hright]
    simp [h]

end BVPred

end Std.Tactic.BVDecide
```
