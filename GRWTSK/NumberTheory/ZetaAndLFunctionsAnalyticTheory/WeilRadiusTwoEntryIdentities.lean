/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowOddEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeNorm

/-!
# Exact odd sine entries at radius two

A change of variables sends the normalized sine overlap to the unit
window. This gives the equal-mode prime shift with its exact support
length. The radius-two inventory retains all integers from 2 through 54
with their literal von Mangoldt weights. The core diagonal combines these
shifts with the signed exponential correction to the gamma multiplier.
The formula agrees with the source convention of `weil-odd-output-trace.md`,
§2, and applies to physical diagonals in the retained head and in a
rectangular trial overlap. Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section

open scoped Interval

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoEntryIdentities

open OddRootProjection OddOutputTrace OddPrimeRow UnitWindowOddEntries
open LowSchur RadiusTwoPrimeNorm OddResidualSourceComparison
open OddDiagonalObservation OddDiagonalSeriesTail OddMultiplierBounds

/-- The exact sine overlap on a positive window dilates to the unit window. -/
theorem sineCorrelation_dilation (T r : ℝ) (m n : ℕ) (hT : 0 < T)
    (hr : 0 ≤ r) (hrT : r < 2 * T) :
    sineCorrelation T m n r = sineCorrelation 1 m n (r / T) := by
  have hRange : r / T < 2 * (1 : ℝ) := by
    apply (div_lt_iff₀ hT).2
    simpa only [mul_one] using hrT
  rw [sineCorrelation_eq_interval T r m n hT hr hrT,
    sineCorrelation_eq_interval 1 (r / T) m n (by norm_num) (div_nonneg hr hT.le) hRange]
  simp only [div_one]
  let F := fun t : ℝ => Real.sin (frequency 1 m * t) * Real.sin (frequency 1 n * (t + r / T))
  have hFreq (k : ℕ) (t : ℝ) : frequency T k * t = frequency 1 k * (t / T) := by
    simp only [frequency, div_one]
    ring
  have hIntegrand : (fun t : ℝ =>
      Real.sin (frequency T m * t) * Real.sin (frequency T n * (t + r)) / T) =
      fun t => F (t / T) / T := by
    funext t
    dsimp only [F]
    rw [hFreq m t, hFreq n (t + r), add_div]
  rw [hIntegrand, intervalIntegral.integral_div, intervalIntegral.integral_comp_div F hT.ne',
    neg_div, div_self hT.ne', sub_div, div_self hT.ne', smul_eq_mul, mul_div_cancel_left₀ _ hT.ne']

/-- The normalized sine shift diagonal with the exact support length. -/
theorem sineShiftEntry_diagonal (T r : ℝ) (n : ℕ) (hT : 0 < T) (hn : 0 < n)
    (hr : 0 ≤ r) (hrT : r < 2 * T) :
    sineShiftEntry T n n r = (2 - r / T) * Real.cos (frequency T n * r) +
      Real.sin (frequency T n * r) / (Real.pi * n) := by
  have hRange : r / T < 2 := (div_lt_iff₀ hT).2 hrT
  have hDilation : sineShiftEntry T n n r = sineShiftEntry 1 n n (r / T) := by
    simp only [sineShiftEntry, sineCorrelation_dilation T r n n hT hr hrT]
  have hPhase : frequency 1 n * (r / T) = frequency T n * r := by
    simp only [frequency, div_one]
    ring
  rw [hDilation, sineShiftEntry_one_diagonal n hn _ (div_nonneg hr hT.le) hRange, hPhase]
  simp only [frequency, div_one]

/-- The radius-two prime diagonal uses the complete inventory and the literal
logarithmic shifts, including the weights at prime powers. -/
theorem primeShiftSum_two_diagonal (n : ℕ) (hn : 0 < n) :
    (∑ q ∈ activePrimePowers 2, primeWeight q * sineShiftEntry 2 n n (Real.log q)) =
      ∑ q ∈ Finset.Icc 2 54, primeWeight q *
        ((2 - Real.log q / 2) * Real.cos (frequency 2 n * Real.log q) +
          Real.sin (frequency 2 n * Real.log q) / (Real.pi * n)) := by
  rw [← activePrimePowers_two]
  apply Finset.sum_congr rfl
  intro q hq
  obtain ⟨_, hq₂, hqExp⟩ := Finset.mem_filter.mp hq
  have hq₁ : 1 ≤ (q : ℝ) := by exact_mod_cast (show 1 ≤ q by omega)
  have hLog := Real.log_lt_log (zero_lt_one.trans_le hq₁) hqExp
  rw [Real.log_exp] at hLog
  rw [sineShiftEntry_diagonal 2 _ n (by norm_num) hn (Real.log_nonneg hq₁) hLog]

/-- The literal radius-two core diagonal separates the gamma constant,
periodic multiplier, signed boundary correction, and prime diagonal. -/
theorem literalCoreEntry_two_diagonal (n : ℕ) (hn : 0 < n) :
    literalCoreEntry 2 n n =
      gammaConstant 1 0 + periodicMultiplier 0 (frequency 2 n) + (∑' j, sineBoundaryTerm 2 n j) -
        ∑ q ∈ Finset.Icc 2 54, primeWeight q *
          ((2 - Real.log q / 2) * Real.cos (frequency 2 n * Real.log q) +
            Real.sin (frequency 2 n * Real.log q) / (Real.pi * n)) := by
  unfold literalCoreEntry
  rw [primeShiftSum_two_diagonal n hn]
  have hSum := (hasSum_sineBoundaryTerm 2 (by norm_num) hn).tsum_eq
  linarith only [hSum]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoEntryIdentities
