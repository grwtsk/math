import Folder.Presentation.BitMatrixStreamPresentation

/-!
# Folder.Theorem.Presentation.BitMatrixStreamPresentation

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes BitMatrixStream presentation interface facts.
Ontology: proof.presentation.bitmatrixstream_latex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem leanLatexPresentation_respectsRanking
    (R : Folder.Presentation.LeanLatexPresentationRule) :
    R.respectsRanking :=
  Folder.Presentation.leanLatexPresentation_respectsRanking R

end Presentation
end Theorem
end Folder
