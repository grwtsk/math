-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoNewmanNonnegative.Variant04c87f1b46c6a8521f6f8d3a8fd837b08d1c3045d5def4c631af7cab55068321","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04c87f1b46c6a8521f6f8d3a8fd837b08d1c3045d5def4c631af7cab55068321","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RodgersTaoNewmanNonnegative.Variant04c87f1b46c6a8521f6f8d3a8fd837b08d1c3045d5def4c631af7cab55068321","mathematical_subject":"Foundations.Unclassified","original_sha256":"04c87f1b46c6a8521f6f8d3a8fd837b08d1c3045d5def4c631af7cab55068321","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/ResearchTopos/RodgersTaoHeat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.ResearchTopos.RodgersTaoHeat

/-!
# Folder.Theorem.ResearchTopos.RodgersTaoHeat

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Rodgers-Tao heat-flow contract exposures.
Ontology: proof.research_topos.rodgers_tao_heat
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: theorem-wrapper
Composite stack role: research-topos
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RodgersTaoNewmanNonnegative.Variant04c87f1b46c6a8521f6f8d3a8fd837b08d1c3045d5def4c631af7cab55068321

namespace Folder
namespace Theorem
namespace ResearchTopos
namespace RodgersTaoHeat

theorem rodgers_tao_newman_nonnegative
    (F : Folder.ResearchTopos.RodgersTaoHeatFamily) :
    F.newmanLambdaNonnegative :=
  Folder.ResearchTopos.rodgers_tao_newman_nonnegative F

theorem rodgers_tao_backwards_heat
    (F : Folder.ResearchTopos.RodgersTaoHeatFamily) :
    F.backwardsHeatEquation :=
  Folder.ResearchTopos.rodgers_tao_backwards_heat F

theorem rodgers_tao_local_equilibrium
    {F : Folder.ResearchTopos.RodgersTaoHeatFamily}
    (D : Folder.ResearchTopos.RodgersTaoZeroDynamics F) :
    D.localEquilibriumConclusion :=
  Folder.ResearchTopos.rodgers_tao_local_equilibrium D

end RodgersTaoHeat
end ResearchTopos
end Theorem
end Folder
