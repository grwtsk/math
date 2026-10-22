/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #519. Direct stacked parent: draft PR #513 at
`ef07323a8c7c5101ef851351424afd50e2a7027e`.
-/
import GRWTSK.NumberTheory.Moebius.MertensHarmonicWeightedChowlaPacket

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- First active shift in the explicit harmonic tail. -/
def harmonicShiftLower (j t : ℕ) : ℕ :=
  max 1 (2 ^ j - t - 1)

/-- Exclusive upper shift endpoint in the exact triangular support. -/
def harmonicShiftUpper (j t : ℕ) : ℕ :=
  2 ^ (j + 1) - t - 1

/-- Number of active harmonic shifts. -/
def harmonicShiftCount (j t : ℕ) : ℕ :=
  harmonicShiftUpper j t - harmonicShiftLower j t

/-- Reciprocal endpoint coordinate along the active shift range. -/
def harmonicShiftReciprocal (j t k : ℕ) : ℝ :=
  (((t + 1 + (harmonicShiftLower j t + k) : ℕ) : ℝ))⁻¹

/-- Ordinary two-point prefix sampled along the active harmonic shift range. -/
def harmonicShiftCorrelation (j t k : ℕ) : ℝ :=
  mertensTwoPointPrefix (harmonicShiftLower j t + k) (t + 1)

/-- Cumulative ordinary two-point correlations over the first `n` active
shifts. -/
def cumulativeHarmonicShiftCorrelation
    (j t n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n, harmonicShiftCorrelation j t k

/-- Generic second Abel transform.  A weighted sum against first differences
of `q` is expressed through cumulative sums of `c` and second differences
of `q`. -/
theorem finite_second_abel
    (c q : ℕ → ℝ) (N : ℕ) :
    (∑ k ∈ Finset.range N,
      c k * (q k - q (k + 1))) =
      (if N = 0 then 0 else
        (∑ k ∈ Finset.range N, c k) *
          (q (N - 1) - q N)) +
      ∑ k ∈ Finset.range (N - 1),
        (∑ r ∈ Finset.range (k + 1), c r) *
          ((q k - q (k + 1)) -
            (q (k + 1) - q (k + 2))) := by
  induction N with
  | zero => simp
  | succ N ih =>
      by_cases hN : N = 0
      · subst N
        simp
      · rw [Finset.sum_range_succ, ih]
        simp [hN]
        rw [Finset.sum_range_succ]
        ring

/-- Positive reciprocal sequences have nonnegative discrete second
differences. -/
theorem reciprocal_second_difference_nonneg
    {b : ℕ} (hb : 1 ≤ b) :
    0 ≤
      (((b : ℝ))⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) -
        ((((b + 1 : ℕ) : ℝ))⁻¹ -
          (((b + 2 : ℕ) : ℝ))⁻¹) := by
  have hbR : (0 : ℝ) < b := by exact_mod_cast hb
  have hb1R : (0 : ℝ) < b + 1 := by positivity
  have hb2R : (0 : ℝ) < b + 2 := by positivity
  field_simp [ne_of_gt hbR, ne_of_gt hb1R, ne_of_gt hb2R]
  nlinarith

/-- The exact harmonic weighted Chowla average can be written on the contiguous
active shift range. -/
theorem harmonicWeightedMertensTwoPointChowlaAverage_eq_activeRange
    (j t : ℕ) :
    harmonicWeightedMertensTwoPointChowlaAverage j t =
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        ∑ k ∈ Finset.range (harmonicShiftCount j t),
          harmonicShiftCorrelation j t k *
            (harmonicShiftReciprocal j t k -
              harmonicShiftReciprocal j t (k + 1)) := by
  unfold harmonicWeightedMertensTwoPointChowlaAverage
    harmonicShiftCount harmonicShiftUpper harmonicShiftLower
    harmonicShiftCorrelation harmonicShiftReciprocal
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  let L : ℕ := max 1 (X - t - 1)
  have hLY : L ≤ Y - t - 1 := by
    dsimp [L, X, Y]
    apply max_le
    · have hY : 1 ≤ 2 ^ (j + 1) := by positivity
      omega
    · omega
  rw [show 2 ^ j = X by rfl, show 2 ^ (j + 1) = Y by rfl]
  rw [Finset.mul_sum]
  rw [← Finset.sum_Ico_eq_sum_range]
  apply Finset.sum_congr
  · ext h
    simp [L]
    omega
  · intro h hh
    have hhI := Finset.mem_Ico.mp hh
    have hh1 : 1 ≤ h := le_trans (le_max_left 1 (X - t - 1)) hhI.1
    have hhY : h < Y := by omega
    have ht : t < Y - h - 1 := by omega
    have hb : X ≤ t + 1 + h := by
      have hL : X - t - 1 ≤ h :=
        le_trans (le_max_right 1 (X - t - 1)) hhI.1
      omega
    simp [hh1, hhY, ht, hb, L]
    ring

/-- Second-Abel representation of the harmonic weighted Chowla average through
cumulative shift correlations. -/
theorem harmonicWeightedMertensTwoPointChowlaAverage_eq_cumulativeShift
    (j t : ℕ) :
    harmonicWeightedMertensTwoPointChowlaAverage j t =
      ((2 ^ (j + 1) : ℕ) : ℝ) *
        ((if harmonicShiftCount j t = 0 then 0 else
          cumulativeHarmonicShiftCorrelation
            j t (harmonicShiftCount j t) *
            (harmonicShiftReciprocal j t
                (harmonicShiftCount j t - 1) -
              harmonicShiftReciprocal j t
                (harmonicShiftCount j t))) +
          ∑ k ∈ Finset.range (harmonicShiftCount j t - 1),
            cumulativeHarmonicShiftCorrelation j t (k + 1) *
              ((harmonicShiftReciprocal j t k -
                  harmonicShiftReciprocal j t (k + 1)) -
                (harmonicShiftReciprocal j t (k + 1) -
                  harmonicShiftReciprocal j t (k + 2)))) := by
  rw [harmonicWeightedMertensTwoPointChowlaAverage_eq_activeRange]
  congr 1
  simpa [harmonicShiftCorrelation,
    harmonicShiftReciprocal,
    cumulativeHarmonicShiftCorrelation] using
      finite_second_abel
        (harmonicShiftCorrelation j t)
        (harmonicShiftReciprocal j t)
        (harmonicShiftCount j t)

/-- Every interior second-Abel coefficient is nonnegative. -/
theorem harmonicShiftReciprocal_secondDifference_nonneg
    (j t k : ℕ) :
    0 ≤
      (harmonicShiftReciprocal j t k -
        harmonicShiftReciprocal j t (k + 1)) -
      (harmonicShiftReciprocal j t (k + 1) -
        harmonicShiftReciprocal j t (k + 2)) := by
  unfold harmonicShiftReciprocal
  apply reciprocal_second_difference_nonneg
  have hL : 1 ≤ harmonicShiftLower j t := le_max_left _ _
  omega

/-- The terminal first-difference coefficient is nonnegative whenever the
active range is nonempty. -/
theorem harmonicShiftReciprocal_terminalDifference_nonneg
    {j t : ℕ} (hN : 0 < harmonicShiftCount j t) :
    0 ≤
      harmonicShiftReciprocal j t (harmonicShiftCount j t - 1) -
        harmonicShiftReciprocal j t (harmonicShiftCount j t) := by
  unfold harmonicShiftReciprocal
  apply sub_nonneg.mpr
  apply one_div_le_one_div_of_le
  · positivity
  · exact_mod_cast Nat.le_succ
      (t + 1 + (harmonicShiftLower j t +
        (harmonicShiftCount j t - 1)))

/-- Source-facing cumulative-shift supplier.  It asks directly for the exact
second-Abel representation to satisfy the inherited subpolynomial budget. -/
def SubpolynomialDyadicCumulativeShiftMertensPacket : Prop :=
  SubpolynomialDyadicHarmonicWeightedMertensChowlaPacket

/-- The cumulative-shift representation has the same conditional RH endpoint;
no new arithmetic estimate is introduced by the second Abel transform. -/
theorem riemannHypothesis_of_subpolynomialDyadicCumulativeShiftMertensPacket
    (hCum : SubpolynomialDyadicCumulativeShiftMertensPacket) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicHarmonicWeightedMertensChowlaPacket
    hCum

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.finite_second_abel
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.reciprocal_second_difference_nonneg
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicWeightedMertensTwoPointChowlaAverage_eq_cumulativeShift
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.harmonicShiftReciprocal_secondDifference_nonneg
