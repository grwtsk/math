# Complete source: GRWTSK.Analysis.MeasureTheory.NativeOffGridCounting.Variant24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1d5b75bc2ec99362199057bf9bc123cb41b9497` · SHA-256 `24b8c34c241812ecbaf5f6f2605dfa2598de4301da17c40c90ff98b12fcd4c38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridDensity
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Exact counting error of the native positive comparison density

The literal density's primitive and its complete interval integral retain the
endpoint at one. The density is positive and its counting error is at most
(4/3)*x^(3/4) for every real x>=1. No native source readout sign or off-grid
lower bound is claimed here. Human unchanged-source and coverage direction:
grwtsk contributors. Local calculus and envelope consumer: OpenAI Codex.
Mathlib calculus and complex power interfaces keep upstream identity. This
comparison density is not the von Mangoldt counting measure.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCounting
open NativeOffGridDensity MeasureTheory Set
open scoped Interval
noncomputable section

def countingPrimitive (x : ℝ) : ℝ :=
  x + (phase * Complex.exp (exponent * (Real.log x : ℂ))).re

theorem literal_density_continuous_at {x : ℝ} (hx : 0 < x) :
    ContinuousAt density x := by
  unfold density
  fun_prop (disch := exact hx.ne')

theorem literal_density_smooth_at (n : WithTop ℕ∞) {x : ℝ} (hx : 0 < x) :
    ContDiffAt ℝ n density x := by
  have hlog : ContDiffAt ℝ n (fun y : ℝ ↦ (Real.log y : ℂ)) x := by
    simpa using! Complex.ofRealCLM.contDiff.contDiffAt.comp x (Real.contDiffAt_log.mpr hx.ne')
  have hc : ContDiffAt ℝ n (fun y : ℝ ↦
      phase * exponent * Complex.exp ((exponent - 1) * (Real.log y : ℂ))) x := by
    have harg := (contDiffAt_const : ContDiffAt ℝ n (fun _ : ℝ ↦ exponent - 1) x).mul hlog
    simpa using! (contDiffAt_const : ContDiffAt ℝ n (fun _ : ℝ ↦ phase * exponent) x).mul harg.cexp
  have hr : ContDiffAt ℝ n (fun y : ℝ ↦
      (phase * exponent * Complex.exp ((exponent - 1) * (Real.log y : ℂ))).re) x := by
    simpa using! Complex.reCLM.contDiff.contDiffAt.comp x hc
  have h1 : ContDiffAt ℝ n (fun _ : ℝ ↦ (1 : ℝ)) x := contDiffAt_const
  simpa only [density] using! h1.add hr

theorem literal_complex_counting_derivative {x : ℝ} (hx : 0 < x) :
    HasDerivAt (fun y : ℝ ↦ phase * Complex.exp (exponent * (Real.log y : ℂ)))
      (phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ))) x := by
  have hd := (((Real.hasDerivAt_log hx.ne').ofReal_comp).const_mul exponent).cexp.const_mul phase
  apply hd.congr_deriv
  have he : Complex.exp (Real.log x : ℂ) = (x : ℂ) := by
    rw [← Complex.ofReal_exp, Real.exp_log hx]
  have harg : exponent * (Real.log x : ℂ) =
      (exponent - 1) * (Real.log x : ℂ) + (Real.log x : ℂ) := by ring
  rw [harg, Complex.exp_add, he]
  push_cast
  have hxc : (x : ℂ) ≠ 0 := by exact_mod_cast hx.ne'
  field_simp [hxc]

theorem literal_counting_primitive_derivative {x : ℝ} (hx : 0 < x) :
    HasDerivAt countingPrimitive (density x) x := by
  have hd := Complex.reCLM.hasFDerivAt.comp_hasDerivAt x (literal_complex_counting_derivative hx)
  have hr : HasDerivAt (fun y : ℝ ↦ (phase * Complex.exp (exponent * (Real.log y : ℂ))).re)
      (phase * exponent * Complex.exp ((exponent - 1) * (Real.log x : ℂ))).re x := by
    simpa using! hd
  simpa only [countingPrimitive, density] using! (hasDerivAt_id x).add hr

theorem literal_density_interval_integrable {x : ℝ} (hx : 1 ≤ x) :
    IntervalIntegrable density volume 1 x := by
  apply ContinuousOn.intervalIntegrable
  intro y hy
  have hy' : 1 ≤ y := by
    rw [uIcc_of_le hx] at hy
    exact hy.1
  exact (literal_density_continuous_at (by linarith : 0 < y)).continuousWithinAt

theorem literal_density_exact_counting_error {x : ℝ} (hx : 1 ≤ x) :
    (∫ y in (1 : ℝ)..x, density y) - x =
      -1 + (phase * (Complex.exp (exponent * (Real.log x : ℂ)) - 1)).re := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun y hy ↦ literal_counting_primitive_derivative (by
      have hy' : 1 ≤ y := by rw [uIcc_of_le hx] at hy; exact hy.1
      linarith)) (literal_density_interval_integrable hx)]
  simp only [countingPrimitive, Real.log_one, Complex.ofReal_zero, mul_zero,
    Complex.exp_zero, mul_one, mul_sub, Complex.sub_re]
  ring

theorem literal_phase_norm_le_one_sixth : ‖phase‖ ≤ 1 / 6 := by
  have h := literal_phase_amplitude
  rw [norm_mul] at h
  have hw := exponent_norm_gt_three
  have hn := norm_nonneg phase
  nlinarith

theorem literal_counting_error_power_envelope {x : ℝ} (hx : 1 ≤ x) :
    |(∫ y in (1 : ℝ)..x, density y) - x| ≤ (4 / 3) * x ^ (3 / 4 : ℝ) := by
  have hxpos : 0 < x := by linarith
  have hp : ‖Complex.exp (exponent * (Real.log x : ℂ))‖ = x ^ (3 / 4 : ℝ) := by
    rw [Complex.norm_exp, Real.rpow_def_of_pos hxpos]
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero,
      exponent_real_part]
    congr 1
    ring
  have hpow : 1 ≤ x ^ (3 / 4 : ℝ) := Real.one_le_rpow hx (by norm_num)
  have hosc : |(phase * (Complex.exp (exponent * (Real.log x : ℂ)) - 1)).re| ≤
      ‖phase‖ * (x ^ (3 / 4 : ℝ) + 1) := by
    calc
      _ ≤ ‖phase * (Complex.exp (exponent * (Real.log x : ℂ)) - 1)‖ := Complex.abs_re_le_norm _
      _ ≤ ‖phase‖ * (‖Complex.exp (exponent * (Real.log x : ℂ))‖ + ‖(1 : ℂ)‖) := by
        rw [norm_mul]
        exact mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
      _ = _ := by rw [hp, norm_one]
  rw [literal_density_exact_counting_error hx]
  have h := (abs_add_le (-1 : ℝ)
    (phase * (Complex.exp (exponent * (Real.log x : ℂ)) - 1)).re).trans
      (add_le_add (le_refl |(-1 : ℝ)|) hosc)
  norm_num only [abs_neg, abs_one] at h
  have hn := literal_phase_norm_le_one_sixth
  have hnonneg := norm_nonneg phase
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridCounting
```
