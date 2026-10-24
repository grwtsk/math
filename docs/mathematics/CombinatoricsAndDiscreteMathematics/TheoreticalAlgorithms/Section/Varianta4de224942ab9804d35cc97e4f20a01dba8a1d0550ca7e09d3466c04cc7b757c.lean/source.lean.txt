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
