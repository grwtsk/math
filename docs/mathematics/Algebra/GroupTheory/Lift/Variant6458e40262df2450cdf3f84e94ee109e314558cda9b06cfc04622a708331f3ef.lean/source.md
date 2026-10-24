# Complete source: GRWTSK.Algebra.GroupTheory.Lift.Variant6458e40262df2450cdf3f84e94ee109e314558cda9b06cfc04622a708331f3ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80162ef7e7b60865de275684ac2904af4cf28292` · SHA-256 `a02675e815a3ca224a352d17c32eed9df6dc311ecc215ba73c3d51b9d5a00a54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.LiftNC.Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.LiftNC.Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b","mathematical_subject":"Algebra.Groups","original_sha256":"882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/MonoidAlgebra/Lift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov, Kim Morrison
-/
module

public import Mathlib.Algebra.MonoidAlgebra.Defs

/-!
# Lifting monoid algebras

This file defines `liftNC`. For the definition of `MonoidAlgebra.lift`, see
`Mathlib/Algebra/MonoidAlgebra/Basic.lean`.

## Main results
* `MonoidAlgebra.liftNC`, `AddMonoidAlgebra.liftNC`: lift a homomorphism `f : k →+ R` and a
  function `g : G → R` to a homomorphism `k[G] →+ R`.
-/


namespace GRWTSK.Algebra.GroupTheory.LiftNC.Variant882b82988a015d0bb6e2fd7496fce4af5878d4db1c470866a3849b747e769c8b

@[expose] public section

assert_not_exists NonUnitalAlgHom AlgEquiv

noncomputable section

open Finsupp hiding single

universe u₁ u₂ u₃ u₄

variable (k : Type u₁) (G : Type u₂) {R : Type*}

/-! ### Multiplicative monoids -/

namespace MonoidAlgebra

variable {k G}

section

variable [Semiring k] [NonUnitalNonAssocSemiring R]

/-- A non-commutative version of `MonoidAlgebra.lift`: given an additive homomorphism `f : k →+ R`
and a homomorphism `g : G → R`, returns the additive homomorphism from
`k[G]` such that `liftNC f g (single a b) = f b * g a`. If `f` is a ring homomorphism
and the range of either `f` or `g` is in center of `R`, then the result is a ring homomorphism.  If
`R` is a `k`-algebra and `f = algebraMap k R`, then the result is an algebra homomorphism called
`MonoidAlgebra.lift`. -/
def liftNC (f : k →+ R) (g : G → R) : k[G] →+ R :=
  (liftAddHom fun x ↦ .comp (.mulRight (g x)) f).comp coeffAddEquiv.toAddMonoidHom

@[simp]
theorem liftNC_single (f : k →+ R) (g : G → R) (a : G) (b : k) :
    liftNC f g (single a b) = f b * g a :=
  liftAddHom_apply_single _ _ _

end

section Mul

variable [Semiring k] [Mul G] [Semiring R]

theorem liftNC_mul {g_hom : Type*} [FunLike g_hom G R] [MulHomClass g_hom G R]
    (f : k →+* R) (g : g_hom) (a b : k[G])
    (h_comm : ∀ {x y}, y ∈ a.coeff.support → Commute (f (b.coeff x)) (g y)) :
    liftNC (f : k →+ R) g (a * b) = liftNC (f : k →+ R) g a * liftNC (f : k →+ R) g b := by
  conv_rhs => rw [← sum_coeff_single a, ← sum_coeff_single b]
  simp_rw [mul_def, map_finsuppSum, liftNC_single, Finsupp.sum_mul, Finsupp.mul_sum]
  refine Finset.sum_congr rfl fun y hy => Finset.sum_congr rfl fun x _hx => ?_
  simp [mul_assoc, (h_comm hy).left_comm]

end Mul

section One

variable [NonAssocSemiring R] [Semiring k] [One G]

@[simp]
theorem liftNC_one {g_hom : Type*} [FunLike g_hom G R] [OneHomClass g_hom G R]
    (f : k →+* R) (g : g_hom) :
    liftNC (f : k →+ R) g 1 = 1 := by simp [one_def]

end One

/-! #### Semiring structure -/
section Semiring

variable [Semiring k] [Monoid G] [Semiring R]

/-- `liftNC` as a `RingHom`, for when `f x` and `g y` commute -/
def liftNCRingHom (f : k →+* R) (g : G →* R) (h_comm : ∀ x y, Commute (f x) (g y)) : k[G] →+* R :=
  { liftNC (f : k →+ R) g with
    map_one' := liftNC_one _ _
    map_mul' := fun _a _b => liftNC_mul _ _ _ _ fun {_ _} _ => h_comm _ _ }

@[simp]
lemma liftNCRingHom_single (f : k →+* R) (g : G →* R) (h_comm) (a : G) (b : k) :
    liftNCRingHom f g h_comm (single a b) = f b * g a :=
  liftNC_single _ _ _ _

end Semiring

end MonoidAlgebra

/-! ### Additive monoids -/

namespace AddMonoidAlgebra

variable {k G}

section

variable [Semiring k] [NonUnitalNonAssocSemiring R]

/-- A non-commutative version of `AddMonoidAlgebra.lift`: given an additive homomorphism
`f : k →+ R` and a map `g : Multiplicative G → R`, returns the additive
homomorphism from `k[G]` such that `liftNC f g (single a b) = f b * g a`. If `f`
is a ring homomorphism and the range of either `f` or `g` is in center of `R`, then the result is a
ring homomorphism.  If `R` is a `k`-algebra and `f = algebraMap k R`, then the result is an algebra
homomorphism called `AddMonoidAlgebra.lift`. -/
def liftNC (f : k →+ R) (g : Multiplicative G → R) : k[G] →+ R :=
  (liftAddHom fun x ↦ .comp (.mulRight (g <| .ofAdd x)) f).comp coeffAddEquiv.toAddMonoidHom

@[simp]
theorem liftNC_single (f : k →+ R) (g : Multiplicative G → R) (a : G) (b : k) :
    liftNC f g (single a b) = f b * g (Multiplicative.ofAdd a) :=
  liftAddHom_apply_single _ _ _

end

section Mul

variable [Semiring k] [Add G] [Semiring R]

theorem liftNC_mul {g_hom : Type*}
    [FunLike g_hom (Multiplicative G) R] [MulHomClass g_hom (Multiplicative G) R]
    (f : k →+* R) (g : g_hom) (a b : k[G])
    (h_comm : ∀ {x y}, y ∈ a.coeff.support → Commute (f (b.coeff x)) (g <| .ofAdd y)) :
    liftNC (f : k →+ R) g (a * b) = liftNC (f : k →+ R) g a * liftNC (f : k →+ R) g b := by
  conv_rhs => rw [← sum_coeff_single a, ← sum_coeff_single b]
  simp_rw [mul_def, map_finsuppSum, liftNC_single, Finsupp.sum_mul, Finsupp.mul_sum]
  refine Finset.sum_congr rfl fun y hy => Finset.sum_congr rfl fun x _hx => ?_
  simp [mul_assoc, (h_comm hy).left_comm]

end Mul

section One

variable [Semiring k] [Zero G] [NonAssocSemiring R]

@[simp]
theorem liftNC_one {g_hom : Type*}
    [FunLike g_hom (Multiplicative G) R] [OneHomClass g_hom (Multiplicative G) R]
    (f : k →+* R) (g : g_hom) : liftNC (f : k →+ R) g 1 = 1 :=
  MonoidAlgebra.liftNC_one f g

end One

/-! #### Semiring structure -/
section Semiring

variable [Semiring k] [AddMonoid G] [Semiring R]

/-- `liftNC` as a `RingHom`, for when `f` and `g` commute -/
def liftNCRingHom (f : k →+* R) (g : Multiplicative G →* R) (h_comm : ∀ x y, Commute (f x) (g y)) :
    k[G] →+* R :=
  { liftNC (f : k →+ R) g with
    map_one' := liftNC_one _ _
    map_mul' := fun _a _b => liftNC_mul _ _ _ _ fun {_ _} _ => h_comm _ _ }

@[simp]
lemma liftNCRingHom_single (f : k →+* R) (g : Multiplicative G →* R) (h_comm) (a : G) (b : k) :
    liftNCRingHom f g h_comm (single a b) = f b * g (.ofAdd a) :=
  liftNC_single _ _ _ _

end Semiring

end AddMonoidAlgebra
```
