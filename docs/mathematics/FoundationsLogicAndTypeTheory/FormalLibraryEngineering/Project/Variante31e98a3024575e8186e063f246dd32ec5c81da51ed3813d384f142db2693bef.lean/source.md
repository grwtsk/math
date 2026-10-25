# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Project.Variante31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bc8a75fbbc8262cef5e8fa0994dee62bfdf0b38` · SHA-256 `e31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
