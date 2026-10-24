import Folder.CrystallineIndex.WittComplex

/-!
# Folder.CrystallineIndex.DeRhamWittBoundary

Radiation role: research-boundary
BinaryMatrix spine: This module records de Rham-Witt boundary contracts, not BinaryMatrix dynamics.
Ontology: crystalline_index.de_rham_witt
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Contract-level de Rham-Witt complex slot.

No de Rham-Witt complex or crystalline cohomology computation is constructed
in this module.
-/
structure DeRhamWittComplexContract where
  Base : Type _
  witt : WittComplex
  identifiesWithCrystallineTarget : Prop
  identifiesWithCrystallineTarget_certified :
    identifiesWithCrystallineTarget
  sourceLabel : String

theorem deRhamWitt_is_complex
    (W : DeRhamWittComplexContract) :
    W.witt.isComplex :=
  W.witt.isComplex_certified

theorem deRhamWitt_identifies_with_crystalline_target
    (W : DeRhamWittComplexContract) :
    W.identifiesWithCrystallineTarget :=
  W.identifiesWithCrystallineTarget_certified

end CrystallineIndex
end Folder
