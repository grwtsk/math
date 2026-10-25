# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ult.Variant7de57c73ecf7f24a39affd9f398271b6387606b3f61316b97ed014150519da82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f73e91e9db5cbe0814911eb225c0997645a5a86f` · SHA-256 `7de57c73ecf7f24a39affd9f398271b6387606b3f61316b97ed014150519da82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Carry
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Not

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.ult`. The implementation
makes use of the reduction provided by `BitVec.ult_eq_not_carry`.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVPred

variable [Hashable α] [DecidableEq α]

def mkUlt (aig : AIG α) (pair : AIG.BinaryRefVec aig w) : AIG.Entrypoint α :=
  let ⟨lhsRefs, rhsRefs⟩ := pair
  let res := BVExpr.bitblast.blastNot aig rhsRefs
  let aig := res.aig
  let rhsNotRefs := res.vec
  let trueRef := aig.mkConstCached true
  let aig := res.aig
  let lhsRefs := lhsRefs.cast <| by
    apply AIG.LawfulVecOperator.le_size (f := BVExpr.bitblast.blastNot)
  let res := BVExpr.bitblast.mkOverflowBit aig ⟨_, ⟨lhsRefs, rhsNotRefs⟩, trueRef⟩
  let aig := res.aig
  let overflowRef := res.ref
  aig.mkNotCached overflowRef

instance {w : Nat} : AIG.LawfulOperator α (AIG.BinaryRefVec · w) mkUlt where
  le_size := by
    intros
    simp only [mkUlt]
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := AIG.mkNotCached)
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := BVExpr.bitblast.mkOverflowBit)
    apply AIG.LawfulVecOperator.le_size (f := BVExpr.bitblast.blastNot)
  decl_eq := by
    intros
    simp only [mkUlt]
    rw [AIG.LawfulOperator.decl_eq (f := AIG.mkNotCached)]
    rw [AIG.LawfulOperator.decl_eq (f := BVExpr.bitblast.mkOverflowBit)]
    rw [AIG.LawfulVecOperator.decl_eq (f := BVExpr.bitblast.blastNot)]
    · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := BVExpr.bitblast.blastNot)
      assumption
    · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := BVExpr.bitblast.mkOverflowBit)
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := BVExpr.bitblast.blastNot)
      assumption

end BVPred

end Std.Tactic.BVDecide
```
