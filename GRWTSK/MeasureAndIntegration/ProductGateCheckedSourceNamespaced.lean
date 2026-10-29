-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.UnitCorrelationProductMajorantIntegrable.Variant71cb6dd78892d76abc02a839d0acbcd3aee81f4cd251719fd45e21e822c86a8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71cb6dd78892d76abc02a839d0acbcd3aee81f4cd251719fd45e21e822c86a8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.UnitCorrelationProductMajorantIntegrable.Variant71cb6dd78892d76abc02a839d0acbcd3aee81f4cd251719fd45e21e822c86a8b","mathematical_subject":"Analysis.Integration","original_sha256":"71cb6dd78892d76abc02a839d0acbcd3aee81f4cd251719fd45e21e822c86a8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/71/71cb6dd78892d76abc02a839d0acbcd3aee81f4cd251719fd45e21e822c86a8b--product-gate-checked-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass
import Mathlib.Analysis.Convolution

/-!
# Signed autocorrelation mass with an explicit product-integrability gate

The actual two-variable kernel is dominated by the product of the two literal
profile absolute values. Integrability is established before any Fubini exchange.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.UnitCorrelationProductMajorantIntegrable.Variant71cb6dd78892d76abc02a839d0acbcd3aee81f4cd251719fd45e21e822c86a8b

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateUnitCorrelationMass

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateNormalizedSourceProfile EstimateUnitProfileMass

noncomputable section

/-- An explicit integrable majorant for the actual autocorrelation product. -/
theorem unitCorrelation_product_majorant_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ |unitProfile A z.2| * |unitProfile A (z.2-z.1)|)
      (volume.prod volume) := by
  have hf := (unitProfile_integrable A hA).norm
  have h := hf.convolution_integrand (ContinuousLinearMap.lsmul ℝ ℝ) hf.comp_neg
  simpa only [ContinuousLinearMap.lsmul_apply, smul_eq_mul, Real.norm_eq_abs, neg_sub] using h

/-- The exact signed kernel is product-integrable before an unbounded interchange. -/
theorem unitCorrelation_product_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) := by
  have hc := (unitProfile_contDiff A hA).continuous
  have hm : AEStronglyMeasurable
      (fun z : ℝ × ℝ ↦ unitProfile A z.2 * unitProfile A (z.2-z.1))
      (volume.prod volume) :=
    ((hc.comp continuous_snd).mul
      (hc.comp (continuous_snd.sub continuous_fst))).aestronglyMeasurable
  apply (unitCorrelation_product_majorant_integrable A hA).mono' hm
  exact Filter.Eventually.of_forall fun z ↦ by simp only [Real.norm_eq_abs, abs_mul, le_refl]

end
end EstimateUnitCorrelationMass
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
