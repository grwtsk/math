/- 
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #807. Direct stacked parent: draft PR #806 at exact head
`db123386910512c5a27633550ef1e56b913e30b7`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingCenteredCorrelation

/-!
# Nonzero-winding wrap collisions in half-index centered coordinates

The genuine wrap branch consists of congruent but unequal affine coordinates.
On parity `r<2`, write

`u = 2*m+r`, `v = 2*n+r`.

Then the two integer collision coordinates are

`c₁ = 2*m+h`, `c₂ = 2*n+g`.

A wrap collision has a nonzero integer winding `z` with

`c₂ - c₁ = z*d^2`.

The four Möbius arguments are the two symmetric pairs around `c₁` and
`c₂`:

`c₁-h+r, c₁+h+r, c₂-g+r, c₂+g+r`.

This module scripts only that exact reindexing and normalization.
No wrap estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Half-index wrap surface, retaining the exact modular congruence and
inequality of the integer coordinates. -/
def parityHalfIndexSignedQuarticWrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
        ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
          if halfIndexZeroWindingCoordinate m h ≡
                halfIndexZeroWindingCoordinate n g [MOD d * d] ∧
              halfIndexZeroWindingCoordinate m h ≠
                halfIndexZeroWindingCoordinate n g then
            halfIndexQuarticMobiusCoefficient r m h n g
          else 0

/-- Exact reindex of the original wrap collision surface into half-index
coordinates. -/
theorem parityHalfShiftSignedQuarticWrap_eq_halfIndex
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ)
    (hr : r < 2) :
    parityHalfShiftSignedQuarticWrap b d r H =
      parityHalfIndexSignedQuarticWrap b d r H := by
  classical
  unfold parityHalfShiftSignedQuarticWrap
    parityHalfIndexSignedQuarticWrap
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
  rfl

/-- Every half-index wrap collision has a nonzero integer winding. -/
theorem halfIndexWrap_exists_nonzero_winding
    (d m h n g : ℕ) [NeZero d]
    (hwrap :
      halfIndexZeroWindingCoordinate m h ≡
        halfIndexZeroWindingCoordinate n g [MOD d * d])
    (hne :
      halfIndexZeroWindingCoordinate m h ≠
        halfIndexZeroWindingCoordinate n g) :
    ∃ z : ℤ, z ≠ 0 ∧
      (halfIndexZeroWindingCoordinate n g : ℤ) -
          (halfIndexZeroWindingCoordinate m h : ℤ) =
        ((d * d : ℕ) : ℤ) * z := by
  rcases Nat.modEq_iff_dvd.mp hwrap with ⟨z, hz⟩
  refine ⟨z, ?_, hz⟩
  intro hz0
  subst z
  have hzero :
      (halfIndexZeroWindingCoordinate n g : ℤ) -
          (halfIndexZeroWindingCoordinate m h : ℤ) = 0 := by
    simpa using hz
  have heq :
      (halfIndexZeroWindingCoordinate n g : ℤ) =
        (halfIndexZeroWindingCoordinate m h : ℤ) := by
    linarith
  exact hne (by exact_mod_cast heq.symm)

/-- Left symmetric pair around the first wrap center. -/
theorem wrapFirst_lower_eq_centered
    (r m h : ℕ) :
    2 * m + r =
      halfIndexZeroWindingCoordinate m h - h + r := by
  unfold halfIndexZeroWindingCoordinate
  omega

theorem wrapFirst_upper_eq_centered
    (r m h : ℕ) :
    2 * m + r + 2 * h =
      halfIndexZeroWindingCoordinate m h + h + r := by
  unfold halfIndexZeroWindingCoordinate
  omega

/-- Right symmetric pair around the second wrap center. -/
theorem wrapSecond_lower_eq_centered
    (r n g : ℕ) :
    2 * n + r =
      halfIndexZeroWindingCoordinate n g - g + r := by
  unfold halfIndexZeroWindingCoordinate
  omega

theorem wrapSecond_upper_eq_centered
    (r n g : ℕ) :
    2 * n + r + 2 * g =
      halfIndexZeroWindingCoordinate n g + g + r := by
  unfold halfIndexZeroWindingCoordinate
  omega

/-- Direct centered form of one wrap quartic coefficient. -/
def centeredWrapQuarticMobiusCoefficient
    (r m h n g : ℕ) : ℝ :=
  let c₁ := halfIndexZeroWindingCoordinate m h
  let c₂ := halfIndexZeroWindingCoordinate n g
  moebiusReal (c₁ - h + r) *
    moebiusReal (c₁ + h + r) *
    moebiusReal (c₂ - g + r) *
    moebiusReal (c₂ + g + r)

/-- Exact equality of the half-index coefficient with the two-center symmetric
coefficient. -/
theorem halfIndexQuarticMobiusCoefficient_eq_centeredWrap
    (r m h n g : ℕ) :
    halfIndexQuarticMobiusCoefficient r m h n g =
      centeredWrapQuarticMobiusCoefficient r m h n g := by
  unfold halfIndexQuarticMobiusCoefficient
    centeredWrapQuarticMobiusCoefficient
  rw [wrapFirst_lower_eq_centered,
    wrapFirst_upper_eq_centered,
    wrapSecond_lower_eq_centered,
    wrapSecond_upper_eq_centered]

/-- Half-index wrap surface with the coefficient written directly as two
symmetric Möbius pairs around separated centers. -/
def parityHalfIndexCenteredSignedQuarticWrap
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) : ℝ :=
  4 * ∑ h ∈ H,
    ∑ g ∈ H,
      ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
        ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
          if halfIndexZeroWindingCoordinate m h ≡
                halfIndexZeroWindingCoordinate n g [MOD d * d] ∧
              halfIndexZeroWindingCoordinate m h ≠
                halfIndexZeroWindingCoordinate n g then
            centeredWrapQuarticMobiusCoefficient r m h n g
          else 0

/-- Exact centered-coefficient rewrite of the half-index wrap surface. -/
theorem parityHalfIndexSignedQuarticWrap_eq_centered
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityHalfIndexSignedQuarticWrap b d r H =
      parityHalfIndexCenteredSignedQuarticWrap b d r H := by
  unfold parityHalfIndexSignedQuarticWrap
    parityHalfIndexCenteredSignedQuarticWrap
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro h _hh
  apply Finset.sum_congr rfl
  intro g _hg
  apply Finset.sum_congr rfl
  intro m _hm
  apply Finset.sum_congr rfl
  intro n _hn
  by_cases hcoll :
      halfIndexZeroWindingCoordinate m h ≡
          halfIndexZeroWindingCoordinate n g [MOD d * d] ∧
        halfIndexZeroWindingCoordinate m h ≠
          halfIndexZeroWindingCoordinate n g
  · simp [hcoll, halfIndexQuarticMobiusCoefficient_eq_centeredWrap]
  · simp [hcoll]

/-- Conservative source profile for a theorem controlling the centered
nonzero-winding wrap family. -/
structure RegularCenteredWrapCorrelationSourceData where
  theoremStatement : Prop
  exactHalfIndexSupportsMatched : Prop
  firstCenterMatched : Prop
  secondCenterMatched : Prop
  centerDifferenceNonzeroSquareMultipleMatched : Prop
  firstSymmetricMobiusPairMatched : Prop
  secondSymmetricMobiusPairMatched : Prop
  mobiusQuarticSignsMatched : Prop
  evenOddHalfShiftFamiliesMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularCenteredWrapCorrelationSource
    (d : RegularCenteredWrapCorrelationSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactHalfIndexSupportsMatched ∧
    d.firstCenterMatched ∧
    d.secondCenterMatched ∧
    d.centerDifferenceNonzeroSquareMultipleMatched ∧
    d.firstSymmetricMobiusPairMatched ∧
    d.secondSymmetricMobiusPairMatched ∧
    d.mobiusQuarticSignsMatched ∧
    d.evenOddHalfShiftFamiliesMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfShiftSignedQuarticWrap_eq_halfIndex
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.halfIndexWrap_exists_nonzero_winding
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.halfIndexQuarticMobiusCoefficient_eq_centeredWrap
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityHalfIndexSignedQuarticWrap_eq_centered
