# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeOffGridDensityReadout.Variantff6a0b5caae862bb2bab8e59e06ee3328f979946fe8da8cd698363dcfadd0b7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `829e2f7b964c284c3af52be78aa1553b534e53af` · SHA-256 `ff6a0b5caae862bb2bab8e59e06ee3328f979946fe8da8cd698363dcfadd0b7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridTransformReadout
import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridCounting

/-!
# Literal x-domain readout of the native positive comparison density

The complete interval from one to exp(2A) and its x^(-1/2) weight are retained.
The positive-domain exponential substitution identifies that literal density
integral with the logarithmic source readout, with genuine integrability.
Its difference from the exact phase-selected squared source moment is at
most four. Integer negativity and half-integer growth still need separate
quantitative correction and phase checks. Human unchanged-source direction:
grwtsk contributors. Local substitution consumer: OpenAI Codex. This smooth
comparison measure is not the arithmetic Mangoldt measure and proves no RH
or signed exceptional-Gram conclusion.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridDensityReadout
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity MeasureTheory Set
open ActualComplexCorrelationMoment NativeOffGridDensity NativeOffGridCounting
open NativeOffGridTransformReadout
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

def densitySourceInput (A x : ℝ) : ℝ := x ^ (-(1 / 2) : ℝ) * C A (Real.log x) * density x
def densityReadout (A : ℝ) : ℝ :=
  ∫ x in (1 : ℝ)..Real.exp (2 * A), densitySourceInput A x

theorem literal_density_source_continuous_at {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    ContinuousAt (densitySourceInput A) x := by
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous.continuousAt.comp
    (Real.continuousAt_log hx.ne')
  exact ((Real.continuousAt_rpow_const x (-(1 / 2) : ℝ) (.inl hx.ne')).mul hc).mul
    (literal_density_continuous_at hx)

theorem literal_density_readout_interval_integrable {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (densitySourceInput A) volume 1 (Real.exp (2 * A)) := by
  have he : 1 ≤ Real.exp (2 * A) := Real.one_le_exp_iff.mpr (by linarith)
  apply ContinuousOn.intervalIntegrable
  intro x hx
  rw [uIcc_of_le he] at hx
  have hx1 := hx.1
  exact (literal_density_source_continuous_at hA (by linarith : 0 < x)).continuousWithinAt

theorem literal_density_exponential_integrand (A t : ℝ) :
    densitySourceInput A (Real.exp t) * Real.exp t =
      (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re +
        (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re := by
  unfold densitySourceInput density
  rw [Real.log_exp, ← Real.exp_mul]
  have heR : Real.exp (t * (-(1 / 2) : ℝ)) * Real.exp t = Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have heC : (Real.exp (t / 2) : ℂ) *
      Complex.exp ((exponent - 1) * (t : ℂ)) = Complex.exp (mode * (t : ℂ)) := by
    rw [Complex.ofReal_exp, ← Complex.exp_add]
    congr 1
    unfold exponent
    push_cast
    ring
  have hbase : Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) = (Real.exp (t / 2) : ℂ) := by
    rw [Complex.ofReal_exp]
    congr 1
    push_cast
    ring
  calc
    _ = (Real.exp (t * (-(1 / 2) : ℝ)) * Real.exp t) * C A t *
        (1 + (phase * exponent * Complex.exp ((exponent - 1) * (t : ℂ))).re) := by ring
    _ = Real.exp (t / 2) * C A t *
        (1 + (phase * exponent * Complex.exp ((exponent - 1) * (t : ℂ))).re) := by rw [heR]
    _ = _ := by
      rw [hbase, ← heC]
      simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, mul_zero, zero_mul, sub_zero, add_zero]
      ring

theorem literal_density_readout_transport {A : ℝ} (hA : 1 ≤ A) :
    densityReadout A = logarithmicModelReadout A := by
  have hg : ContinuousOn (densitySourceInput A) (Ioi 0) :=
    fun x hx ↦ (literal_density_source_continuous_at hA hx).continuousWithinAt
  have h := intervalIntegral.integral_comp_mul_deriv'
    (a := (0 : ℝ)) (b := 2 * A) (fun t _ ↦ Real.hasDerivAt_exp t)
    Real.continuous_exp.continuousOn
    (hg.mono (by rintro _ ⟨t, _, rfl⟩; exact Real.exp_pos _))
  have heq : (fun t : ℝ ↦ (densitySourceInput A ∘ Real.exp) t * Real.exp t) =
      fun t : ℝ ↦ (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re +
        (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re := by
    funext t
    exact literal_density_exponential_integrand A t
  have hc := (sourceCorrelation_contDiff A (by linarith)).continuous
  have hcC : Continuous (fun t : ℝ ↦ (C A t : ℂ)) := Complex.continuous_ofReal.comp hc
  have h0 : Continuous (fun t : ℝ ↦ Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)) :=
    (Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).mul hcC
  have h1 : Continuous (fun t : ℝ ↦ phase * exponent *
      Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)) :=
    ((Complex.continuous_exp.comp (continuous_const.mul Complex.continuous_ofReal)).const_mul
      (phase * exponent)).mul hcC
  have hi0 : IntervalIntegrable (fun t : ℝ ↦
      (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re) volume 0 (2 * A) := by
    simpa only [Function.comp_apply] using! (Complex.continuous_re.comp h0).intervalIntegrable 0 (2 * A)
  have hi1 : IntervalIntegrable (fun t : ℝ ↦
      (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re) volume 0 (2 * A) := by
    simpa only [Function.comp_apply] using! (Complex.continuous_re.comp h1).intervalIntegrable 0 (2 * A)
  have hre0 : (∫ t in (0 : ℝ)..2 * A,
      (Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re) =
      (∫ t in (0 : ℝ)..2 * A, Complex.exp ((1 / 2 : ℂ) * (t : ℂ)) * (C A t : ℂ)).re := by
    simpa using! intervalIntegral.intervalIntegral_re (h0.intervalIntegrable 0 (2 * A))
  have hre1 : (∫ t in (0 : ℝ)..2 * A,
      (phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re) =
      (∫ t in (0 : ℝ)..2 * A,
        phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)).re := by
    simpa using! intervalIntegral.intervalIntegral_re (h1.intervalIntegrable 0 (2 * A))
  rw [heq, intervalIntegral.integral_add hi0 hi1, hre0, hre1] at h
  have hconst : (fun t : ℝ ↦ phase * exponent * Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)) =
      fun t : ℝ ↦ (phase * exponent) * (Complex.exp (mode * (t : ℂ)) * (C A t : ℂ)) := by
    funext t
    ring
  rw [hconst, intervalIntegral.integral_const_mul] at h
  simpa only [Real.exp_zero, densityReadout, logarithmicModelReadout, complexHalfMoment] using h.symm

theorem literal_native_density_full_moment_error {A : ℝ} (hA : 1 ≤ A) :
    |densityReadout A - (phase * exponent * ActualComplexSourceMoment.complexTestMoment A mode ^ 2).re| ≤ 4 := by
  rw [literal_density_readout_transport hA]
  exact logarithmic_model_full_moment_error hA

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridDensityReadout
```
