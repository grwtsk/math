-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.RicciCoverageRequiresFoundation.Variantd551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.RicciCoverageRequiresFoundation.Variantd551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/Ricci/Coverage.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.Ricci.Stability
import Surface.Legacy.BinaryLogicMatrix.Coverage


namespace GRWTSK.Analysis.SpecialFunctions.RicciCoverageRequiresFoundation.Variantd551b4b6d5af768a382474688733359148187b73391d1b5c87207571186bfec6

namespace Surface
namespace Legacy

theorem ricciCoverage_requires_foundation
    (Γ : Gamma) :
    LogicalFoundation.ricciFlow ≤ Γ.logicalFoundation ->
      ∀ f : RicciFlowRepresentableObject,
        CoveredByExtendedEMLAt Γ (DeclaredSurfaceObject.ricciFlow f) := by
  intro h f
  exact declaredSurfaceObject_covered_by_extendedEML_at_sufficientGamma
    Γ trivial (DeclaredSurfaceObject.ricciFlow f) h

end Legacy
end Surface
