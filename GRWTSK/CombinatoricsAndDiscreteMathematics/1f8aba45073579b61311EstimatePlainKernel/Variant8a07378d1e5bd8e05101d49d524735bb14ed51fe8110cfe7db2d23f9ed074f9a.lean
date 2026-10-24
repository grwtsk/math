-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SourcePlainWeight.Variant1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SourcePlainWeight.Variant1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/1f8aba45073579b61311-EstimatePlainKernel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-!
# Literal plain weights for the finite signed Vaughan decomposition

This module keeps only the two source definitions from the candidate plain
sampling module. No sampling estimate is imported into the finite identity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SourcePlainWeight.Variant1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePlainKernel

open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateSourceMobiusKernel

noncomputable section

/-- The unchanged source weight at a positive multiplicative argument. -/
def sourcePlainWeight (A x : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log x) / Real.sqrt x

/-- The fixed plain sampling inventory, with no logarithmic coefficient. -/
def sourcePlainKernel (A x : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), sourcePlainWeight A (x*k)

end

end EstimatePlainKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
