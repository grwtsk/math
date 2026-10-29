-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OneSub.Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.OneSub.Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Idempotent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
import Mathlib.Algebra.GroupWithZero.Idempotent
import Mathlib.Algebra.Ring.Defs
import Mathlib.Order.Notation
import Mathlib.Tactic.Convert

/-!
# Idempotent elements of a ring

This file proves result about idempotent elements of a ring, like:
* `IsIdempotentElem.one_sub_iff`: In a (non-associative) ring, `a` is an idempotent if and only if
  `1 - a` is an idempotent.
-/


namespace GRWTSK.Algebra.OneSub.Variant37662801fabb538dee50c732f198384d821eacfd03d7c850ab9a779e23ce18e3

variable {R : Type*}

namespace IsIdempotentElem
section NonAssocRing
variable [NonAssocRing R] {a : R}

lemma one_sub (h : IsIdempotentElem a) : IsIdempotentElem (1 - a) := by
  rw [IsIdempotentElem, mul_sub, mul_one, sub_mul, one_mul, h.eq, sub_self, sub_zero]

@[simp]
lemma one_sub_iff : IsIdempotentElem (1 - a) ↔ IsIdempotentElem a :=
  ⟨fun h => sub_sub_cancel 1 a ▸ h.one_sub, IsIdempotentElem.one_sub⟩

@[simp]
lemma mul_one_sub_self (h : IsIdempotentElem a) : a * (1 - a) = 0 := by
  rw [mul_sub, mul_one, h.eq, sub_self]

@[simp]
lemma one_sub_mul_self (h : IsIdempotentElem a) : (1 - a) * a = 0 := by
  rw [sub_mul, one_mul, h.eq, sub_self]

instance : HasCompl {a : R // IsIdempotentElem a} where compl a := ⟨1 - a, a.prop.one_sub⟩

@[simp] lemma coe_compl (a : {a : R // IsIdempotentElem a}) : ↑aᶜ = (1 : R) - ↑a := rfl

@[simp] lemma compl_compl (a : {a : R // IsIdempotentElem a}) : aᶜᶜ = a := by ext; simp
@[simp] lemma zero_compl : (0 : {a : R // IsIdempotentElem a})ᶜ = 1 := by ext; simp
@[simp] lemma one_compl : (1 : {a : R // IsIdempotentElem a})ᶜ = 0 := by ext; simp

end NonAssocRing

section Semiring
variable [Semiring R] {a b : R}

lemma of_mul_add (mul : a * b = 0) (add : a + b = 1) : IsIdempotentElem a ∧ IsIdempotentElem b := by
  simp_rw [IsIdempotentElem]; constructor
  · conv_rhs => rw [← mul_one a, ← add, mul_add, mul, add_zero]
  · conv_rhs => rw [← one_mul b, ← add, add_mul, mul, zero_add]

end Semiring

section Ring
variable [Ring R] {a b : R}

lemma add_sub_mul_of_commute (h : Commute a b) (hp : IsIdempotentElem a) (hq : IsIdempotentElem b) :
    IsIdempotentElem (a + b - a * b) := by
  convert (hp.one_sub.mul_of_commute ?_ hq.one_sub).one_sub using 1
  · simp_rw [sub_mul, mul_sub, one_mul, mul_one, sub_sub, sub_sub_cancel, add_sub, add_comm]
  · simp_rw [commute_iff_eq, sub_mul, mul_sub, one_mul, mul_one, sub_sub, add_sub, add_comm, h.eq]

end Ring

section CommRing
variable [CommRing R] {a b : R}

lemma add_sub_mul (hp : IsIdempotentElem a) (hq : IsIdempotentElem b) :
    IsIdempotentElem (a + b - a * b) := add_sub_mul_of_commute (.all ..) hp hq

end CommRing
end IsIdempotentElem
