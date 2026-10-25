# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c984bf195e9edec3a88add2f6d31b78195ab314` · SHA-256 `d8e64ed3bd9ef461897800c7e79d77e90fbfa9d8ef70593d616304fc8c7b0566`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FullAdderInput.Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FullAdderInput.Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Bitblast/BVExpr/Circuit/Impl/Operations/Add.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.Bitblast.BVExpr.Basic
public import Std.Sat.AIG.LawfulVecOperator
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FullAdderInput.Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b

@[expose] public section

/-!
This module contains the implementation of a bitblaster for `BitVec.add`. The implemented
circuit is a ripple carry adder.
-/

namespace Std.Tactic.BVDecide

open Std.Sat

namespace BVExpr
namespace bitblast

variable [Hashable α] [DecidableEq α]

structure FullAdderInput (aig : AIG α) where
  lhs : AIG.Ref aig
  rhs : AIG.Ref aig
  cin : AIG.Ref aig

namespace FullAdderInput

def cast {aig1 aig2 : AIG α} (val : FullAdderInput aig1) (h : aig1.decls.size ≤ aig2.decls.size) :
    FullAdderInput aig2 :=
  let ⟨lhs, rhs, cin⟩ := val
  ⟨lhs.cast h, rhs.cast h, cin.cast h⟩

@[simp]
theorem lhs_cast {aig1 aig2 : AIG α} (s : FullAdderInput aig1)
    (hcast : aig1.decls.size ≤ aig2.decls.size) :
    (s.cast hcast).lhs = s.lhs.cast hcast := by
  simp [cast]

@[simp]
theorem rhs_cast {aig1 aig2 : AIG α} (s : FullAdderInput aig1)
    (hcast : aig1.decls.size ≤ aig2.decls.size) :
    (s.cast hcast).rhs = s.rhs.cast hcast := by
  simp [cast]

@[simp]
theorem cin_cast {aig1 aig2 : AIG α} (s : FullAdderInput aig1)
    (hcast : aig1.decls.size ≤ aig2.decls.size) :
    (s.cast hcast).cin = s.cin.cast hcast := by
  simp [cast]

end FullAdderInput


def mkFullAdderOut (aig : AIG α) (input : FullAdderInput aig) : AIG.Entrypoint α :=
  -- let subExpr = XOR lhs rhs
  -- out = XOR subExpr cin
  -- subExpr is shared in `mkFullAdderOut` and `mkFullAdderCarry`
  -- Due to automated subterm sharing in the AIG we don't have to ensure this explicitly.
  let ⟨lhs, rhs, cin⟩ := input
  let res := aig.mkXorCached ⟨lhs, rhs⟩
  let aig := res.aig
  let subExprRef := res.ref
  let cin := cin.cast <| AIG.LawfulOperator.le_size (f := AIG.mkXorCached) ..
  aig.mkXorCached ⟨subExprRef, cin⟩

instance : AIG.LawfulOperator α FullAdderInput mkFullAdderOut where
  le_size := by
    intros
    simp only [mkFullAdderOut]
    apply AIG.LawfulOperator.le_size_of_le_aig_size
    apply AIG.LawfulOperator.le_size
  decl_eq := by
    intros
    simp only [mkFullAdderOut]
    rw [AIG.LawfulOperator.decl_eq]
    rw [AIG.LawfulOperator.decl_eq]
    apply AIG.LawfulOperator.lt_size_of_lt_aig_size
    assumption

def mkFullAdderCarry (aig : AIG α) (input : FullAdderInput aig) : AIG.Entrypoint α :=
  -- let subExpr = XOR lhs rhs
  -- cout = OR (AND subExpr cin) (AND lhs rhs)
  -- subExpr is shared in `mkFullAdderOut` and `mkFullAdderCarry`
  -- Due to automated subterm sharing in the AIG we don't have to ensure this explicitly.
  let ⟨lhs, rhs, cin⟩ := input
  let res := aig.mkXorCached ⟨lhs, rhs⟩
  let aig := res.aig
  let subExprRef := res.ref
  have hsub := AIG.LawfulOperator.le_size (f := AIG.mkXorCached) ..
  let lhs := lhs.cast hsub
  let rhs := rhs.cast hsub
  let cin := cin.cast hsub
  let res := aig.mkAndCached ⟨subExprRef, cin⟩
  let aig := res.aig
  let lorRef := res.ref
  have hlor := AIG.LawfulOperator.le_size (f := AIG.mkAndCached) ..
  let lhs := lhs.cast hlor
  let rhs := rhs.cast hlor
  let res := aig.mkAndCached ⟨lhs, rhs⟩
  let aig := res.aig
  let rorRef := res.ref
  have hror := AIG.LawfulOperator.le_size (f := AIG.mkAndCached) ..
  let lorRef := lorRef.cast hror
  aig.mkOrCached ⟨lorRef, rorRef⟩

instance : AIG.LawfulOperator α FullAdderInput mkFullAdderCarry where
  le_size := by
    intros
    simp only [mkFullAdderCarry]
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := AIG.mkOrCached)
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := AIG.mkAndCached)
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := AIG.mkAndCached)
    apply AIG.LawfulOperator.le_size (f := AIG.mkXorCached)

  decl_eq := by
    intros
    simp only [mkFullAdderCarry]
    rw [AIG.LawfulOperator.decl_eq]
    rw [AIG.LawfulOperator.decl_eq]
    rw [AIG.LawfulOperator.decl_eq]
    rw [AIG.LawfulOperator.decl_eq]
    · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkXorCached)
      assumption
    · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkAndCached)
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkXorCached)
      assumption
    · apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkAndCached)
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkAndCached)
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size (f := AIG.mkXorCached)
      assumption

structure FullAdderOutput (old : AIG α) where
  aig : AIG α
  out : AIG.Ref aig
  cout : AIG.Ref aig
  hle : old.decls.size ≤ aig.decls.size

def mkFullAdder (aig : AIG α) (input : FullAdderInput aig) : FullAdderOutput aig :=
  let res := mkFullAdderOut aig input
  let aig := res.aig
  let outRef := res.ref
  have haig1 := AIG.LawfulOperator.le_size (f := mkFullAdderOut) ..
  let input := input.cast haig1
  let res := mkFullAdderCarry aig input
  let aig := res.aig
  let carryRef := res.ref
  have haig2 := AIG.LawfulOperator.le_size (f := mkFullAdderCarry) ..
  let outRef := outRef.cast haig2
  have hle := by
    simp +zetaDelta only
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := mkFullAdderCarry)
    apply AIG.LawfulOperator.le_size (f := mkFullAdderOut)
  ⟨aig, outRef, carryRef, hle⟩

def blastAdd (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
  if input.lhs.countKnown < input.rhs.countKnown then
    blast aig input
  else
    let ⟨lhs, rhs⟩ := input
    blast aig ⟨rhs, lhs⟩
where
  blast (aig : AIG α) (input : AIG.BinaryRefVec aig w) : AIG.RefVecEntry α w :=
    let cin := aig.mkConstCached false
    let ⟨lhs, rhs⟩ := input
    go aig lhs rhs 0 (by omega) cin (.emptyWithCapacity w)

  go (aig : AIG α) (lhs rhs : AIG.RefVec aig w) (curr : Nat) (hcurr : curr ≤ w) (cin : AIG.Ref aig)
      (s : AIG.RefVec aig curr) :
      AIG.RefVecEntry α w :=
    if hidx : curr < w then
      let lin := lhs.get curr hidx
      let rin := rhs.get curr hidx
      let res := mkFullAdder aig ⟨lin, rin, cin⟩
      let aig := res.aig
      let outRef := res.out
      let carryRef := res.cout
      let s := s.cast res.hle
      let lhs := lhs.cast res.hle
      let rhs := rhs.cast res.hle
      let s := s.push outRef
      go aig lhs rhs (curr + 1) (by omega) carryRef s
    else
      have hcurr : curr = w := by omega
      ⟨aig, hcurr ▸ s⟩
  termination_by w - curr

namespace blastAdd

theorem go_le_size (aig : AIG α) (curr : Nat) (hcurr : curr ≤ w) (cin : AIG.Ref aig)
    (s : AIG.RefVec aig curr) (lhs rhs : AIG.RefVec aig w) :
    aig.decls.size ≤ (go aig lhs rhs curr hcurr cin s).aig.decls.size := by
  unfold go
  dsimp only
  split
  · refine Nat.le_trans ?_ (by apply go_le_size)
    unfold mkFullAdder
    dsimp only
    apply AIG.LawfulOperator.le_size_of_le_aig_size (f := mkFullAdderCarry)
    apply AIG.LawfulOperator.le_size (f := mkFullAdderOut)
  · simp
termination_by w - curr

theorem go_decl_eq (aig : AIG α) (curr : Nat) (hcurr : curr ≤ w) (cin : AIG.Ref aig)
    (s : AIG.RefVec aig curr) (lhs rhs : AIG.RefVec aig w) :
    ∀ (idx : Nat) (h1) (h2),
        (go aig lhs rhs curr hcurr cin s).aig.decls[idx]'h2 = aig.decls[idx]'h1 := by
  generalize hgo : go aig lhs rhs curr hcurr cin s = res
  unfold go at hgo
  dsimp only at hgo
  split at hgo
  next h =>
    rw [← hgo]
    intro idx h1 h2
    have h3 : idx < (mkFullAdderOut aig { lhs := lhs.get curr h, rhs := rhs.get curr h, cin := cin }).aig.decls.size := by
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size
      exact h1
    have h4 : idx < (mkFullAdder aig { lhs := lhs.get curr h, rhs := rhs.get curr h, cin := cin }).aig.decls.size := by
      apply AIG.LawfulOperator.lt_size_of_lt_aig_size
      exact h3
    rw [go_decl_eq (w := w) (curr := curr + 1) (h1 := h4)]
    simp only [mkFullAdder]
    rw [AIG.LawfulOperator.decl_eq (f := mkFullAdderCarry) (h1 := h3)]
    rw [AIG.LawfulOperator.decl_eq (f := mkFullAdderOut)]
  · simp [← hgo]
termination_by w - curr

instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blast where
  le_size := by
    intros
    simp only [blast]
    apply go_le_size
  decl_eq := by
    intros
    simp only [blast]
    rw [go_decl_eq]

end blastAdd

instance : AIG.LawfulVecOperator α AIG.BinaryRefVec blastAdd where
  le_size := by
    intros
    unfold blastAdd
    split <;> apply AIG.LawfulVecOperator.le_size (f := blastAdd.blast)
  decl_eq := by
    intros
    unfold blastAdd
    split <;> rw [AIG.LawfulVecOperator.decl_eq (f := blastAdd.blast)]


end bitblast
end BVExpr

end Std.Tactic.BVDecide
```
