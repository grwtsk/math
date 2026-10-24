# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DifferentialRing.Variant85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f724ff2818ed32d9f8f56b8601de1b585476401e` · SHA-256 `85bfff9ea3db1c50425b6993724f3a0e4ef8cae0069b6de92950405eefdae594`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Daniel Weber. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Weber
-/
import Mathlib.RingTheory.Derivation.Basic

/-!
# Differential and Algebras

This file defines derivations from a commutative ring to itself as a typeclass, which lets us
use the x′ notation for the derivative of x.
-/

/-- A derivation from a ring to itself, as a typeclass. -/
@[ext]
class Differential (R : Type*) [CommRing R] where
  /-- The `Derivation` associated with the ring. -/
  deriv : Derivation ℤ R R

@[inherit_doc]
scoped[Differential] postfix:max "′" => Differential.deriv

open scoped Differential

open Lean PrettyPrinter Delaborator SubExpr in
/--
A delaborator for the x′ notation. This is required because it's not direct function application,
so the default delaborator doesn't work.
-/
@[app_delab DFunLike.coe]
def delabDeriv : Delab := do
  let e ← getExpr
  guard <| e.isAppOfArity' ``DFunLike.coe 6
  guard <| (e.getArg!' 4).isAppOf' ``Differential.deriv
  let arg ← withAppArg delab
  `($arg′)

/--
A differential algebra is an `Algebra` where the derivation commutes with `algebraMap`.
-/
class DifferentialAlgebra (A B : Type*) [CommRing A] [CommRing B] [Algebra A B]
    [Differential A] [Differential B] : Prop where
  deriv_algebraMap : ∀ a : A, (algebraMap A B a)′ = algebraMap A B a′

export DifferentialAlgebra (deriv_algebraMap)

@[norm_cast]
lemma algebraMap.coe_deriv {A : Type*} {B : Type*} [CommRing A] [CommRing B] [Algebra A B]
    [Differential A] [Differential B] [DifferentialAlgebra A B] (a : A) :
    (a′ : A) = (a : B)′ :=
  (DifferentialAlgebra.deriv_algebraMap _).symm

/--
A differential ring `A` and an algebra over it `B` share constants if all
constants in B are in the range of `algberaMap A B`.
-/
class Differential.ContainConstants (A B : Type*) [CommRing A] [CommRing B]
    [Algebra A B] [Differential B] : Prop where
  /-- If the derivative of x is 0, then it's in the range of `algberaMap A B`. -/
  protected mem_range_of_deriv_eq_zero {x : B} (h : x′ = 0) : x ∈ (algebraMap A B).range

lemma mem_range_of_deriv_eq_zero (A : Type*) {B : Type*} [CommRing A] [CommRing B] [Algebra A B]
    [Differential B] [Differential.ContainConstants A B] {x : B} (h : x′ = 0) :
    x ∈ (algebraMap A B).range :=
  Differential.ContainConstants.mem_range_of_deriv_eq_zero h

instance (A : Type*) [CommRing A] [Differential A] : DifferentialAlgebra A A where
  deriv_algebraMap _ := rfl

instance (A : Type*) [CommRing A] [Differential A] : Differential.ContainConstants A A where
  mem_range_of_deriv_eq_zero {x} _ := ⟨x, rfl⟩

/-- Transfer a `Differential` instance across a `RingEquiv`. -/
@[reducible]
def Differential.equiv {R R₂ : Type*} [CommRing R] [CommRing R₂] [Differential R₂]
    (h : R ≃+* R₂) : Differential R :=
  ⟨Derivation.mk' (h.symm.toAddMonoidHom.toIntLinearMap ∘ₗ
    Differential.deriv.toLinearMap ∘ₗ h.toAddMonoidHom.toIntLinearMap) (by simp)⟩

/--
Transfer a `DifferentialAlgebra` instance across a `AlgEquiv`.
-/
lemma DifferentialAlgebra.equiv {A : Type*} [CommRing A] [Differential A]
    {R R₂ : Type*} [CommRing R] [CommRing R₂] [Differential R₂] [Algebra A R]
    [Algebra A R₂] [DifferentialAlgebra A R₂] (h : R ≃ₐ[A] R₂) :
    letI := Differential.equiv h.toRingEquiv
    DifferentialAlgebra A R :=
  letI := Differential.equiv h.toRingEquiv
  ⟨fun a ↦ by
    change (LinearMap.comp ..) _ = _
    simp only [AlgEquiv.toRingEquiv_eq_coe, RingHom.toAddMonoidHom_eq_coe,
      RingEquiv.toRingHom_eq_coe, AlgEquiv.toRingEquiv_toRingHom, LinearMap.coe_comp,
      AddMonoidHom.coe_toIntLinearMap, AddMonoidHom.coe_coe, RingHom.coe_coe, Derivation.coeFn_coe,
      Function.comp_apply, AlgEquiv.commutes, deriv_algebraMap]
    apply h.symm.commutes⟩
```
