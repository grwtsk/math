-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Descent.Variantfff126061697f819e967bb07aeb752041679a0e37d88b6f0be660ee4f3620281","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fff126061697f819e967bb07aeb752041679a0e37d88b6f0be660ee4f3620281","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Descent.Variantfff126061697f819e967bb07aeb752041679a0e37d88b6f0be660ee4f3620281","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"fff126061697f819e967bb07aeb752041679a0e37d88b6f0be660ee4f3620281","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Morphism/Descent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Sheaf.Basic

/-!
# Folder.Morphism.Descent

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: morphism.descent
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Descent.Variantfff126061697f819e967bb07aeb752041679a0e37d88b6f0be660ee4f3620281

namespace Folder
namespace Morphism

open CategoryTheory

universe u v w

structure Descent (C : Type u) [Category.{v} C] where
  source : Sheaf.Presheaf.{u, v, w} C
  target : Sheaf.Presheaf.{u, v, w} C
  localAgreement : Prop
  glues : localAgreement → Prop

end Morphism
end Folder
