import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.Theorem.DerivedSheaf.SectionComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports derived section-complex facts, not BinaryMatrix data.
Ontology: derived.section_complex
Pivot role: none
Zero typology: d_squared_zero-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem graded_object_has_term
    (G : Folder.DerivedSheaf.GradedObject)
    (n : Folder.DerivedSheaf.Degree) :
    ∃ T : Type _, T = G.term n :=
  Folder.DerivedSheaf.graded_object_has_term G n

theorem section_complex_d_squared_zero
    (C : Folder.DerivedSheaf.SectionComplex) :
    C.d_comp_d_zero :=
  Folder.DerivedSheaf.section_complex_d_squared_zero C

theorem section_complex_bounded
    (C : Folder.DerivedSheaf.SectionComplex) :
    C.bounded :=
  Folder.DerivedSheaf.section_complex_bounded C

end DerivedSheaf
end Theorem
end Folder
