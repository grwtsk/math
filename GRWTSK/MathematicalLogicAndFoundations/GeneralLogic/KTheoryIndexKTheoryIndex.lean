import Folder.DerivedSheaf.DerivedIndex
import Folder.DerivedSheaf.ModuliStackKTheory
import Folder.DerivedSheaf.PerfectComplex

/-!
# Folder.DerivedSheaf.KTheoryIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records the primary K-theory index, not BinaryMatrix data.
Ontology: derived.k_theory_index
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

/--
The primary index object: a K-theory class of a perfect complex over the
contract-level K(M_ell) target.
-/
structure KTheoryIndex
    (M : MellKTheory) where
  perfect : PerfectComplex
  indexClass : KTheoryClass M.K
  euler? : Option DerivedIndex
  classOfPerfectComplex : Prop
  classOfPerfectComplex_certified : classOfPerfectComplex
  sourceLabel : String

theorem ktheory_index_class_of_perfect_complex
    {M : MellKTheory}
    (I : KTheoryIndex M) :
    I.classOfPerfectComplex :=
  I.classOfPerfectComplex_certified

theorem ktheory_index_has_class
    {M : MellKTheory}
    (I : KTheoryIndex M) :
    ∃ c : KTheoryClass M.K, c = I.indexClass :=
  ⟨I.indexClass, rfl⟩

end DerivedSheaf
end Folder
