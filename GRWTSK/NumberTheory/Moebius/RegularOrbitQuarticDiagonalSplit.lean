/- 
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #775. Direct stacked parent: draft PR #773 at exact head
`d7eca838836b84e3163d57305144825f36056b69`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitSignedQuarticCollisions

/-!
# Diagonal / off-diagonal split for regular quartic collisions

The affine residue coordinate is the natural integer quantity

`2 * floor(u/2) + h`

reduced modulo `d^2`.

This module makes that congruence explicit and splits the exact signed quartic
collision into the literal diagonal `(h,u)=(g,v)` and a signed off-diagonal
remainder.  No positivity replacement and no analytic estimate is used.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Natural-number affine collision coordinate before reduction modulo
`d^2`. -/
def parityAffineShiftCollisionCoordinateNat
    (u h : ℕ) : ℕ :=
  2 * (u / 2) + h

/-- The existing residue coordinate is exactly the natural affine coordinate
cast into `ZMod (d^2)`. -/
theorem parityAffineShiftResidueCoordinate_eq_natCast
    (d u h : ℕ) [NeZero d] :
    parityAffineShiftResidueCoordinate d u h =
      (parityAffineShiftCollisionCoordinateNat u h :
        ZMod (d * d)) := by
  unfold parityAffineShiftResidueCoordinate
    parityResidueCoordinate
    parityAffineShiftCollisionCoordinateNat
  push_cast
  ring

/-- Exact integer-congruence form of the affine residue collision. -/
theorem parityAffineShiftResidueCoordinate_eq_iff_modEq
    (d u h v g : ℕ) [NeZero d] :
    parityAffineShiftResidueCoordinate d u h =
        parityAffineShiftResidueCoordinate d v g ↔
      parityAffineShiftCollisionCoordinateNat u h ≡
        parityAffineShiftCollisionCoordinateNat v g [MOD d * d] := by
  rw [parityAffineShiftResidueCoordinate_eq_natCast,
    parityAffineShiftResidueCoordinate_eq_natCast,
    ZMod.natCast_eq_natCast_iff]

/-- Quartic Möbius coefficient attached to one pair of affine pairs. -/
def regularQuarticMobiusCoefficient
    (u h v g : ℕ) : ℝ :=
  moebiusReal u *
    moebiusReal (u + 2 * h) *
    moebiusReal v *
    moebiusReal (v + 2 * g)

/-- Literal diagonal part of one signed quartic collision family. -/
def parityHalfShiftQuarticDiagonal
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ u ∈ parityAffineShiftBaseSet b r h,
        ∑ v ∈ parityAffineShiftBaseSet b r g,
          if h = g ∧ u = v then
            regularQuarticMobiusCoefficient u h v g
          else 0

/-- Signed off-diagonal part: the affine coordinates are congruent modulo
`d^2`, but the affine pairs are not literally equal. -/
def parityHalfShiftSignedQuarticOffDiagonal
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ u ∈ parityAffineShiftBaseSet b r h,
        ∑ v ∈ parityAffineShiftBaseSet b r g,
          if parityAffineShiftCollisionCoordinateNat u h ≡
                parityAffineShiftCollisionCoordinateNat v g [MOD d * d] ∧
              ¬ (h = g ∧ u = v) then
            regularQuarticMobiusCoefficient u h v g
          else 0

/-- Literal diagonal equality always implies the affine residue collision. -/
theorem diagonal_implies_affineCollision
    (d u h v g : ℕ) [NeZero d]
    (hdiag : h = g ∧ u = v) :
    parityAffineShiftCollisionCoordinateNat u h ≡
      parityAffineShiftCollisionCoordinateNat v g [MOD d * d] := by
  rcases hdiag with ⟨rfl, rfl⟩
  exact Nat.ModEq.refl _

/-- Pointwise collision indicator splits into literal diagonal and signed
off-diagonal indicators. -/
theorem quarticCollisionTerm_eq_diagonal_add_offDiagonal
    (d u h v g : ℕ) [NeZero d] :
    (if parityAffineShiftResidueCoordinate d u h =
          parityAffineShiftResidueCoordinate d v g then
        regularQuarticMobiusCoefficient u h v g
      else 0) =
      (if h = g ∧ u = v then
        regularQuarticMobiusCoefficient u h v g
      else 0) +
      (if parityAffineShiftCollisionCoordinateNat u h ≡
              parityAffineShiftCollisionCoordinateNat v g [MOD d * d] ∧
            ¬ (h = g ∧ u = v) then
        regularQuarticMobiusCoefficient u h v g
      else 0) := by
  rw [parityAffineShiftResidueCoordinate_eq_iff_modEq]
  by_cases hdiag : h = g ∧ u = v
  · have hcoll :=
      diagonal_implies_affineCollision d u h v g hdiag
    simp [hdiag, hcoll]
  · by_cases hcoll :
      parityAffineShiftCollisionCoordinateNat u h ≡
        parityAffineShiftCollisionCoordinateNat v g [MOD d * d]
    · simp [hdiag, hcoll]
    · simp [hdiag, hcoll]

/-- Exact diagonal/off-diagonal decomposition of the signed quartic collision
surface. -/
theorem parityHalfShiftSignedQuarticCollision_eq_diagonal_add_offDiagonal
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfShiftSignedQuarticCollision b d r H =
      parityHalfShiftQuarticDiagonal b d r H +
        parityHalfShiftSignedQuarticOffDiagonal b d r H := by
  unfold parityHalfShiftSignedQuarticCollision
    parityHalfShiftQuarticDiagonal
    parityHalfShiftSignedQuarticOffDiagonal
    regularQuarticMobiusCoefficient
  simp_rw [quarticCollisionTerm_eq_diagonal_add_offDiagonal d]
  simp_rw [← Finset.sum_add_distrib]
  ring

/-- Diagonal coefficient is the square of the binary Möbius product. -/
theorem regularQuarticMobiusCoefficient_diagonal
    (u h : ℕ) :
    regularQuarticMobiusCoefficient u h u h =
      (moebiusReal u * moebiusReal (u + 2 * h)) ^ 2 := by
  unfold regularQuarticMobiusCoefficient
  ring

/-- Conservative source profile for the genuinely cancellation-sensitive
off-diagonal quartic congruence theorem. -/
structure RegularSignedQuarticOffDiagonalSourceData where
  theoremStatement : Prop
  explicitNaturalCoordinateMatched : Prop
  modulusExactlySquareMatched : Prop
  literalDiagonalRemoved : Prop
  congruentOffDiagonalFamilyMatched : Prop
  mobiusQuarticSignsMatched : Prop
  evenHalfShiftFamilyMatched : Prop
  oddHalfShiftFamilyMatched : Prop
  bothEndpointParityClassesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularSignedQuarticOffDiagonalSource
    (d : RegularSignedQuarticOffDiagonalSourceData) : Prop :=
  d.theoremStatement ∧
    d.explicitNaturalCoordinateMatched ∧
    d.modulusExactlySquareMatched ∧
    d.literalDiagonalRemoved ∧
    d.congruentOffDiagonalFamilyMatched ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenHalfShiftFamilyMatched ∧
    d.oddHalfShiftFamilyMatched ∧
    d.bothEndpointParityClassesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityAffineShiftResidueCoordinate_eq_iff_modEq
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.quarticCollisionTerm_eq_diagonal_add_offDiagonal
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftSignedQuarticCollision_eq_diagonal_add_offDiagonal
