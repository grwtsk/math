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
