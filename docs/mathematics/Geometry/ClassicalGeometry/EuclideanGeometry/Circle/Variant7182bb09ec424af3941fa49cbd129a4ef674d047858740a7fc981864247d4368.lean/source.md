# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Circle.Variant7182bb09ec424af3941fa49cbd129a4ef674d047858740a7fc981864247d4368

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bab2ff105264b016bce208fa40cde944fa592aae` · SHA-256 `95d917df5676e30bd0214c97b56edf3079adfae643b80ab80a816934ce43c47c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InjectiveArg.Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.InjectiveArg.Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Complex/Circle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","lake_or_runtime_control","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yury G. Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury G. Kudryashov
-/
import Mathlib.Analysis.Complex.Circle
import Mathlib.Analysis.SpecialFunctions.Complex.Log


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InjectiveArg.Variant25043f727a46a125ddd693558686a2fb39fd100086ccf702e0887115683b82b3

#align_import analysis.special_functions.complex.circle from "leanprover-community/mathlib"@"f333194f5ecd1482191452c5ea60b37d4d6afa08"

/-!
# Maps on the unit circle

In this file we prove some basic lemmas about `expMapCircle` and the restriction of `Complex.arg`
to the unit circle. These two maps define a local equivalence between `circle` and `ℝ`, see
`circle.argLocalEquiv` and `circle.argEquiv`, that sends the whole circle to `(-π, π]`.
-/


open Complex Function Set

open Real

namespace circle

theorem injective_arg : Injective fun z : circle => arg z := fun z w h =>
  Subtype.ext <| ext_abs_arg ((abs_coe_circle z).trans (abs_coe_circle w).symm) h
#align circle.injective_arg circle.injective_arg

@[simp]
theorem arg_eq_arg {z w : circle} : arg z = arg w ↔ z = w :=
  injective_arg.eq_iff
#align circle.arg_eq_arg circle.arg_eq_arg

end circle

theorem arg_expMapCircle {x : ℝ} (h₁ : -π < x) (h₂ : x ≤ π) : arg (expMapCircle x) = x := by
  rw [expMapCircle_apply, exp_mul_I, arg_cos_add_sin_mul_I ⟨h₁, h₂⟩]
#align arg_exp_map_circle arg_expMapCircle

@[simp]
theorem expMapCircle_arg (z : circle) : expMapCircle (arg z) = z :=
  circle.injective_arg <| arg_expMapCircle (neg_pi_lt_arg _) (arg_le_pi _)
#align exp_map_circle_arg expMapCircle_arg

namespace circle

/-- `Complex.arg ∘ (↑)` and `expMapCircle` define a local equivalence between `circle` and `ℝ`
with `source = Set.univ` and `target = Set.Ioc (-π) π`. -/
@[simps (config := { fullyApplied := false })]
noncomputable def argLocalEquiv : LocalEquiv circle ℝ where
  toFun := arg ∘ (↑)
  invFun := expMapCircle
  source := univ
  target := Ioc (-π) π
  map_source' _ _ := ⟨neg_pi_lt_arg _, arg_le_pi _⟩
  map_target' := mapsTo_univ _ _
  left_inv' z _ := expMapCircle_arg z
  right_inv' _ hx := arg_expMapCircle hx.1 hx.2
#align circle.arg_local_equiv circle.argLocalEquiv

/-- `Complex.arg` and `expMapCircle` define an equivalence between `circle` and `(-π, π]`. -/
@[simps (config := { fullyApplied := false })]
noncomputable def argEquiv : circle ≃ Ioc (-π) π where
  toFun z := ⟨arg z, neg_pi_lt_arg _, arg_le_pi _⟩
  invFun := expMapCircle ∘ (↑)
  left_inv _ := argLocalEquiv.left_inv trivial
  right_inv x := Subtype.ext <| argLocalEquiv.right_inv x.2
#align circle.arg_equiv circle.argEquiv

end circle

theorem leftInverse_expMapCircle_arg : LeftInverse expMapCircle (arg ∘ (↑)) :=
  expMapCircle_arg
#align left_inverse_exp_map_circle_arg leftInverse_expMapCircle_arg

theorem invOn_arg_expMapCircle : InvOn (arg ∘ (↑)) expMapCircle (Ioc (-π) π) univ :=
  circle.argLocalEquiv.symm.invOn
#align inv_on_arg_exp_map_circle invOn_arg_expMapCircle

theorem surjOn_expMapCircle_neg_pi_pi : SurjOn expMapCircle (Ioc (-π) π) univ :=
  circle.argLocalEquiv.symm.surjOn
#align surj_on_exp_map_circle_neg_pi_pi surjOn_expMapCircle_neg_pi_pi

theorem expMapCircle_eq_expMapCircle {x y : ℝ} :
    expMapCircle x = expMapCircle y ↔ ∃ m : ℤ, x = y + m * (2 * π) := by
  rw [Subtype.ext_iff, expMapCircle_apply, expMapCircle_apply, exp_eq_exp_iff_exists_int]
  refine' exists_congr fun n => _
  rw [← mul_assoc, ← add_mul, mul_left_inj' I_ne_zero]
  norm_cast
#align exp_map_circle_eq_exp_map_circle expMapCircle_eq_expMapCircle

theorem periodic_expMapCircle : Periodic expMapCircle (2 * π) := fun z =>
  expMapCircle_eq_expMapCircle.2 ⟨1, by rw [Int.cast_one, one_mul]⟩
#align periodic_exp_map_circle periodic_expMapCircle

@[simp]
theorem expMapCircle_two_pi : expMapCircle (2 * π) = 1 :=
  periodic_expMapCircle.eq.trans expMapCircle_zero
#align exp_map_circle_two_pi expMapCircle_two_pi

theorem expMapCircle_sub_two_pi (x : ℝ) : expMapCircle (x - 2 * π) = expMapCircle x :=
  periodic_expMapCircle.sub_eq x
#align exp_map_circle_sub_two_pi expMapCircle_sub_two_pi

theorem expMapCircle_add_two_pi (x : ℝ) : expMapCircle (x + 2 * π) = expMapCircle x :=
  periodic_expMapCircle x
#align exp_map_circle_add_two_pi expMapCircle_add_two_pi

/-- `expMapCircle`, applied to a `Real.Angle`. -/
noncomputable def Real.Angle.expMapCircle (θ : Real.Angle) : circle :=
  periodic_expMapCircle.lift θ
#align real.angle.exp_map_circle Real.Angle.expMapCircle

@[simp]
theorem Real.Angle.expMapCircle_coe (x : ℝ) : Real.Angle.expMapCircle x = _root_.expMapCircle x :=
  rfl
#align real.angle.exp_map_circle_coe Real.Angle.expMapCircle_coe

theorem Real.Angle.coe_expMapCircle (θ : Real.Angle) :
    (θ.expMapCircle : ℂ) = θ.cos + θ.sin * I := by
  induction θ using Real.Angle.induction_on
  simp [Complex.exp_mul_I]
#align real.angle.coe_exp_map_circle Real.Angle.coe_expMapCircle

@[simp]
theorem Real.Angle.expMapCircle_zero : Real.Angle.expMapCircle 0 = 1 := by
  rw [← Real.Angle.coe_zero, Real.Angle.expMapCircle_coe, _root_.expMapCircle_zero]
#align real.angle.exp_map_circle_zero Real.Angle.expMapCircle_zero

@[simp]
theorem Real.Angle.expMapCircle_neg (θ : Real.Angle) :
    Real.Angle.expMapCircle (-θ) = (Real.Angle.expMapCircle θ)⁻¹ := by
  induction θ using Real.Angle.induction_on
  simp_rw [← Real.Angle.coe_neg, Real.Angle.expMapCircle_coe, _root_.expMapCircle_neg]
#align real.angle.exp_map_circle_neg Real.Angle.expMapCircle_neg

@[simp]
theorem Real.Angle.expMapCircle_add (θ₁ θ₂ : Real.Angle) : Real.Angle.expMapCircle (θ₁ + θ₂) =
    Real.Angle.expMapCircle θ₁ * Real.Angle.expMapCircle θ₂ := by
  induction θ₁ using Real.Angle.induction_on
  induction θ₂ using Real.Angle.induction_on
  exact _root_.expMapCircle_add _ _
#align real.angle.exp_map_circle_add Real.Angle.expMapCircle_add

@[simp]
theorem Real.Angle.arg_expMapCircle (θ : Real.Angle) :
    (arg (Real.Angle.expMapCircle θ) : Real.Angle) = θ := by
  induction θ using Real.Angle.induction_on
  rw [Real.Angle.expMapCircle_coe, expMapCircle_apply, exp_mul_I, ← ofReal_cos, ← ofReal_sin, ←
    Real.Angle.cos_coe, ← Real.Angle.sin_coe, arg_cos_add_sin_mul_I_coe_angle]
#align real.angle.arg_exp_map_circle Real.Angle.arg_expMapCircle
```
