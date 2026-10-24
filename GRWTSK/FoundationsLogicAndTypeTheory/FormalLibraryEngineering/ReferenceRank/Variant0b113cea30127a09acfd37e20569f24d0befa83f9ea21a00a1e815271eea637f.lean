-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RankingContainsModule.Variant51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RankingContainsModule.Variant51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199","mathematical_subject":"Foundations.Unclassified","original_sha256":"51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Presentation/ReferenceRank.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Presentation.ReferenceRank

/-!
# Folder.Theorem.Presentation.ReferenceRank

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes reference ranking interface facts.
Ontology: proof.presentation.reference_rank
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RankingContainsModule.Variant51e42b54ea8a6ada47c4655cac2f1eb2b34476fbbfbe66a559620ec087b21199

namespace Folder
namespace Theorem
namespace Presentation

theorem ranking_contains_module
    (R : Folder.Presentation.ReferenceRanking)
    {M : Folder.Presentation.ModuleId}
    (h : M ∈ R.graph.modules) :
    ∃ RM, RM ∈ R.ranked ∧ RM.moduleId = M :=
  Folder.Presentation.ranking_contains_module R h

end Presentation
end Theorem
end Folder
