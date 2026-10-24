import Folder.DerivedSheaf.KTheoryClass

/-!
# Folder.DerivedSheaf.ModuliStackKTheory

Radiation role: research-boundary
BinaryMatrix spine: This module names K(M_ell) contracts, not BinaryMatrix data.
Ontology: derived.k_mell
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure ModuliStackContract where
  Stack : Type _
  label : String
  isMell : Prop
  isMell_certified : isMell
  constructedInternally : Prop := False

structure MellKTheory where
  mell : ModuliStackContract
  K : KTheorySpace
  K_of_Mell : Prop
  K_of_Mell_certified : K_of_Mell
  sourceLabel : String

theorem mell_k_theory_targets_mell
    (M : MellKTheory) :
    M.K_of_Mell :=
  M.K_of_Mell_certified

theorem mell_contract_is_mell
    (M : ModuliStackContract) :
    M.isMell :=
  M.isMell_certified

end DerivedSheaf
end Folder
