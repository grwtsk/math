import Folder.CrystallineIndex.CohomologyClass

/-!
# Folder.CrystallineIndex.CrystallineChernCharacter

Radiation role: research-boundary
BinaryMatrix spine: This module records Chern-character contracts, not BinaryMatrix characteristic classes.
Ontology: crystalline_index.chern_character
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

structure CrystallineChernCharacter
    (H : CohomologyTheory) where
  BundleLike : Type _
  ch : BundleLike → CohomologyClass H
  additive : Prop
  additive_certified : additive
  multiplicative : Prop
  multiplicative_certified : multiplicative
  compatibleWithConnection : Prop
  compatibleWithConnection_certified : compatibleWithConnection
  sourceLabel : String

theorem chern_character_additive
    {H : CohomologyTheory}
    (ch : CrystallineChernCharacter H) :
    ch.additive :=
  ch.additive_certified

theorem chern_character_connection_compatible
    {H : CohomologyTheory}
    (ch : CrystallineChernCharacter H) :
    ch.compatibleWithConnection :=
  ch.compatibleWithConnection_certified

end CrystallineIndex
end Folder
