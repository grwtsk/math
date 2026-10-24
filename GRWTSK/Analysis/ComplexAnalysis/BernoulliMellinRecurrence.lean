/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.PeriodicBernoulliMellin
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

set_option autoImplicit false

/-!
# Unit-cell integration, exact finite telescoping, and the infinite tail recurrence

Integrate translated POLYNOMIALS on each positive unit cell. Only after using
B_(m+1)(1)=B_(m+1)(0), m>=1, do the internal endpoints telescope. Absolute
integrability and the vanishing outer endpoint justify passage to the improper
limit. No sampled contour or formal infinite-sum value is used.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ComplexAnalysis.BernoulliMellinRecurrence

open Set MeasureTheory Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ErrorBounds
open PeriodicBernoulliMellin

noncomputable section

def cellIntegrand (m k : ℕ) (s : ℂ) (t : ℝ) : ℂ :=
  (PeriodicBernoulli.value m (t - k) : ℂ) * (t : ℂ) ^ (-s - (m : ℂ))

def cell (m k : ℕ) (s : ℂ) : ℂ :=
  ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), cellIntegrand m k s t

def block (m N K : ℕ) (s : ℂ) : ℂ :=
  ∑ j ∈ Finset.range K, cell m (N + j) s

/-- All exponents, including zero, are allowed at a positive real base. -/
theorem hasDerivAt_positive_power (a : ℂ) {t : ℝ} (ht : 0 < t) :
    HasDerivAt (fun x : ℝ => (x : ℂ) ^ a) (a * (t : ℂ) ^ (a - 1)) t := by
  by_cases ha : a = 0
  · subst a
    simpa using hasDerivAt_const t (1 : ℂ)
  · exact hasDerivAt_ofReal_cpow_const ht.ne' ha

theorem continuousOn_cellIntegrand (m : ℕ) {k : ℕ} (hk : 1 ≤ k) (s : ℂ) :
    ContinuousOn (cellIntegrand m k s) (Icc (k : ℝ) ((k + 1 : ℕ) : ℝ)) := by
  have hv : Continuous (fun t : ℝ => (PeriodicBernoulli.value m (t - k) : ℂ)) :=
    Complex.continuous_ofReal.comp
      ((PeriodicBernoulli.continuous_value m).comp (continuous_id.sub continuous_const))
  apply hv.continuousOn.mul
  intro t ht
  have ht0 : 0 < t := lt_of_lt_of_le (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)) ht.1
  exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt

theorem cellIntegrand_integrable (m : ℕ) {k : ℕ} (hk : 1 ≤ k) (s : ℂ) :
    IntervalIntegrable (cellIntegrand m k s) volume (k : ℝ) ((k + 1 : ℕ) : ℝ) :=
  ContinuousOn.intervalIntegrable (by
    simpa only [uIcc_of_le (show (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ) by exact_mod_cast Nat.le_succ k)]
      using continuousOn_cellIntegrand m hk s)

/-- The derivative identity keeps both the polynomial derivative and the power derivative. -/
theorem cell_primitive_derivative (m k : ℕ) (s : ℂ) {t : ℝ} (ht : 0 < t) :
    HasDerivAt (fun u : ℝ =>
      (PeriodicBernoulli.value (m + 1) (u - k) : ℂ) * (u : ℂ) ^ (-s - (m : ℂ)))
      (((m + 1 : ℕ) : ℂ) * cellIntegrand m k s t -
        (s + m) * cellIntegrand (m + 1) k s t) t := by
  have hv := ((PeriodicBernoulli.hasDerivAt_value_succ m (t - k)).comp t
    ((hasDerivAt_id t).sub_const (k : ℝ))).ofReal_comp
  have hp := hasDerivAt_positive_power (-s - (m : ℂ)) ht
  convert hv.mul hp using 1
  simp only [cellIntegrand, Complex.ofReal_mul, Complex.ofReal_add,
    Complex.ofReal_natCast, Complex.ofReal_one, mul_one, Nat.cast_add, Nat.cast_one]
  rw [show -s - (m : ℂ) - 1 = -s - ((m : ℂ) + 1) by ring]
  ring

/-- One exact unit-cell integration-by-parts identity. m=0 is excluded because
B1 has a jump of one across the seam. The upper endpoint is not dropped. -/
theorem cell_step {m k : ℕ} (hm : 1 ≤ m) (hk : 1 ≤ k) (s : ℂ) :
    ((m + 1 : ℕ) : ℂ) * cell m k s - (s + m) * cell (m + 1) k s =
      (_root_.bernoulli (m + 1) : ℂ) *
        (((k + 1 : ℕ) : ℂ) ^ (-s - (m : ℂ)) - (k : ℂ) ^ (-s - (m : ℂ))) := by
  have hab : (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ k
  have hcont : ContinuousOn (fun u : ℝ =>
      (PeriodicBernoulli.value (m + 1) (u - k) : ℂ) * (u : ℂ) ^ (-s - (m : ℂ)))
      (Icc (k : ℝ) ((k + 1 : ℕ) : ℝ)) := by
    apply (Complex.continuous_ofReal.comp
      ((PeriodicBernoulli.continuous_value (m + 1)).comp
        (continuous_id.sub continuous_const))).continuousOn.mul
    intro t ht
    have ht0 : 0 < t := lt_of_lt_of_le (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)) ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hi := (cellIntegrand_integrable m hk s).const_mul (((m + 1 : ℕ) : ℂ))
  have hj := (cellIntegrand_integrable (m + 1) hk s).const_mul (s + (m : ℂ))
  have hFTC := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hab hcont
    (fun t ht => cell_primitive_derivative m k s
      (lt_trans (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hk)) ht.1)) (hi.sub hj)
  rw [intervalIntegral.integral_sub hi hj, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul] at hFTC
  have hr : PeriodicBernoulli.value (m + 1) (((k + 1 : ℕ) : ℝ) - k) =
      (_root_.bernoulli (m + 1) : ℝ) := by
    rw [show (((k + 1 : ℕ) : ℝ) - k) = 1 by push_cast; ring]
    exact PeriodicBernoulli.value_one (by omega)
  simpa only [cell, hr, sub_self, PeriodicBernoulli.value_zero, Complex.ofReal_ratCast,
    Complex.ofReal_natCast, mul_sub] using hFTC

/-- Endpoint values may differ, but singletons have zero measure for these integrals. -/
theorem cell_eq_periodic (m k : ℕ) (s : ℂ) :
    cell m k s = ∫ t in (k : ℝ)..((k + 1 : ℕ) : ℝ), integrand m s t := by
  apply intervalIntegral.integral_congr_uIoo
  intro t ht
  have ht' : t ∈ Ioo (k : ℝ) ((k : ℝ) + 1) := by
    simpa [uIoo_of_le (show (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ) by exact_mod_cast Nat.le_succ k)] using ht
  simp only [cellIntegrand, integrand, PeriodicBernoulli.periodic_on_cell m k ht']

theorem periodic_cell_integrable (m : ℕ) {k : ℕ} (hk : 1 ≤ k) (s : ℂ) :
    IntervalIntegrable (integrand m s) volume (k : ℝ) ((k + 1 : ℕ) : ℝ) := by
  apply (cellIntegrand_integrable m hk s).congr_uIoo
  intro t ht
  have ht' : t ∈ Ioo (k : ℝ) ((k : ℝ) + 1) := by
    simpa [uIoo_of_le (show (k : ℝ) ≤ ((k + 1 : ℕ) : ℝ) by exact_mod_cast Nat.le_succ k)] using ht
  simp only [cellIntegrand, integrand, PeriodicBernoulli.periodic_on_cell m k ht']

theorem block_succ (m N K : ℕ) (s : ℂ) :
    block m N (K + 1) s = block m N K s + cell m (N + K) s := by
  simp only [block, Finset.sum_range_succ]

/-- Exact coverage of every positive unit cell, with no independent weights. -/
theorem block_integral (m : ℕ) {N : ℕ} (hN : 1 ≤ N) (K : ℕ) (s : ℂ) :
    IntervalIntegrable (integrand m s) volume (N : ℝ) ((N + K : ℕ) : ℝ) ∧
      block m N K s = ∫ t in (N : ℝ)..((N + K : ℕ) : ℝ), integrand m s t := by
  induction K with
  | zero => simp [block]
  | succ K ih =>
    have hc := periodic_cell_integrable m (show 1 ≤ N + K by omega) s
    constructor
    · simpa only [Nat.add_assoc] using ih.1.trans hc
    · rw [block_succ, ih.2, cell_eq_periodic,
        intervalIntegral.integral_add_adjacent_intervals ih.1 hc]
      simp only [Nat.add_assoc]

/-- All internal primitive endpoints cancel; both exterior endpoints remain. -/
theorem block_step {m N : ℕ} (hm : 1 ≤ m) (hN : 1 ≤ N) (K : ℕ) (s : ℂ) :
    ((m + 1 : ℕ) : ℂ) * block m N K s - (s + m) * block (m + 1) N K s =
      (_root_.bernoulli (m + 1) : ℂ) *
        (((N + K : ℕ) : ℂ) ^ (-s - (m : ℂ)) - (N : ℂ) ^ (-s - (m : ℂ))) := by
  induction K with
  | zero => simp [block]
  | succ K ih =>
    rw [block_succ, block_succ]
    have hc := cell_step hm (show 1 ≤ N + K by omega) s
    simp only [Nat.add_assoc] at hc
    linear_combination ih + hc

/-- The actual complex upper endpoint vanishes by its real-power norm, not by
setting a remainder field to zero. -/
theorem boundary_tendsto_zero (m : ℕ) {N : ℕ} (hN : 1 ≤ N) {s : ℂ}
    (hs : 0 < s.re + m) :
    Tendsto (fun K : ℕ => ((N + K : ℕ) : ℂ) ^ (-s - (m : ℂ))) atTop (𝓝 0) := by
  have ht : Tendsto (fun K : ℕ => ((N + K : ℕ) : ℝ)) atTop atTop := by
    simpa only [Nat.cast_add, add_comm] using
      tendsto_atTop_add_const_right atTop (N : ℝ) tendsto_natCast_atTop_atTop
  have hlim := (tendsto_rpow_neg_atTop hs).comp ht
  apply squeeze_zero_norm (fun K => ?_) hlim
  have hk : (0 : ℝ) < (N + K : ℕ) := by exact_mod_cast (show 0 < N + K by omega)
  rw [show ((N + K : ℕ) : ℂ) = (((N + K : ℕ) : ℝ) : ℂ) by simp,
    Complex.norm_cpow_eq_rpow_re_of_pos hk]
  simp only [Complex.sub_re, Complex.neg_re, Complex.natCast_re]
  exact le_of_eq (by congr 1; ring)

/-- Infinite integration by parts, now justified by absolute integrability and the
finite covered-block identity. No zeta statement has yet been used. -/
theorem tail_step {m N : ℕ} (hm : 1 ≤ m) (hN : 1 ≤ N) {s : ℂ} (hs : 0 < s.re) :
    ((m + 1 : ℕ) : ℂ) * tail m (N : ℝ) s - (s + m) * tail (m + 1) (N : ℝ) s =
      -(_root_.bernoulli (m + 1) : ℂ) * (N : ℂ) ^ (-s - (m : ℂ)) := by
  have hNr : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have ht : Tendsto (fun K : ℕ => ((N + K : ℕ) : ℝ)) atTop atTop := by
    simpa only [Nat.cast_add, add_comm] using
      tendsto_atTop_add_const_right atTop (N : ℝ) tendsto_natCast_atTop_atTop
  have hi (j : ℕ) (hj : 1 ≤ j) :
      Tendsto (fun K : ℕ => block j N K s) atTop (𝓝 (tail j (N : ℝ) s)) := by
    have hexp : 1 < s.re + j := by
      have hjr : (1 : ℝ) ≤ j := by exact_mod_cast hj
      linarith
    have h := intervalIntegral_tendsto_integral_Ioi (N : ℝ)
      (integrable_tail j hNr hexp le_rfl) ht
    convert h using 1
    ext K
    exact (block_integral j hN K s).2
  have hleft := ((hi m hm).const_mul (((m + 1 : ℕ) : ℂ))).sub
    ((hi (m + 1) (by omega)).const_mul (s + (m : ℂ)))
  have hp := boundary_tendsto_zero m hN (by
    have hmr : (1 : ℝ) ≤ m := by exact_mod_cast hm
    linarith)
  have hright := (hp.sub_const ((N : ℂ) ^ (-s - (m : ℂ)))).const_mul
    (_root_.bernoulli (m + 1) : ℂ)
  have hlim := hright.congr (fun K => (block_step hm hN K s).symm)
  simpa only [zero_sub, mul_neg, neg_mul] using tendsto_nhds_unique hleft hlim

end
end GRWTSK.Analysis.ComplexAnalysis.BernoulliMellinRecurrence
