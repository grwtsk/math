import Folder.Latex.Project

/-!
# Folder.Theorem.Latex.Project

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes LaTeX project layout facts.
Ontology: proof.latex.project
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Latex

theorem latexProject_main
    (P : Folder.Latex.LatexProject)
    (h : P.rootFile = "main.tex") :
    P.hasMain :=
  Folder.Latex.latexProject_main P h

end Latex
end Theorem
end Folder
