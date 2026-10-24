import Folder.Basic

/-!
# Folder.Latex.Syntax

Radiation role: latex-syntax
BinaryMatrix spine: This module stores LaTeX fragments emitted by presentation rules over BinaryMatrixStream carriers.
Ontology: latex.syntax
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LatexFragment where
  source : String

structure LatexDocument where
  preamble : String
  body : String
  appendices : String

end Latex
end Folder
