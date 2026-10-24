# Complete source: GRWTSK.Algebra.Pi.Variant9ac06d6c0344215568afe7ebe3da32441a34cd6216c2603d7c56bb4db54b56c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f977d8d5c91ff19d2e1914411b60d6a58988f13e` · SHA-256 `1f4f6dd42e037480de517a3b994a286a0ccb619be266137b75fd6876b700f765`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.NonUnitalRingHom.Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.NonUnitalRingHom.Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Ring/Pi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Patrick Massot
-/
import Mathlib.Algebra.Group.Pi
import Mathlib.Algebra.Hom.Ring


namespace GRWTSK.Algebra.NonUnitalRingHom.Variantb3d73d1b0f3bd77456b7b426ce37d01b8c9ffcb779830356a5b72d3f1ebf2c08

#align_import algebra.ring.pi from "leanprover-community/mathlib"@"ba2245edf0c8bb155f1569fd9b9492a9b384cde6"

/-!
# Pi instances for ring

This file defines instances for ring, semiring and related structures on Pi Types
-/

-- Porting notes: used to import `tactic.pi_instances`

namespace Pi

universe u v w

variable {I : Type u}

-- The indexing type
variable {f : I → Type v}

-- The family of types already equipped with instances
variable (x y : ∀ i, f i) (i : I)

-- Porting note: All these instances used `refine_struct` and `pi_instance_derive_field`

instance distrib [∀ i, Distrib <| f i] : Distrib (∀ i : I, f i) :=
  { add := (· + ·)
    mul := (· * ·)
    left_distrib := by intros; ext; exact mul_add _ _ _
    right_distrib := by intros; ext; exact add_mul _ _ _}
#align pi.distrib Pi.distrib

instance hasDistribNeg [∀ i, Mul (f i)] [∀ i, HasDistribNeg (f i)] : HasDistribNeg (∀ i, f i) where
  neg_mul _ _ := funext fun _ ↦ neg_mul _ _
  mul_neg _ _ := funext fun _ ↦ mul_neg _ _

instance nonUnitalNonAssocSemiring [∀ i, NonUnitalNonAssocSemiring <| f i] :
    NonUnitalNonAssocSemiring (∀ i : I, f i) :=
  { Pi.distrib, Pi.addCommMonoid, Pi.mulZeroClass with }
#align pi.non_unital_non_assoc_semiring Pi.nonUnitalNonAssocSemiring

instance nonUnitalSemiring [∀ i, NonUnitalSemiring <| f i] : NonUnitalSemiring (∀ i : I, f i) :=
  { Pi.nonUnitalNonAssocSemiring, Pi.semigroupWithZero with }
#align pi.non_unital_semiring Pi.nonUnitalSemiring

instance nonAssocSemiring [∀ i, NonAssocSemiring <| f i] : NonAssocSemiring (∀ i : I, f i) :=
  { Pi.nonUnitalNonAssocSemiring, Pi.mulZeroOneClass, Pi.addMonoidWithOne with }
#align pi.non_assoc_semiring Pi.nonAssocSemiring

instance semiring [∀ i, Semiring <| f i] : Semiring (∀ i : I, f i) :=
  { Pi.nonUnitalSemiring, Pi.nonAssocSemiring, Pi.monoidWithZero with }
#align pi.semiring Pi.semiring

instance nonUnitalCommSemiring [∀ i, NonUnitalCommSemiring <| f i] :
    NonUnitalCommSemiring (∀ i : I, f i) :=
  { Pi.nonUnitalSemiring, Pi.commSemigroup with }
#align pi.non_unital_comm_semiring Pi.nonUnitalCommSemiring

instance commSemiring [∀ i, CommSemiring <| f i] : CommSemiring (∀ i : I, f i) :=
  { Pi.semiring, Pi.commMonoid with }
#align pi.comm_semiring Pi.commSemiring

instance nonUnitalNonAssocRing [∀ i, NonUnitalNonAssocRing <| f i] :
    NonUnitalNonAssocRing (∀ i : I, f i) :=
  { Pi.addCommGroup, Pi.nonUnitalNonAssocSemiring with }
#align pi.non_unital_non_assoc_ring Pi.nonUnitalNonAssocRing

instance nonUnitalRing [∀ i, NonUnitalRing <| f i] : NonUnitalRing (∀ i : I, f i) :=
  { Pi.nonUnitalNonAssocRing, Pi.nonUnitalSemiring with }
#align pi.non_unital_ring Pi.nonUnitalRing

instance nonAssocRing [∀ i, NonAssocRing <| f i] : NonAssocRing (∀ i : I, f i) :=
  { Pi.nonUnitalNonAssocRing, Pi.nonAssocSemiring, Pi.addGroupWithOne with }
#align pi.non_assoc_ring Pi.nonAssocRing

instance ring [∀ i, Ring <| f i] : Ring (∀ i : I, f i) :=
  { Pi.semiring, Pi.addCommGroup, Pi.addGroupWithOne with }
#align pi.ring Pi.ring

instance nonUnitalCommRing [∀ i, NonUnitalCommRing <| f i] : NonUnitalCommRing (∀ i : I, f i) :=
  { Pi.nonUnitalRing, Pi.commSemigroup with }
#align pi.non_unital_comm_ring Pi.nonUnitalCommRing

instance commRing [∀ i, CommRing <| f i] : CommRing (∀ i : I, f i) :=
  { Pi.ring, Pi.commSemiring with }
#align pi.comm_ring Pi.commRing

/-- A family of non-unital ring homomorphisms `f a : γ →ₙ+* β a` defines a non-unital ring
homomorphism `Pi.nonUnitalRingHom f : γ →+* Π a, β a` given by
`Pi.nonUnitalRingHom f x b = f b x`. -/
@[simps]
protected def nonUnitalRingHom {γ : Type w} [∀ i, NonUnitalNonAssocSemiring (f i)]
    [NonUnitalNonAssocSemiring γ] (g : ∀ i, γ →ₙ+* f i) : γ →ₙ+* ∀ i, f i :=
  { Pi.mulHom fun i => (g i).toMulHom, Pi.addMonoidHom fun i => (g i).toAddMonoidHom with
    toFun := fun x b => g b x }
#align pi.non_unital_ring_hom Pi.nonUnitalRingHom

theorem nonUnitalRingHom_injective {γ : Type w} [Nonempty I]
    [∀ i, NonUnitalNonAssocSemiring (f i)] [NonUnitalNonAssocSemiring γ] (g : ∀ i, γ →ₙ+* f i)
    (hg : ∀ i, Function.Injective (g i)) : Function.Injective (Pi.nonUnitalRingHom g) :=
  mulHom_injective (fun i => (g i).toMulHom) hg
#align pi.non_unital_ring_hom_injective Pi.nonUnitalRingHom_injective

/-- A family of ring homomorphisms `f a : γ →+* β a` defines a ring homomorphism
`Pi.ringHom f : γ →+* Π a, β a` given by `Pi.ringHom f x b = f b x`. -/
@[simps]
protected def ringHom {γ : Type w} [∀ i, NonAssocSemiring (f i)] [NonAssocSemiring γ]
    (g : ∀ i, γ →+* f i) : γ →+* ∀ i, f i :=
  { Pi.monoidHom fun i => (g i).toMonoidHom, Pi.addMonoidHom fun i => (g i).toAddMonoidHom with
    toFun := fun x b => g b x }
#align pi.ring_hom Pi.ringHom
#align pi.ring_hom_apply Pi.ringHom_apply

theorem ringHom_injective {γ : Type w} [Nonempty I] [∀ i, NonAssocSemiring (f i)]
    [NonAssocSemiring γ] (g : ∀ i, γ →+* f i) (hg : ∀ i, Function.Injective (g i)) :
    Function.Injective (Pi.ringHom g) :=
  monoidHom_injective (fun i => (g i).toMonoidHom) hg
#align pi.ring_hom_injective Pi.ringHom_injective

end Pi

section NonUnitalRingHom

universe u v

variable {I : Type u}

/-- Evaluation of functions into an indexed collection of non-unital rings at a point is a
non-unital ring homomorphism. This is `Function.eval` as a `NonUnitalRingHom`. -/
@[simps]
def Pi.evalNonUnitalRingHom (f : I → Type v) [∀ i, NonUnitalNonAssocSemiring (f i)] (i : I) :
    (∀ i, f i) →ₙ+* f i :=
  { Pi.evalMulHom f i, Pi.evalAddMonoidHom f i with }
#align pi.eval_non_unital_ring_hom Pi.evalNonUnitalRingHom

/-- `Function.const` as a `NonUnitalRingHom`. -/
@[simps]
def Pi.constNonUnitalRingHom (α β : Type*) [NonUnitalNonAssocSemiring β] : β →ₙ+* α → β :=
  { Pi.nonUnitalRingHom fun _ => NonUnitalRingHom.id β with toFun := Function.const _ }
#align pi.const_non_unital_ring_hom Pi.constNonUnitalRingHom

/-- Non-unital ring homomorphism between the function spaces `I → α` and `I → β`, induced by a
non-unital ring homomorphism `f` between `α` and `β`. -/
@[simps]
protected def NonUnitalRingHom.compLeft {α β : Type*} [NonUnitalNonAssocSemiring α]
    [NonUnitalNonAssocSemiring β] (f : α →ₙ+* β) (I : Type*) : (I → α) →ₙ+* I → β :=
  { f.toMulHom.compLeft I, f.toAddMonoidHom.compLeft I with toFun := fun h => f ∘ h }
#align non_unital_ring_hom.comp_left NonUnitalRingHom.compLeft

end NonUnitalRingHom

section RingHom

universe u v

variable {I : Type u}

/-- Evaluation of functions into an indexed collection of rings at a point is a ring
homomorphism. This is `Function.eval` as a `RingHom`. -/
@[simps!]
def Pi.evalRingHom (f : I → Type v) [∀ i, NonAssocSemiring (f i)] (i : I) : (∀ i, f i) →+* f i :=
  { Pi.evalMonoidHom f i, Pi.evalAddMonoidHom f i with }
#align pi.eval_ring_hom Pi.evalRingHom
#align pi.eval_ring_hom_apply Pi.evalRingHom_apply

/-- `Function.const` as a `RingHom`. -/
@[simps]
def Pi.constRingHom (α β : Type*) [NonAssocSemiring β] : β →+* α → β :=
  { Pi.ringHom fun _ => RingHom.id β with toFun := Function.const _ }
#align pi.const_ring_hom Pi.constRingHom
#align pi.const_ring_hom_apply Pi.constRingHom_apply

/-- Ring homomorphism between the function spaces `I → α` and `I → β`, induced by a ring
homomorphism `f` between `α` and `β`. -/
@[simps]
protected def RingHom.compLeft {α β : Type*} [NonAssocSemiring α] [NonAssocSemiring β]
    (f : α →+* β) (I : Type*) : (I → α) →+* I → β :=
  { f.toMonoidHom.compLeft I, f.toAddMonoidHom.compLeft I with toFun := fun h => f ∘ h }
#align ring_hom.comp_left RingHom.compLeft
#align ring_hom.comp_left_apply RingHom.compLeft_apply

end RingHom
```
