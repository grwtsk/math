/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.GammaEulerLimit
import Mathlib.Analysis.SpecialFunctions.Gamma.Digamma
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic

/-!
# A compensated digamma integral from the actual Euler-Gamma limit

MSC2020: 33B15 (primary), 11M41, 28A25.
For alpha>0 and Re d>=0, the difference between digamma((alpha+d)/2)
and digamma(alpha/2) is twice the integral of the literal damped difference
(exp(-alpha*r)-exp(-(alpha+d)*r))/(1-exp(-2*r)).

The difference is kept together at r=0. A single integrable exponential
majorant controls every finite geometric approximation. Finite exponential
integration gives the inverse differences in the native GammaSeq logarithmic
derivative. Its proved source-local limit, not a digamma integral assumption,
identifies the limit with Complex.digamma.

Consumer: WeilGammaCompensatedInversion, where alpha=a+1/2 and d=3/2+it.
The result retains the imaginary part and is not a real-part-only multiplier
estimate. The arithmetic signed-prime inequality is not a premise or conclusion.

Method comparison: DLMF 5.9.16 and 5.7.6, accessed 2026-11-12; the present
normalization is obtained by t=2r. Native GammaEulerLimit at math baseline
c1085fe36d0bddaf69bf6b6ab67a708d5721eeb3 supplies the actual source return.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel,
transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED.
Individual statements and complete arguments are in the adjacent provenance.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped Topology BigOperators

namespace GRWTSK.SpecialFunctions.CompensatedDigammaIntegral

/-- The subtraction is part of the integrand; its two terms cannot be integrated
separately at zero. The value at r=0 is irrelevant to Lebesgue integration. -/
def compensatedDensity (alpha : ℝ) (d : ℂ) (r : ℝ) : ℂ :=
  (Real.exp (-alpha * r) : ℂ) * (1 - Complex.exp (-d * (r : ℂ))) /
    ((1 - Real.exp (-2 * r) : ℝ) : ℂ)

/-- A global bound on the closed left half-plane. The factor 2 is deliberately
nonsharp; it avoids any local-smallness restriction on the complex frequency. -/
theorem norm_one_sub_exp_le {z : ℂ} (hz : z.re ≤ 0) :
    ‖1 - Complex.exp z‖ ≤ 2 * ‖z‖ := by
  by_cases hsmall : ‖z‖ ≤ 1
  · rw [norm_sub_rev]
    exact Complex.norm_exp_sub_one_le hsmall
  · have hlarge : 1 ≤ ‖z‖ := (lt_of_not_ge hsmall).le
    have hexp : Real.exp z.re ≤ 1 := by
      simpa only [Real.exp_zero] using Real.exp_le_exp.mpr hz
    calc
      ‖1 - Complex.exp z‖ ≤ ‖(1 : ℂ)‖ + ‖Complex.exp z‖ := norm_sub_le _ _
      _ ≤ 2 := by rw [norm_one, Complex.norm_exp]; linarith
      _ ≤ 2 * ‖z‖ := by linarith

private theorem denominator_pos {r : ℝ} (hr : 0 < r) :
    0 < 1 - Real.exp (-2 * r) := by
  have he : Real.exp (-2 * r) < Real.exp 0 :=
    Real.exp_lt_exp.mpr (by linarith)
  simpa only [Real.exp_zero] using sub_pos.mpr he

private theorem shift_div_denominator_le {r : ℝ} (hr : 0 < r) :
    r / (1 - Real.exp (-2 * r)) ≤ r + 1 / 2 := by
  have he := mul_le_mul_of_nonneg_right (Real.add_one_le_exp (2 * r))
    (Real.exp_nonneg (-2 * r))
  have hm : Real.exp (2 * r) * Real.exp (-2 * r) = 1 := by
    rw [← Real.exp_add]; simp
  rw [hm] at he
  apply (div_le_iff₀ (denominator_pos hr)).2
  nlinarith

private theorem linear_exp_bound {alpha r : ℝ} (ha : 0 < alpha) (hr : 0 ≤ r) :
    (r + 1 / 2) * Real.exp (-alpha * r) ≤
      (2 / alpha + 1 / 2) * Real.exp (-(alpha / 2) * r) := by
  have he := Real.add_one_le_exp ((alpha / 2) * r)
  have he1 : 1 ≤ Real.exp ((alpha / 2) * r) :=
    Real.one_le_exp (by positivity)
  have hrb : r ≤ (2 / alpha) * Real.exp ((alpha / 2) * r) := by
    apply (mul_le_mul_left ha).mp
    have hc : alpha * ((2 / alpha) * Real.exp ((alpha / 2) * r)) =
        2 * Real.exp ((alpha / 2) * r) := by field_simp; ring
    rw [hc]
    nlinarith
  have hb : r + 1 / 2 ≤ (2 / alpha + 1 / 2) * Real.exp ((alpha / 2) * r) := by
    nlinarith
  have hp := mul_le_mul_of_nonneg_right hb (Real.exp_nonneg (-alpha * r))
  have hx : Real.exp ((alpha / 2) * r) * Real.exp (-alpha * r) =
      Real.exp (-(alpha / 2) * r) := by
    rw [← Real.exp_add]
    congr 1
    ring
  simpa only [mul_assoc, hx] using hp

/-- The cancellation supplies a genuine integrable bound on the entire positive
half-line, including arbitrarily small shifts and unbounded complex frequencies. -/
theorem norm_compensatedDensity_le {alpha : ℝ} (ha : 0 < alpha)
    {d : ℂ} (hd : 0 ≤ d.re) {r : ℝ} (hr : 0 < r) :
    ‖compensatedDensity alpha d r‖ ≤
      (2 * ‖d‖ * (2 / alpha + 1 / 2)) * Real.exp (-(alpha / 2) * r) := by
  have hz : (-d * (r : ℂ)).re ≤ 0 := by
    simp only [Complex.mul_re, Complex.neg_re, Complex.ofReal_re,
      Complex.ofReal_im, mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hd) hr.le
  have hdiff : ‖1 - Complex.exp (-d * (r : ℂ))‖ ≤ 2 * ‖d‖ * r := by
    simpa only [norm_mul, norm_neg, Complex.norm_real,
      Real.norm_eq_abs, abs_of_pos hr, mul_assoc] using norm_one_sub_exp_le hz
  have hden := denominator_pos hr
  have hn : ‖compensatedDensity alpha d r‖ ≤
      2 * ‖d‖ * ((r / (1 - Real.exp (-2 * r))) * Real.exp (-alpha * r)) := by
    unfold compensatedDensity
    rw [norm_div, norm_mul, Complex.norm_of_nonneg (Real.exp_nonneg _),
      Complex.norm_of_nonneg hden.le]
    calc
      _ ≤ Real.exp (-alpha * r) * (2 * ‖d‖ * r) / (1 - Real.exp (-2 * r)) := by
        gcongr
      _ = _ := by ring
  apply hn.trans
  calc
    _ ≤ 2 * ‖d‖ * ((r + 1 / 2) * Real.exp (-alpha * r)) := by
      gcongr
      exact shift_div_denominator_le hr
    _ ≤ _ := by
      simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
        (linear_exp_bound ha hr.le) (by positivity : 0 ≤ 2 * ‖d‖)

/-- Actual integrability; this is not equality between totalized nonintegrable values. -/
theorem compensatedDensity_integrable {alpha : ℝ} (ha : 0 < alpha)
    {d : ℂ} (hd : 0 ≤ d.re) :
    IntegrableOn (compensatedDensity alpha d) (Ioi 0) := by
  have hm : Measurable (compensatedDensity alpha d) := by
    unfold compensatedDensity
    fun_prop
  have hi := (integrableOn_exp_mul_Ioi
    (show -(alpha / 2) < 0 by linarith) 0).const_mul
      (2 * ‖d‖ * (2 / alpha + 1 / 2))
  apply hi.mono' hm.aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  exact norm_compensatedDensity_le ha hd hr

private theorem finite_geometric (b : ℂ) (n : ℕ) :
    (1 - b) * (∑ j ∈ Finset.range n, b ^ j) = 1 - b ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ, mul_add, ih, pow_succ]
    ring

private theorem exp_arithmetic (z : ℂ) (r : ℝ) (n : ℕ) :
    Complex.exp (-(z + 2 * (n : ℂ)) * (r : ℂ)) =
      Complex.exp (-z * (r : ℂ)) * (Real.exp (-2 * r) : ℂ) ^ n := by
  induction n with
  | zero => simp
  | succ n ih =>
    have he : -(z + 2 * ((n + 1 : ℕ) : ℂ)) * (r : ℂ) =
        -(z + 2 * (n : ℂ)) * (r : ℂ) + ((-2 * r : ℝ) : ℂ) := by
      push_cast
      ring
    rw [he, Complex.exp_add, ih, ← Complex.ofReal_exp, pow_succ]
    ring

private def geometricApprox (alpha : ℝ) (d : ℂ) (n : ℕ) (r : ℝ) : ℂ :=
  compensatedDensity alpha d r * (1 - (Real.exp (-2 * r) : ℂ) ^ n)

private theorem geometricApprox_eq (alpha : ℝ) (d : ℂ) (n : ℕ)
    {r : ℝ} (hr : 0 < r) :
    geometricApprox alpha d n r =
      ∑ j ∈ Finset.range n,
        (Complex.exp (-((alpha : ℂ) + 2 * (j : ℂ)) * (r : ℂ)) -
          Complex.exp (-((alpha : ℂ) + d + 2 * (j : ℂ)) * (r : ℂ))) := by
  have hbase : Complex.exp (-((alpha : ℂ) + d) * (r : ℂ)) =
      (Real.exp (-alpha * r) : ℂ) * Complex.exp (-d * (r : ℂ)) := by
    rw [show -((alpha : ℂ) + d) * (r : ℂ) =
      ((-alpha * r : ℝ) : ℂ) + -d * (r : ℂ) by push_cast; ring,
      Complex.exp_add, ← Complex.ofReal_exp]
  have hre : Complex.exp (-(alpha : ℂ) * (r : ℂ)) =
      (Real.exp (-alpha * r) : ℂ) := by rw [Complex.ofReal_exp]; congr 1; push_cast; ring
  simp_rw [exp_arithmetic, hbase, hre, ← sub_mul]
  rw [← Finset.mul_sum]
  have hden : (1 - (Real.exp (-2 * r) : ℂ)) ≠ 0 := by
    exact_mod_cast (denominator_pos hr).ne'
  have hg := finite_geometric (Real.exp (-2 * r) : ℂ) n
  unfold geometricApprox compensatedDensity
  push_cast
  rw [← hg]
  field_simp [hden]
  <;> ring

private theorem geometricApprox_bound {alpha : ℝ} (ha : 0 < alpha)
    {d : ℂ} (hd : 0 ≤ d.re) (n : ℕ) {r : ℝ} (hr : 0 < r) :
    ‖geometricApprox alpha d n r‖ ≤
      (2 * ‖d‖ * (2 / alpha + 1 / 2)) * Real.exp (-(alpha / 2) * r) := by
  have hb : 0 ≤ Real.exp (-2 * r) := Real.exp_nonneg _
  have hb1 : Real.exp (-2 * r) ≤ 1 := by
    simpa only [Real.exp_zero] using Real.exp_le_exp.mpr (by linarith : -2 * r ≤ 0)
  have hp : (Real.exp (-2 * r)) ^ n ≤ 1 := pow_le_one₀ hb hb1
  have hf : ‖1 - (Real.exp (-2 * r) : ℂ) ^ n‖ ≤ 1 := by
    rw [← Complex.ofReal_pow, ← Complex.ofReal_one, ← Complex.ofReal_sub,
      Complex.norm_of_nonneg (sub_nonneg.mpr hp)]
    linarith [pow_nonneg hb n]
  calc
    ‖geometricApprox alpha d n r‖ =
        ‖compensatedDensity alpha d r‖ * ‖1 - (Real.exp (-2 * r) : ℂ) ^ n‖ := norm_mul _ _
    _ ≤ ‖compensatedDensity alpha d r‖ := mul_le_of_le_one_right (norm_nonneg _) hf
    _ ≤ _ := norm_compensatedDensity_le ha hd hr

private theorem exponential_integral {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun r : ℝ => Complex.exp (-z * (r : ℂ))) (Ioi 0) ∧
      (∫ r in Ioi (0 : ℝ), Complex.exp (-z * (r : ℂ))) = z⁻¹ := by
  have hn : (-z).re < 0 := by rw [Complex.neg_re]; linarith
  refine ⟨integrableOn_exp_mul_complex_Ioi hn 0, ?_⟩
  rw [integral_exp_mul_complex_Ioi hn 0]
  simp

private theorem integral_geometricApprox {alpha : ℝ} (ha : 0 < alpha)
    {d : ℂ} (hd : 0 ≤ d.re) (n : ℕ) :
    (∫ r in Ioi (0 : ℝ), geometricApprox alpha d n r) =
      ∑ j ∈ Finset.range n,
        (((alpha : ℂ) + 2 * (j : ℂ))⁻¹ -
          ((alpha : ℂ) + d + 2 * (j : ℂ))⁻¹) := by
  have hpos (j : ℕ) : 0 < ((alpha : ℂ) + 2 * (j : ℂ)).re := by
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re,
      Complex.ofNat_re, Complex.natCast_re, Complex.ofNat_im,
      Complex.natCast_im, mul_zero, sub_zero]
    positivity
  have hpos' (j : ℕ) : 0 < ((alpha : ℂ) + d + 2 * (j : ℂ)).re := by
    have hj := hpos j
    simp only [Complex.add_re] at hj ⊢
    linarith
  calc
    _ = ∫ r in Ioi (0 : ℝ), ∑ j ∈ Finset.range n,
        (Complex.exp (-((alpha : ℂ) + 2 * (j : ℂ)) * (r : ℂ)) -
          Complex.exp (-((alpha : ℂ) + d + 2 * (j : ℂ)) * (r : ℂ))) := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
      exact geometricApprox_eq alpha d n hr
    _ = _ := by
      rw [integral_finset_sum _ (fun j _ =>
        (exponential_integral (hpos j)).1.sub (exponential_integral (hpos' j)).1)]
      apply Finset.sum_congr rfl
      intro j _
      rw [integral_sub (exponential_integral (hpos j)).1
        (exponential_integral (hpos' j)).1,
        (exponential_integral (hpos j)).2, (exponential_integral (hpos' j)).2]

/-- Gauss's compensated difference, proved from finite Laplace integrals and the
native Euler-Gamma logarithmic-derivative limit. No digamma series is assumed. -/
theorem digamma_sub_eq_compensated_integral {alpha : ℝ} (ha : 0 < alpha)
    {d : ℂ} (hd : 0 ≤ d.re) :
    Complex.digamma (((alpha : ℂ) + d) / 2) - Complex.digamma ((alpha : ℂ) / 2) =
      2 * ∫ r in Ioi (0 : ℝ), compensatedDensity alpha d r := by
  let B : ℝ → ℝ := fun r =>
    (2 * ‖d‖ * (2 / alpha + 1 / 2)) * Real.exp (-(alpha / 2) * r)
  have hiB : IntegrableOn B (Ioi 0) :=
    (integrableOn_exp_mul_Ioi (show -(alpha / 2) < 0 by linarith) 0).const_mul _
  have hlim : Tendsto (fun n : ℕ => ∫ r in Ioi (0 : ℝ),
      geometricApprox alpha d (n + 1) r) atTop
      (𝓝 (∫ r in Ioi (0 : ℝ), compensatedDensity alpha d r)) := by
    apply tendsto_integral_of_dominated_convergence B
    · intro n
      have hm : Measurable (geometricApprox alpha d (n + 1)) := by
        unfold geometricApprox compensatedDensity
        fun_prop
      exact hm.aestronglyMeasurable
    · exact hiB
    · intro n
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
      exact geometricApprox_bound ha hd (n + 1) hr
    · filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
      have hb : Real.exp (-2 * r) < 1 := by
        simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr (by linarith : -2 * r < 0)
      have hp : Tendsto (fun n : ℕ => (Real.exp (-2 * r)) ^ (n + 1)) atTop (𝓝 0) := by
        simpa only [pow_succ, zero_mul] using
          (tendsto_pow_atTop_nhds_zero_of_lt_one (Real.exp_nonneg (-2 * r)) hb).
            mul_const (Real.exp (-2 * r))
      have hc := tendsto_const_nhds.mul
        (tendsto_const_nhds.sub (Complex.continuous_ofReal.continuousAt.tendsto.comp hp))
      simpa only [geometricApprox, Complex.ofReal_pow, Complex.ofReal_zero,
        sub_zero, mul_one] using hc
  let z : ℂ := ((alpha : ℂ) + d) / 2
  let x : ℂ := (alpha : ℂ) / 2
  have hz : 0 < z.re := by dsimp [z]; simp only [Complex.div_ofNat_re, Complex.add_re,
    Complex.ofReal_re]; linarith
  have hx : 0 < x.re := by dsimp [x]; simp only [Complex.div_ofNat_re, Complex.ofReal_re]; linarith
  have he (n : ℕ) (hn : n ≠ 0) :
      logDeriv (fun w => Complex.GammaSeq w n) z -
        logDeriv (fun w => Complex.GammaSeq w n) x =
      2 * ∫ r in Ioi (0 : ℝ), geometricApprox alpha d (n + 1) r := by
    rw [GammaEulerLimit.logDeriv_GammaSeq hn hz,
      GammaEulerLimit.logDeriv_GammaSeq hn hx, integral_geometricApprox ha hd]
    have hsum : (∑ j ∈ Finset.range (n + 1), (x + (j : ℂ))⁻¹) -
        (∑ j ∈ Finset.range (n + 1), (z + (j : ℂ))⁻¹) =
        2 * ∑ j ∈ Finset.range (n + 1),
          (((alpha : ℂ) + 2 * (j : ℂ))⁻¹ -
            ((alpha : ℂ) + d + 2 * (j : ℂ))⁻¹) := by
      rw [← Finset.sum_sub_distrib, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro j _
      have hhalf (w : ℂ) : (w / 2 + (j : ℂ))⁻¹ = 2 * (w + 2 * (j : ℂ))⁻¹ := by
        rw [show w / 2 + (j : ℂ) = (w + 2 * (j : ℂ)) / 2 by ring]
        simp [div_eq_mul_inv, mul_inv_rev, mul_comm]
      dsimp only [x, z]
      rw [hhalf, hhalf]
      ring
    linear_combination hsum
  have heuler := (GammaEulerLimit.logDeriv_GammaSeq_tendsto hz).sub
    (GammaEulerLimit.logDeriv_GammaSeq_tendsto hx)
  have hsame : Tendsto (fun n : ℕ =>
      2 * ∫ r in Ioi (0 : ℝ), geometricApprox alpha d (n + 1) r) atTop
      (𝓝 (Complex.digamma z - Complex.digamma x)) := by
    apply (show Tendsto (fun n : ℕ =>
        logDeriv (fun w => Complex.GammaSeq w n) z -
          logDeriv (fun w => Complex.GammaSeq w n) x) atTop
        (𝓝 (Complex.digamma z - Complex.digamma x)) from heuler).congr'
    filter_upwards [eventually_ne_atTop 0] with n hn
    exact he n hn
  exact tendsto_nhds_unique hsame (tendsto_const_nhds.mul hlim)

end GRWTSK.SpecialFunctions.CompensatedDigammaIntegral
