/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainderHolomorphic
import GRWTSK.NumberTheory.Zeta.Riemann.RightHalfPlaneModulus
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics
import Mathlib.Analysis.Convex.Topology
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp

set_option autoImplicit false

/-!
# The specified cubic remainder represents the actual zeta source

First match the finite Euler--Maclaurin telescope and actual Dirichlet series
on Re(s)>1. Every terminal power is retained until its own limit is proved.
Then identify the regular part with Mathlib's existing entire riemannZeta₀
on the connected half-plane Re(s)>-2. This continues an equality, not a bound.
The raw zeta identity still excludes one. No division by the cubic prefactor
is used. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CubicZetaIdentity

open Set Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinKernel
open CubicPowerSummation CubicRemainder CubicRemainderHolomorphic RightHalfPlaneModulus

noncomputable section

/-- Match the maintained real-log power with the genuine positive-base Dirichlet term. -/
theorem logPower_neg_eq_reciprocal_cpow (t : ℝ) (ht : 0 < t) (s : ℂ) :
    logPower t (-s) = 1 / (t : ℂ) ^ s := by
  rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr ht.ne'),
    ← Complex.ofReal_log ht.le]
  unfold logPower
  rw [neg_mul, Complex.exp_neg]
  simp only [one_div]
  congr 2
  ring

/-- Negative real part, not a negative real-valued exponent, is sufficient. -/
theorem terminal_logPower_tendsto_zero (z : ℂ) (hz : z.re < 0) :
    Tendsto (fun N : ℕ => logPower ((N : ℝ) + 1) z) atTop (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have ha : Tendsto (fun N : ℕ => (N : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ 1 tendsto_natCast_atTop_atTop
  have hp := (tendsto_rpow_neg_atTop (neg_pos.mpr hz)).comp ha
  have he : (fun N : ℕ => ‖logPower ((N : ℝ) + 1) z‖) =
      (fun N : ℕ => ((N : ℝ) + 1) ^ z.re) := by
    funext N
    rw [Real.rpow_def_of_pos (by positivity)]
    simp only [logPower, Complex.norm_exp, Complex.mul_re,
      Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
    congr 1
    ring
  rw [he]
  simpa only [Function.comp_def, neg_neg] using hp

/-- The N terms start at one, and their limit is the actual zeta value. -/
theorem dirichlet_prefix_tendsto (s : ℂ) (hs : 1 < s.re) :
    Tendsto (fun N : ℕ => ∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s))
      atTop (𝓝 (riemannZeta s)) := by
  have hsum : Summable (fun k : ℕ => 1 / ((k : ℂ) + 1) ^ s) := by
    simpa only [Nat.cast_one] using summable_shifted_reciprocal_cpow s hs 1
  have he (k : ℕ) : logPower ((k : ℝ) + 1) (-s) = 1 / ((k : ℂ) + 1) ^ s := by
    simpa only [Complex.ofReal_add, Complex.ofReal_natCast, Complex.ofReal_one] using
      logPower_neg_eq_reciprocal_cpow ((k : ℝ) + 1) (by positivity) s
  simp_rw [he]
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow hs]
  exact hsum.hasSum.tendsto_sum_nat

/-- Exact finite identity: N included terms end at N; every terminal power is at N+1. -/
theorem finite_zeta_telescope (s : ℂ) (hs : s ≠ 1) (N : ℕ) :
    (∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s)) =
      (1 - logPower ((N : ℝ) + 1) (1 - s)) / (s - 1) +
      (1 - logPower ((N : ℝ) + 1) (-s)) / 2 +
      s * (1 - logPower ((N : ℝ) + 1) (-s - 1)) / 12 -
      s * (s + 1) * (s + 2) *
        ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s) := by
  have hsn : s - 1 ≠ 0 := sub_ne_zero.mpr hs
  have hz : -s + 1 ≠ 0 := by intro he; apply hsn; linear_combination -he
  have h := finite_power_sum 1 (by norm_num) (-s) hz N
  have hone (z : ℂ) : logPower 1 z = 1 := by simp [logPower]
  simp only [hone, add_comm (1 : ℝ), show -s + 1 = 1 - s by ring] at h
  have hquot (v : ℂ) : (v - 1) / (1 - s) = (1 - v) / (s - 1) := by
    rw [show 1 - s = -(s - 1) by ring, div_neg]
    ring
  rw [hquot] at h
  calc
    _ = _ := h
    _ = _ := by ring

/-- First identify the actual source where its Dirichlet series genuinely converges. -/
theorem zeta_eq_cubic_of_one_lt_re (s : ℂ) (hs : 1 < s.re) :
    riemannZeta s = (s - 1)⁻¹ + 1 / 2 + s / 12 -
      s * (s + 1) * (s + 2) * cubicRemainder s := by
  have hne : s ≠ 1 := by intro he; simp [he] at hs
  have h₁ := terminal_logPower_tendsto_zero (1 - s) (by
    simp only [Complex.sub_re, Complex.one_re]; linarith)
  have h₂ := terminal_logPower_tendsto_zero (-s) (by
    simp only [Complex.neg_re]; linarith)
  have h₃ := terminal_logPower_tendsto_zero (-s - 1) (by
    simp only [Complex.sub_re, Complex.neg_re, Complex.one_re]; linarith)
  have hR := prefix_tendsto s (by linarith : -2 < s.re)
  have hlim := (((((tendsto_const_nhds (x := (1 : ℂ))).sub h₁).div_const (s - 1)).add
    (((tendsto_const_nhds (x := (1 : ℂ))).sub h₂).div_const (2 : ℂ))).add
    ((((tendsto_const_nhds (x := (1 : ℂ))).sub h₃).const_mul s).div_const (12 : ℂ))).sub
    (hR.const_mul (s * (s + 1) * (s + 2)))
  have hsame : Tendsto
      (fun N : ℕ => ∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s)) atTop
      (𝓝 ((s - 1)⁻¹ + 1 / 2 + s / 12 -
        s * (s + 1) * (s + 2) * cubicRemainder s)) := by
    have he := hlim.congr' (Eventually.of_forall
      (fun N : ℕ => (finite_zeta_telescope s hne N).symm))
    simpa only [sub_zero, mul_one, one_div] using he
  exact tendsto_nhds_unique (dirichlet_prefix_tendsto s hs) hsame

/-- An independently specified regular expression, not a redefinition of zeta. -/
def cubicRegularPart (s : ℂ) : ℂ :=
  1 / 2 + s / 12 - s * (s + 1) * (s + 2) * cubicRemainder s

theorem analyticOnNhd_cubicRegularPart :
    AnalyticOnNhd ℂ cubicRegularPart {s : ℂ | -2 < s.re} := by
  intro s hs
  have hR := analyticOnNhd_cubicRemainder s hs
  unfold cubicRegularPart
  simp only [div_eq_mul_inv]
  exact (analyticAt_const.add (analyticAt_id.mul analyticAt_const)).sub
    (((analyticAt_id.mul (analyticAt_id.add analyticAt_const)).mul
      (analyticAt_id.add analyticAt_const)).mul hR)

/-- The continuation domain includes one; no punctured-domain connectivity oracle is needed. -/
theorem cubic_halfPlane_convex : Convex ℝ {s : ℂ | -2 < s.re} := by
  intro x hx y hy a b ha hb hab
  change (-2 : ℝ) < x.re at hx
  change (-2 : ℝ) < y.re at hy
  change (-2 : ℝ) < (a • x + b • y).re
  simp only [Complex.add_re, Complex.smul_re, smul_eq_mul]
  by_cases ha0 : a = 0
  · have hb1 : b = 1 := by linarith
    simpa only [ha0, hb1, zero_mul, one_mul, zero_add] using hy
  · have ha' : 0 < a := lt_of_le_of_ne ha (Ne.symm ha0)
    have hax : a * (-2) < a * x.re := mul_lt_mul_of_pos_left hx ha'
    have hby : b * (-2) ≤ b * y.re := mul_le_mul_of_nonneg_left hy.le hb
    nlinarith

/-- Continue equality of analytic regular parts, not a magnitude inequality. -/
theorem riemannZeta₀_eq_cubicRegularPart (s : ℂ) (hs : -2 < s.re) :
    riemannZeta₀ s = cubicRegularPart s := by
  have hz : AnalyticOnNhd ℂ riemannZeta₀ {w : ℂ | -2 < w.re} :=
    fun w _ => differentiable_riemannZeta₀.analyticAt w
  have he : riemannZeta₀ =ᶠ[𝓝 (2 : ℂ)] cubicRegularPart := by
    apply eventuallyEq_of_mem
      ((isOpen_lt continuous_const Complex.continuous_re).mem_nhds
        (by norm_num : 1 < (2 : ℂ).re))
    intro w hw
    have hwne : w ≠ 1 := by intro hh; simp [hh] at hw
    have h := zeta_eq_cubic_of_one_lt_re w hw
    rw [riemannZeta_eq_inv_sub_add hwne] at h
    unfold cubicRegularPart
    linear_combination h
  exact (hz.eqOn_of_preconnected_of_eventuallyEq analyticOnNhd_cubicRegularPart
    cubic_halfPlane_convex.isPreconnected (by norm_num : (2 : ℂ) ∈ {w : ℂ | -2 < w.re})
    he) hs

/-- Actual zeta identity on the proved half-plane, with its pole explicitly excluded. -/
theorem zeta_eq_cubic (s : ℂ) (hs : -2 < s.re) (hne : s ≠ 1) :
    riemannZeta s = (s - 1)⁻¹ + 1 / 2 + s / 12 -
      s * (s + 1) * (s + 2) * cubicRemainder s := by
  rw [riemannZeta_eq_inv_sub_add hne, riemannZeta₀_eq_cubicRegularPart s hs]
  unfold cubicRegularPart
  ring

/-- The existing multiplicative pole normalization keeps its value one at the pole. -/
theorem riemannZeta₁_eq_cubic (s : ℂ) (hs : -2 < s.re) :
    riemannZeta₁ s = 1 + (s - 1) * cubicRegularPart s := by
  rw [riemannZeta₁, riemannZeta₀_eq_cubicRegularPart s hs]

/-- At one, compare regular parts, not the raw totalized zeta expression. -/
theorem cubicRemainder_at_one_identity :
    (Real.eulerMascheroniConstant : ℂ) = 7 / 12 - 6 * cubicRemainder 1 := by
  have h := riemannZeta₀_eq_cubicRegularPart 1 (by norm_num)
  rw [riemannZeta₀_one, cubicRegularPart] at h
  convert h using 1
  ring

end
end GRWTSK.RiemannHypothesis.CubicZetaIdentity
