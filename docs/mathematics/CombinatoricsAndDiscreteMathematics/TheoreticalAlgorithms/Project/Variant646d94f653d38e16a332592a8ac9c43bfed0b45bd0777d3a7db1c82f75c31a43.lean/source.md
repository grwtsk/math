# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Project.Variant646d94f653d38e16a332592a8ac9c43bfed0b45bd0777d3a7db1c82f75c31a43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `454779eae6089d824a0d6d5266e212afbd9d2502` · SHA-256 `646d94f653d38e16a332592a8ac9c43bfed0b45bd0777d3a7db1c82f75c31a43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
