# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineChernCharacter.Variant9cd7d0cd1a504703a9fec3a29c8ef1ca97f7413ff42fd57543155489aabaa429

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce4a70d818e6b818e792301a722d96a6570b1364` · SHA-256 `9cd7d0cd1a504703a9fec3a29c8ef1ca97f7413ff42fd57543155489aabaa429`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
