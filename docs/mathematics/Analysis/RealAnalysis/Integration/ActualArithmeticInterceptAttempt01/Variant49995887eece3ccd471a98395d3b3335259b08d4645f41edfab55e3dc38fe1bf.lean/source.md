# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticInterceptAttempt01.Variant49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff9cd9ab04dd740fab8f1b3a6e7a9f7e8fc6684d` · SHA-256 `49995887eece3ccd471a98395d3b3335259b08d4645f41edfab55e3dc38fe1bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualMangoldtLaplace
import ArithmeticLaurent
import MangoldtLaplaceIntegrability
import SourceRemainderLaplace
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

/-! Actual weighted Mangoldt Laplace compensation and coefficient assembly.
Direction grwtsk contributors; focused scratch construction OpenAI Codex.
The unweighted actual residual L1 admission is explicit wherever needed.
No Ramaré axiom, signed source witness, maintained acceptance or RH conclusion. -/
set_option autoImplicit false
set_option maxHeartbeats 800000
noncomputable section
namespace ContinuousResearch.ActualArithmeticIntercept
open MeasureTheory Set Filter
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open ContinuousResearch.ActualMangoldtLaplace ContinuousResearch.SourceRemainderLaplace
open ContinuousResearch.MangoldtLaplaceIntegrability ContinuousResearch.ActualFirstStieltjes

theorem exponential_integral {s : ℝ} (hs : 0 < s) :
    (∫ t in Ioi (0:ℝ), Real.exp (-s*t)) = 1/s := by
  simpa using integral_exp_mul_Ioi (a:=-s) (by linarith) 0

theorem linear_exponential_integral {s : ℝ} (hs : 0 < s) :
    (∫ t in Ioi (0:ℝ), t*Real.exp (-s*t)) = 1/s^2 := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi (a:=(2:ℝ)) (by norm_num) hs
  norm_num [neg_mul] at h
  simpa [one_div,pow_two] using h

theorem actual_laplace_compensation {s : ℝ} (hs : 0 < s) :
    actualLaplace s =
      (∫ t in Ioi (0:ℝ), Real.exp (-s*t)*mangoldtLogPrefix t) - 1/s^2 +
        Real.eulerMascheroniConstant/s := by
  have he : (fun t : ℝ => Real.exp (-s*t)*actualRemainder t) =
    (fun t => Real.exp (-s*t)*mangoldtLogPrefix t-t*Real.exp (-s*t)+
      Real.exp (-s*t)*Real.eulerMascheroniConstant) := by
    funext t
    unfold actualRemainder mangoldtLogError
    ring
  rw [actualLaplace,he,integral_add
    ((actual_prefix_laplace_integrable hs).sub (linear_exponential_integrable hs))
    ((integrableOn_exp_mul_Ioi (a:=-s) (by linarith) 0).mul_const _),
    integral_sub (actual_prefix_laplace_integrable hs) (linear_exponential_integrable hs),
    linear_exponential_integral hs,integral_mul_const,exponential_integral hs]
  ring

theorem actual_laplace_eq_LSeries_quotient {s : ℝ} (hs : 0 < s) :
    ((actualLaplace s : ℝ):ℂ) =
      (LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) (1+(s:ℂ))-
        (s:ℂ)⁻¹+(Real.eulerMascheroniConstant:ℂ))/(s:ℂ) := by
  have h := actual_prefix_laplace_eq_LSeries hs
  rw [Complex.ofReal_mul] at h
  have hn : (s:ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (ne_of_gt hs)
  rw [actual_laplace_compensation hs]
  push_cast
  rw [show ((s+1:ℝ):ℂ) = 1+(s:ℂ) by push_cast;ring] at h
  rw [←h]
  field_simp
  ring

theorem real_right_tendsto_complex_positive :
    Tendsto (fun s : ℝ => (s:ℂ)) (𝓝[>] (0:ℝ)) (𝓝[{u:ℂ|0<u.re}] (0:ℂ)) := by
  refine tendsto_nhdsWithin_iff.mpr ⟨?_,?_⟩
  · simpa only [Complex.ofReal_zero] using
      (Complex.continuous_ofReal.continuousAt (x:=(0:ℝ))).tendsto.mono_left
        nhdsWithin_le_nhds
  · filter_upwards [self_mem_nhdsWithin] with s hs
    simpa only [mem_setOf_eq,Complex.ofReal_re] using hs

theorem actual_laplace_tendsto_coefficient :
    Tendsto actualLaplace (𝓝[>] (0:ℝ))
      (𝓝 (Real.eulerMascheroniConstant^2+2*firstStieltjesConstant)) := by
  have h := ContinuousResearch.ArithmeticLaurent.actual_vonMangoldt_series_laurent_slope.comp
    real_right_tendsto_complex_positive
  have hc : Tendsto (fun s : ℝ => (actualLaplace s:ℂ)) (𝓝[>] (0:ℝ))
      (𝓝 ((Real.eulerMascheroniConstant:ℂ)^2+2*(firstStieltjesConstant:ℂ))) := by
    apply h.congr'
    filter_upwards [self_mem_nhdsWithin] with s hs
    exact (actual_laplace_eq_LSeries_quotient hs).symm
  have hr := Complex.continuous_re.continuousAt.tendsto.comp hc
  simpa only [Function.comp_apply,Complex.ofReal_re,Complex.add_re,Complex.mul_re,
    Complex.pow_two,Complex.ofReal_im,mul_zero,sub_zero,Complex.ofNat_re,Complex.ofNat_im,
    zero_mul,pow_two] using hr

theorem actual_remainder_integral_eq_coefficient
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    (∫ t in Ioi (0:ℝ), actualRemainder t) =
      Real.eulerMascheroniConstant^2+2*firstStieltjesConstant := by
  exact tendsto_nhds_unique (actual_laplace_tendsto_right hI) actual_laplace_tendsto_coefficient

end ContinuousResearch.ActualArithmeticIntercept
```
