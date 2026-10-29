-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafGluesFromCompatibility.Variant437ee8c1dbb1745ab9987ae48e8511d44aa3a9305acd8a022836185dabcc4701","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"437ee8c1dbb1745ab9987ae48e8511d44aa3a9305acd8a022836185dabcc4701","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SheafGluesFromCompatibility.Variant437ee8c1dbb1745ab9987ae48e8511d44aa3a9305acd8a022836185dabcc4701","mathematical_subject":"Foundations.Unclassified","original_sha256":"437ee8c1dbb1745ab9987ae48e8511d44aa3a9305acd8a022836185dabcc4701","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/ResearchTopos/SheafGluing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.SheafGluing

/-!
# Folder.Theorem.ResearchTopos.SheafGluing

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports sheaf-gluing contract exposure.
Ontology: proof.research_topos.sheaf_gluing
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafGluesFromCompatibility.Variant437ee8c1dbb1745ab9987ae48e8511d44aa3a9305acd8a022836185dabcc4701

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace SheafGluing

theorem sheaf_glues_from_compatibility
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.ResearchTopos.Presheaf C}
    (S : Folder.ResearchTopos.SheafCondition J F)
    (h : S.localCompatible) :
    S.gluesUniquely h :=
  Folder.ResearchTopos.sheaf_glues_from_compatibility S h

end SheafGluing
end ResearchTopos
end Theorem
end Folder
