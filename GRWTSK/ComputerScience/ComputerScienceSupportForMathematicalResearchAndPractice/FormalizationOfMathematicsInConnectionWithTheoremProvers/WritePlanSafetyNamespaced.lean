-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoConflictingDuplicates.Variant1b85d66a11385876f085909d42b0ac6c14e07bb68aefdf46c135ce5d10b2e9d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b85d66a11385876f085909d42b0ac6c14e07bb68aefdf46c135ce5d10b2e9d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.NoConflictingDuplicates.Variant1b85d66a11385876f085909d42b0ac6c14e07bb68aefdf46c135ce5d10b2e9d0","mathematical_subject":"Foundations.Unclassified","original_sha256":"1b85d66a11385876f085909d42b0ac6c14e07bb68aefdf46c135ce5d10b2e9d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Effect/WritePlanSafety.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Morphism.Effect.WritePlan

/-!
# Folder.Theorem.Effect.WritePlanSafety

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.effect.write_plan_safety
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NoConflictingDuplicates.Variant1b85d66a11385876f085909d42b0ac6c14e07bb68aefdf46c135ce5d10b2e9d0

namespace Folder
namespace Theorem
namespace Effect

theorem no_conflicting_duplicates
    (P : Folder.Morphism.Effect.WritePlan)
    {a b : Folder.Morphism.Effect.WriteTarget}
    (ha : a ∈ P.targets)
    (hb : b ∈ P.targets)
    (hpath : a.path = b.path) :
    a.payload = b.payload :=
  Folder.Morphism.Effect.no_conflicting_duplicates P ha hb hpath

end Effect
end Theorem
end Folder
