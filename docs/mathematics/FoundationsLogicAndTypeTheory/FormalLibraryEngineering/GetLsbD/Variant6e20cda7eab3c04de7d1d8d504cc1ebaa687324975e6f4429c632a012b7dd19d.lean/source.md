# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLsbD.Variant6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24e5b66806fdc4b1a08221f76479e8e2883b7dc8` · SHA-256 `6e20cda7eab3c04de7d1d8d504cc1ebaa687324975e6f4429c632a012b7dd19d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Lemmas.Basic
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.GetLsbD
import Init.Data.BitVec.Bootstrap
import Init.Omega

@[expose] public section

/-!
This module contains the verification of the `BitVec.getLsb` bitblaster from `Impl.Operations.Extract`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat
open Std.Sat.AIG

namespace BVPred

variable [Hashable α] [DecidableEq α]

theorem denote_getD_eq_getLsbD (aig : AIG α) (assign : α → Bool) (x : BitVec w)
    (xv : AIG.RefVec aig w) (falseRef : AIG.Ref aig)
    (hx : ∀ idx hidx, ⟦aig, xv.get idx hidx, assign⟧ = x.getLsbD idx)
    (hfalse : ⟦aig, falseRef, assign⟧ = false) :
    ∀ idx, ⟦aig, xv.getD idx falseRef, assign⟧ = x.getLsbD idx := by
  intro idx
  rw [AIG.RefVec.getD]
  split
  · rw [hx]
  · rw [hfalse]
    symm
    apply BitVec.getLsbD_of_ge
    omega

@[simp]
theorem denote_blastGetLsbD (aig : AIG α) (target : GetLsbDTarget aig) (assign : α → Bool) :
    ⟦aig, blastGetLsbD aig target, assign⟧
      =
    if h : target.idx < target.w then
      ⟦aig, target.vec.get target.idx h, assign⟧
    else
      false := by
  rcases target with ⟨expr, idx⟩
  unfold blastGetLsbD
  dsimp only
  split <;> simp

end BVPred

end Std.Tactic.BVDecide
```
