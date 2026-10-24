import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.Theorem.DerivedSheaf.KTheoryIndex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-theory index facts, not BinaryMatrix data.
Ontology: derived.k_theory_index
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem ktheory_index_class_of_perfect_complex
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.DerivedSheaf.KTheoryIndex M) :
    I.classOfPerfectComplex :=
  Folder.DerivedSheaf.ktheory_index_class_of_perfect_complex I

theorem ktheory_index_has_class
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.DerivedSheaf.KTheoryIndex M) :
    ∃ c : Folder.DerivedSheaf.KTheoryClass M.K, c = I.indexClass :=
  Folder.DerivedSheaf.ktheory_index_has_class I

end DerivedSheaf
end Theorem
end Folder
