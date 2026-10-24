# Complete source: GRWTSK.Algebra.Basic.Variantbb8172e23f18c66fc5148d5632334518023ff17fddee5a799f2195e01e82f32c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acee93a2d43697d00b8343167d82261b22798d60` · SHA-256 `3fdc8769cf4a9d336b274c649cdc9b0a69750a6af765c43ed569e8cc3c3381e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MulLeft.Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MulLeft.Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Ring/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Yury Kudryashov, Neil Strickland
-/
import Mathlib.Algebra.Ring.Defs
import Mathlib.Algebra.Hom.Group
import Mathlib.Algebra.Opposites


namespace GRWTSK.Algebra.MulLeft.Variantc5f2b27ceb207dea0915a4584bfeb1f70883f1081105c4e9868c8c62ba9e5d77

#align_import algebra.ring.basic from "leanprover-community/mathlib"@"2ed7e4aec72395b6a7c3ac4ac7873a7a43ead17c"

/-!
# Semirings and rings

This file gives lemmas about semirings, rings and domains.
This is analogous to `Algebra.Group.Basic`,
the difference being that the former is about `+` and `*` separately, while
the present file is about their interaction.

For the definitions of semirings and rings see `Algebra.Ring.Defs`.
-/

set_option autoImplicit true

open Function

namespace AddHom

/-- Left multiplication by an element of a type with distributive multiplication is an `AddHom`. -/
@[simps (config := { fullyApplied := false })]
def mulLeft [Distrib R] (r : R) : AddHom R R :=
  ⟨(· * ·) r, mul_add r⟩
#align add_hom.mul_left AddHom.mulLeft
#align add_hom.mul_left_apply AddHom.mulLeft_apply

/-- Left multiplication by an element of a type with distributive multiplication is an `AddHom`. -/
@[simps (config := { fullyApplied := false })]
def mulRight [Distrib R] (r : R) : AddHom R R :=
  ⟨fun a => a * r, fun _ _ => add_mul _ _ r⟩
#align add_hom.mul_right AddHom.mulRight
#align add_hom.mul_right_apply AddHom.mulRight_apply

end AddHom

section AddHomClass

variable {F : Type*} [NonAssocSemiring α] [NonAssocSemiring β] [AddHomClass F α β]

set_option linter.deprecated false in
/-- Additive homomorphisms preserve `bit0`. -/
@[deprecated, simp]
theorem map_bit0 (f : F) (a : α) : (f (bit0 a) : β) = bit0 (f a) :=
  map_add _ _ _
#align map_bit0 map_bit0

end AddHomClass

namespace AddMonoidHom

/-- Left multiplication by an element of a (semi)ring is an `AddMonoidHom` -/
def mulLeft [NonUnitalNonAssocSemiring R] (r : R) : R →+ R where
  toFun := (r * ·)
  map_zero' := mul_zero r
  map_add' := mul_add r
#align add_monoid_hom.mul_left AddMonoidHom.mulLeft

@[simp]
theorem coe_mulLeft [NonUnitalNonAssocSemiring R] (r : R) :
    (mulLeft r : R → R) = HMul.hMul r :=
  rfl
#align add_monoid_hom.coe_mul_left AddMonoidHom.coe_mulLeft

/-- Right multiplication by an element of a (semi)ring is an `AddMonoidHom` -/
def mulRight [NonUnitalNonAssocSemiring R] (r : R) : R →+ R where
  toFun a := a * r
  map_zero' := zero_mul r
  map_add' _ _ := add_mul _ _ r
#align add_monoid_hom.mul_right AddMonoidHom.mulRight

@[simp]
theorem coe_mulRight [NonUnitalNonAssocSemiring R] (r : R) :
    (mulRight r) = (· * r) :=
  rfl
#align add_monoid_hom.coe_mul_right AddMonoidHom.coe_mulRight

theorem mulRight_apply [NonUnitalNonAssocSemiring R] (a r : R) :
    mulRight r a = a * r :=
  rfl
#align add_monoid_hom.mul_right_apply AddMonoidHom.mulRight_apply

end AddMonoidHom

section HasDistribNeg

section Mul

variable [Mul α] [HasDistribNeg α]

open MulOpposite

instance hasDistribNeg : HasDistribNeg αᵐᵒᵖ :=
  { MulOpposite.involutiveNeg _ with
    neg_mul := fun _ _ => unop_injective <| mul_neg _ _,
    mul_neg := fun _ _ => unop_injective <| neg_mul _ _ }

end Mul

section Group

variable [Group α] [HasDistribNeg α]

@[simp]
theorem inv_neg' (a : α) : (-a)⁻¹ = -a⁻¹ := by
  rw [eq_comm, eq_inv_iff_mul_eq_one, neg_mul, mul_neg, neg_neg, mul_left_inv]
#align inv_neg' inv_neg'

end Group

end HasDistribNeg

section NonUnitalCommRing

variable [NonUnitalCommRing α] {a b c : α}

attribute [local simp] add_assoc add_comm add_left_comm mul_comm

/-- Vieta's formula for a quadratic equation, relating the coefficients of the polynomial with
  its roots. This particular version states that if we have a root `x` of a monic quadratic
  polynomial, then there is another root `y` such that `x + y` is negative the `a_1` coefficient
  and `x * y` is the `a_0` coefficient. -/
theorem vieta_formula_quadratic {b c x : α} (h : x * x - b * x + c = 0) :
    ∃ y : α, y * y - b * y + c = 0 ∧ x + y = b ∧ x * y = c := by
  have : c = x * (b - x) := (eq_neg_of_add_eq_zero_right h).trans (by simp [mul_sub, mul_comm])
  refine' ⟨b - x, _, by simp, by rw [this]⟩
  rw [this, sub_add, ← sub_mul, sub_self]
set_option linter.uppercaseLean3 false in
#align Vieta_formula_quadratic vieta_formula_quadratic

end NonUnitalCommRing

theorem succ_ne_self [NonAssocRing α] [Nontrivial α] (a : α) : a + 1 ≠ a := fun h =>
  one_ne_zero ((add_right_inj a).mp (by simp [h]))
#align succ_ne_self succ_ne_self

theorem pred_ne_self [NonAssocRing α] [Nontrivial α] (a : α) : a - 1 ≠ a := fun h ↦
  one_ne_zero (neg_injective ((add_right_inj a).mp (by simp [←sub_eq_add_neg, h])))
#align pred_ne_self pred_ne_self

section NoZeroDivisors

variable (α)

lemma IsLeftCancelMulZero.to_noZeroDivisors [Ring α] [IsLeftCancelMulZero α] :
    NoZeroDivisors α :=
{ eq_zero_or_eq_zero_of_mul_eq_zero := @fun x y h ↦ by
    by_cases hx : x = 0
    { left
      exact hx }
    { right
      rw [← sub_zero (x * y), ← mul_zero x, ← mul_sub] at h
      have := (IsLeftCancelMulZero.mul_left_cancel_of_ne_zero) hx h
      rwa [sub_zero] at this } }
#align is_left_cancel_mul_zero.to_no_zero_divisors IsLeftCancelMulZero.to_noZeroDivisors

lemma IsRightCancelMulZero.to_noZeroDivisors [Ring α] [IsRightCancelMulZero α] :
    NoZeroDivisors α :=
{ eq_zero_or_eq_zero_of_mul_eq_zero := @fun x y h ↦ by
    by_cases hy : y = 0
    { right
      exact hy }
    { left
      rw [← sub_zero (x * y), ← zero_mul y, ← sub_mul] at h
      have := (IsRightCancelMulZero.mul_right_cancel_of_ne_zero) hy h
      rwa [sub_zero] at this } }
#align is_right_cancel_mul_zero.to_no_zero_divisors IsRightCancelMulZero.to_noZeroDivisors

instance (priority := 100) NoZeroDivisors.to_isCancelMulZero [Ring α] [NoZeroDivisors α] :
    IsCancelMulZero α :=
{ mul_left_cancel_of_ne_zero := fun ha h ↦ by
    rw [← sub_eq_zero, ← mul_sub] at h
    exact sub_eq_zero.1 ((eq_zero_or_eq_zero_of_mul_eq_zero h).resolve_left ha)
  mul_right_cancel_of_ne_zero := fun hb h ↦ by
    rw [← sub_eq_zero, ← sub_mul] at h
    exact sub_eq_zero.1 ((eq_zero_or_eq_zero_of_mul_eq_zero h).resolve_right hb) }
#align no_zero_divisors.to_is_cancel_mul_zero NoZeroDivisors.to_isCancelMulZero

lemma NoZeroDivisors.to_isDomain [Ring α] [h : Nontrivial α] [NoZeroDivisors α] :
  IsDomain α :=
{ NoZeroDivisors.to_isCancelMulZero α, h with .. }
#align no_zero_divisors.to_is_domain NoZeroDivisors.to_isDomain

instance (priority := 100) IsDomain.to_noZeroDivisors [Ring α] [IsDomain α] :
    NoZeroDivisors α :=
IsRightCancelMulZero.to_noZeroDivisors α
#align is_domain.to_no_zero_divisors IsDomain.to_noZeroDivisors

end NoZeroDivisors
```
