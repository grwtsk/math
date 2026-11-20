/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.RingTheory.DiscreteValuationRing.Basic
import Mathlib.RingTheory.Ideal.Quotient.Operations
import Mathlib.RingTheory.Localization.Away.Basic

/-!
# Inverting coefficients in a discrete valuation ring

Every nonzero element of a discrete valuation ring is a unit times a power
of a chosen irreducible element. Thus any algebra in which that element
becomes a unit inverts every nonzero coefficient. Inverting a product with
that element supplies the premise, including on the literal quotient and
localization used by the graded slice argument.
-/

namespace GRWTSK.CommutativeAlgebra.DVRLocalizedCoefficients

variable (O B : Type*) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
variable [CommRing B] [Algebra O B]

/-- A unit image of a uniformizer makes every nonzero coefficient a unit.
The target algebra may have zero divisors or be the zero ring. -/
theorem coefficients_are_units_of_uniformizer_isUnit
    (π : O) (hπ : Irreducible π) (hπunit : IsUnit (algebraMap O B π)) :
    ∀ c : O, c ≠ 0 → IsUnit (algebraMap O B c) := by
  intro c hc
  obtain ⟨n, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hc hπ
  rw [map_mul, map_pow]
  exact (u.isUnit.map (algebraMap O B)).mul (hπunit.pow n)

/-- Localizing an arbitrary coefficient algebra away from a product of a
uniformizer and another element inverts every nonzero coefficient. -/
theorem coefficients_are_units_away_mul (π : O) (hπ : Irreducible π) (b : B) :
    ∀ c : O, c ≠ 0 →
      IsUnit (algebraMap O (Localization.Away (algebraMap O B π * b)) c) := by
  let s : B := algebraMap O B π * b
  let C := Localization.Away s
  apply coefficients_are_units_of_uniformizer_isUnit O C π hπ
  have hs : IsUnit (algebraMap B C s) := IsLocalization.Away.algebraMap_isUnit s
  change IsUnit (algebraMap B C (algebraMap O B π * b)) at hs
  rw [map_mul, ← IsScalarTower.algebraMap_apply O B C] at hs
  exact isUnit_of_mul_isUnit_left hs

/-- The coefficient-unit supplier for the actual normalized quotient slice.
Neither a grading nor a finite-type assumption enters this supplier. -/
theorem slice_coefficients_are_units (I : Ideal B) (f g : B)
    (π : O) (hπ : Irreducible π) :
    let J := I ⊔ Ideal.span ({f - 1} : Set B)
    let s : B ⧸ J := algebraMap O (B ⧸ J) π * Ideal.Quotient.mk J g
    let C := Localization.Away s
    ∀ c : O, c ≠ 0 → IsUnit (algebraMap O C c) := by
  dsimp only
  exact coefficients_are_units_away_mul O
    (B ⧸ (I ⊔ Ideal.span ({f - 1} : Set B))) π hπ
    (Ideal.Quotient.mk (I ⊔ Ideal.span ({f - 1} : Set B)) g)

end GRWTSK.CommutativeAlgebra.DVRLocalizedCoefficients
