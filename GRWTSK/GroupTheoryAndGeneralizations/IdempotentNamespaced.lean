-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.IsIdempotentElem.Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.IsIdempotentElem.Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421","mathematical_subject":"Algebra.Groups","original_sha256":"0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Idempotent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Commute.Defs
import Mathlib.Algebra.Group.Hom.Defs
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Data.Subtype
import Mathlib.Tactic.Conv

/-!
# Idempotents

This file defines idempotents for an arbitrary multiplication and proves some basic results,
including:

* `IsIdempotentElem.mul_of_commute`: In a semigroup, the product of two commuting idempotents is
  an idempotent;
* `IsIdempotentElem.pow_succ_eq`: In a monoid `a ^ (n+1) = a` for `a` an idempotent and `n` a
  natural number.

## Tags

projection, idempotent
-/


namespace GRWTSK.Algebra.GroupTheory.IsIdempotentElem.Variant0f9f0a974b293222b49567b474d676087a346d70643dc1b73c986b0f5eeae421

assert_not_exists GroupWithZero

variable {M N S : Type*}

/-- An element `a` is said to be idempotent if `a * a = a`. -/
def IsIdempotentElem [Mul M] (a : M) : Prop := a * a = a

namespace IsIdempotentElem
section Mul
variable [Mul M] {a : M}

lemma of_isIdempotent [Std.IdempotentOp (α := M) (· * ·)] (a : M) : IsIdempotentElem a :=
  Std.IdempotentOp.idempotent a

lemma eq (ha : IsIdempotentElem a) : a * a = a := ha

end Mul

section Semigroup
variable [Semigroup S] {a b : S}

lemma mul_of_commute (hab : Commute a b) (ha : IsIdempotentElem a) (hb : IsIdempotentElem b) :
    IsIdempotentElem (a * b) := by rw [IsIdempotentElem, hab.symm.mul_mul_mul_comm, ha.eq, hb.eq]

end Semigroup

section CommSemigroup
variable [CommSemigroup S] {a b : S}

lemma mul (ha : IsIdempotentElem a) (hb : IsIdempotentElem b) : IsIdempotentElem (a * b) :=
  ha.mul_of_commute (.all ..) hb

end CommSemigroup

section MulOneClass
variable [MulOneClass M] {a : M}

lemma one : IsIdempotentElem (1 : M) := mul_one _

instance : One {a : M // IsIdempotentElem a} where one := ⟨1, one⟩

@[simp, norm_cast] lemma coe_one : ↑(1 : {a : M // IsIdempotentElem a}) = (1 : M) := rfl

end MulOneClass

section Monoid
variable [Monoid M] {a : M}

lemma pow (n : ℕ) (h : IsIdempotentElem a) : IsIdempotentElem (a ^ n) :=
  Nat.recOn n ((pow_zero a).symm ▸ one) fun n _ =>
    show a ^ n.succ * a ^ n.succ = a ^ n.succ by
      conv_rhs => rw [← h.eq]
      rw [← sq, ← sq, ← pow_mul, ← pow_mul']

lemma pow_succ_eq (n : ℕ) (h : IsIdempotentElem a) : a ^ (n + 1) = a :=
  Nat.recOn n ((Nat.zero_add 1).symm ▸ pow_one a) fun n ih => by rw [pow_succ, ih, h.eq]

theorem iff_eq_one_of_isUnit (h : IsUnit a) : IsIdempotentElem a ↔ a = 1 where
  mp idem := by
    have ⟨q, eq⟩ := h.exists_left_inv
    rw [← eq, ← idem.eq, ← mul_assoc, eq, one_mul, idem.eq]
  mpr := by rintro rfl; exact .one

end Monoid

section CancelMonoid
variable [CancelMonoid M] {a : M}

@[simp] lemma iff_eq_one : IsIdempotentElem a ↔ a = 1 := by simp [IsIdempotentElem]

end CancelMonoid

lemma map {M N F} [Mul M] [Mul N] [FunLike F M N] [MulHomClass F M N] {e : M}
    (he : IsIdempotentElem e) (f : F) : IsIdempotentElem (f e) := by
  rw [IsIdempotentElem, ← map_mul, he.eq]

end IsIdempotentElem
