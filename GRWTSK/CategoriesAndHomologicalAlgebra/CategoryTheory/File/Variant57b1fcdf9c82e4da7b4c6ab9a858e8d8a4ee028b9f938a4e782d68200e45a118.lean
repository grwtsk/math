-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.File.Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.File.Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Sheaf/File.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Sheaf.Observable

/-!
# Folder.Sheaf.File

Radiation role: topology-sheaf
BinaryMatrix spine: This module supplies topology, sheaf, morphism, or descent infrastructure around the BinaryMatrix-centered program.
Ontology: sheaf.file
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.File.Variant01765ae2ad4548fe70311d8d7caf92b95738d1ac0a666c40ec68eeb50cd4f10e

namespace Folder
namespace Sheaf

open CategoryTheory Opposite

universe u v w

structure File (C : Type u) [Category.{v} C] where
  presheaf : Presheaf.{u, v, w} C
  path : ObservableField presheaf.F String
  byteLength : ObservableField presheaf.F Nat

namespace File

def restrict {C : Type u} [Category.{v} C]
    (X : File.{u, v, w} C) {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.presheaf.F.obj (op U) :=
  X.presheaf.restrict f s

theorem path_natural
    {C : Type u} [Category.{v} C]
    (X : File.{u, v, w} C)
    {U V : C} (f : U ⟶ V)
    (s : X.presheaf.F.obj (op V)) :
    X.path.value U (X.restrict f s) =
      X.path.value V s :=
  X.path.naturality f s

end File
end Sheaf
end Folder
