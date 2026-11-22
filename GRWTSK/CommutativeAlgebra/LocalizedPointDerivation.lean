/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.RingTheory.Localization.Away.Basic
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.Tactic.Ring

/-!
# Point derivations are determined before localization

An actual localization denominator is a unit. Differentiating the product
identity expressing a fraction therefore determines a point derivation from
its values on the original ring. The quotient-away specialization gives the
return used by the graded slice argument, with the original algebra and
quotient map retained explicitly.
-/

namespace GRWTSK.CommutativeAlgebra.LocalizedPointDerivation

section General

variable {O R C K : Type*} [CommRing O] [CommRing R] [CommRing C] [CommRing K]
variable [Algebra O C] [Algebra O K] [Algebra R C]

/-- A point derivation on an actual localization vanishes if its restriction
to the original ring vanishes. Unit cancellation permits zero divisors in `K`. -/
theorem eq_zero_of_isLocalization
    (S : Submonoid R) [IsLocalization S C]
    (ψ : C →ₐ[O] K) (D : C →ₗ[O] K)
    (hD : ∀ x y : C, D (x * y) = ψ x * D y + ψ y * D x)
    (hzero : ∀ r : R, D (algebraMap R C r) = 0) : D = 0 := by
  ext z
  change D z = 0
  obtain ⟨⟨r, s⟩, hfrac⟩ := IsLocalization.surj S z
  have hproduct := hD z (algebraMap R C s)
  rw [hfrac, hzero, hzero, mul_zero, zero_add] at hproduct
  apply ((IsLocalization.map_units C s).map ψ).mul_left_cancel
  simpa only [mul_zero] using hproduct.symm

/-- Two point derivations at the same point of a localization agree when
they agree on the image of the original ring. -/
theorem ext_of_isLocalization
    (S : Submonoid R) [IsLocalization S C]
    (ψ : C →ₐ[O] K) (D E : C →ₗ[O] K)
    (hD : ∀ x y : C, D (x * y) = ψ x * D y + ψ y * D x)
    (hE : ∀ x y : C, E (x * y) = ψ x * E y + ψ y * E x)
    (heq : ∀ r : R, D (algebraMap R C r) = E (algebraMap R C r)) : D = E := by
  apply sub_eq_zero.mp
  apply eq_zero_of_isLocalization S ψ (D - E)
  · intro x y
    simp only [LinearMap.sub_apply, hD, hE]
    ring
  · intro r
    simp only [LinearMap.sub_apply, heq, sub_self]

end General

section QuotientAway

variable {O A K : Type*} [CommRing O] [CommRing A] [CommRing K]
variable [Algebra O A] [Algebra O K]

/-- Vanishing on the original algebra suffices after first taking the actual
ideal quotient and then inverting the chosen quotient element. -/
theorem eq_zero_of_quotient_away
    (J : Ideal A) (s : A ⧸ J)
    (ψ : Localization.Away s →ₐ[O] K) (D : Localization.Away s →ₗ[O] K)
    (hD : ∀ x y : Localization.Away s, D (x * y) = ψ x * D y + ψ y * D x)
    (hzero : ∀ a : A,
      D (algebraMap (A ⧸ J) (Localization.Away s) (Ideal.Quotient.mk J a)) = 0) :
    D = 0 := by
  apply eq_zero_of_isLocalization (Submonoid.powers s) ψ D hD
  intro r
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective r
  exact hzero a

/-- Equality before the quotient-localization composite determines equality
of point derivations on the actual localized quotient. -/
theorem ext_of_quotient_away
    (J : Ideal A) (s : A ⧸ J)
    (ψ : Localization.Away s →ₐ[O] K) (D E : Localization.Away s →ₗ[O] K)
    (hD : ∀ x y : Localization.Away s, D (x * y) = ψ x * D y + ψ y * D x)
    (hE : ∀ x y : Localization.Away s, E (x * y) = ψ x * E y + ψ y * E x)
    (heq : ∀ a : A,
      D (algebraMap (A ⧸ J) (Localization.Away s) (Ideal.Quotient.mk J a)) =
      E (algebraMap (A ⧸ J) (Localization.Away s) (Ideal.Quotient.mk J a))) :
    D = E := by
  apply ext_of_isLocalization (Submonoid.powers s) ψ D E hD hE
  intro r
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective r
  exact heq a

end QuotientAway

end GRWTSK.CommutativeAlgebra.LocalizedPointDerivation
