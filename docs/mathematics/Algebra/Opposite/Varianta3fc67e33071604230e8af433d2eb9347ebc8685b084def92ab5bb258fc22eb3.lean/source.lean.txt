-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NonUnitalRingHomToOpposite.Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.NonUnitalRingHomToOpposite.Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Group.Equiv.Opposite
import Mathlib.Algebra.GroupWithZero.Opposite
import Mathlib.Algebra.Ring.Hom.Defs

/-!
# Ring structures on the multiplicative opposite
-/


namespace GRWTSK.Algebra.NonUnitalRingHomToOpposite.Variant70268ebdd19b9c7599d0eb2a0ba512cca58b3d77f8450fbed1a85dca9087bea4

variable {R : Type*}

namespace MulOpposite

instance instDistrib [Distrib R] : Distrib Rᵐᵒᵖ where
  left_distrib _ _ _ := unop_injective <| add_mul _ _ _
  right_distrib _ _ _ := unop_injective <| mul_add _ _ _

instance instNonUnitalNonAssocSemiring [NonUnitalNonAssocSemiring R] :
    NonUnitalNonAssocSemiring Rᵐᵒᵖ where
  __ := instAddCommMonoid
  __ := instDistrib
  __ := instMulZeroClass

instance instNonUnitalSemiring [NonUnitalSemiring R] : NonUnitalSemiring Rᵐᵒᵖ where
  __ := instNonUnitalNonAssocSemiring
  __ := instSemigroupWithZero

instance instNonAssocSemiring [NonAssocSemiring R] : NonAssocSemiring Rᵐᵒᵖ where
  __ := instNonUnitalNonAssocSemiring
  __ := instMulZeroOneClass
  __ := instAddCommMonoidWithOne

instance instSemiring [Semiring R] : Semiring Rᵐᵒᵖ where
  __ := instNonUnitalSemiring
  __ := instNonAssocSemiring
  __ := instMonoidWithZero

instance instNonUnitalCommSemiring [NonUnitalCommSemiring R] : NonUnitalCommSemiring Rᵐᵒᵖ where
  __ := instNonUnitalSemiring
  __ := instCommSemigroup

instance instCommSemiring [CommSemiring R] : CommSemiring Rᵐᵒᵖ where
  __ := instSemiring
  __ := instCommMonoid

instance instNonUnitalNonAssocRing [NonUnitalNonAssocRing R] : NonUnitalNonAssocRing Rᵐᵒᵖ where
  __ := instAddCommGroup
  __ := instNonUnitalNonAssocSemiring

instance instNonUnitalRing [NonUnitalRing R] : NonUnitalRing Rᵐᵒᵖ where
  __ := instNonUnitalNonAssocRing
  __ := instNonUnitalSemiring

instance instNonAssocRing [NonAssocRing R] : NonAssocRing Rᵐᵒᵖ where
  __ := instNonUnitalNonAssocRing
  __ := instNonAssocSemiring
  __ := instAddCommGroupWithOne

instance instRing [Ring R] : Ring Rᵐᵒᵖ where
  __ := instSemiring
  __ := instAddCommGroupWithOne

instance instNonUnitalCommRing [NonUnitalCommRing R] : NonUnitalCommRing Rᵐᵒᵖ where
  __ := instNonUnitalRing
  __ := instNonUnitalCommSemiring

instance instCommRing [CommRing R] : CommRing Rᵐᵒᵖ where
  __ := instRing
  __ := instCommMonoid

instance instIsDomain [Ring R] [IsDomain R] : IsDomain Rᵐᵒᵖ :=
  NoZeroDivisors.to_isDomain _

end MulOpposite

namespace AddOpposite

instance instDistrib [Distrib R] : Distrib Rᵃᵒᵖ where
  left_distrib _ _ _ := unop_injective <| mul_add _ _ _
  right_distrib _ _ _ := unop_injective <| add_mul _ _ _

instance instNonUnitalNonAssocSemiring [NonUnitalNonAssocSemiring R] :
    NonUnitalNonAssocSemiring Rᵃᵒᵖ where
  __ := instAddCommMonoid
  __ := instDistrib
  __ := instMulZeroClass

instance instNonUnitalSemiring [NonUnitalSemiring R] : NonUnitalSemiring Rᵃᵒᵖ where
  __ := instNonUnitalNonAssocSemiring
  __ := instSemigroupWithZero

instance instNonAssocSemiring [NonAssocSemiring R] : NonAssocSemiring Rᵃᵒᵖ where
  __ := instNonUnitalNonAssocSemiring
  __ := instMulZeroOneClass
  __ := instAddCommMonoidWithOne

instance instSemiring [Semiring R] : Semiring Rᵃᵒᵖ where
  __ := instNonUnitalSemiring
  __ := instNonAssocSemiring
  __ := instMonoidWithZero

instance instNonUnitalCommSemiring [NonUnitalCommSemiring R] : NonUnitalCommSemiring Rᵃᵒᵖ where
  __ := instNonUnitalSemiring
  __ := instCommSemigroup

instance instCommSemiring [CommSemiring R] : CommSemiring Rᵃᵒᵖ where
  __ := instSemiring
  __ := instCommMonoid

instance instNonUnitalNonAssocRing [NonUnitalNonAssocRing R] : NonUnitalNonAssocRing Rᵃᵒᵖ where
  __ := instAddCommGroup
  __ := instNonUnitalNonAssocSemiring

instance instNonUnitalRing [NonUnitalRing R] : NonUnitalRing Rᵃᵒᵖ where
  __ := instNonUnitalNonAssocRing
  __ := instNonUnitalSemiring

instance instNonAssocRing [NonAssocRing R] : NonAssocRing Rᵃᵒᵖ where
  __ := instNonUnitalNonAssocRing
  __ := instNonAssocSemiring
  __ := instAddCommGroupWithOne

instance instRing [Ring R] : Ring Rᵃᵒᵖ where
  __ := instSemiring
  __ := instAddCommGroupWithOne

instance instNonUnitalCommRing [NonUnitalCommRing R] : NonUnitalCommRing Rᵃᵒᵖ where
  __ := instNonUnitalRing
  __ := instNonUnitalCommSemiring

instance instCommRing [CommRing R] : CommRing Rᵃᵒᵖ where
  __ := instRing
  __ := instCommMonoid

instance instIsDomain [Ring R] [IsDomain R] : IsDomain Rᵃᵒᵖ :=
  NoZeroDivisors.to_isDomain _

end AddOpposite

open MulOpposite

/-- A non-unital ring homomorphism `f : R →ₙ+* S` such that `f x` commutes with `f y` for all `x, y`
defines a non-unital ring homomorphism to `Sᵐᵒᵖ`. -/
@[simps -fullyApplied]
def NonUnitalRingHom.toOpposite {R S : Type*} [NonUnitalNonAssocSemiring R]
    [NonUnitalNonAssocSemiring S] (f : R →ₙ+* S) (hf : ∀ x y, Commute (f x) (f y)) : R →ₙ+* Sᵐᵒᵖ :=
  { ((opAddEquiv : S ≃+ Sᵐᵒᵖ).toAddMonoidHom.comp ↑f : R →+ Sᵐᵒᵖ), f.toMulHom.toOpposite hf with
    toFun := MulOpposite.op ∘ f }

/-- A non-unital ring homomorphism `f : R →ₙ* S` such that `f x` commutes with `f y` for all `x, y`
defines a non-unital ring homomorphism from `Rᵐᵒᵖ`. -/
@[simps -fullyApplied]
def NonUnitalRingHom.fromOpposite {R S : Type*} [NonUnitalNonAssocSemiring R]
    [NonUnitalNonAssocSemiring S] (f : R →ₙ+* S) (hf : ∀ x y, Commute (f x) (f y)) : Rᵐᵒᵖ →ₙ+* S :=
  { (f.toAddMonoidHom.comp (opAddEquiv : R ≃+ Rᵐᵒᵖ).symm.toAddMonoidHom : Rᵐᵒᵖ →+ S),
    f.toMulHom.fromOpposite hf with toFun := f ∘ MulOpposite.unop }

/-- A non-unital ring hom `R →ₙ+* S` can equivalently be viewed as a non-unital ring hom
`Rᵐᵒᵖ →+* Sᵐᵒᵖ`. This is the action of the (fully faithful) `ᵐᵒᵖ`-functor on morphisms. -/
@[simps]
def NonUnitalRingHom.op {R S} [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S] :
    (R →ₙ+* S) ≃ (Rᵐᵒᵖ →ₙ+* Sᵐᵒᵖ) where
  toFun f := { AddMonoidHom.mulOp f.toAddMonoidHom, MulHom.op f.toMulHom with }
  invFun f := { AddMonoidHom.mulUnop f.toAddMonoidHom, MulHom.unop f.toMulHom with }
  left_inv _ := rfl
  right_inv _ := rfl

/-- The 'unopposite' of a non-unital ring hom `Rᵐᵒᵖ →ₙ+* Sᵐᵒᵖ`. Inverse to
`NonUnitalRingHom.op`. -/
@[simp]
def NonUnitalRingHom.unop {R S} [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S] :
    (Rᵐᵒᵖ →ₙ+* Sᵐᵒᵖ) ≃ (R →ₙ+* S) :=
  NonUnitalRingHom.op.symm

/-- A ring homomorphism `f : R →+* S` such that `f x` commutes with `f y` for all `x, y` defines
a ring homomorphism to `Sᵐᵒᵖ`. -/
@[simps -fullyApplied]
def RingHom.toOpposite {R S : Type*} [Semiring R] [Semiring S] (f : R →+* S)
    (hf : ∀ x y, Commute (f x) (f y)) : R →+* Sᵐᵒᵖ :=
  { ((opAddEquiv : S ≃+ Sᵐᵒᵖ).toAddMonoidHom.comp ↑f : R →+ Sᵐᵒᵖ), f.toMonoidHom.toOpposite hf with
    toFun := MulOpposite.op ∘ f }

/-- A ring homomorphism `f : R →+* S` such that `f x` commutes with `f y` for all `x, y` defines
a ring homomorphism from `Rᵐᵒᵖ`. -/
@[simps -fullyApplied]
def RingHom.fromOpposite {R S : Type*} [Semiring R] [Semiring S] (f : R →+* S)
    (hf : ∀ x y, Commute (f x) (f y)) : Rᵐᵒᵖ →+* S :=
  { (f.toAddMonoidHom.comp (opAddEquiv : R ≃+ Rᵐᵒᵖ).symm.toAddMonoidHom : Rᵐᵒᵖ →+ S),
    f.toMonoidHom.fromOpposite hf with toFun := f ∘ MulOpposite.unop }

/-- A ring hom `R →+* S` can equivalently be viewed as a ring hom `Rᵐᵒᵖ →+* Sᵐᵒᵖ`. This is the
action of the (fully faithful) `ᵐᵒᵖ`-functor on morphisms. -/
@[simps!]
def RingHom.op {R S} [NonAssocSemiring R] [NonAssocSemiring S] :
    (R →+* S) ≃ (Rᵐᵒᵖ →+* Sᵐᵒᵖ) where
  toFun f := { AddMonoidHom.mulOp f.toAddMonoidHom, MonoidHom.op f.toMonoidHom with }
  invFun f := { AddMonoidHom.mulUnop f.toAddMonoidHom, MonoidHom.unop f.toMonoidHom with }
  left_inv _ := rfl
  right_inv _ := rfl

/-- The 'unopposite' of a ring hom `Rᵐᵒᵖ →+* Sᵐᵒᵖ`. Inverse to `RingHom.op`. -/
@[simp]
def RingHom.unop {R S} [NonAssocSemiring R] [NonAssocSemiring S] : (Rᵐᵒᵖ →+* Sᵐᵒᵖ) ≃ (R →+* S) :=
  RingHom.op.symm
