/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddOutputTrace
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Exact prime rows in the odd Weil sine coordinates

The supported shifts are those of Connes–Consani–Moscovici,
arXiv:2511.22755v1, (3.19)–(3.20). The displacement `0 ≤ r < 2*T`
restricts the zero-extended overlap to `[-T,T-r]`. The two factors of
`1/sqrt(T)` give `1/T`. For the two sine factors `f,g`, the derivative of
`f' * g - f * g'` is `(wn²-wm²)*f*g`. At the left endpoint `f` vanishes,
and at the right endpoint `g` vanishes. The endpoint cosines fix the phase,
giving the numerator `m*sin(wn*r)-n*sin(wm*r)` with denominator
`m²-n²`. Swapping the indices changes both signs and gives the same
correlation, so the sum of both orientations doubles this value. The
actual prime sum now gives the signed odd formula in
`weil-odd-output-trace.md`, equation (2.1).

The formulas are for distinct positive modes. The diagonal requires a
separate calculation. The prime term is subtracted in the full Weil form.
Independent analytical review and novelty assessment: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Interval
namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPrimeRow
open OddRootProjection OddOutputTrace LowSchur

private theorem sineCorrelation_eq_interval (T r : ℝ) (m n : ℕ) (hT : 0 < T)
    (hr : 0 ≤ r) (hrT : r < 2 * T) :
    sineCorrelation T m n r =
      ∫ t in (-T)..(T - r),
        Real.sin (frequency T m * t) * Real.sin (frequency T n * (t + r)) / T := by
  have hshape : (fun t : ℝ => zeroExtendedSine T m t * zeroExtendedSine T n (t + r)) =
      (Icc (-T) (T - r)).indicator (fun t : ℝ =>
        Real.sin (frequency T m * t) * Real.sin (frequency T n * (t + r)) / T) := by
    funext t
    by_cases ht : t ∈ Icc (-T) (T - r)
    · have hx : t ∈ Icc (-T) T := ⟨ht.1, by linarith [ht.2]⟩
      have hy : t + r ∈ Icc (-T) T := ⟨by linarith [ht.1], by linarith [ht.2]⟩
      have hmphase : Real.pi * (m : ℝ) * t / T = frequency T m * t := by
        rw [frequency, div_mul_eq_mul_div]
      have hnphase : Real.pi * (n : ℝ) * (t + r) / T = frequency T n * (t + r) := by
        rw [frequency, div_mul_eq_mul_div]
      simp only [zeroExtendedSine, hx, hy, ite_true, indicator_of_mem ht,
        hmphase, hnphase]
      rw [div_mul_div_comm, ← pow_two, Real.sq_sqrt hT.le]
    · by_cases hx : t ∈ Icc (-T) T
      · have hy : t + r ∉ Icc (-T) T := fun h => ht ⟨hx.1, by linarith [h.2]⟩
        simp [zeroExtendedSine, hx, hy, ht]
      · simp [zeroExtendedSine, hx, ht]
  unfold sineCorrelation
  rw [hshape, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -T ≤ T - r)]

private theorem sub_square_modes_ne_zero (m n : ℕ) (hm : 0 < m) (hn : 0 < n)
    (hmn : m ≠ n) : (m : ℝ) ^ 2 - (n : ℝ) ^ 2 ≠ 0 := by
  have hne : (m : ℝ) ≠ (n : ℝ) := by exact_mod_cast hmn
  rw [show (m : ℝ) ^ 2 - (n : ℝ) ^ 2 = ((m : ℝ) - n) * ((m : ℝ) + n) by ring]
  exact mul_ne_zero (sub_ne_zero.mpr hne) (ne_of_gt (by positivity))

/-- The forward translation on the actual support overlap. -/
theorem sineCorrelation_off_diagonal (T r : ℝ) (m n : ℕ) (hT : 0 < T)
    (hr : 0 ≤ r) (hrT : r < 2 * T) (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) :
    sineCorrelation T m n r =
      (-1 : ℝ) ^ (m + n) *
        ((m : ℝ) * Real.sin (frequency T n * r) - (n : ℝ) * Real.sin (frequency T m * r)) /
        (Real.pi * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2)) := by
  rw [sineCorrelation_eq_interval T r m n hT hr hrT]
  let wm := frequency T m
  let wn := frequency T n
  have hpow := sub_square_modes_ne_zero n m hn hm hmn.symm
  have hpow' := sub_square_modes_ne_zero m n hm hn hmn
  have hscale : wn ^ 2 - wm ^ 2 = (Real.pi / T) ^ 2 * ((n : ℝ) ^ 2 - (m : ℝ) ^ 2) := by
    dsimp [wm, wn, frequency]
    ring
  have hfreq : wn ^ 2 - wm ^ 2 ≠ 0 := by
    rw [hscale]
    exact mul_ne_zero (pow_ne_zero _ (div_ne_zero Real.pi_ne_zero hT.ne')) hpow
  let F := fun t : ℝ =>
    (wm * (Real.cos (wm * t) * Real.sin (wn * (t + r))) -
      wn * (Real.sin (wm * t) * Real.cos (wn * (t + r)))) / (T * (wn ^ 2 - wm ^ 2))
  have hderiv (t : ℝ) :
      HasDerivAt F (Real.sin (wm * t) * Real.sin (wn * (t + r)) / T) t := by
    have hmt := (hasDerivAt_id t).const_mul wm
    have hnt := ((hasDerivAt_id t).add_const r).const_mul wn
    have hfirst := (hmt.cos.mul hnt.sin).const_mul wm
    have hsecond := (hmt.sin.mul hnt.cos).const_mul wn
    apply (((hfirst.sub hsecond).div_const (T * (wn ^ 2 - wm ^ 2)))).congr_deriv
    dsimp
    field_simp [hT.ne', hfreq]
    ring
  have hcontinuous :
      Continuous (fun t : ℝ => Real.sin (wm * t) * Real.sin (wn * (t + r)) / T) := by
    fun_prop
  change (∫ t in (-T)..(T - r), Real.sin (wm * t) * Real.sin (wn * (t + r)) / T) = _
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hderiv t)
    (hcontinuous.intervalIntegrable _ _)]
  have hmT : wm * T = (m : ℝ) * Real.pi := by
    dsimp [wm, frequency]
    rw [div_mul_cancel₀ _ hT.ne', mul_comm]
  have hnT : wn * T = (n : ℝ) * Real.pi := by
    dsimp [wn, frequency]
    rw [div_mul_cancel₀ _ hT.ne', mul_comm]
  have hmneg : wm * (-T) = -((m : ℝ) * Real.pi) := by rw [mul_neg, hmT]
  have hmshift : wm * (T - r) = (m : ℝ) * Real.pi - wm * r := by rw [mul_sub, hmT]
  have hnshift : wn * (-T + r) = -((n : ℝ) * Real.pi - wn * r) := by
    rw [mul_add, mul_neg, hnT]
    ring
  change F (T - r) - F (-T) =
    (-1 : ℝ) ^ (m + n) * ((m : ℝ) * Real.sin (wn * r) - (n : ℝ) * Real.sin (wm * r)) /
      (Real.pi * ((m : ℝ) ^ 2 - (n : ℝ) ^ 2))
  dsimp only [F]
  rw [sub_add_cancel, hmshift, hnT, hmneg, hnshift]
  simp only [Real.sin_neg, Real.cos_neg, Real.sin_nat_mul_pi, Real.cos_nat_mul_pi,
    Real.sin_nat_mul_pi_sub, mul_zero, zero_mul, sub_zero, zero_sub, neg_zero, neg_neg]
  rw [hscale, pow_add]
  dsimp only [wm, wn, frequency]
  field_simp [hT.ne', Real.pi_ne_zero, hpow, hpow']
  ring

/-- The sum of both translation orientations gives the signed odd row. -/
theorem sineShiftEntry_off_diagonal (T r : ℝ) (m n : ℕ) (hT : 0 < T)
    (hr : 0 ≤ r) (hrT : r < 2 * T) (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) :
    sineShiftEntry T m n r =
      (2 / Real.pi) * (-1 : ℝ) ^ (m + n) *
        ((m : ℝ) * Real.sin (frequency T n * r) - (n : ℝ) * Real.sin (frequency T m * r)) /
        ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) := by
  unfold sineShiftEntry
  rw [sineCorrelation_off_diagonal T r m n hT hr hrT hm hn hmn,
    sineCorrelation_off_diagonal T r n m hT hr hrT hn hm hmn.symm, Nat.add_comm n m]
  rw [show (n : ℝ) ^ 2 - (m : ℝ) ^ 2 = -((m : ℝ) ^ 2 - (n : ℝ) ^ 2) by ring,
    mul_neg, div_neg]
  have hpow := sub_square_modes_ne_zero m n hm hn hmn
  field_simp [Real.pi_ne_zero, hpow]
  ring

/-- Sum every active von Mangoldt weight in the original prime inventory. -/
theorem prime_shift_sum_off_diagonal (T : ℝ) (m n : ℕ) (hT : 0 < T)
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) :
    (∑ q ∈ activePrimePowers T, primeWeight q * sineShiftEntry T m n (Real.log q)) =
      (2 / Real.pi) * (-1 : ℝ) ^ (m + n) * oddPrimeRow T m n := by
  unfold oddPrimeRow primeRow primeSignal
  calc
    _ = ∑ q ∈ activePrimePowers T, (2 / Real.pi) * (-1 : ℝ) ^ (m + n) *
        ((m : ℝ) * (primeWeight q * Real.sin (frequency T n * Real.log q)) -
          (n : ℝ) * (primeWeight q * Real.sin (frequency T m * Real.log q))) /
        ((m : ℝ) ^ 2 - (n : ℝ) ^ 2) := by
      apply Finset.sum_congr rfl
      intro q hq
      obtain ⟨_, hqmin, hqmax⟩ := Finset.mem_filter.mp hq
      have hq1 : 1 ≤ (q : ℝ) := by exact_mod_cast (le_trans (by decide : 1 ≤ 2) hqmin)
      have hqlog := Real.log_lt_log (zero_lt_one.trans_le hq1) hqmax
      rw [Real.log_exp] at hqlog
      rw [sineShiftEntry_off_diagonal T (Real.log q) m n hT (Real.log_nonneg hq1)
        hqlog hm hn hmn]
      ring
    _ = _ := by
      rw [← Finset.sum_div, ← Finset.mul_sum, Finset.sum_sub_distrib,
        ← Finset.mul_sum, ← Finset.mul_sum, mul_div_assoc]
      rfl

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPrimeRow
