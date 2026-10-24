# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceScalarControllerFragment.Variant8c1acf0e553608b12cdec2179822cff97335ddfbe054da7cbea83adf0d1cf00c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bd64abd78bf893c069511a334594c7e4eefbf6b` · SHA-256 `073259b6ddf2de496bc072d0d5d2087f1824e33c87a9a9f333cf860a0d0bd4e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Kappa.Variant593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Kappa.Variant593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/SourceScalarControllerFragment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Kappa.Variant593e77541e0d31c6961f3df4da8a02b0c31ff12500ab7ca761bcf0b109a57939

set_option autoImplicit false
namespace SourceScalarControllerScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator FixedKernelAdjointExponential
open FixedLaplaceContinuation SourceResolventTruncation TimeKernelTruncation
open SourceControllerEnergy SourceLaplaceOne
noncomputable section

/-- The real value of the actual complete source Laplace integral at one. -/
def kappa : ℝ := (actualLaplace 1).re

theorem kappa_pos : 0 < kappa := actualLaplace_one_re_pos

theorem reference_source_inner_re :
    (inner ℂ referenceVector (sourceOperator referenceVector)).re = kappa / 2 := by
  have h := exponential_inner_sourceOperator 1 (by norm_num) referenceVector
  change inner ℂ referenceVector (sourceOperator referenceVector) =
    actualLaplace 1 * inner ℂ referenceVector referenceVector at h
  have hr : inner ℂ referenceVector referenceVector = (1 / 2 : ℂ) := by
    change inner ℂ referenceVector (exponentialVector 1 (by norm_num)) = _
    rw [inner_reference_exponential]
    norm_num
  rw [hr] at h
  rw [h]
  simp [Complex.mul_re, kappa, div_eq_mul_inv]

private theorem source_reference_norm_sq_le :
    ‖sourceOperator referenceVector‖ ^ 2 ≤ kernelMass ^ 2 / 2 := by
  have h := pow_le_pow_left₀ (norm_nonneg (sourceOperator referenceVector))
    (sourceOperator_apply_norm_le referenceVector) 2
  change ‖sourceOperator referenceVector‖ ^ 2 ≤
    (kernelMass * ‖referenceVector‖) ^ 2 at h
  simpa [mul_pow, referenceVector_norm_sq, div_eq_mul_inv] using h

theorem scaled_reference_full_energy (c α : ℝ) :
    ‖referenceVector - sourceOperator ((c : ℂ) • referenceVector)‖ ^ 2 +
      α * ‖(c : ℂ) • referenceVector‖ ^ 2 =
      1 / 2 - c * kappa + c ^ 2 * (‖sourceOperator referenceVector‖ ^ 2 + α / 2) := by
  rw [map_smul, norm_sub_sq (𝕜 := ℂ), referenceVector_norm_sq,
    inner_smul_right]
  change (1 / 2 - 2 * (((c : ℂ) * inner ℂ referenceVector
      (sourceOperator referenceVector)).re) + ‖(c : ℂ) •
      sourceOperator referenceVector‖ ^ 2) + α * ‖(c : ℂ) • referenceVector‖ ^ 2 = _
  simp only [Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  rw [reference_source_inner_re]
  simp only [norm_smul, Complex.norm_real, Real.norm_eq_abs, mul_pow, sq_abs,
    referenceVector_norm_sq]
  ring

/-- A single genuine reference controller, with the complete source operator. -/
def scalarController (α : ℝ) : H :=
  ((kappa / (kernelMass ^ 2 + α) : ℝ) : ℂ) • referenceVector

theorem scalarController_full_energy_le (α : ℝ) (hα : 0 < α) :
    ‖referenceVector - sourceOperator (scalarController α)‖ ^ 2 +
      α * ‖scalarController α‖ ^ 2 ≤
      1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) := by
  have hd : 0 < kernelMass ^ 2 + α := add_pos_of_nonneg_of_pos (sq_nonneg _) hα
  rw [scalarController, scaled_reference_full_energy]
  calc
    _ ≤ 1 / 2 - kappa / (kernelMass ^ 2 + α) * kappa +
        (kappa / (kernelMass ^ 2 + α)) ^ 2 * (kernelMass ^ 2 / 2 + α / 2) := by
      gcongr
      exact source_reference_norm_sq_le
    _ = _ := by
      field_simp
      ring

theorem sourceMass_le_scalar_improvement (α : ℝ) (hα : 0 < α) :
    sourceMass α ≤ 1 / 2 - kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
  (sourceMass_le_full_energy α hα (scalarController α)).trans
    (scalarController_full_energy_le α hα)

theorem sourceMass_lt_reference_norm_sq (α : ℝ) (hα : 0 < α) :
    sourceMass α < 1 / 2 := by
  have hd : 0 < 2 * (kernelMass ^ 2 + α) :=
    mul_pos (by norm_num) (add_pos_of_nonneg_of_pos (sq_nonneg _) hα)
  have hp : 0 < kappa ^ 2 / (2 * (kernelMass ^ 2 + α)) :=
    div_pos (sq_pos_of_pos kappa_pos) hd
  linarith [sourceMass_le_scalar_improvement α hα]

end
end SourceScalarControllerScratch
```
