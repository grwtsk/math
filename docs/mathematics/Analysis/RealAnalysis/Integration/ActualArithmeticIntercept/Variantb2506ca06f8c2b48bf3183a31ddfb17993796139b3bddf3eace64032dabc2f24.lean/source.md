# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualArithmeticIntercept.Variantb2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d81980f3258749d18e5830cbb84e4ba17349d93` · SHA-256 `b2506ca06f8c2b48bf3183a31ddfb17993796139b3bddf3eace64032dabc2f24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

theorem actual_laplace_integrable {s : ℝ} (hs : 0 < s) :
    IntegrableOn (fun t : ℝ => Real.exp (-s*t)*actualRemainder t) (Ioi 0) := by
  have h := ((actual_prefix_laplace_integrable hs).sub (linear_exponential_integrable hs)).add
    ((integrableOn_exp_mul_Ioi (a:=-s) (by linarith) 0).mul_const Real.eulerMascheroniConstant)
  convert! h using 1
  funext t
  simp only [Pi.sub_apply,Pi.add_apply]
  unfold actualRemainder mangoldtLogError
  ring

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
  have h1 := integral_add
    ((actual_prefix_laplace_integrable hs).sub (linear_exponential_integrable hs))
    ((integrableOn_exp_mul_Ioi (a:=-s) (by linarith) 0).mul_const Real.eulerMascheroniConstant)
  have h2 := integral_sub (actual_prefix_laplace_integrable hs) (linear_exponential_integrable hs)
  simp only [Pi.sub_apply] at h1 h2
  rw [actualLaplace,he,h1,h2,linear_exponential_integral hs,integral_mul_const,exponential_integral hs]
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

theorem real_right_tendsto_complex_positive :
    Tendsto (fun s : ℝ => (s:ℂ)) (𝓝[>] (0:ℝ)) (𝓝[{u:ℂ|0<u.re}] (0:ℂ)) := by
  refine tendsto_nhdsWithin_iff.mpr ⟨?_,?_⟩
  · simpa only [Complex.ofReal_zero] using
      (Complex.continuous_ofReal.continuousAt (x:=(0:ℝ))).tendsto.mono_left
        nhdsWithin_le_nhds
  · filter_upwards [self_mem_nhdsWithin] with s hs
    simpa only [mem_ofPred_eq,Complex.ofReal_re,mem_Ioi] using hs

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
  simpa [Function.comp_def,pow_two] using hr

theorem actual_remainder_integral_eq_coefficient
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    (∫ t in Ioi (0:ℝ), actualRemainder t) =
      Real.eulerMascheroniConstant^2+2*firstStieltjesConstant := by
  exact tendsto_nhds_unique (actual_laplace_tendsto_right hI) actual_laplace_tendsto_coefficient

end ContinuousResearch.ActualArithmeticIntercept

/- Exact public type, full proof and trusted dependency audits. -/

#check ContinuousResearch.ActualArithmeticIntercept.exponential_integral
#print axioms ContinuousResearch.ActualArithmeticIntercept.exponential_integral
#print ContinuousResearch.ActualArithmeticIntercept.exponential_integral

#check ContinuousResearch.ActualArithmeticIntercept.linear_exponential_integral
#print axioms ContinuousResearch.ActualArithmeticIntercept.linear_exponential_integral
#print ContinuousResearch.ActualArithmeticIntercept.linear_exponential_integral

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_integrable
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_integrable
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_integrable

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_compensation
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_compensation
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_compensation

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_eq_LSeries_quotient
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_eq_LSeries_quotient
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_eq_LSeries_quotient

#check ContinuousResearch.ActualArithmeticIntercept.real_right_tendsto_complex_positive
#print axioms ContinuousResearch.ActualArithmeticIntercept.real_right_tendsto_complex_positive
#print ContinuousResearch.ActualArithmeticIntercept.real_right_tendsto_complex_positive

#check ContinuousResearch.ActualArithmeticIntercept.actual_laplace_tendsto_coefficient
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_laplace_tendsto_coefficient
#print ContinuousResearch.ActualArithmeticIntercept.actual_laplace_tendsto_coefficient

#check ContinuousResearch.ActualArithmeticIntercept.actual_remainder_integral_eq_coefficient
#print axioms ContinuousResearch.ActualArithmeticIntercept.actual_remainder_integral_eq_coefficient
#print ContinuousResearch.ActualArithmeticIntercept.actual_remainder_integral_eq_coefficient
```
