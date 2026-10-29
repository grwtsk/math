-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanDeclKind.Variantca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LeanDeclKind.Variantca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e","mathematical_subject":"Computation.DataStructures","original_sha256":"ca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/LeanProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Presentation.ReferenceGraph

/-!
# Folder.Presentation.LeanProjection

Radiation role: presentation-lean-projection
BinaryMatrix spine: This module names conservative Lean declaration projections used by LaTeX presentation rules.
Ontology: presentation.lean_projection
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanDeclKind.Variantca35e75fdd7b8d79570a3806fd3f4bc8254a8e30526248662a7b79fc6ae0c90e

namespace Folder
namespace Presentation

inductive LeanDeclKind where
  | theorem
  | defn
  | structure
  | inductive
  | abbrev
  | instance
  | namespace
  | unknown
deriving DecidableEq, Repr

structure LeanDeclarationProjection where
  moduleName : String
  declarationName : String
  kind : LeanDeclKind
  signatureText : String
  sourcePath : String
  sourceLine? : Option Nat

structure LeanModuleProjection where
  moduleId : ModuleId
  sourcePath : String
  imports : List ModuleId
  declarations : List LeanDeclarationProjection
  projectionFailures : List String

def LeanModuleProjection.hasFailure
    (P : LeanModuleProjection) : Prop :=
  P.projectionFailures ≠ []

theorem declaration_projection_has_name
    (D : LeanDeclarationProjection) :
    ∃ name, D.declarationName = name :=
  ⟨D.declarationName, rfl⟩

end Presentation
end Folder
