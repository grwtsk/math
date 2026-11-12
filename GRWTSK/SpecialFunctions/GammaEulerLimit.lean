/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Calculus.LogDeriv
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Locally uniform Euler approximation of the actual Gamma function

MSC2020: 33B15 (primary), 30B40.

Euler's existing GammaSeq integral is used without redefining Gamma. On the
whole strip 0 < alpha <= Re z <= beta, its error is dominated by the sum of
the real endpoint errors. The existing pointwise Euler limit therefore gives
locally uniform convergence on the right half-plane. Cauchy's theorem then
passes to the logarithmic derivatives, with Gamma nonvanishing proved by the
imported canonical theorem.

Consumer: CenteredDigammaSourceReturn.lean identifies the centered positive
series with Complex.digamma and eliminates the shifted-source residual.
No digamma integral/series formula, RH, or GRH is assumed here.

Primary API: David Loeffler's Mathlib Gamma/Beta Euler integral and limit;
Mathlib's locally uniform holomorphic-limit and logarithmic-derivative API.
See the adjacent analytical record and individual declaration provenance.
SOURCE_PROOF_CANDIDATE: elaboration, kernel replay, transitive axiom audit,
and independent review NOT_RUN. No novelty claimed. Refs math#1801.
-/

set_option autoImplicit false
noncomputable section

open Set Filter MeasureTheory
open scoped Topology BigOperators

namespace GRWTSK.SpecialFunctions.GammaEulerLimit

private def eulerWeight (n : ℕ) (x : ℝ) : ℝ :=
  (Ioc 0 (n : ℝ)).indicator (fun t => (1 - t / n) ^ n) x

private def gammaKernel (z : ℂ) (x : ℝ) : ℂ :=
  (Real.exp (-x) : ℂ) * (x : ℂ) ^ (z - 1)

private def eulerKernel (n : ℕ) (z : ℂ) (x : ℝ) : ℂ :=
  (eulerWeight n x : ℂ) * (x : ℂ) ^ (z - 1)

private def errorKernel (n : ℕ) (z : ℂ) (x : ℝ) : ℂ :=
  gammaKernel z x - eulerKernel n z x

private theorem weight_bounds (n : ℕ) {x : ℝ} (hx : 0 < x) :
    0 ≤ eulerWeight n x ∧ eulerWeight n x ≤ Real.exp (-x) := by
  by_cases hxn : x ≤ (n : ℝ)
  · have hn : 0 < (n : ℝ) := hx.trans_le hxn
    have hbase : 0 ≤ 1 - x / (n : ℝ) :=
      sub_nonneg.mpr (div_le_one_of_le₀ hxn hn.le)
    simp only [eulerWeight, indicator_of_mem (show x ∈ Ioc 0 (n : ℝ) from ⟨hx, hxn⟩)]
    exact ⟨pow_nonneg hbase n, Real.one_sub_div_pow_le_exp_neg hxn⟩
  · simp only [eulerWeight, indicator_of_notMem
      (show x ∉ Ioc 0 (n : ℝ) from fun h => hxn h.2)]
    exact ⟨le_rfl, (Real.exp_pos _).le⟩

private theorem eulerKernel_eq_indicator (n : ℕ) (z : ℂ) :
    eulerKernel n z = (Ioc 0 (n : ℝ)).indicator
      (fun x : ℝ => (((1 - x / n) ^ n : ℝ) : ℂ) * (x : ℂ) ^ (z - 1)) := by
  funext x
  by_cases hx : x ∈ Ioc 0 (n : ℝ) <;>
    simp [eulerKernel, eulerWeight, hx]

private theorem eulerKernel_integrable {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    IntegrableOn (eulerKernel n z) (Ioi 0) := by
  rw [eulerKernel_eq_indicator, IntegrableOn,
    integrable_indicator_iff measurableSet_Ioc,
    Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self, ← IntegrableOn,
    ← intervalIntegrable_iff_integrableOn_Ioc_of_le (Nat.cast_nonneg n)]
  apply IntervalIntegrable.continuousOn_mul
  · refine intervalIntegral.intervalIntegrable_cpow' ?_
    simp only [Complex.sub_re, Complex.one_re]
    linarith
  · fun_prop

private theorem gammaKernel_integrable {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (gammaKernel z) (Ioi 0) :=
  Complex.GammaIntegral_convergent hz

private theorem errorKernel_integrable {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    IntegrableOn (errorKernel n z) (Ioi 0) :=
  (gammaKernel_integrable hz).sub (eulerKernel_integrable hz n)

private theorem integral_eulerKernel {z : ℂ} (hz : 0 < z.re)
    {n : ℕ} (hn : n ≠ 0) :
    (∫ x in Ioi (0 : ℝ), eulerKernel n z x) = Complex.GammaSeq z n := by
  rw [eulerKernel_eq_indicator, integral_indicator measurableSet_Ioc,
    Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self,
    Complex.GammaSeq_eq_approx_Gamma_integral hz hn,
    intervalIntegral.integral_of_le (Nat.cast_nonneg n)]

private theorem integral_errorKernel {z : ℂ} (hz : 0 < z.re)
    {n : ℕ} (hn : n ≠ 0) :
    (∫ x in Ioi (0 : ℝ), errorKernel n z x) =
      Complex.Gamma z - Complex.GammaSeq z n := by
  have hgamma : (∫ x in Ioi (0 : ℝ), gammaKernel z x) = Complex.Gamma z := by
    simpa only [gammaKernel, Complex.GammaIntegral] using
      (Complex.Gamma_eq_integral hz).symm
  rw [errorKernel, integral_sub (gammaKernel_integrable hz)
    (eulerKernel_integrable hz n), hgamma, integral_eulerKernel hz hn]

private theorem errorKernel_eq (n : ℕ) (z : ℂ) (x : ℝ) :
    errorKernel n z x =
      ((Real.exp (-x) - eulerWeight n x : ℝ) : ℂ) * (x : ℂ) ^ (z - 1) := by
  simp only [errorKernel, gammaKernel, eulerKernel, Complex.ofReal_sub, sub_mul]

private theorem norm_errorKernel (n : ℕ) (z : ℂ) {x : ℝ} (hx : 0 < x) :
    ‖errorKernel n z x‖ =
      (Real.exp (-x) - eulerWeight n x) * x ^ (z.re - 1) := by
  rw [errorKernel_eq, norm_mul,
    Complex.norm_of_nonneg (sub_nonneg.mpr (weight_bounds n hx).2),
    Complex.norm_cpow_eq_rpow_re_of_pos hx]
  simp only [Complex.sub_re, Complex.one_re]

private theorem re_errorKernel_real (n : ℕ) (s x : ℝ) :
    (errorKernel n (s : ℂ) x).re =
      (Real.exp (-x) - eulerWeight n x) * x ^ (s - 1) := by
  rw [errorKernel_eq]
  have harg : (s : ℂ) - 1 = ((s - 1 : ℝ) : ℂ) := by push_cast; rfl
  rw [harg]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, sub_zero, Real.rpow_def]

private theorem rpow_between {alpha beta s x : ℝ} (hx : 0 < x)
    (ha : alpha ≤ s) (hb : s ≤ beta) :
    x ^ (s - 1) ≤ x ^ (alpha - 1) + x ^ (beta - 1) := by
  by_cases hx1 : x ≤ 1
  · have hlog : Real.log x ≤ 0 := Real.log_nonpos hx.le hx1
    have hp : x ^ (s - 1) ≤ x ^ (alpha - 1) := by
      rw [Real.rpow_def_of_pos hx, Real.rpow_def_of_pos hx]
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonpos_left (sub_le_sub_right ha 1) hlog
    exact hp.trans (le_add_of_nonneg_right (Real.rpow_nonneg hx.le _))
  · have hlog : 0 ≤ Real.log x := Real.log_nonneg (le_of_not_ge hx1)
    have hp : x ^ (s - 1) ≤ x ^ (beta - 1) := by
      rw [Real.rpow_def_of_pos hx, Real.rpow_def_of_pos hx]
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_left (sub_le_sub_right hb 1) hlog
    exact hp.trans (le_add_of_nonneg_left (Real.rpow_nonneg hx.le _))

/-- Uniform error on a whole positive-real strip, bounded by actual real endpoint
errors. Imaginary parts are unrestricted; no sampled-window inference is used. -/
theorem norm_Gamma_sub_GammaSeq_le_endpoint_errors
    {alpha beta : ℝ} (ha : 0 < alpha) (hab : alpha ≤ beta)
    {z : ℂ} (haz : alpha ≤ z.re) (hzb : z.re ≤ beta)
    {n : ℕ} (hn : n ≠ 0) :
    ‖Complex.Gamma z - Complex.GammaSeq z n‖ ≤
      (Complex.Gamma (alpha : ℂ) - Complex.GammaSeq (alpha : ℂ) n).re +
      (Complex.Gamma (beta : ℂ) - Complex.GammaSeq (beta : ℂ) n).re := by
  have hz : 0 < z.re := ha.trans_le haz
  have hb : 0 < beta := ha.trans_le hab
  have hia := errorKernel_integrable (z := (alpha : ℂ)) ha n
  have hib := errorKernel_integrable (z := (beta : ℂ)) hb n
  rw [← integral_errorKernel hz hn]
  calc
    _ ≤ ∫ x in Ioi (0 : ℝ), ‖errorKernel n z x‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ x in Ioi (0 : ℝ),
        (errorKernel n (alpha : ℂ) x).re + (errorKernel n (beta : ℂ) x).re := by
      apply integral_mono_ae (errorKernel_integrable hz n).norm (hia.re.add hib.re)
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
      rw [norm_errorKernel n z hx, re_errorKernel_real, re_errorKernel_real, ← mul_add]
      exact mul_le_mul_of_nonneg_left (rpow_between hx haz hzb)
        (sub_nonneg.mpr (weight_bounds n hx).2)
    _ = _ := by
      rw [integral_add hia.re hib.re, integral_re hia, integral_re hib,
        integral_errorKernel (z := (alpha : ℂ)) ha hn,
        integral_errorKernel (z := (beta : ℂ)) hb hn]

/-- The existing pointwise Euler limit upgrades to uniform convergence on every
closed vertical strip bounded away from the poles. -/
theorem GammaSeq_tendstoUniformlyOn_strip {alpha beta : ℝ}
    (ha : 0 < alpha) (hab : alpha ≤ beta) :
    TendstoUniformlyOn (fun n z => Complex.GammaSeq z n) Complex.Gamma atTop
      {z : ℂ | alpha ≤ z.re ∧ z.re ≤ beta} := by
  have hlim : Tendsto
      (fun n : ℕ =>
        (Complex.Gamma (alpha : ℂ) - Complex.GammaSeq (alpha : ℂ) n).re +
        (Complex.Gamma (beta : ℂ) - Complex.GammaSeq (beta : ℂ) n).re)
      atTop (𝓝 0) := by
    have h1 : Tendsto (fun n : ℕ =>
        (Complex.Gamma (alpha : ℂ) - Complex.GammaSeq (alpha : ℂ) n).re)
        atTop (𝓝 0) := by
      have hc : Tendsto (fun n : ℕ =>
          Complex.Gamma (alpha : ℂ) - Complex.GammaSeq (alpha : ℂ) n)
          atTop (𝓝 (Complex.Gamma (alpha : ℂ) - Complex.Gamma (alpha : ℂ))) :=
        tendsto_const_nhds.sub (Complex.GammaSeq_tendsto_Gamma (alpha : ℂ))
      simpa using Complex.continuous_re.continuousAt.tendsto.comp hc
    have h2 : Tendsto (fun n : ℕ =>
        (Complex.Gamma (beta : ℂ) - Complex.GammaSeq (beta : ℂ) n).re)
        atTop (𝓝 0) := by
      have hc : Tendsto (fun n : ℕ =>
          Complex.Gamma (beta : ℂ) - Complex.GammaSeq (beta : ℂ) n)
          atTop (𝓝 (Complex.Gamma (beta : ℂ) - Complex.Gamma (beta : ℂ))) :=
        tendsto_const_nhds.sub (Complex.GammaSeq_tendsto_Gamma (beta : ℂ))
      simpa using Complex.continuous_re.continuousAt.tendsto.comp hc
    simpa using h1.add h2
  rw [Metric.tendstoUniformlyOn_iff]
  intro epsilon hepsilon
  have hsmall := (tendsto_order.1 hlim).2 epsilon hepsilon
  filter_upwards [hsmall, eventually_ne_atTop 0] with n hsmall hn z hz
  simpa only [dist_eq_norm] using
    (norm_Gamma_sub_GammaSeq_le_endpoint_errors ha hab hz.1 hz.2 hn).trans_lt hsmall

/-- Locally uniform Euler convergence on the actual Gamma holomorphy half-plane. -/
theorem GammaSeq_tendstoLocallyUniformlyOn :
    TendstoLocallyUniformlyOn (fun n z => Complex.GammaSeq z n) Complex.Gamma
      atTop {z : ℂ | 0 < z.re} := by
  intro u hu z hz
  change 0 < z.re at hz
  let alpha : ℝ := z.re / 2
  let beta : ℝ := z.re + 1
  let v : Set ℂ := {w | alpha ≤ w.re ∧ w.re ≤ beta}
  have ha : 0 < alpha := by dsimp [alpha]; linarith
  have hab : alpha ≤ beta := by dsimp [alpha, beta]; linarith
  have ho : IsOpen {w : ℂ | alpha < w.re ∧ w.re < beta} :=
    (isOpen_lt continuous_const Complex.continuous_re).inter
      (isOpen_lt Complex.continuous_re continuous_const)
  have hv : v ∈ 𝓝[{w : ℂ | 0 < w.re}] z := by
    apply mem_of_superset
      (mem_nhdsWithin_of_mem_nhds (ho.mem_nhds (show alpha < z.re ∧ z.re < beta by
        dsimp [alpha, beta]; constructor <;> linarith)))
    intro w hw
    exact ⟨hw.1.le, hw.2.le⟩
  exact ⟨v, hv, GammaSeq_tendstoUniformlyOn_strip ha hab u hu⟩

private theorem add_nat_ne_zero {z : ℂ} (hz : 0 < z.re) (j : ℕ) :
    z + (j : ℂ) ≠ 0 := by
  intro h
  have hr := congrArg Complex.re h
  simp only [Complex.add_re, Complex.natCast_re, Complex.zero_re] at hr
  have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg j
  linarith

private theorem GammaSeq_differentiableAt {n : ℕ} (hn : n ≠ 0)
    {z : ℂ} (hz : 0 < z.re) :
    DifferentiableAt ℂ (fun w => Complex.GammaSeq w n) z := by
  have hnC : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hn
  have hp : DifferentiableAt ℂ (fun w : ℂ => (n : ℂ) ^ w) z :=
    ((hasDerivAt_id z).const_cpow (c := (n : ℂ)) (Or.inl hnC)).differentiableAt
  have hd : DifferentiableAt ℂ
      (fun w : ℂ => ∏ j ∈ Finset.range (n + 1), (w + (j : ℂ))) z := by fun_prop
  have hprod : (∏ j ∈ Finset.range (n + 1), (z + (j : ℂ))) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun j _ => add_nat_ne_zero hz j
  exact (hp.mul_const (n.factorial : ℂ)).div hd hprod

/-- Exact finite logarithmic derivative of the canonical Euler approximant. -/
theorem logDeriv_GammaSeq {n : ℕ} (hn : n ≠ 0) {z : ℂ} (hz : 0 < z.re) :
    logDeriv (fun w => Complex.GammaSeq w n) z =
      Complex.log (n : ℂ) - ∑ j ∈ Finset.range (n + 1), (z + (j : ℂ))⁻¹ := by
  have hnC : (n : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hn
  have hpow : (n : ℂ) ^ z ≠ 0 := by simp [Complex.cpow_eq_zero_iff, hnC]
  have hfact : (n.factorial : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)
  have hp := (hasDerivAt_id z).const_cpow (c := (n : ℂ)) (Or.inl hnC)
  have hd : DifferentiableAt ℂ
      (fun w : ℂ => ∏ j ∈ Finset.range (n + 1), (w + (j : ℂ))) z := by fun_prop
  have hprod : (∏ j ∈ Finset.range (n + 1), (z + (j : ℂ))) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun j _ => add_nat_ne_zero hz j
  have hpower : logDeriv (fun w : ℂ => (n : ℂ) ^ w) z = Complex.log (n : ℂ) := by
    rw [logDeriv_apply, hp.deriv, div_eq_iff hpow]
    simp only [mul_one]
    ring
  have hlinear (j : ℕ) : logDeriv (fun w : ℂ => w + (j : ℂ)) z = (z + (j : ℂ))⁻¹ := by
    rw [logDeriv_apply, ((hasDerivAt_id z).add_const (j : ℂ)).deriv, one_div]
  unfold Complex.GammaSeq
  rw [logDeriv_fun_div z (mul_ne_zero hpow hfact) hprod
      (hp.differentiableAt.mul_const _) hd,
    logDeriv_mul_const z (n.factorial : ℂ) hfact, hpower,
    logDeriv_fun_prod (fun j _ => add_nat_ne_zero hz j)
      (fun j _ => (differentiableAt_id.add_const (j : ℂ)))]
  simp only [hlinear]

/-- Cauchy convergence transfers the approximants' logarithmic derivatives to the
actual Gamma source. Nonvanishing and holomorphy are supplied, not assumed. -/
theorem logDeriv_GammaSeq_tendsto {z : ℂ} (hz : 0 < z.re) :
    Tendsto (fun n : ℕ => logDeriv (fun w => Complex.GammaSeq w n) z)
      atTop (𝓝 (logDeriv Complex.Gamma z)) := by
  have hU : IsOpen {w : ℂ | 0 < w.re} := isOpen_lt continuous_const Complex.continuous_re
  have hdiff : ∀ᶠ n : ℕ in atTop,
      DifferentiableOn ℂ (fun w => Complex.GammaSeq w n) {w : ℂ | 0 < w.re} := by
    filter_upwards [eventually_ne_atTop 0] with n hn w hw
    exact (GammaSeq_differentiableAt hn hw).differentiableWithinAt
  have hgamma : Complex.Gamma z ≠ 0 := by
    apply Complex.Gamma_ne_zero
    intro m h
    have hr := congrArg Complex.re h
    simp only [Complex.neg_re, Complex.natCast_re] at hr
    have hm : 0 ≤ (m : ℝ) := Nat.cast_nonneg m
    linarith
  exact Complex.logDeriv_tendsto hU hz GammaSeq_tendstoLocallyUniformlyOn hdiff hgamma

end GRWTSK.SpecialFunctions.GammaEulerLimit
