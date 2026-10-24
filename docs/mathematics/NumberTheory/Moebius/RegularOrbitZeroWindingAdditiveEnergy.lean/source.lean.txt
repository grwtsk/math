/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #787. Direct stacked parent: draft PR #784 at exact head
`ff7dc282ea713a9ce5b4b76e81c5c6cb789abacb`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitQuarticWindingSplit

/-!
# Zero-winding regular quartic collisions as half-index additive energy

On endpoint parity `r<2`, write

`u = 2*m+r`, `v = 2*n+r`.

The natural collision coordinate becomes

`2*m+h`.

Hence the zero-winding equation is exactly

`2*m+h = 2*n+g`.

This module reindexes the signed zero-winding quartic collision into that
half-index additive-energy form. No estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Half-index zero-winding coordinate. -/
def halfIndexZeroWindingCoordinate
    (m h : ℕ) : ℕ :=
  2 * m + h

/-- Reconstruction of the natural affine collision coordinate on parity
`r<2`. -/
theorem parityAffineShiftCollisionCoordinateNat_reconstructed
    (m r h : ℕ)
    (hr : r < 2) :
    parityAffineShiftCollisionCoordinateNat (2 * m + r) h =
      halfIndexZeroWindingCoordinate m h := by
  unfold parityAffineShiftCollisionCoordinateNat
    halfIndexZeroWindingCoordinate
  rw [reconstructedParity_half_eq m r hr]

/-- Exact half-index support reused from the growing-shift normalization. -/
abbrev zeroWindingHalfIndexBaseSet
    (b r h : ℕ) : Finset ℕ :=
  parityHalfIndexAffineBaseSet b r h

/-- Quartic Möbius coefficient in half-index coordinates. -/
def halfIndexQuarticMobiusCoefficient
    (r m h n g : ℕ) : ℝ :=
  moebiusReal (2 * m + r) *
    moebiusReal (2 * m + r + 2 * h) *
    moebiusReal (2 * n + r) *
    moebiusReal (2 * n + r + 2 * g)

/-- Exact zero-winding signed quartic additive-energy surface in half-index
coordinates. -/
def parityHalfIndexSignedQuarticZeroWinding
    (b r : ℕ)
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
        ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
          if halfIndexZeroWindingCoordinate m h =
              halfIndexZeroWindingCoordinate n g then
            halfIndexQuarticMobiusCoefficient r m h n g
          else 0

/-- The original quartic coefficient is exactly the half-index coefficient
after parity reconstruction. -/
theorem regularQuarticMobiusCoefficient_reconstructed
    (r m h n g : ℕ) :
    regularQuarticMobiusCoefficient
        (2 * m + r) h (2 * n + r) g =
      halfIndexQuarticMobiusCoefficient r m h n g := by
  rfl

/-- Generic two-variable exact reindex of a parity-restricted double sum into
half-index coordinates. -/
theorem sum_two_parityAffineShiftBaseSet_eq_halfIndex
    {α : Type*} [AddCommMonoid α]
    (b r h g : ℕ)
    (hr : r < 2)
    (f : ℕ → ℕ → α) :
    (∑ u ∈ parityAffineShiftBaseSet b r h,
      ∑ v ∈ parityAffineShiftBaseSet b r g, f u v) =
      ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
        ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
          f (2 * m + r) (2 * n + r) := by
  rw [sum_parityAffineShiftBaseSet_eq_halfIndex b r h hr]
  apply Finset.sum_congr rfl
  intro m _hm
  rw [sum_parityAffineShiftBaseSet_eq_halfIndex b r g hr]

/-- Exact reindex of the zero-winding signed quartic collision into half-index
additive-energy coordinates. -/
theorem parityHalfShiftSignedQuarticZeroWinding_eq_halfIndex
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (hr : r < 2) :
    parityHalfShiftSignedQuarticZeroWinding b d r H =
      parityHalfIndexSignedQuarticZeroWinding b r H := by
  classical
  unfold parityHalfShiftSignedQuarticZeroWinding
    parityHalfIndexSignedQuarticZeroWinding
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro h _hh
  apply Finset.sum_congr rfl
  intro g _hg
  rw [sum_two_parityAffineShiftBaseSet_eq_halfIndex b r h g hr]
  apply Finset.sum_congr rfl
  intro m _hm
  apply Finset.sum_congr rfl
  intro n _hn
  rw [parityAffineShiftCollisionCoordinateNat_reconstructed m r h hr,
    parityAffineShiftCollisionCoordinateNat_reconstructed n r g hr,
    regularQuarticMobiusCoefficient_reconstructed]

/-- Zero-winding equation as an additive-energy equality. -/
theorem halfIndexZeroWindingCoordinate_eq_iff
    (m h n g : ℕ) :
    halfIndexZeroWindingCoordinate m h =
        halfIndexZeroWindingCoordinate n g ↔
      2 * m + h = 2 * n + g := by
  rfl

/-- Difference form of the same additive-energy relation. -/
theorem halfIndexZeroWinding_eq_shiftDifference
    {m h n g : ℕ}
    (hEq :
      halfIndexZeroWindingCoordinate m h =
        halfIndexZeroWindingCoordinate n g) :
    2 * m + h = 2 * n + g := by
  exact hEq

/-- Conservative source profile for a genuine additive-energy theorem on the
zero-winding family. -/
structure RegularZeroWindingAdditiveEnergySourceData where
  theoremStatement : Prop
  halfIndexSupportMatched : Prop
  coordinateTwoMPlusHMatched : Prop
  exactCoordinateEqualityMatched : Prop
  mobiusQuarticSignsMatched : Prop
  literalDiagonalRetained : Prop
  nontrivialSameCoordinatePairsRetained : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularZeroWindingAdditiveEnergySource
    (d : RegularZeroWindingAdditiveEnergySourceData) : Prop :=
  d.theoremStatement ∧
    d.halfIndexSupportMatched ∧
    d.coordinateTwoMPlusHMatched ∧
    d.exactCoordinateEqualityMatched ∧
    d.mobiusQuarticSignsMatched ∧
    d.literalDiagonalRetained ∧
    d.nontrivialSameCoordinatePairsRetained ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityAffineShiftCollisionCoordinateNat_reconstructed
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_two_parityAffineShiftBaseSet_eq_halfIndex
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftSignedQuarticZeroWinding_eq_halfIndex
