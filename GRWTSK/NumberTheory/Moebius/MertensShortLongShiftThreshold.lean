/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: LITERATURE_REVIEWED / SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #528. Direct stacked parent: draft PR #526 at
`ae9faab62e1f426a7ecc44f92a452ac33e118934`.
-/
import GRWTSK.NumberTheory.Moebius.MertensCumulativeShiftShortInterval

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Trivial absolute bound for one ordinary two-point Möbius prefix. -/
theorem abs_mertensTwoPointPrefix_le_length
    (h N : ℕ) :
    |mertensTwoPointPrefix h N| ≤ (N : ℝ) := by
  unfold mertensTwoPointPrefix
  calc
    |∑ a ∈ Finset.range N,
      moebiusReal (a + 1) * moebiusReal (a + 1 + h)| ≤
      ∑ a ∈ Finset.range N,
        |moebiusReal (a + 1) * moebiusReal (a + 1 + h)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _a ∈ Finset.range N, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro a _ha
      rw [abs_mul]
      exact mul_le_one
        (abs_nonneg _)
        (moebiusReal_abs_le_one (a + 1))
        (moebiusReal_abs_le_one (a + 1 + h))
    _ = N := by simp

/-- Trivial bound for the first `n` active cumulative shift correlations. -/
theorem abs_cumulativeHarmonicShiftCorrelation_le_trivial
    (j t n : ℕ) :
    |cumulativeHarmonicShiftCorrelation j t n| ≤
      (n : ℝ) * (t + 1 : ℝ) := by
  unfold cumulativeHarmonicShiftCorrelation harmonicShiftCorrelation
  calc
    |∑ k ∈ Finset.range n,
      mertensTwoPointPrefix (harmonicShiftLower j t + k) (t + 1)| ≤
      ∑ k ∈ Finset.range n,
        |mertensTwoPointPrefix (harmonicShiftLower j t + k) (t + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _k ∈ Finset.range n, (t + 1 : ℝ) := by
      apply Finset.sum_le_sum
      intro k _hk
      exact abs_mertensTwoPointPrefix_le_length
        (harmonicShiftLower j t + k) (t + 1)
    _ = (n : ℝ) * (t + 1 : ℝ) := by
      simp [mul_comm]

/-- First reciprocal difference in the active harmonic shift coordinate. -/
def harmonicShiftFirstDifference
    (j t k : ℕ) : ℝ :=
  harmonicShiftReciprocal j t k -
    harmonicShiftReciprocal j t (k + 1)

/-- Second reciprocal difference in the active harmonic shift coordinate. -/
def harmonicShiftSecondDifference
    (j t k : ℕ) : ℝ :=
  harmonicShiftFirstDifference j t k -
    harmonicShiftFirstDifference j t (k + 1)

/-- Short cumulative-length part of the second-Abel representation.
Only `k+1 < H` is retained. -/
def harmonicCumulativeShortContribution
    (j t H : ℕ) : ℝ :=
  ((2 ^ (j + 1) : ℕ) : ℝ) *
    ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
        (fun k => k + 1 < H),
      cumulativeHarmonicShiftCorrelation j t (k + 1) *
        harmonicShiftSecondDifference j t k

/-- Long cumulative-length part of the interior second-Abel representation. -/
def harmonicCumulativeLongContribution
    (j t H : ℕ) : ℝ :=
  ((2 ^ (j + 1) : ℕ) : ℝ) *
    ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
        (fun k => H ≤ k + 1),
      cumulativeHarmonicShiftCorrelation j t (k + 1) *
        harmonicShiftSecondDifference j t k

/-- Exact split of the interior second-Abel sum at cumulative-length threshold
`H`. -/
theorem harmonicCumulativeInterior_eq_short_add_long
    (j t H : ℕ) :
    ((2 ^ (j + 1) : ℕ) : ℝ) *
      ∑ k ∈ Finset.range (harmonicShiftCount j t - 1),
        cumulativeHarmonicShiftCorrelation j t (k + 1) *
          harmonicShiftSecondDifference j t k =
      harmonicCumulativeShortContribution j t H +
        harmonicCumulativeLongContribution j t H := by
  unfold harmonicCumulativeShortContribution
    harmonicCumulativeLongContribution
  rw [← Finset.mul_sum, ← Finset.mul_sum, ← mul_add]
  congr 1
  rw [← Finset.sum_filter_add_sum_filter_not
    (s := Finset.range (harmonicShiftCount j t - 1))
    (p := fun k => k + 1 < H)]
  apply congrArg
  ext k
  simp [Nat.not_lt]

/-- The sum of all nonnegative second differences is bounded by the first
difference at the beginning of the active range. -/
theorem sum_harmonicShiftSecondDifference_le_first
    (j t N : ℕ) :
    (∑ k ∈ Finset.range N,
      harmonicShiftSecondDifference j t k) ≤
      harmonicShiftFirstDifference j t 0 := by
  unfold harmonicShiftSecondDifference harmonicShiftFirstDifference
  have htel := finite_weight_drop_telescope
    (fun k => harmonicShiftReciprocal j t k -
      harmonicShiftReciprocal j t (k + 1)) N
  rw [htel]
  have hnonneg :
      0 ≤ harmonicShiftReciprocal j t N -
        harmonicShiftReciprocal j t (N + 1) := by
    unfold harmonicShiftReciprocal
    apply sub_nonneg.mpr
    apply one_div_le_one_div_of_le
    · positivity
    · exact_mod_cast Nat.le_succ
        (t + 1 + (harmonicShiftLower j t + N))
  linarith

/-- Deterministic short-length bound.  It pays cumulative lengths below `H`
trivially and charges only the first reciprocal difference. -/
theorem abs_harmonicCumulativeShortContribution_le
    (j t H : ℕ) :
    |harmonicCumulativeShortContribution j t H| ≤
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        (H : ℝ) * (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0 := by
  unfold harmonicCumulativeShortContribution
  have hcoef :
      ∀ k : ℕ, 0 ≤ harmonicShiftSecondDifference j t k := by
    intro k
    exact harmonicShiftReciprocal_secondDifference_nonneg j t k
  calc
    |((2 ^ (j + 1) : ℕ) : ℝ) *
      ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
          (fun k => k + 1 < H),
        cumulativeHarmonicShiftCorrelation j t (k + 1) *
          harmonicShiftSecondDifference j t k| =
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        |∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => k + 1 < H),
          cumulativeHarmonicShiftCorrelation j t (k + 1) *
            harmonicShiftSecondDifference j t k| := by
      rw [abs_mul, abs_of_nonneg (by positivity)]
    _ ≤ ((2 ^ (j + 1) : ℕ) : ℝ) *
        ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => k + 1 < H),
          |cumulativeHarmonicShiftCorrelation j t (k + 1)| *
            harmonicShiftSecondDifference j t k := by
      apply mul_le_mul_of_nonneg_left
      · calc
          |∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
              (fun k => k + 1 < H),
            cumulativeHarmonicShiftCorrelation j t (k + 1) *
              harmonicShiftSecondDifference j t k| ≤
            ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
                (fun k => k + 1 < H),
              |cumulativeHarmonicShiftCorrelation j t (k + 1) *
                harmonicShiftSecondDifference j t k| :=
              Finset.abs_sum_le_sum_abs _ _
          _ = _ := by
            apply Finset.sum_congr rfl
            intro k _hk
            rw [abs_mul, abs_of_nonneg (hcoef k)]
      · positivity
    _ ≤ ((2 ^ (j + 1) : ℕ) : ℝ) *
        ∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
            (fun k => k + 1 < H),
          ((H : ℝ) * (t + 1 : ℝ)) *
            harmonicShiftSecondDifference j t k := by
      apply mul_le_mul_of_nonneg_left
      · apply Finset.sum_le_sum
        intro k hk
        have hkH : k + 1 < H := (Finset.mem_filter.mp hk).2
        have hcum :=
          abs_cumulativeHarmonicShiftCorrelation_le_trivial
            j t (k + 1)
        apply mul_le_mul_of_nonneg_right
        · calc
            |cumulativeHarmonicShiftCorrelation j t (k + 1)| ≤
                ((k + 1 : ℕ) : ℝ) * (t + 1 : ℝ) := hcum
            _ ≤ (H : ℝ) * (t + 1 : ℝ) := by
              apply mul_le_mul_of_nonneg_right
              · exact_mod_cast Nat.le_of_lt hkH
              · positivity
        · exact hcoef k
      · positivity
    _ ≤ ((2 ^ (j + 1) : ℕ) : ℝ) *
        ((H : ℝ) * (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0) := by
      apply mul_le_mul_of_nonneg_left
      · rw [← Finset.mul_sum]
        apply mul_le_mul_of_nonneg_left
        · calc
            (∑ k ∈ (Finset.range (harmonicShiftCount j t - 1)).filter
              (fun k => k + 1 < H),
              harmonicShiftSecondDifference j t k) ≤
              ∑ k ∈ Finset.range (harmonicShiftCount j t - 1),
                harmonicShiftSecondDifference j t k := by
                apply Finset.sum_le_sum_of_subset_of_nonneg
                · exact Finset.filter_subset _ _
                · intro i hi hnot
                  exact hcoef i
            _ ≤ harmonicShiftFirstDifference j t 0 :=
              sum_harmonicShiftSecondDifference_le_first
                j t (harmonicShiftCount j t - 1)
        · positivity
      · positivity
    _ = ((2 ^ (j + 1) : ℕ) : ℝ) *
        (H : ℝ) * (t + 1 : ℝ) *
          harmonicShiftFirstDifference j t 0 := by ring

/-- Scope for the remaining analytic long-length supplier. -/
structure LongShortIntervalMobiusSource where
  threshold : ℕ → ℕ
  sourceStatement : Prop
  longLengthCoverage : Prop
  startWindowCoverage : Prop
  allDepthUniformity : Prop

/-- Explicit adapter required from a long-length short-interval theorem after
the deterministic short-range payment above. -/
structure LongShortIntervalToHarmonicAdapter
    (d : LongShortIntervalMobiusSource) : Type where
  shortRangePaid : Prop
  sourceToHarmonic :
    d.sourceStatement →
      d.longLengthCoverage →
      d.startWindowCoverage →
      d.allDepthUniformity →
      shortRangePaid →
      SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_mertensTwoPointPrefix_le_length
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicCumulativeInterior_eq_short_add_long
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.abs_harmonicCumulativeShortContribution_le
