import Folder.Presentation.LeanProjection

/-!
# Folder.Theorem.Presentation.LeanProjection

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes conservative Lean projection facts.
Ontology: proof.presentation.lean_projection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem declaration_projection_has_name
    (D : Folder.Presentation.LeanDeclarationProjection) :
    ∃ name, D.declarationName = name :=
  Folder.Presentation.declaration_projection_has_name D

end Presentation
end Theorem
end Folder
