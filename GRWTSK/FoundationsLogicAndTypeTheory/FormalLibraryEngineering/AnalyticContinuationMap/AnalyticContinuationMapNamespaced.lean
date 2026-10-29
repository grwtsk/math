-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationMapRespectsDifferential.Variant2be3cfefbb8e81dc5108cb40e3cca4279eae9def2a3bd8b822028cbb8419e8be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2be3cfefbb8e81dc5108cb40e3cca4279eae9def2a3bd8b822028cbb8419e8be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ContinuationMapRespectsDifferential.Variant2be3cfefbb8e81dc5108cb40e3cca4279eae9def2a3bd8b822028cbb8419e8be","mathematical_subject":"Foundations.Unclassified","original_sha256":"2be3cfefbb8e81dc5108cb40e3cca4279eae9def2a3bd8b822028cbb8419e8be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/AnalyticContinuationMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.AnalyticContinuationMap

/-!
# Folder.Theorem.CanonicalPath.AnalyticContinuationMap

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports analytic continuation-map facts.
Ontology: proof.canonical_path.continuation_map
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContinuationMapRespectsDifferential.Variant2be3cfefbb8e81dc5108cb40e3cca4279eae9def2a3bd8b822028cbb8419e8be

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem continuation_map_respects_differential
    (C : Folder.CanonicalPath.AnalyticContinuationMap) :
    C.respectsDifferential :=
  Folder.CanonicalPath.continuation_map_respects_differential C

theorem continuation_map_has_estimates
    (C : Folder.CanonicalPath.AnalyticContinuationMap) :
    C.compactnessFredholmEstimates :=
  Folder.CanonicalPath.continuation_map_has_estimates C

end CanonicalPath
end Theorem
end Folder
