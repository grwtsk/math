/- 
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #805. Direct stacked parent: draft PR #802 at exact head
`afa485d75dfc2b86d0f3337bef33fcb3011d9e81`.
-/
import GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingSymmetricCorrelation

/-!
# Centered Chowla support for zero-winding symmetric correlations

The remaining zero-winding summand is already

`mu(c-h+r) * mu(c+h+r)`.

This module eliminates the final half-index support wrapper.  For a fixed
center `c`, a shift `h` is admissible exactly when

* `h` belongs to the declared half-shift family;
* `h ≤ c`;
* `c-h` is even;
* `1 ≤ c-h+r`;
* `c+h+r ≤ b`.

Thus the zero-winding surface is an exact centered second moment of symmetric
two-point Möbius correlations on visible endpoint support.

No analytic estimate is proved.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Visible centered support for the symmetric Möbius correlation. -/
def zeroWindingCenteredShiftSet
    (b r c : ℕ)
    (H : Finset ℕ) : Finset ℕ :=
  H.filter fun h =>
    h ≤ c ∧
      (c - h) % 2 = 0 ∧
      1 ≤ c - h + r ∧
      c + h + r ≤ b

/-- Membership in the solved half-index base is exactly the pair of visible
endpoint inequalities once the center/shift parity conditions are known. -/
theorem solvedHalfIndex_mem_halfIndexBase_iff_centeredBounds
    {b r c h : ℕ}
    (hle : h ≤ c)
    (heven : (c - h) % 2 = 0) :
    zeroWindingHalfIndexFromCoordinate c h ∈
        zeroWindingHalfIndexBaseSet b r h ↔
      1 ≤ c - h + r ∧
        c + h + r ≤ b := by
  unfold zeroWindingHalfIndexBaseSet
    parityHalfIndexAffineBaseSet
  rw [Finset.mem_filter]
  constructor
  · intro hm
    rcases hm with ⟨_hmRange, hmBounds⟩
    constructor
    · rw [← solvedHalfIndex_lower_eq_symmetricLeft hle heven]
      exact hmBounds.1
    · rw [← solvedHalfIndex_upper_eq_symmetricRight hle heven]
      exact hmBounds.2
  · intro hbounds
    constructor
    · apply Finset.mem_range.mpr
      have htop :
          zeroWindingHalfIndexFromCoordinate c h ≤ b := by
        unfold zeroWindingHalfIndexFromCoordinate
        omega
      omega
    · constructor
      · rw [solvedHalfIndex_lower_eq_symmetricLeft hle heven]
        exact hbounds.1
      · rw [solvedHalfIndex_upper_eq_symmetricRight hle heven]
        exact hbounds.2

/-- Exact equality between the internal admissible-shift support and the
visible centered support. -/
theorem zeroWindingAdmissibleShiftSet_eq_centered
    (b r c : ℕ)
    (H : Finset ℕ) :
    zeroWindingAdmissibleShiftSet b r c H =
      zeroWindingCenteredShiftSet b r c H := by
  ext h
  rw [mem_zeroWindingAdmissibleShiftSet]
  simp only [zeroWindingCenteredShiftSet, Finset.mem_filter]
  constructor
  · intro hm
    refine ⟨hm.1, hm.2.1, hm.2.2.1, ?_⟩
    exact
      (solvedHalfIndex_mem_halfIndexBase_iff_centeredBounds
        hm.2.1 hm.2.2.1).mp hm.2.2.2
  · intro hm
    refine ⟨hm.1, hm.2.1, hm.2.2.1, ?_⟩
    exact
      (solvedHalfIndex_mem_halfIndexBase_iff_centeredBounds
        hm.2.1 hm.2.2.1).mpr hm.2.2.2

/-- Centered symmetric Möbius correlation with no hidden support wrapper. -/
def parityZeroWindingCenteredMobiusCorrelation
    (b r c : ℕ)
    (H : Finset ℕ) : ℝ :=
  ∑ h ∈ zeroWindingCenteredShiftSet b r c H,
    moebiusReal (c - h + r) *
      moebiusReal (c + h + r)

/-- Exact equality of the previous symmetric correlation and the centered
visible-support correlation. -/
theorem parityZeroWindingSymmetricMobiusCorrelation_eq_centered
    (b r c : ℕ)
    (H : Finset ℕ) :
    parityZeroWindingSymmetricMobiusCorrelation b r c H =
      parityZeroWindingCenteredMobiusCorrelation b r c H := by
  unfold parityZeroWindingSymmetricMobiusCorrelation
    parityZeroWindingCenteredMobiusCorrelation
  rw [zeroWindingAdmissibleShiftSet_eq_centered]

/-- Even-half-shift centered second moment for one endpoint parity. -/
def parityEvenZeroWindingCenteredSecondMoment
    (b r : ℕ) : ℝ :=
  4 * ∑ c ∈ Finset.range (b + 1),
    parityZeroWindingCenteredMobiusCorrelation
      b r c (positiveEndpointEvenShiftSet b) ^ 2

/-- Odd-half-shift centered second moment for one endpoint parity. -/
def parityOddZeroWindingCenteredSecondMoment
    (b r : ℕ) : ℝ :=
  4 * ∑ c ∈ Finset.range (b + 1),
    parityZeroWindingCenteredMobiusCorrelation
      b r c (positiveEndpointOddShiftSet b) ^ 2

/-- Exact even-family equality with the prior symmetric surface. -/
theorem evenZeroWindingSymmetricSecondMoment_eq_centered
    (b r : ℕ) :
    parityEvenZeroWindingSymmetricSecondMoment b r =
      parityEvenZeroWindingCenteredSecondMoment b r := by
  unfold parityEvenZeroWindingSymmetricSecondMoment
    parityEvenZeroWindingCenteredSecondMoment
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro c _hc
  rw [parityZeroWindingSymmetricMobiusCorrelation_eq_centered]

/-- Exact odd-family equality with the prior symmetric surface. -/
theorem oddZeroWindingSymmetricSecondMoment_eq_centered
    (b r : ℕ) :
    parityOddZeroWindingSymmetricSecondMoment b r =
      parityOddZeroWindingCenteredSecondMoment b r := by
  unfold parityOddZeroWindingSymmetricSecondMoment
    parityOddZeroWindingCenteredSecondMoment
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro c _hc
  rw [parityZeroWindingSymmetricMobiusCorrelation_eq_centered]

/-- Four-family zero-winding surface in fully visible centered coordinates. -/
def twoNonunitRegularZeroWindingCenteredSecondMomentMajorant
    (b : ℕ) : ℝ :=
  Real.sqrt (parityEvenZeroWindingCenteredSecondMoment b 0) +
    Real.sqrt (parityOddZeroWindingCenteredSecondMoment b 0) +
    Real.sqrt (parityEvenZeroWindingCenteredSecondMoment b 1) +
    Real.sqrt (parityOddZeroWindingCenteredSecondMoment b 1)

/-- Exact equality with the previous zero-winding symmetric second-moment
surface. -/
theorem zeroWindingSymmetricMajorant_eq_centered
    (b : ℕ) :
    twoNonunitRegularZeroWindingSymmetricSecondMomentMajorant b =
      twoNonunitRegularZeroWindingCenteredSecondMomentMajorant b := by
  unfold twoNonunitRegularZeroWindingSymmetricSecondMomentMajorant
    twoNonunitRegularZeroWindingCenteredSecondMomentMajorant
  rw [evenZeroWindingSymmetricSecondMoment_eq_centered,
    oddZeroWindingSymmetricSecondMoment_eq_centered,
    evenZeroWindingSymmetricSecondMoment_eq_centered,
    oddZeroWindingSymmetricSecondMoment_eq_centered]

/-- Conservative source profile for a theorem stated directly on the centered
symmetric Möbius second moment. -/
structure RegularZeroWindingCenteredCorrelationSourceData where
  theoremStatement : Prop
  shiftFamilyMatched : Prop
  centerRangeMatched : Prop
  shiftBelowCenterMatched : Prop
  evenCenterShiftDifferenceMatched : Prop
  leftEndpointMatched : Prop
  rightEndpointMatched : Prop
  symmetricMobiusProductMatched : Prop
  squareSecondMomentMatched : Prop
  bothEndpointParitiesMatched : Prop
  naturalScaleNormalizationMatched : Prop

def RegularZeroWindingCenteredCorrelationSource
    (d : RegularZeroWindingCenteredCorrelationSourceData) : Prop :=
  d.theoremStatement ∧
    d.shiftFamilyMatched ∧
    d.centerRangeMatched ∧
    d.shiftBelowCenterMatched ∧
    d.evenCenterShiftDifferenceMatched ∧
    d.leftEndpointMatched ∧
    d.rightEndpointMatched ∧
    d.symmetricMobiusProductMatched ∧
    d.squareSecondMomentMatched ∧
    d.bothEndpointParitiesMatched ∧
    d.naturalScaleNormalizationMatched

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.solvedHalfIndex_mem_halfIndexBase_iff_centeredBounds
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.zeroWindingAdmissibleShiftSet_eq_centered
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.parityZeroWindingSymmetricMobiusCorrelation_eq_centered
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.zeroWindingSymmetricMajorant_eq_centered
