import Folder.Basic

/-!
# Folder.Latex.Project

Radiation role: latex-project
BinaryMatrix spine: This module records generated LaTeX project file layout for presentation outputs.
Ontology: latex.project
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LatexProject where
  rootFile : String
  preambleFile : String
  macroFile : String
  sectionFiles : List String
  appendixFiles : List String
  metadataFile : String

def LatexProject.hasMain (P : LatexProject) : Prop :=
  P.rootFile = "main.tex"

theorem latexProject_main
    (P : LatexProject)
    (h : P.rootFile = "main.tex") :
    P.hasMain :=
  h

end Latex
end Folder
