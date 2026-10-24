/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli
import GRWTSK.Analysis.ComplexAnalysis.PochhammerJet
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

set_option autoImplicit false

/-!
# Absolutely convergent periodic-Bernoulli Mellin tails

These are actual integrals of the upstream periodic polynomials. The coefficient
majorant controls the entire integration domain. The bound does not assume an
Euler--Maclaurin identity or identify an integral tail with a zero-divisor tail.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ComplexAnalysis.PeriodicBernoulliMellin

open Set MeasureTheory Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ErrorBounds

noncomputable section

def integrand (m : ℕ) (s : ℂ) (t : ℝ) : ℂ :=
  (PeriodicBernoulli.periodic m t : ℂ) * (t : ℂ) ^ (-s - (m : ℂ))

def tail (m : ℕ) (N : ℝ) (s : ℂ) : ℂ := ∫ t in Ioi N, integrand m s t

/-- The exact coefficient bound remains separate from the power-decay exponent. -/
theorem norm_integrand_le (m : ℕ) {s : ℂ} {σ t : ℝ}
    (ht : 1 ≤ t) (hs : σ ≤ s.re) :
    ‖integrand m s t‖ ≤ (PeriodicBernoulli.majorant m : ℝ) * t ^ (-(σ + m)) := by
  have ht0 : 0 < t := zero_lt_one.trans_le ht
  have he : (-s - (m : ℂ)).re = -(s.re + (m : ℝ)) := by simp; ring
  rw [integrand, norm_mul, Complex.norm_real, Real.norm_eq_abs,
    Complex.norm_cpow_eq_rpow_re_of_pos ht0, he]
  exact mul_le_mul (PeriodicBernoulli.abs_periodic_le m t)
    (Real.rpow_le_rpow_of_exponent_le ht (by linarith))
    (Real.rpow_nonneg ht0.le _) (by exact_mod_cast PeriodicBernoulli.majorant_nonneg m)

/-- Integrability is proved before the infinite integral is used. -/
theorem integrable_tail (m : ℕ) {N σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hexp : 1 < σ + m) (hs : σ ≤ s.re) :
    IntegrableOn (integrand m s) (Ioi N) := by
  have hN0 : 0 < N := zero_lt_one.trans_le hN
  have hp : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (-s - (m : ℂ))) (Ioi N) := by
    intro t ht
    exact (Complex.continuousAt_ofReal_cpow_const _ _
      (Or.inr (hN0.trans ht).ne')).continuousWithinAt
  have hm : AEStronglyMeasurable (integrand m s) (volume.restrict (Ioi N)) := by
    exact ((Complex.continuous_ofReal.measurable.comp
      (PeriodicBernoulli.measurable_periodic m)).aestronglyMeasurable.restrict).mul
        (hp.aestronglyMeasurable measurableSet_Ioi)
  have hg : IntegrableOn (fun t : ℝ =>
      (PeriodicBernoulli.majorant m : ℝ) * t ^ (-(σ + m))) (Ioi N) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : -(σ + (m : ℝ)) < -1) hN0).const_mul _
  apply hg.mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact norm_integrand_le m (hN.trans ht.le) hs

/-- Uniform in the entire declared half-plane, not checked on a finite grid. -/
theorem tail_norm_le (m : ℕ) {N σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hexp : 1 < σ + m) (hs : σ ≤ s.re) :
    ‖tail m N s‖ ≤ (PeriodicBernoulli.majorant m : ℝ) *
      (N ^ (-(σ + m) + 1) / (σ + m - 1)) := by
  have hN0 : 0 < N := zero_lt_one.trans_le hN
  have hi := integrable_tail m hN hexp hs
  have hg := (integrableOn_Ioi_rpow_of_lt
    (by linarith : -(σ + (m : ℝ)) < -1) hN0).const_mul
      (PeriodicBernoulli.majorant m : ℝ)
  calc
    ‖tail m N s‖ ≤ ∫ t in Ioi N, ‖integrand m s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t in Ioi N, (PeriodicBernoulli.majorant m : ℝ) * t ^ (-(σ + m)) := by
      apply integral_mono_ae hi.norm hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact norm_integrand_le m (hN.trans ht.le) hs
    _ = _ := by
      rw [integral_const_mul, integral_Ioi_rpow_of_lt
        (by linarith : -(σ + (m : ℝ)) < -1) hN0]
      congr 1
      have he : -(σ + (m : ℝ)) + 1 = -(σ + m - 1) := by ring
      rw [he, neg_div_neg_eq]

/-- No fractional-power evaluation is needed for this weaker half-plane bound. -/
theorem tail_norm_le_nat {m : ℕ} {N : ℝ} {s : ℂ}
    (hm : 2 ≤ m) (hN : 1 ≤ N) (hs : 0 ≤ s.re) :
    ‖tail m N s‖ ≤ (PeriodicBernoulli.majorant m : ℝ) /
      ((m - 1 : ℕ) * N ^ (m - 1)) := by
  have h := tail_norm_le m (σ := 0) hN (by
    have hmr : (2 : ℝ) ≤ m := by exact_mod_cast hm
    simpa only [zero_add] using (show (1 : ℝ) < m by linarith)) hs
  have hm1 : (m : ℝ) - 1 = ((m - 1 : ℕ) : ℝ) := by
    rw [Nat.cast_sub (by omega : 1 ≤ m)]; norm_num
  have hex : -(m : ℝ) + 1 = -((m - 1 : ℕ) : ℝ) := by rw [← hm1]; ring
  simp only [zero_add] at h
  rw [hex, hm1, Real.rpow_neg (zero_lt_one.trans_le hN).le, Real.rpow_natCast] at h
  simpa only [div_eq_mul_inv, mul_inv, mul_assoc, mul_comm, mul_left_comm] using h

/-- Norm domination of the existing rising product; every factor is retained. -/
theorem pochhammer_norm_le (m : ℕ) {s : ℂ} {B : ℝ}
    (hB : ‖s‖ ≤ B) :
    ‖PochhammerJet.value m s‖ ≤ ∏ j ∈ Finset.range m, (B + (j : ℝ)) := by
  have hB0 : 0 ≤ B := (norm_nonneg _).trans hB
  induction m with
  | zero => simp
  | succ m ih =>
    rw [PochhammerJet.value_succ, norm_mul, Finset.prod_range_succ]
    have hj : ‖s + (m : ℂ)‖ ≤ B + m :=
      (norm_add_le _ _).trans (by simpa using add_le_add_right hB (m : ℝ))
    exact mul_le_mul ih hj (norm_nonneg _) (Finset.prod_nonneg (fun j _ => by positivity))

/-- The sign is part of the exact Euler--Maclaurin remainder convention. -/
def remainder (m : ℕ) (N : ℝ) (s : ℂ) : ℂ :=
  -(PochhammerJet.value m s / (m.factorial : ℂ)) * tail m N s

/-- A fully derived integral remainder bound, still distinct from its zeta identity. -/
theorem remainder_norm_le_nat {m : ℕ} {N B : ℝ} {s : ℂ}
    (hm : 2 ≤ m) (hN : 1 ≤ N) (hs : 0 ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖remainder m N s‖ ≤
      (∏ j ∈ Finset.range m, (B + (j : ℝ))) / (m.factorial : ℝ) *
      ((PeriodicBernoulli.majorant m : ℝ) / ((m - 1 : ℕ) * N ^ (m - 1))) := by
  rw [remainder, norm_mul, norm_neg, norm_div]
  simp only [Complex.norm_natCast]
  exact mul_le_mul
    (div_le_div_of_nonneg_right (pochhammer_norm_le m hB) (Nat.cast_nonneg _))
    (tail_norm_le_nat hm hN hs) (norm_nonneg _)
    (div_nonneg (Finset.prod_nonneg (fun j _ => by
      have : 0 ≤ B := (norm_nonneg _).trans hB
      positivity)) (Nat.cast_nonneg _))

end
end GRWTSK.Analysis.ComplexAnalysis.PeriodicBernoulliMellin
