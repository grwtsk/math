import Folder.Presentation.PublicationBoundary

/-!
# Folder.Theorem.Presentation.PublicationBoundary

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes publication-boundary facts for generated LaTeX artifacts.
Ontology: proof.presentation.publication_boundary
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem lean_formal_latex_not_conventional_manuscript :
    Folder.Presentation.leanFormalLatexPublicationBoundary.notConventionalManuscript :=
  Folder.Presentation.lean_formal_latex_not_conventional_manuscript

theorem lean_formal_latex_not_proof_of_rh :
    Folder.Presentation.leanFormalLatexPublicationBoundary.notProofOfRH :=
  Folder.Presentation.lean_formal_latex_not_proof_of_rh

theorem lean_formal_latex_source_lean_authoritative :
    Folder.Presentation.leanFormalLatexPublicationBoundary.sourceLeanAuthoritative :=
  Folder.Presentation.lean_formal_latex_source_lean_authoritative

theorem generated_declaration_atlas_ne_conventional_manuscript :
    Folder.Presentation.PresentationArtifactKind.generatedDeclarationAtlas ≠
      Folder.Presentation.PresentationArtifactKind.conventionalMathematicalManuscript :=
  Folder.Presentation.generated_declaration_atlas_ne_conventional_manuscript

end Presentation
end Theorem
end Folder
