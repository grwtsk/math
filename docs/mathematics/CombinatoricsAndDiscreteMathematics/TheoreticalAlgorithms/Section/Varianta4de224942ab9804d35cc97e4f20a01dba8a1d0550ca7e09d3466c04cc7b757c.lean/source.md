# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Section.Varianta4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `caf79fa01d9ab02c06f85d3906eb04553eb5d091` · SHA-256 `a4de224942ab9804d35cc97e4f20a01dba8a1d0550ca7e09d3466c04cc7b757c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Latex.Syntax

/-!
# Folder.Latex.Section

Radiation role: latex-section
BinaryMatrix spine: This module records reference-ranked LaTeX sections emitted from presentation documents.
Ontology: latex.section
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LatexSection where
  title : String
  label : String
  rank : Nat
  body : LatexFragment

structure LatexSectionOrder where
  sections : List LatexSection
  sorted_desc : sections.Pairwise (fun a b => b.rank ≤ a.rank)

theorem latex_section_order_sorted
    (O : LatexSectionOrder) :
    O.sections.Pairwise (fun a b => b.rank ≤ a.rank) :=
  O.sorted_desc

end Latex
end Folder
```
