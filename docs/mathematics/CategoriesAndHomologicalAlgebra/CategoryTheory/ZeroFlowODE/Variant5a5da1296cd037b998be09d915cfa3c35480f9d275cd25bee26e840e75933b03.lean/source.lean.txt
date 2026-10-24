-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteZeroConfigOrdered.Variantdbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FiniteZeroConfigOrdered.Variantdbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743","mathematical_subject":"Foundations.Unclassified","original_sha256":"dbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/ResearchTopos/ZeroFlowODE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.ZeroFlowODE

/-!
# Folder.Theorem.ResearchTopos.ZeroFlowODE

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports finite toy zero-flow facts.
Ontology: proof.research_topos.zero_flow_ode
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteZeroConfigOrdered.Variantdbe13135839f0ead0d0bf17ee154eee43f49f778af751248692919612e24c743

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace ZeroFlowODE

theorem finite_zero_config_ordered
    (X : Folder.ResearchTopos.FiniteZeroConfiguration)
    {i j : Fin X.n}
    (h : i.val < j.val) :
    X.pos i < X.pos j :=
  Folder.ResearchTopos.finite_zero_config_ordered X h

end ZeroFlowODE
end ResearchTopos
end Theorem
end Folder
