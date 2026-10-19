import Folder.DerivedSheaf.ModuliStackKTheory

/-!
# Folder.Theorem.DerivedSheaf.KTheoryClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-theory class facts, not BinaryMatrix data.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem ktheory_class_has_value
    {K : Folder.DerivedSheaf.KTheorySpace}
    (x : Folder.DerivedSheaf.KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  Folder.DerivedSheaf.ktheory_class_has_value x

theorem mell_k_theory_targets_mell
    (M : Folder.DerivedSheaf.MellKTheory) :
    M.K_of_Mell :=
  Folder.DerivedSheaf.mell_k_theory_targets_mell M

theorem mell_contract_is_mell
    (M : Folder.DerivedSheaf.ModuliStackContract) :
    M.isMell :=
  Folder.DerivedSheaf.mell_contract_is_mell M

end DerivedSheaf
end Theorem
end Folder
