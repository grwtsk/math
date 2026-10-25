# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Mul.Varianta7ea99f0bf236dd7b5926183d2b61bf07a2c45903d4c424f1070cc0325540da4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07dfb7e530e90a243e48baaa77f9732a785168fd` · SHA-256 `2343a0525cdb94ce5270a2bec6ce8c11014aa7b3886393057bb315d8acd4b4b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastMul.Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BlastMul.Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Mul.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.Add
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Operations.ShiftLeft
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Circuit.Impl.Const
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlastMul.Variant9caf1b364df61eb1d1d1193bb436abafea2a2b5902dff8345205958084620003

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.mul`. The implemented
circuit mirrors the behavior of `BitVec.mulRec`.

Note that the implementation performs a symbolic branch over the bits of the right hand side.
Thus if the right hand side is (partially) known through constant propagation etc. the symbolic
branches will be (partially) constant folded away by the AIG optimizer. The preprocessing of
`blastMul` ensures that the value with more known bits always end up on the right hand side for
this reason.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

variable [Hashable α] [DecidableEq α]

namespace BVExpr
namespace bitblast

def blastMul (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
  if input.lhs.countKnown < input.rhs.countKnown then
    blast aig input
  else
    let ⟨lhs, rhs⟩ := input
    blast aig ⟨rhs, lhs⟩
where
  blast (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
    if h : w = 0 then
      ⟨aig, h ▸ .empty⟩
    else
      have : 0 < w := by omega
      let zero := blastConst aig 0
      let ⟨lhs, rhs⟩ := input
      let res := AIG.RefVec.ite aig ⟨rhs.get 0 (by assumption), lhs, zero⟩
      let aig := res.aig
      let acc := res.vec
      have := AIG.LawfulVecOperator.le_size (f := AIG.RefVec.ite) ..
      let lhs := lhs.cast this
      let rhs := rhs.cast this
      go aig lhs rhs 1 acc

  go (aig : AIG α) (lhs rhs : AIG.RefVec aig w) (curr : Nat) (acc : AIG.RefVec aig w) :
      AIG.RefVecEntry α w :=
    if h : curr < w then
      -- If the rhs is false we can skip this iteration as we would add zero
      if aig.isConstant (rhs.get curr h) false then
        go aig lhs rhs (curr + 1) acc
      else
        let res := blastShiftLeftConst aig ⟨lhs, curr⟩
        let aig := res.aig
        let shifted := res.vec
        have := by apply AIG.LawfulVecOperator.le_size (f := blastShiftLeftConst)
        let lhs := lhs.cast this
        let rhs := rhs.cast this
        let acc := acc.cast this
        let res := blastAdd aig ⟨acc, shifted⟩
        let aig := res.aig
        let added := res.vec
        have := by apply AIG.LawfulVecOperator.le_size (f := blastAdd)
        let lhs := lhs.cast this
        let rhs := rhs.cast this
        let acc := acc.cast this
        let res := AIG.RefVec.ite aig ⟨rhs.get curr h, added, acc⟩
        let aig := res.aig
        let acc := res.vec
        have := by apply AIG.LawfulVecOperator.le_size (f := AIG.RefVec.ite)
        let lhs := lhs.cast this
        let rhs := rhs.cast this
        go aig lhs rhs (curr + 1) acc
    else
      ⟨aig, acc⟩

namespace blastMul

theorem go_le_size {w : Nat} (aig : AIG α) (curr : Nat) (acc : AIG.RefVec aig w)
    (lhs rhs : AIG.RefVec aig w) :
    aig.decls.size ≤ (go aig lhs rhs curr acc).aig.decls.size := by
  unfold go
  split
  · split
    · apply go_le_size
    · dsimp only
      refine Nat.le_trans ?_ (by apply go_le_size)
      apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := AIG.RefVec.ite)
      apply AIG.LawfulVecOperator.le_size_of_le_aig_size (f := blastAdd)
      apply AIG.LawfulVecOperator.le_size (f := blastShiftLeftConst)
  · simp

theorem go_decl_eq {w : Nat} (aig : AIG α) (curr : Nat) (acc : AIG.RefVec aig w)
    (lhs rhs : AIG.RefVec aig w) :
    ∀ (idx : Nat) (h1) (h2),
       (go aig lhs rhs curr acc).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig lhs rhs curr acc = res
  unfold go at hgo
  split at hgo
  · split at hgo
    · rw [← hgo]
      intro idx h1 h2
      rw [go_decl_eq]
    · dsimp only at hgo
      rw [← hgo]
      intro idx h1 h2
      rw [go_decl_eq]
      rw [AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.ite)]
      rw [AIG.LawfulVecOperator.decl_eq (f := blastAdd)]
      rw [AIG.LawfulVecOperator.decl_eq (f := blastShiftLeftConst)]
      · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftLeftConst)
        assumption
      · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastAdd)
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftLeftConst)
        assumption
      · apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := AIG.RefVec.ite)
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastAdd)
        apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := blastShiftLeftConst)
        assumption
  · simp [← hgo]

instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blast where
  le_size := by
    intros
    unfold blast
    split
    · simp
    · dsimp only
      refine Nat.le_trans ?_ (by apply blastMul.go_le_size)
      apply AIG.LawfulVecOperator.le_size (f := AIG.RefVec.ite)
  decl_eq := by
    intros
    unfold blast
    split
    · simp
    · dsimp only
      rw [blastMul.go_decl_eq]
      rw [AIG.LawfulVecOperator.decl_eq (f := AIG.RefVec.ite)]
      apply AIG.LawfulVecOperator.lt_size_of_lt_aig_size (f := AIG.RefVec.ite)
      assumption

end blastMul

instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blastMul where
  le_size := by
    intros
    unfold blastMul
    split <;> apply AIG.LawfulVecOperator.le_size (f := blastMul.blast)
  decl_eq := by
    intros
    unfold blastMul
    split <;> rw [AIG.LawfulVecOperator.decl_eq (f := blastMul.blast)]

end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
