# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualSecondFourierMoment.Variant356ec7a098dc5ecb3bd4ea6e287e7f34097f8b9b71c17a80bbd36b2c629a5a2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2eeb97b54d48f2c9975060f4b4cdcacbcdd1030` · SHA-256 `64956aabfff238e3c175584005fd0b8cd05a64896294c9a75d591a10a1642423`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationComplexContDiffFour.Variant66692ad5040a07642eb11403c363804e0a3ad4906c725ca8a85ec65d977a23c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66692ad5040a07642eb11403c363804e0a3ad4906c725ca8a85ec65d977a23c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualCorrelationComplexContDiffFour.Variant66692ad5040a07642eb11403c363804e0a3ad4906c725ca8a85ec65d977a23c2","mathematical_subject":"Analysis.Calculus","original_sha256":"66692ad5040a07642eb11403c363804e0a3ad4906c725ca8a85ec65d977a23c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T045328Z-1791348808120080000/SourceActualSecondFourierMoment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFourthCorrelationCalibration
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel
import Zeta23.WeilEF.VerticalLine
import Mathlib.Analysis.Fourier.FourierTransformDeriv
import Mathlib.Analysis.Calculus.ContDiff.Deriv

/-!
Genuine weighted Fourier energy of the unchanged normalized source.
C4 regularity and compact support supply L1 before Fourier inversion. The real
second frequency moment is the original derivative energy, with its exact
source angular-frequency normalization. No arithmetic bound is inferred.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualCorrelationComplexContDiffFour.Variant66692ad5040a07642eb11403c363804e0a3ad4906c725ca8a85ec65d977a23c2

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualSecondFourierMoment
open MeasureTheory
open scoped FourierTransform
open SourcePairing SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity SourcePlancherel
open RH16IndependentChallengeNext
noncomputable section

/-- The actual complex correlation retains genuine C4 and compact support. -/
theorem actualCorrelationComplex_contDiff_four {A : ℝ} (hA : 1 ≤ A) :
    ContDiff ℝ 4 (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
  Complex.ofRealCLM.contDiff.comp (actual_correlation_contDiff_four A (by linarith))

/-- The twice differentiated actual correlation has a genuinely integrable Fourier transform. -/
theorem actualSecondCorrelation_fourier_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (𝓕 (deriv (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))))) := by
  have h4 := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)))) := h3.deriv'
  have hs : HasCompactSupport (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  exact Zeta23.EF.integrable_fourier_of_contDiff_two h2 hs.deriv.deriv

/-- Two Fourier derivative identities retain the ordinary genuine correlation square energy. -/
theorem actualSecondCorrelation_fourier_eq {A : ℝ} (hA : 1 ≤ A) (ξ : ℝ) :
    𝓕 (deriv (deriv (fun t =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)))) ξ =
      (-4 * Real.pi^2 : ℝ) *
        ((ξ^2 * Complex.normSq
          (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℝ) : ℂ) := by
  let f : ℝ → ℂ := fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have h4 : ContDiff ℝ 4 f := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv f) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv f)) := h3.deriv'
  have hs : HasCompactSupport f :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  have hf : Integrable f := h4.continuous.integrable_of_hasCompactSupport hs
  have hd : Integrable (deriv f) := h3.continuous.integrable_of_hasCompactSupport hs.deriv
  have hdd : Integrable (deriv (deriv f)) :=
    h2.continuous.integrable_of_hasCompactSupport hs.deriv.deriv
  have hh := congrFun (Real.fourier_deriv hd (h3.differentiable (by norm_num)) hdd) ξ
  rw [Real.fourier_deriv hf (h4.differentiable (by norm_num)) hd] at hh
  change 𝓕 (deriv (deriv f)) ξ = _
  rw [hh]
  simp only [smul_eq_mul]
  dsimp only [f]
  rw [fourier_correlation A hA ξ]
  push_cast
  have hi := Complex.I_mul_I
  simp only [Complex.ofReal_pow]
  calc
    _ = 4 * (Real.pi : ℂ)^2 * (ξ : ℂ)^2 * (Complex.I * Complex.I) *
      (Complex.normSq
        (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ) : ℂ) := by ring
    _ = _ := by rw [hi]; ring

/-- Integrability of the weighted square is proved before its total integral is evaluated. -/
theorem actual_standard_second_moment_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ : ℝ => ξ^2 * Complex.normSq
      (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) := by
  have hr := Complex.reCLM.integrable_comp (actualSecondCorrelation_fourier_integrable hA)
  have heq : (fun ξ : ℝ =>
      (𝓕 (deriv (deriv (fun t =>
        (sourceCorrelation explicitSecondDerivative A t : ℂ)))) ξ).re) =
      (fun ξ : ℝ => (-4 * Real.pi^2) * (ξ^2 * Complex.normSq
        (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ))) := by
    funext ξ
    rw [actualSecondCorrelation_fourier_eq hA ξ]
    simp
  change Integrable (fun ξ : ℝ =>
    (𝓕 (deriv (deriv (fun t =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)))) ξ).re) at hr
  rw [heq] at hr
  exact (integrable_const_mul_iff
    (isUnit_iff_ne_zero.mpr (by positivity : (-4 * Real.pi^2 : ℝ) ≠ 0)) _).mp hr

/-- Complexification preserves the actual twice differentiated correlation at zero. -/
theorem actualSecondCorrelation_at_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))) 0 =
      -((∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2 : ℝ) : ℂ) := by
  have hpos : 0 < A := by linarith
  have heq : deriv (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
      fun t => (deriv (sourceCorrelation explicitSecondDerivative A) t : ℂ) := by
    funext t
    exact ((sourceCorrelation_contDiff A hpos).differentiable (by norm_num) t).
      hasDerivAt.ofReal_comp.deriv
  rw [heq]
  have hd := (sourceCorrelation_deriv_hasDerivAt_integral hpos 0).ofReal_comp.deriv
  simpa only [sub_zero, ← pow_two, Complex.ofReal_neg] using hd

/-- Genuine C2 Fourier inversion gives the unchanged source derivative energy. -/
theorem actual_standard_second_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, ξ^2 * Complex.normSq
      (𝓕 (fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) ξ)) =
      (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) /
        (4 * Real.pi^2) := by
  let f : ℝ → ℂ := fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have h4 : ContDiff ℝ 4 f := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv f) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv f)) := h3.deriv'
  have hs : HasCompactSupport f :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  have hf : Integrable (deriv (deriv f)) :=
    h2.continuous.integrable_of_hasCompactSupport hs.deriv.deriv
  have h := hf.fourierInv_fourier_eq (actualSecondCorrelation_fourier_integrable hA)
    h2.continuous.continuousAt
  specialize h (x := 0)
  rw [Real.fourierInv_eq_fourier_neg, neg_zero, Real.fourier_real_eq_integral_exp_smul] at h
  simp only [mul_zero, Complex.ofReal_zero, zero_mul, Complex.exp_zero, one_smul] at h
  dsimp only [f] at h
  simp_rw [actualSecondCorrelation_fourier_eq hA] at h
  rw [integral_const_mul, integral_ofReal, actualSecondCorrelation_at_zero hA] at h
  have hr := congrArg Complex.re h
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero,
    Complex.neg_re] at hr
  apply (eq_div_iff (by positivity : (4 * Real.pi^2 : ℝ) ≠ 0)).mpr
  linarith

/-- The original angular-frequency second moment is genuinely integrable. -/
theorem actual_source_second_moment_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun ξ : ℝ => ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) := by
  have hs := actual_standard_second_moment_integrable hA
  simp_rw [standardFourier_eq_sourceFourier] at hs
  have hconst : ((-(2 * Real.pi))^2 : ℝ) ≠ 0 := by positivity
  have hscaled := hs.const_mul ((-(2 * Real.pi))^2)
  have heq : (fun ξ : ℝ => (-(2 * Real.pi))^2 * (ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ)))) =
      (fun ξ : ℝ => (-(2 * Real.pi) * ξ)^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) := by
    funext ξ
    ring
  rw [heq] at hscaled
  exact (integrable_comp_mul_left_iff _
    (neg_ne_zero.mpr (mul_ne_zero two_ne_zero Real.pi_ne_zero))).mp hscaled

/-- The original positive-exponential convention contributes exactly the factor 2π. -/
theorem actual_source_second_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ ξ : ℝ, ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ)) =
      2 * Real.pi * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2) := by
  have h := actual_standard_second_moment hA
  simp_rw [standardFourier_eq_sourceFourier] at h
  have hscale : (∫ ξ : ℝ, (-(2 * Real.pi) * ξ)^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) =
      (-(2 * Real.pi))^2 * (∫ ξ : ℝ, ξ^2 * Complex.normSq
        (sourceFourier (normalizedTest explicitSecondDerivative A) (-(2 * Real.pi) * ξ))) := by
    rw [← integral_const_mul]
    congr 1
    funext ξ
    ring
  rw [h] at hscale
  rw [Measure.integral_comp_mul_left
    (fun ξ : ℝ => ξ^2 * Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ξ))
    (-(2 * Real.pi)), smul_eq_mul, abs_inv, abs_neg,
    abs_of_pos (by positivity : 0 < 2 * Real.pi)] at hscale
  field_simp at hscale
  nlinarith [Real.pi_pos]

end
end FormalResearch.RiemannHypothesis.SourceActualSecondFourierMoment
```
