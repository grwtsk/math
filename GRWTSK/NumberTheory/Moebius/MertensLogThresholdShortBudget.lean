/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #531. Direct stacked parent: draft PR #529 at
`311aba5e13658c6168559c7d14957c0bbbfc13cb`.
-/
import GRWTSK.NumberTheory.Moebius.MertensShortLongShiftThreshold

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Explicit logarithmic cumulative-length threshold.  Since the ambient
dyadic scale is `X=2^j`, this is logarithmic in `X`. -/
def logarithmicShiftThreshold (j : ℕ) : ℕ := j + 2

/-- The exact denominator coordinate of the initial reciprocal difference at
depth `t`. -/
def harmonicInitialDenominator (j t : ℕ) : ℕ :=
  max (2 ^ j) (t + 2)

/-- Closed form of the initial reciprocal difference used in the deterministic
short-range payment. -/
theorem harmonicShiftFirstDifference_zero_eq_maxDrop
    (j t : ℕ) :
    harmonicShiftFirstDifference j t 0 =
      (((harmonicInitialDenominator j t : ℕ) : ℝ))⁻¹ -
        ((((harmonicInitialDenominator j t + 1 : ℕ) : ℝ))⁻¹) := by
  unfold harmonicShiftFirstDifference harmonicShiftReciprocal
    harmonicInitialDenominator harmonicShiftLower
  by_cases ht : t + 2 ≤ 2 ^ j
  · have hmax : max (2 ^ j) (t + 2) = 2 ^ j :=
      max_eq_left ht
    have hL : max 1 (2 ^ j - t - 1) = 2 ^ j - t - 1 := by
      apply max_eq_right
      omega
    rw [hmax, hL]
    congr 2 <;> omega
  · have ht' : 2 ^ j ≤ t + 2 := Nat.le_of_not_ge ht
    have hmax : max (2 ^ j) (t + 2) = t + 2 :=
      max_eq_right ht'
    have hL : max 1 (2 ^ j - t - 1) = 1 := by
      apply max_eq_left
      omega
    rw [hmax, hL]
    congr 2 <;> omega

/-- Normalized deterministic short-range budget at one depth after restoring
the exact `2/Y` depth-slice prefactor. -/
def normalizedShortDepthBudget
    (j t : ℕ) : ℝ :=
  2 * (logarithmicShiftThreshold j : ℝ) *
    (t + 1 : ℝ) *
      harmonicShiftFirstDifference j t 0

/-- The actual short second-Abel contribution at one depth is paid by the
normalized deterministic budget. -/
theorem normalized_shortContribution_le_budget
    (j t : ℕ) :
    2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ *
        |harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      normalizedShortDepthBudget j t := by
  have hshort :=
    abs_harmonicCumulativeShortContribution_le
      j t (logarithmicShiftThreshold j)
  let YR : ℝ := ((2 ^ (j + 1) : ℕ) : ℝ)
  have hYR : 0 < YR := by
    dsimp [YR]
    positivity
  unfold normalizedShortDepthBudget
  calc
    2 * YR⁻¹ *
        |harmonicCumulativeShortContribution
          j t (logarithmicShiftThreshold j)| ≤
      2 * YR⁻¹ *
        (YR * (logarithmicShiftThreshold j : ℝ) *
          (t + 1 : ℝ) *
            harmonicShiftFirstDifference j t 0) := by
      apply mul_le_mul_of_nonneg_left hshort
      positivity
    _ = 2 * (logarithmicShiftThreshold j : ℝ) *
        (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0 := by
      field_simp [ne_of_gt hYR]
      ring

/-- Total deterministic short-range budget over all inherited depths. -/
def normalizedShortPacketBudget
    (j : ℕ) : ℝ :=
  ∑ t ∈ Finset.range (2 ^ (j + 1)),
    normalizedShortDepthBudget j t

/-- Pure finite reciprocal-depth obligation left after the exact threshold
normalization.  This is a deterministic arithmetic statement, not a Möbius
cancellation hypothesis. -/
def LogThresholdFiniteDepthBudget (j : ℕ) : Prop :=
  (∑ t ∈ Finset.range (2 ^ (j + 1)),
      (t + 1 : ℝ) * harmonicShiftFirstDifference j t 0) ≤ 3

/-- Once the pure finite reciprocal-depth obligation is supplied, the total
short-range packet budget is at most six times the logarithmic threshold.

The remaining hypothesis contains no Möbius values and is intended for a
separate elementary finite-sum proof. -/
theorem normalizedShortPacketBudget_le_six_logThreshold_of_finiteDepthBudget
    (j : ℕ)
    (hfinite : LogThresholdFiniteDepthBudget j) :
    normalizedShortPacketBudget j ≤
      6 * (logarithmicShiftThreshold j : ℝ) := by
  unfold normalizedShortPacketBudget normalizedShortDepthBudget
  rw [Finset.mul_sum]
  calc
    2 * (logarithmicShiftThreshold j : ℝ) *
        (∑ t ∈ Finset.range (2 ^ (j + 1)),
          (t + 1 : ℝ) * harmonicShiftFirstDifference j t 0) ≤
      2 * (logarithmicShiftThreshold j : ℝ) * 3 := by
        apply mul_le_mul_of_nonneg_left hfinite
        positivity
    _ = 6 * (logarithmicShiftThreshold j : ℝ) := by ring

/-- The logarithmic threshold tends to infinity with the dyadic scale. -/
theorem logarithmicShiftThreshold_ge_two
    (j : ℕ) :
    2 ≤ logarithmicShiftThreshold j := by
  unfold logarithmicShiftThreshold
  omega

/-- Exact remaining analytic regime: only cumulative lengths at least
`j+2` need a short-interval theorem. -/
def LogThresholdLongLengthCondition
    (j t n : ℕ) : Prop :=
  logarithmicShiftThreshold j ≤ n ∧
    n ≤ harmonicShiftCount j t

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalized_shortContribution_le_budget
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedShortPacketBudget_le_six_logThreshold_of_finiteDepthBudget
