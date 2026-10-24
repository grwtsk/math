# Complete source: GRWTSK.Algebra.LinearAlgebra.Bilinear.Varianta4126c3d142545ccb1b169cb6906f324408e5de45b77bdfdacac5e9122463ef8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d741a785bf910ff9325648139dd32f8f6573b67` · SHA-256 `8aaef6855412217209b2b48590ef7b61829e314f341971b77a1c4496638120fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Algebra/Bilinear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Yury Kudryashov
-/
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.Hom.Iterate
import Mathlib.Algebra.Hom.NonUnitalAlg
import Mathlib.LinearAlgebra.TensorProduct


namespace GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225

#align_import algebra.algebra.bilinear from "leanprover-community/mathlib"@"657df4339ae6ceada048c8a2980fb10e393143ec"

/-!
# Facts about algebras involving bilinear maps and tensor products

We move a few basic statements about algebras out of `Algebra.Algebra.Basic`,
in order to avoid importing `LinearAlgebra.BilinearMap` and
`LinearAlgebra.TensorProduct` unnecessarily.
-/


open TensorProduct Module

namespace LinearMap

section NonUnitalNonAssoc

variable (R A : Type*) [CommSemiring R] [NonUnitalNonAssocSemiring A] [Module R A]
  [SMulCommClass R A A] [IsScalarTower R A A]

/-- The multiplication in a non-unital non-associative algebra is a bilinear map.

A weaker version of this for semirings exists as `AddMonoidHom.mul`. -/
def mul : A →ₗ[R] A →ₗ[R] A :=
  LinearMap.mk₂ R (· * ·) add_mul smul_mul_assoc mul_add mul_smul_comm
#align linear_map.mul LinearMap.mul

/-- The multiplication map on a non-unital algebra, as an `R`-linear map from `A ⊗[R] A` to `A`. -/
def mul' : A ⊗[R] A →ₗ[R] A :=
  TensorProduct.lift (mul R A)
#align linear_map.mul' LinearMap.mul'

variable {A}

/-- The multiplication on the left in a non-unital algebra is a linear map. -/
def mulLeft (a : A) : A →ₗ[R] A :=
  mul R A a
#align linear_map.mul_left LinearMap.mulLeft

/-- The multiplication on the right in an algebra is a linear map. -/
def mulRight (a : A) : A →ₗ[R] A :=
  (mul R A).flip a
#align linear_map.mul_right LinearMap.mulRight

/-- Simultaneous multiplication on the left and right is a linear map. -/
def mulLeftRight (ab : A × A) : A →ₗ[R] A :=
  (mulRight R ab.snd).comp (mulLeft R ab.fst)
#align linear_map.mul_left_right LinearMap.mulLeftRight

@[simp]
theorem mulLeft_toAddMonoidHom (a : A) : (mulLeft R a : A →+ A) = AddMonoidHom.mulLeft a :=
  rfl
#align linear_map.mul_left_to_add_monoid_hom LinearMap.mulLeft_toAddMonoidHom

@[simp]
theorem mulRight_toAddMonoidHom (a : A) : (mulRight R a : A →+ A) = AddMonoidHom.mulRight a :=
  rfl
#align linear_map.mul_right_to_add_monoid_hom LinearMap.mulRight_toAddMonoidHom

variable {R}

@[simp]
theorem mul_apply' (a b : A) : mul R A a b = a * b :=
  rfl
#align linear_map.mul_apply' LinearMap.mul_apply'

@[simp]
theorem mulLeft_apply (a b : A) : mulLeft R a b = a * b :=
  rfl
#align linear_map.mul_left_apply LinearMap.mulLeft_apply

@[simp]
theorem mulRight_apply (a b : A) : mulRight R a b = b * a :=
  rfl
#align linear_map.mul_right_apply LinearMap.mulRight_apply

@[simp]
theorem mulLeftRight_apply (a b x : A) : mulLeftRight R (a, b) x = a * x * b :=
  rfl
#align linear_map.mul_left_right_apply LinearMap.mulLeftRight_apply

@[simp]
theorem mul'_apply {a b : A} : mul' R A (a ⊗ₜ b) = a * b :=
  rfl
#align linear_map.mul'_apply LinearMap.mul'_apply

@[simp]
theorem mulLeft_zero_eq_zero : mulLeft R (0 : A) = 0 :=
  (mul R A).map_zero
#align linear_map.mul_left_zero_eq_zero LinearMap.mulLeft_zero_eq_zero

@[simp]
theorem mulRight_zero_eq_zero : mulRight R (0 : A) = 0 :=
  (mul R A).flip.map_zero
#align linear_map.mul_right_zero_eq_zero LinearMap.mulRight_zero_eq_zero

end NonUnitalNonAssoc

section NonUnital

variable (R A : Type*) [CommSemiring R] [NonUnitalSemiring A] [Module R A] [SMulCommClass R A A]
  [IsScalarTower R A A]

/-- The multiplication in a non-unital algebra is a bilinear map.

A weaker version of this for non-unital non-associative algebras exists as `LinearMap.mul`. -/
def _root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.NonUnitalAlgHom.lmul : A →ₙₐ[R] End R A :=
  { mul R A with
    map_mul' := by
      intro a b
      ext c
      exact mul_assoc a b c
    map_zero' := by
      ext a
      exact zero_mul a }
#align non_unital_alg_hom.lmul NonUnitalAlgHom.lmul

variable {R A}

@[simp]
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.NonUnitalAlgHom.coe_lmul_eq_mul : ⇑(NonUnitalAlgHom.lmul R A) = mul R A :=
  rfl
#align non_unital_alg_hom.coe_lmul_eq_mul NonUnitalAlgHom.coe_lmul_eq_mul

theorem commute_mulLeft_right (a b : A) : Commute (mulLeft R a) (mulRight R b) := by
  ext c
  exact (mul_assoc a c b).symm
#align linear_map.commute_mul_left_right LinearMap.commute_mulLeft_right

@[simp]
theorem mulLeft_mul (a b : A) : mulLeft R (a * b) = (mulLeft R a).comp (mulLeft R b) := by
  ext
  simp only [mulLeft_apply, comp_apply, mul_assoc]
#align linear_map.mul_left_mul LinearMap.mulLeft_mul

@[simp]
theorem mulRight_mul (a b : A) : mulRight R (a * b) = (mulRight R b).comp (mulRight R a) := by
  ext
  simp only [mulRight_apply, comp_apply, mul_assoc]
#align linear_map.mul_right_mul LinearMap.mulRight_mul

end NonUnital

section Semiring

variable (R A : Type*) [CommSemiring R] [Semiring A] [Algebra R A]

/-- The multiplication in an algebra is an algebra homomorphism into the endomorphisms on
the algebra.

A weaker version of this for non-unital algebras exists as `NonUnitalAlgHom.mul`. -/
def _root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.Algebra.lmul : A →ₐ[R] End R A :=
  { LinearMap.mul R A with
    map_one' := by
      ext a
      exact one_mul a
    map_mul' := by
      intro a b
      ext c
      exact mul_assoc a b c
    map_zero' := by
      ext a
      exact zero_mul a
    commutes' := by
      intro r
      ext a
      exact (Algebra.smul_def r a).symm }
#align algebra.lmul Algebra.lmul

variable {R A}

@[simp]
theorem _root_.GRWTSK.Algebra.LinearAlgebra.Mul.Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.Algebra.coe_lmul_eq_mul : ⇑(Algebra.lmul R A) = mul R A :=
  rfl
#align algebra.coe_lmul_eq_mul Algebra.coe_lmul_eq_mul

@[simp]
theorem mulLeft_eq_zero_iff (a : A) : mulLeft R a = 0 ↔ a = 0 := by
  constructor <;> intro h
  -- porting note: had to supply `R` explicitly in `@mulLeft_apply` below
  · rw [← mul_one a, ← @mulLeft_apply R _ _ _ _ _ _ a 1, h, LinearMap.zero_apply]
  · rw [h]
    exact mulLeft_zero_eq_zero
#align linear_map.mul_left_eq_zero_iff LinearMap.mulLeft_eq_zero_iff

@[simp]
theorem mulRight_eq_zero_iff (a : A) : mulRight R a = 0 ↔ a = 0 := by
  constructor <;> intro h
  -- porting note: had to supply `R` explicitly in `@mulRight_apply` below
  · rw [← one_mul a, ← @mulRight_apply R _ _ _ _ _ _ a 1, h, LinearMap.zero_apply]
  · rw [h]
    exact mulRight_zero_eq_zero
#align linear_map.mul_right_eq_zero_iff LinearMap.mulRight_eq_zero_iff

@[simp]
theorem mulLeft_one : mulLeft R (1 : A) = LinearMap.id := by
  ext
  simp only [LinearMap.id_coe, one_mul, id.def, mulLeft_apply]
#align linear_map.mul_left_one LinearMap.mulLeft_one

@[simp]
theorem mulRight_one : mulRight R (1 : A) = LinearMap.id := by
  ext
  simp only [LinearMap.id_coe, mul_one, id.def, mulRight_apply]
#align linear_map.mul_right_one LinearMap.mulRight_one

@[simp]
theorem pow_mulLeft (a : A) (n : ℕ) : mulLeft R a ^ n = mulLeft R (a ^ n) := by
  simpa only [mulLeft, ← Algebra.coe_lmul_eq_mul] using ((Algebra.lmul R A).map_pow a n).symm
#align linear_map.pow_mul_left LinearMap.pow_mulLeft

@[simp]
theorem pow_mulRight (a : A) (n : ℕ) : mulRight R a ^ n = mulRight R (a ^ n) := by
  simp only [mulRight, ← Algebra.coe_lmul_eq_mul]
  exact
    LinearMap.coe_injective (((mulRight R a).coe_pow n).symm ▸ mul_right_iterate a n)
#align linear_map.pow_mul_right LinearMap.pow_mulRight

end Semiring

section Ring

variable {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]

theorem mulLeft_injective [NoZeroDivisors A] {x : A} (hx : x ≠ 0) :
    Function.Injective (mulLeft R x) := by
  letI : Nontrivial A := ⟨⟨x, 0, hx⟩⟩
  letI := NoZeroDivisors.to_isDomain A
  exact mul_right_injective₀ hx
#align linear_map.mul_left_injective LinearMap.mulLeft_injective

theorem mulRight_injective [NoZeroDivisors A] {x : A} (hx : x ≠ 0) :
    Function.Injective (mulRight R x) := by
  letI : Nontrivial A := ⟨⟨x, 0, hx⟩⟩
  letI := NoZeroDivisors.to_isDomain A
  exact mul_left_injective₀ hx
#align linear_map.mul_right_injective LinearMap.mulRight_injective

theorem mul_injective [NoZeroDivisors A] {x : A} (hx : x ≠ 0) : Function.Injective (mul R A x) := by
  letI : Nontrivial A := ⟨⟨x, 0, hx⟩⟩
  letI := NoZeroDivisors.to_isDomain A
  exact mul_right_injective₀ hx
#align linear_map.mul_injective LinearMap.mul_injective

end Ring

end LinearMap
```
