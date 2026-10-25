import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.CrystallineAhatGenus

Radiation role: research-boundary
BinaryMatrix spine: This module records A-hat genus contracts, not BinaryMatrix genera.
Ontology: crystalline_index.ahat_genus
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure CrystallineAhatGenus
    (H : CohomologyTheory) where
  TangentLike : Type _
  ahat : TangentLike → CohomologyClass H
  multiplicative : Prop
  multiplicative_certified : multiplicative
  sourceLabel : String

theorem ahat_genus_multiplicative
    {H : CohomologyTheory}
    (A : CrystallineAhatGenus H) :
    A.multiplicative :=
  A.multiplicative_certified

end CrystallineIndex
end Folder
