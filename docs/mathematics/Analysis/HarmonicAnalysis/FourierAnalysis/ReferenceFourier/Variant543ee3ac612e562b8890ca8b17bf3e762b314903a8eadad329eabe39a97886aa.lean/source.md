# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceFourier.Variant543ee3ac612e562b8890ca8b17bf3e762b314903a8eadad329eabe39a97886aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `985a2a7b047446bf437a67c188c101571cfd699e` · SHA-256 `20ddae28d5afc9429bb748448c6d77bef4b3d4733ed57f5618cec228d1abe3d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceZeroExtensionAe.Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.ReferenceZeroExtensionAe.Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"e6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/ReferenceFourier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension
import Mathlib.Analysis.Fourier.FourierTransform
import Mathlib.MeasureTheory.Measure.Haar.NormedSpace

/-! The genuine Fourier transform of the original reference vector after causal extension. -/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ReferenceZeroExtensionAe.Variante6e774bc2110250b52b97e9e98f53791d94e7f8dc788427b87e402d17af786db

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
```
