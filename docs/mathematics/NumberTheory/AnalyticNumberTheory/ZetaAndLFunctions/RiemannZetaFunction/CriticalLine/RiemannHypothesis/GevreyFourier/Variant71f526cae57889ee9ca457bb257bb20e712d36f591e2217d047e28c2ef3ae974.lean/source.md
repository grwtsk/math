# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GevreyFourier.Variant71f526cae57889ee9ca457bb257bb20e712d36f591e2217d047e28c2ef3ae974

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e60b58ec32f081f6839e794783f586d990365ff7` · SHA-256 `6d3bc07bf18826bd44576c6fdae0212563be7eeaf37bef500162ed34c17def06`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourierDivConst.Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceFourierDivConst.Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/GevreyFourier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.GevreyNormalization
import FormalResearch.RiemannHypothesis.GevreyCorrelation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

/-!
# Exact Fourier scaling for the separate smooth family

These identities use `SourcePairing.sourceFourier`, namely the positive
imaginary exponential and angular frequency. They retain both the dilated
frequency `A * ξ` and the actual normalization of the new profile.
The autocorrelation square identity is proved for real frequencies only.
No Fourier decay estimate, complex-frequency positivity, arithmetic bound,
or comparison to the polynomial source is asserted.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceFourierDivConst.Varianta9610e313ffc642d2e0dcd6cec4ee0cb1e074c36e3b08a62624050f19c50147b

namespace FormalResearch.RiemannHypothesis.GevreyFourier

open MeasureTheory
open scoped FourierTransform Convolution ComplexConjugate
open SourcePairing GevreyNormalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

noncomputable section

/-- Constant division commutes with the source Fourier transform. -/
theorem sourceFourier_div_const (f : ℝ → ℝ) (k ξ : ℝ) :
    sourceFourier (fun x ↦ f x / k) ξ = sourceFourier f ξ / (k : ℂ) := by
  unfold sourceFourier
  simp only [Complex.ofReal_div, div_mul_eq_mul_div, integral_div]

private theorem source_integrand_integrable {f : ℝ → ℝ} (hf : Integrable f) (ξ : ℝ) :
    Integrable (fun x : ℝ ↦ (f x : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
  apply (Complex.ofRealCLM.integrable_comp hf).mul_bdd (c := 1)
  · exact (by fun_prop : Continuous (fun x : ℝ ↦
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ)))).aestronglyMeasurable
  · exact Filter.Eventually.of_forall fun x ↦ by simp [Complex.norm_exp]

/-- Subtraction commutes with Fourier transformation under genuine L¹ hypotheses. -/
theorem sourceFourier_sub {f g : ℝ → ℝ} (hf : Integrable f) (hg : Integrable g) (ξ : ℝ) :
    sourceFourier (fun x ↦ f x - g x) ξ = sourceFourier f ξ - sourceFourier g ξ := by
  unfold sourceFourier
  simp_rw [Complex.ofReal_sub, sub_mul]
  exact integral_sub (source_integrand_integrable hf ξ) (source_integrand_integrable hg ξ)

/-- The exact source frequency under a positive real dilation. -/
theorem sourceFourier_comp_div (f : ℝ → ℝ) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (fun x ↦ f (x / A)) ξ = (A : ℂ) * sourceFourier f (A * ξ) := by
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  unfold sourceFourier
  calc
    _ = ∫ x : ℝ, ((f (x / A) : ℂ) *
        Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * ((x / A : ℝ) : ℂ))) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall fun x ↦ by
        push_cast
        field_simp
    _ = _ := by
      simpa only [abs_of_pos hA, Complex.real_smul] using
        Measure.integral_comp_div (fun x : ℝ ↦ (f x : ℂ) *
          Complex.exp (Complex.I * ((A * ξ : ℝ) : ℂ) * (x : ℂ))) A

/-- L²-normalized dilation contributes `√A`, while its frequency is `A * ξ`. -/
theorem sourceFourier_scaledProfile (h : ℝ → ℝ) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (scaledProfile h A) ξ =
      (Real.sqrt A : ℂ) * sourceFourier h (A * ξ) := by
  change sourceFourier (fun x ↦ h (x / A) / Real.sqrt A) ξ = _
  rw [sourceFourier_div_const, sourceFourier_comp_div h hA]
  have hroot : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.2 hA).ne'
  have hsq : (Real.sqrt A : ℂ) ^ 2 = (A : ℂ) := by exact_mod_cast Real.sq_sqrt hA.le
  rw [← hsq]
  field_simp

private theorem scaledProfile_contDiff {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h) (A : ℝ) :
    ContDiff ℝ 2 (scaledProfile h A) :=
  (hc.comp (contDiff_id.div_const A)).div_const (Real.sqrt A)

private theorem scaledProfile_derivatives_integrable {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) :
    Integrable (scaledProfile h A) ∧ Integrable (deriv (scaledProfile h A)) ∧
      Integrable (deriv (deriv (scaledProfile h A))) := by
  have h0 : Integrable h := hc.continuous.integrable_of_hasCompactSupport hs
  have h1 : Integrable (deriv h) :=
    (hc.continuous_deriv (by norm_num)).integrable_of_hasCompactSupport hs.deriv
  have h2 : Continuous (deriv (deriv h)) :=
    (hc.deriv' : ContDiff ℝ 1 (deriv h)).continuous_deriv_one
  have h2i : Integrable (deriv (deriv h)) :=
    h2.integrable_of_hasCompactSupport hs.deriv.deriv
  refine ⟨?_, ?_, ?_⟩
  · change Integrable (fun x ↦ h (x / A) / Real.sqrt A)
    simpa only [div_eq_mul_inv] using
      (h0.comp_mul_right' (inv_ne_zero hA.ne')).div_const (Real.sqrt A)
  · have heq : deriv (scaledProfile h A) =
        fun x ↦ deriv h (x / A) / (A * Real.sqrt A) := by
      funext x
      exact deriv_scaledProfile (hc.differentiable (by norm_num)) A x
    rw [heq]
    simpa only [div_eq_mul_inv] using
      (h1.comp_mul_right' (inv_ne_zero hA.ne')).div_const (A * Real.sqrt A)
  · have heq : deriv (deriv (scaledProfile h A)) =
        fun x ↦ deriv (deriv h) (x / A) / (A ^ 2 * Real.sqrt A) := by
      funext x
      exact second_scaledProfile hc A x
    rw [heq]
    simpa only [div_eq_mul_inv] using
      (h2i.comp_mul_right' (inv_ne_zero hA.ne')).div_const (A ^ 2 * Real.sqrt A)

/-- The actual pole-annihilating differential operator has its exact Fourier multiplier. -/
theorem sourceFourier_dilationOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (dilationOperator h A) ξ =
      -((ξ ^ 2 + 1 / 4 : ℝ) : ℂ) * (Real.sqrt A : ℂ) * sourceFourier h (A * ξ) := by
  obtain ⟨h0, h1, h2⟩ := scaledProfile_derivatives_integrable hc hs hA
  have hcd := scaledProfile_contDiff hc A
  change sourceFourier (fun x ↦ deriv (deriv (scaledProfile h A)) x -
    scaledProfile h A x / 4) ξ = _
  rw [sourceFourier_sub h2 (h0.div_const 4), sourceFourier_div_const,
    BridgeFourier.sourceFourier_deriv _ h1 hcd.differentiable_deriv_two h2,
    BridgeFourier.sourceFourier_deriv _ h0 (hcd.differentiable (by norm_num)) h1,
    sourceFourier_scaledProfile h hA]
  push_cast
  ring_nf
  simp only [Complex.I_sq]
  ring

/-- Unit normalization contributes its own `√Z_A` divisor. -/
theorem sourceFourier_normalizedOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (normalizedOperator h A) ξ =
      (-((ξ ^ 2 + 1 / 4 : ℝ) : ℂ) * (Real.sqrt A : ℂ) * sourceFourier h (A * ξ)) /
        (Real.sqrt (normalization h A) : ℂ) := by
  change sourceFourier (fun x ↦ dilationOperator h A x /
    Real.sqrt (normalization h A)) ξ = _
  rw [sourceFourier_div_const, sourceFourier_dilationOperator hc hs hA]

/-- The exact real-frequency square multiplier, including dilation and normalization. -/
theorem normSq_sourceFourier_normalizedOperator {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    Complex.normSq (sourceFourier (normalizedOperator h A) ξ) =
      (A / normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (sourceFourier h (A * ξ)) := by
  have hz : 0 ≤ normalization h A := integral_nonneg (fun x ↦ sq_nonneg _)
  rw [sourceFourier_normalizedOperator hc hs hA]
  simp only [Complex.normSq_div, Complex.normSq_mul, Complex.normSq_neg,
    Complex.normSq_ofReal, ← pow_two, Real.sq_sqrt hA.le, Real.sq_sqrt hz]
  ring

/-- A real L¹ autocorrelation has Fourier transform equal to a real-frequency absolute square. -/
theorem sourceFourier_autocorrelation {f : ℝ → ℝ} (hf : Integrable f) (ξ : ℝ) :
    sourceFourier (fun u ↦ ∫ x : ℝ, f x * f (x - u)) ξ =
      (Complex.normSq (sourceFourier f ξ) : ℂ) := by
  have heq : (fun u : ℝ ↦ ((∫ x : ℝ, f x * f (x - u) : ℝ) : ℂ)) =
      (fun x ↦ (f x : ℂ)) ⋆[ContinuousLinearMap.mul ℂ ℂ]
        (fun x ↦ (f (-x) : ℂ)) := by
    funext u
    calc
      _ = ∫ x : ℝ, ((f x * f (x - u) : ℝ) : ℂ) := integral_ofReal.symm
      _ = _ := by
        rw [convolution]
        apply integral_congr_ae
        exact Filter.Eventually.of_forall fun x ↦ by simp [neg_sub]
  rw [BridgeFourier.sourceFourier_eq_fourier, heq]
  have hfc : Integrable (fun x ↦ (f x : ℂ)) := Complex.ofRealCLM.integrable_comp hf
  have hgc : Integrable (fun x ↦ (f (-x) : ℂ)) :=
    Complex.ofRealCLM.integrable_comp hf.comp_neg
  rw [Real.fourier_mul_convolution_eq hfc hgc,
    SourcePlancherel.fourier_reflected_real, Complex.mul_conj,
    ← BridgeFourier.sourceFourier_eq_fourier]

/-- The complete real autocorrelation Fourier formula for the separate family. -/
theorem sourceFourier_normalized_autocorrelation {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (fun u ↦ ∫ x : ℝ,
      normalizedOperator h A x * normalizedOperator h A (x - u)) ξ =
      ((A / normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (sourceFourier h (A * ξ)) : ℝ) := by
  rw [sourceFourier_autocorrelation (normalizedOperator_integrable hc hs hA).1,
    normSq_sourceFourier_normalizedOperator hc hs hA]

/-- The named real autocorrelation retains the exact dilation and normalization factor. -/
theorem sourceFourier_correlation {h : ℝ → ℝ} (hc : ContDiff ℝ 2 h)
    (hs : HasCompactSupport h) {A : ℝ} (hA : 0 < A) (ξ : ℝ) :
    sourceFourier (GevreyCorrelation.correlation h A) ξ =
      ((A / normalization h A) * (ξ ^ 2 + 1 / 4) ^ 2 *
        Complex.normSq (sourceFourier h (A * ξ)) : ℝ) :=
  sourceFourier_normalized_autocorrelation hc hs hA ξ

end

end FormalResearch.RiemannHypothesis.GevreyFourier
```
