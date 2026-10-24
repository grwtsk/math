/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #782. Direct stacked parent: draft PR #780 at exact head
`e8d4a7d700f26590eee4d39be7f432cf2f270f1c`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticDiagonalObstruction
import Mathlib.Data.Int.ModEq

/-!
# Zero-winding and modular-wrap decomposition of regular quartic collisions

The natural affine collision coordinate is

`a(u,h)=2*floor(u/2)+h`.

Instead of separating the positive literal diagonal from the signed remainder,
this module preserves all exact-coordinate cancellation together and splits
only according to whether the congruence modulo `d^2` wraps around.

* zero winding: `a(u,h)=a(v,g)`;
* modular wrap: coordinates are congruent modulo `d^2` but unequal.

Every modular-wrap collision has a nonzero integer winding number.
No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Exact-coordinate quartic collisions.  This class includes the literal
diagonal and every nontrivial pair sharing the same integer affine coordinate. -/
def parityHalfShiftSignedQuarticZeroWinding
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ u ∈ parityAffineShiftBaseSet b r h,
        ∑ v ∈ parityAffineShiftBaseSet b r g,
          if parityAffineShiftCollisionCoordinateNat u h =
              parityAffineShiftCollisionCoordinateNat v g then
            regularQuarticMobiusCoefficient u h v g
          else 0

/-- Genuine modular wrap collisions: congruent modulo `d^2`, but distinct as
integer coordinates. -/
def parityHalfShiftSignedQuarticWrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ u ∈ parityAffineShiftBaseSet b r h,
        ∑ v ∈ parityAffineShiftBaseSet b r g,
          if parityAffineShiftCollisionCoordinateNat u h ≡
                parityAffineShiftCollisionCoordinateNat v g [MOD d * d] ∧
              parityAffineShiftCollisionCoordinateNat u h ≠
                parityAffineShiftCollisionCoordinateNat v g then
            regularQuarticMobiusCoefficient u h v g
          else 0

/-- Every genuine wrap collision is separated by a nonzero integer multiple of
the square modulus. -/
theorem wrapCollision_exists_nonzero_winding
    (d u h v g : ℕ) [NeZero d]
    (hwrap :
      parityAffineShiftCollisionCoordinateNat u h ≡
        parityAffineShiftCollisionCoordinateNat v g [MOD d * d])
    (hne :
      parityAffineShiftCollisionCoordinateNat u h ≠
        parityAffineShiftCollisionCoordinateNat v g) :
    ∃ z : ℤ, z ≠ 0 ∧
      (parityAffineShiftCollisionCoordinateNat v g : ℤ) -
          (parityAffineShiftCollisionCoordinateNat u h : ℤ) =
        ((d * d : ℕ) : ℤ) * z := by
  rcases (Nat.modEq_iff_dvd.mp hwrap) with ⟨z, hz⟩
  refine ⟨z, ?_, hz⟩
  intro hz0
  subst z
  have hsub :
      (parityAffineShiftCollisionCoordinateNat v g : ℤ) -
          (parityAffineShiftCollisionCoordinateNat u h : ℤ) = 0 := by
    simpa using hz
  have hcast :
      (parityAffineShiftCollisionCoordinateNat v g : ℤ) =
        (parityAffineShiftCollisionCoordinateNat u h : ℤ) := by
    linarith
  exact hne (by exact_mod_cast hcast.symm)

/-- Pointwise collision indicator splits into zero-winding and genuine-wrap
parts, with the signed coefficient unchanged. -/
theorem quarticCollisionTerm_eq_zeroWinding_add_wrap
    (d u h v g : ℕ) [NeZero d] :
    (if parityAffineShiftResidueCoordinate d u h =
          parityAffineShiftResidueCoordinate d v g then
        regularQuarticMobiusCoefficient u h v g
      else 0) =
      (if parityAffineShiftCollisionCoordinateNat u h =
            parityAffineShiftCollisionCoordinateNat v g then
        regularQuarticMobiusCoefficient u h v g
      else 0) +
      (if parityAffineShiftCollisionCoordinateNat u h ≡
              parityAffineShiftCollisionCoordinateNat v g [MOD d * d] ∧
            parityAffineShiftCollisionCoordinateNat u h ≠
              parityAffineShiftCollisionCoordinateNat v g then
        regularQuarticMobiusCoefficient u h v g
      else 0) := by
  simp only [parityAffineShiftResidueCoordinate_eq_iff_modEq]
  by_cases heq :
      parityAffineShiftCollisionCoordinateNat u h =
        parityAffineShiftCollisionCoordinateNat v g
  · simp [heq, Nat.ModEq.refl]

  · by_cases hmod :
      parityAffineShiftCollisionCoordinateNat u h ≡
        parityAffineShiftCollisionCoordinateNat v g [MOD d * d]
    · simp [heq, hmod]
    · simp [heq, hmod]

/-- Exact decomposition of the coupled quartic collision into integer
zero-winding and genuine modular-wrap classes. -/
theorem parityHalfShiftSignedQuarticCollision_eq_zeroWinding_add_wrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfShiftSignedQuarticCollision b d r H =
      parityHalfShiftSignedQuarticZeroWinding b d r H +
        parityHalfShiftSignedQuarticWrap b d r H := by
  unfold parityHalfShiftSignedQuarticCollision
    parityHalfShiftSignedQuarticZeroWinding
    parityHalfShiftSignedQuarticWrap
  change 4 * (∑ h ∈ H, ∑ g ∈ H, ∑ u ∈ parityAffineShiftBaseSet b r h,
    ∑ v ∈ parityAffineShiftBaseSet b r g,
      if parityAffineShiftResidueCoordinate d u h = parityAffineShiftResidueCoordinate d v g
      then regularQuarticMobiusCoefficient u h v g else 0) = _
  simp_rw [quarticCollisionTerm_eq_zeroWinding_add_wrap d]
  simp_rw [Finset.sum_add_distrib]
  ring

/-- Literal diagonal is contained inside the zero-winding class, but is not
split away from the other exact-coordinate collisions. -/
theorem diagonal_implies_zeroWinding
    (u h v g : ℕ)
    (hdiag : h = g ∧ u = v) :
    parityAffineShiftCollisionCoordinateNat u h =
      parityAffineShiftCollisionCoordinateNat v g := by
  rcases hdiag with ⟨rfl, rfl⟩
  rfl

/-- Conservative source profile for exact-coordinate cancellation. -/
structure RegularQuarticZeroWindingSourceData where
  theoremStatement : Prop
  exactIntegerCoordinateMatched : Prop
  literalDiagonalRetainedInsideClass : Prop
  nontrivialSameCoordinatePairsRetained : Prop
  mobiusQuarticSignsMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularQuarticZeroWindingSource
    (d : RegularQuarticZeroWindingSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactIntegerCoordinateMatched ∧
    d.literalDiagonalRetainedInsideClass ∧
    d.nontrivialSameCoordinatePairsRetained ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

/-- Conservative source profile for nonzero-winding modular-wrap
cancellation. -/
structure RegularQuarticWrapSourceData where
  theoremStatement : Prop
  squareModulusMatched : Prop
  unequalIntegerCoordinatesMatched : Prop
  nonzeroIntegerWindingMatched : Prop
  mobiusQuarticSignsMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularQuarticWrapSource
    (d : RegularQuarticWrapSourceData) : Prop :=
  d.theoremStatement ∧
    d.squareModulusMatched ∧
    d.unequalIntegerCoordinatesMatched ∧
    d.nonzeroIntegerWindingMatched ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.wrapCollision_exists_nonzero_winding
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.quarticCollisionTerm_eq_zeroWinding_add_wrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftSignedQuarticCollision_eq_zeroWinding_add_wrap
