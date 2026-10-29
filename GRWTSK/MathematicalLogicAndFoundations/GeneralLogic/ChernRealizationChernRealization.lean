import Folder.CrystallineIndex.CohomologyClass
import Folder.DerivedSheaf.KTheoryIndex

/-!
# Folder.DerivedSheaf.ChernRealization

Radiation role: research-boundary
BinaryMatrix spine: This module records Chern realization contracts, not BinaryMatrix data.
Ontology: derived.chern_realization
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: derived-sheaf
-/

namespace Folder
namespace DerivedSheaf

structure ChernRealization
    (M : MellKTheory)
    (H : CrystallineIndex.CohomologyTheory) where
  ch : KTheoryClass M.K → CrystallineIndex.CohomologyClass H
  additive : Prop
  additive_certified : additive
  compatibleWithPerfectComplexes : Prop
  compatibleWithPerfectComplexes_certified : compatibleWithPerfectComplexes
  sourceLabel : String

theorem chern_realization_additive
    {M : MellKTheory}
    {H : CrystallineIndex.CohomologyTheory}
    (ch : ChernRealization M H) :
    ch.additive :=
  ch.additive_certified

theorem chern_realization_compatible
    {M : MellKTheory}
    {H : CrystallineIndex.CohomologyTheory}
    (ch : ChernRealization M H) :
    ch.compatibleWithPerfectComplexes :=
  ch.compatibleWithPerfectComplexes_certified

end DerivedSheaf
end Folder
