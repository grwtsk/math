-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolNotBeqNot.Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BoolNotBeqNot.Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/Normalize/Equal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Data.BitVec.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoolNotBeqNot.Variant302d3bdc3627020dd5150b9fbda08bff821ae6b046e063396d0d51ccd307056a

@[expose] public section

/-!
This module contains the equality simplifying part of the `bv_normalize` simp set.
-/

namespace Std.Tactic.BVDecide
namespace Frontend.Normalize

@[bv_normalize]
theorem Bool.not_beq_not : ∀ (a b : Bool), ((!a) == (!b)) = (a == b) := by
  decide

@[bv_normalize]
theorem BitVec.not_beq_not (a b : BitVec w) : (~~~a == ~~~b) = (a == b) := by
  rw [Bool.eq_iff_iff]
  simp

@[bv_normalize]
theorem BitVec.xor_beq_zero_iff (a b : BitVec w) : (a ^^^ b == 0#w) = (a == b) := by
  rw [Bool.eq_iff_iff]
  simp

@[bv_normalize]
theorem BitVec.zero_beq_xor_iff (a b : BitVec w) : (0#w == a ^^^ b) = (a == b) := by
  rw [Bool.eq_iff_iff, beq_iff_eq, Eq.comm]
  simp

-- used in bv_and_eq_allOnes simproc
theorem BitVec.and_eq_allOnes (a b : BitVec w) : (a &&& b == -1#w) = (a == -1#w && b == -1#w) := by
  rw [Bool.eq_iff_iff, beq_iff_eq, BitVec.neg_one_eq_allOnes]
  simp

theorem BitVec.allOnes_eq_and (a b : BitVec w) : (-1#w == a &&& b) = (a == -1#w && b == -1#w) := by
  rw [Bool.eq_iff_iff, beq_iff_eq, Eq.comm, BitVec.neg_one_eq_allOnes]
  simp

@[bv_normalize]
theorem BitVec.xor_left_inj (a b c : BitVec w) : (a ^^^ c == b ^^^ c) = (a == b) := by
  rw [Bool.eq_iff_iff]
  simp

@[bv_normalize]
theorem BitVec.xor_left_inj' (a b c : BitVec w) : (a ^^^ c == c ^^^ b) = (a == b) := by
  rw [Bool.eq_iff_iff, BitVec.xor_comm c]
  simp

@[bv_normalize]
theorem BitVec.xor_right_inj (a b c : BitVec w) : (c ^^^ a == c ^^^ b) = (a == b) := by
  rw [Bool.eq_iff_iff]
  simp

@[bv_normalize]
theorem BitVec.xor_right_inj' (a b c : BitVec w) : (c ^^^ a == b ^^^ c) = (a == b) := by
  rw [Bool.eq_iff_iff, BitVec.xor_comm c]
  simp

theorem BitVec.add_left_inj (a b c : BitVec w) : (a + c == b + c) = (a == b) := by
  rw [Bool.eq_iff_iff]
  simp

theorem BitVec.add_left_inj' (a b c : BitVec w) : (a + c == c + b) = (a == b) := by
  rw [BitVec.add_comm c b, add_left_inj]

theorem BitVec.add_right_inj (a b c : BitVec w) : (c + a == c + b) = (a == b) := by
  rw [Bool.eq_iff_iff]
  simp

theorem BitVec.add_right_inj' (a b c : BitVec w) : (c + a == b + c) = (a == b) := by
  rw [BitVec.add_comm b c, add_right_inj]

theorem BitVec.add_left_eq_self (a b : BitVec w) : (a + b == b) = (a == 0#w) := by
  rw [Bool.eq_iff_iff]
  simp

theorem BitVec.add_right_eq_self (a b : BitVec w) : (a + b == a) = (b == 0#w) := by
  rw [Bool.eq_iff_iff]
  simp

theorem BitVec.self_eq_add_right (a b : BitVec w) : (a == a + b) = (b == 0#w) := by
  rw [Bool.eq_iff_iff]
  simp

theorem BitVec.self_eq_add_left (a b : BitVec w) : (a == b + a) = (b == 0#w) := by
  rw [Bool.eq_iff_iff]
  simp

@[bv_normalize]
theorem BitVec.eq_sub_iff_add_eq (a b c : BitVec w) : (a == c + (~~~b + 1#w)) = (a + b == c) := by
  rw [Bool.eq_iff_iff, beq_iff_eq, beq_iff_eq, ← BitVec.neg_eq_not_add, ← BitVec.sub_eq_add_neg]
  exact _root_.BitVec.eq_sub_iff_add_eq

@[bv_normalize]
theorem BitVec.eq_neg_add_iff_add_eq (a b c : BitVec w) : (a == (~~~b + 1#w) + c) = (a + b == c) := by
  rw [BitVec.add_comm]
  exact BitVec.eq_sub_iff_add_eq _ _ _

@[bv_normalize]
theorem BitVec.sub_eq_iff_eq_add (a b c : BitVec w) : (a + (~~~b + 1#w) == c) = (a == c + b) := by
  rw [Bool.eq_iff_iff, beq_iff_eq, beq_iff_eq, ← BitVec.neg_eq_not_add, ← BitVec.sub_eq_add_neg]
  exact _root_.BitVec.sub_eq_iff_eq_add

@[bv_normalize]
theorem BitVec.neg_add_eq_iff_eq_add (a b c : BitVec w) : ((~~~a + 1#w) + b == c) = (b == c + a) := by
  rw [BitVec.add_comm]
  exact BitVec.sub_eq_iff_eq_add _ _ _

@[bv_normalize]
theorem Bool.bif_eq_bif (d a b c : Bool) :
    ((bif d then a else b) == (bif d then a else c)) = (d || b == c) := by
  decide +revert

@[bv_normalize]
theorem Bool.not_bif_eq_bif (d a b c : Bool) :
    ((!(bif d then a else b)) == (bif d then a else c)) = (!d && (!b) == c) := by
  decide +revert

@[bv_normalize]
theorem Bool.bif_eq_not_bif (d a b c : Bool) :
    ((bif d then a else b) == (!(bif d then a else c))) = (!d && b == (!c)) := by
  decide +revert

@[bv_normalize]
theorem Bool.bif_eq_bif' (d a b c : Bool) :
    ((bif d then a else c) == (bif d then b else c)) = (!d || a == b) := by
  decide +revert

@[bv_normalize]
theorem Bool.not_bif_eq_bif' (d a b c : Bool) :
    ((!(bif d then a else c)) == (bif d then b else c)) = (d && (!a) == b) := by
  decide +revert

@[bv_normalize]
theorem Bool.bif_eq_not_bif' (d a b c : Bool) :
    ((bif d then a else c) == (!(bif d then b else c))) = (d && a == (!b)) := by
  decide +revert

@[bv_normalize]
theorem BitVec.bif_eq_bif (d : Bool) (a b c : BitVec w) :
    ((bif d then a else b) == (bif d then a else c)) = (d || b == c) := by
  cases d <;> simp

@[bv_normalize]
theorem BitVec.not_bif_eq_bif (d : Bool) (a b c : BitVec w) :
    (~~~(bif d then a else b) == (bif d then a else c)) = (bif d then ~~~a == a else ~~~b == c) := by
  cases d <;> simp

@[bv_normalize]
theorem BitVec.bif_eq_not_bif (d : Bool) (a b c : BitVec w) :
    ((bif d then a else b) == ~~~(bif d then a else c)) = (bif d then a == ~~~a else b == ~~~c) := by
  cases d <;> simp

@[bv_normalize]
theorem BitVec.bif_eq_bif' (d : Bool) (a b c : BitVec w) :
    ((bif d then a else c) == (bif d then b else c)) = (!d || a == b) := by
  cases d <;> simp

@[bv_normalize]
theorem BitVec.not_bif_eq_bif' (d : Bool) (a b c : BitVec w) :
    (~~~(bif d then a else c) == (bif d then b else c)) = (bif d then ~~~a == b else ~~~c == c) := by
  cases d <;> simp

@[bv_normalize]
theorem BitVec.bif_eq_not_bif' (d : Bool) (a b c : BitVec w) :
    ((bif d then a else c) == ~~~(bif d then b else c)) = (bif d then a == ~~~b else c == ~~~c) := by
  cases d <;> simp

-- used for bv_equal_const_not simproc
theorem BitVec.not_eq_comm (a b : BitVec w) : (~~~a == b) = (a == ~~~b) := by
  rw [Bool.eq_iff_iff]
  simp [_root_.BitVec.not_eq_comm]

-- used for bv_equal_const_not simproc
theorem BitVec.not_eq_comm' (a b : BitVec w) : (a == ~~~b) = (b == ~~~a) := by
  rw [Bool.eq_iff_iff, beq_iff_eq, Eq.comm]
  simp [_root_.BitVec.not_eq_comm]


end Frontend.Normalize
end Std.Tactic.BVDecide
