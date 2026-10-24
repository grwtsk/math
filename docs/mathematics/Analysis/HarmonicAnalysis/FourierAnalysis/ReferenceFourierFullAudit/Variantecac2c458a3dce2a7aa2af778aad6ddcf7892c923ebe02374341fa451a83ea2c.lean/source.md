# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourierFullAudit.Variantecac2c458a3dce2a7aa2af778aad6ddcf7892c923ebe02374341fa451a83ea2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfedbe7e731ca661990015e6a9c54c2bbb254b93` · SHA-256 `7c0b5a8705a9270c9741db40411ad4b093ec01aacba4fc68f8a076b9f73a9147`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceZeroExtensionAe.Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.ReferenceZeroExtensionAe.Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/reference-fourier-full-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace

/-! The genuine Fourier transform of the original reference vector after causal extension. -/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceZeroExtensionAe.Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8

set_option autoImplicit false
namespace ReferenceFourierScratch
open MeasureTheory FourierTransform Filter Set Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineExtension
noncomputable section

/-- The actual zero-extended reference is the positive-half-line exponential almost everywhere. -/
theorem reference_zeroExtension_ae :
    zeroExtension referenceVector =ᵐ[volume]
      (Ioi (0 : ℝ)).indicator (fun t : ℝ => Complex.exp (-(t : ℂ))) := by
  have hr := (ae_restrict_iff' measurableSet_Ioi).mp referenceVector_ae
  filter_upwards [zeroExtension_ae referenceVector, hr] with t ht hr
  rw [ht]
  by_cases hp : t ∈ Ioi (0 : ℝ)
  · simp only [indicator_of_mem hp]
    rw [hr hp]
    simp
  · simp only [indicator_of_notMem hp]

/-- The actual full-line reference representative is genuinely integrable. -/
theorem reference_zeroExtension_integrable :
    Integrable ((zeroExtension referenceVector : FullH) : ℝ → ℂ) := by
  have hi : IntegrableOn (fun t : ℝ => Complex.exp (-(t : ℂ))) (Ioi 0) := by
    simpa only [neg_one_mul] using
      integrableOn_exp_mul_complex_Ioi (a := (-1 : ℂ)) (by norm_num) 0
  exact (hi.integrable_indicator measurableSet_Ioi).congr reference_zeroExtension_ae.symm

/-- The actual reference transform has exactly the denominator in Mathlib's Fourier convention. -/
theorem reference_zeroExtension_fourier (ξ : ℝ) :
    (𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ =
      1 / (1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I) := by
  rw [Real.fourier_real_eq_integral_exp_smul]
  calc
    (∫ t : ℝ, Complex.exp ((-2 * Real.pi * t * ξ : ℝ) * I) •
        (zeroExtension referenceVector : FullH) t) =
        ∫ t : ℝ in Ioi 0, Complex.exp (-(1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I) * t) := by
      rw [← integral_indicator measurableSet_Ioi]
      apply integral_congr_ae
      filter_upwards [reference_zeroExtension_ae] with t ht
      rw [ht]
      by_cases hp : t ∈ Ioi (0 : ℝ)
      · simp only [indicator_of_mem hp, smul_eq_mul]
        rw [← Complex.exp_add]
        congr 1
        push_cast
        ring
      · simp only [indicator_of_notMem hp, smul_zero]
    _ = _ := by
      rw [integral_exp_mul_complex_Ioi (a := -(1 + ((2 * Real.pi * ξ : ℝ) : ℂ) * I))
        (by simp) 0]
      simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero, neg_div_neg_eq]

/-- The full reference Fourier square is the exact scaled Cauchy weight. -/
theorem reference_zeroExtension_fourier_norm_sq (ξ : ℝ) :
    ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2 =
      (1 + (2 * Real.pi * ξ) ^ 2)⁻¹ := by
  rw [reference_zeroExtension_fourier, ← Complex.normSq_eq_norm_sq]
  simp [Complex.normSq_apply, sq]

/-- The complete reference Fourier square is integrable and has total mass exactly one half. -/
theorem reference_zeroExtension_fourier_square_integral :
    Integrable (fun ξ : ℝ =>
      ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) ∧
      (∫ ξ : ℝ, ‖(𝓕 ((zeroExtension referenceVector : FullH) : ℝ → ℂ)) ξ‖ ^ 2) =
        (1 / 2 : ℝ) := by
  simp_rw [reference_zeroExtension_fourier_norm_sq]
  have hπ : 0 < 2 * Real.pi := by positivity
  refine ⟨integrable_inv_one_add_sq.comp_mul_left' hπ.ne', ?_⟩
  rw [Measure.integral_comp_mul_left (fun t : ℝ => (1 + t ^ 2)⁻¹) (2 * Real.pi),
    abs_of_pos (inv_pos.mpr hπ), smul_eq_mul, integral_univ_inv_one_add_sq]
  field_simp

end
end ReferenceFourierScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @ReferenceFourierScratch.reference_zeroExtension_ae
#print ReferenceFourierScratch.reference_zeroExtension_ae
#print axioms ReferenceFourierScratch.reference_zeroExtension_ae
#check @ReferenceFourierScratch.reference_zeroExtension_integrable
#print ReferenceFourierScratch.reference_zeroExtension_integrable
#print axioms ReferenceFourierScratch.reference_zeroExtension_integrable
#check @ReferenceFourierScratch.reference_zeroExtension_fourier
#print ReferenceFourierScratch.reference_zeroExtension_fourier
#print axioms ReferenceFourierScratch.reference_zeroExtension_fourier
#check @ReferenceFourierScratch.reference_zeroExtension_fourier_norm_sq
#print ReferenceFourierScratch.reference_zeroExtension_fourier_norm_sq
#print axioms ReferenceFourierScratch.reference_zeroExtension_fourier_norm_sq
#check @ReferenceFourierScratch.reference_zeroExtension_fourier_square_integral
#print ReferenceFourierScratch.reference_zeroExtension_fourier_square_integral
#print axioms ReferenceFourierScratch.reference_zeroExtension_fourier_square_integral
```
