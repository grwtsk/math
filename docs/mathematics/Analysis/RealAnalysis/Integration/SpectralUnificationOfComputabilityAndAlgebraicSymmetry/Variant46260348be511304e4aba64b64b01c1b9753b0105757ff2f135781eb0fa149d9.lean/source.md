# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant46260348be511304e4aba64b64b01c1b9753b0105757ff2f135781eb0fa149d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d34a958853fca5af28c88a3381f9699eb9c8f98` · SHA-256 `c8dbc427884dd1d6aa3041d3a8acda3df4584374816919aefd67f14ca6838582`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.FrequencyMomentIntegrable.Variant05e7a7d2d4ee1d8adee0b45d820ef07eac929105462db9fb7e6438634b498951","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05e7a7d2d4ee1d8adee0b45d820ef07eac929105462db9fb7e6438634b498951","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.FrequencyMomentIntegrable.Variant05e7a7d2d4ee1d8adee0b45d820ef07eac929105462db9fb7e6438634b498951","mathematical_subject":"Analysis.Integration","original_sha256":"05e7a7d2d4ee1d8adee0b45d820ef07eac929105462db9fb7e6438634b498951","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/05e7a7d2d4ee1d8adee0b45d820ef07eac929105462db9fb7e6438634b498951.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroLogarithmicCore

/-!
# The exact logarithmic energy is controlled by H¹ energy

The source frequency moment is the Fourier square of the actual global
derivative. Genuine L² and integral membership are explicit before the
logarithmic weight is compared with its quadratic majorant. Plancherel retains
the source normalization on both the value and derivative terms.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.FrequencyMomentIntegrable.Variant05e7a7d2d4ee1d8adee0b45d820ef07eac929105462db9fb7e6438634b498951

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroLogarithmicEstimate

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open ZeroFourierL2 ZeroLogarithmicCore

noncomputable section

/-- An L² global derivative gives genuine integrability of the exact frequency-square moment. -/
theorem frequency_moment_integrable (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume)
    (hd2 : MemLp (deriv f) 2 volume) :
    Integrable (fun ξ ↦ ξ ^ 2 * Complex.normSq (sourceFourier f ξ)) volume := by
  simpa only [← normSq_sourceFourier_deriv f hf1 hd hdi] using
    sourceFourier_normSq_integrable (deriv f) hdi hd2

/-- The normalized angular-frequency moment equals the squared full-line derivative norm. -/
theorem frequency_moment_plancherel (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hd : Differentiable ℝ f) (hdi : Integrable (deriv f) volume)
    (hd2 : MemLp (deriv f) 2 volume) :
    (∫ ξ, ξ ^ 2 * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) =
      ∫ x, deriv f x ^ 2 := by
  simpa only [← normSq_sourceFourier_deriv f hf1 hd hdi] using
    sourceFourier_plancherel (deriv f) hdi hd2

/-- The quadratic Fourier majorant has a genuine integral under the H¹ premises. -/
theorem quadratic_integrand_integrable (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) (hd : Differentiable ℝ f)
    (hdi : Integrable (deriv f) volume) (hd2 : MemLp (deriv f) 2 volume) :
    Integrable (fun ξ ↦ (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) volume := by
  apply ((sourceFourier_normSq_integrable f hf1 hf2).add
    ((frequency_moment_integrable f hf1 hd hdi hd2).const_mul 2)).congr
  exact Filter.Eventually.of_forall fun ξ ↦ by dsimp; ring

/-- The exact source logarithmic energy is bounded by the value energy plus twice its
global derivative energy; all Fourier and physical-space integrals are genuine. -/
theorem logarithmicEnergy_le_h1 (f : ℝ → ℝ) (hf1 : Integrable f volume)
    (hf2 : MemLp f 2 volume) (hd : Differentiable ℝ f)
    (hdi : Integrable (deriv f) volume) (hd2 : MemLp (deriv f) 2 volume) :
    logarithmicEnergy f ≤ (∫ x, f x ^ 2) + 2 * ∫ x, deriv f x ^ 2 := by
  have hvalue := sourceFourier_normSq_integrable f hf1 hf2
  have hmoment := frequency_moment_integrable f hf1 hd hdi hd2
  have hquadratic := quadratic_integrand_integrable f hf1 hf2 hd hdi hd2
  have hbound : (∫ ξ, logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)) ≤
      ∫ ξ, (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ) :=
    integral_mono (logarithmic_integrable f hf1 hd hdi) hquadratic
      (fun ξ ↦ mul_le_mul_of_nonneg_right (logarithmicWeight_le_quadratic ξ)
        (Complex.normSq_nonneg _))
  have hsplit : (∫ ξ, (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) =
      (∫ ξ, Complex.normSq (sourceFourier f ξ)) +
        2 * ∫ ξ, ξ ^ 2 * Complex.normSq (sourceFourier f ξ) := by
    simp_rw [add_mul, one_mul, mul_assoc]
    rw [integral_add hvalue (hmoment.const_mul 2), integral_const_mul]
  calc
    logarithmicEnergy f ≤
        (∫ ξ, (1 + 2 * ξ ^ 2) * Complex.normSq (sourceFourier f ξ)) / (2 * Real.pi) :=
      div_le_div_of_nonneg_right hbound (by positivity)
    _ = (∫ x, f x ^ 2) + 2 * ∫ x, deriv f x ^ 2 := by
      rw [hsplit, add_div, mul_div_assoc, sourceFourier_plancherel f hf1 hf2,
        frequency_moment_plancherel f hf1 hd hdi hd2]

end
end ZeroLogarithmicEstimate
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
