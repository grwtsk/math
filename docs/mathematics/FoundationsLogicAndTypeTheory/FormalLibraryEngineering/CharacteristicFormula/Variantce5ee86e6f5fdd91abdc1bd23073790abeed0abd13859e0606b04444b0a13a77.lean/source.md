# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CharacteristicFormula.Variantce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `490c61b1bbc47be754c4ef6e789ccfc6ba2ace71` · SHA-256 `ce5ee86e6f5fdd91abdc1bd23073790abeed0abd13859e0606b04444b0a13a77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.IndexClass
import Folder.CrystallineIndex.CrystallineChernCharacter
import Folder.CrystallineIndex.CrystallineAhatGenus
import Folder.CrystallineIndex.WittenGenusBoundary

/-!
# Folder.CrystallineIndex.CharacteristicFormula

Radiation role: research-boundary
BinaryMatrix spine: This module records index characteristic formula contracts, not BinaryMatrix formulae.
Ontology: crystalline_index.characteristic_formula
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Atiyah-Singer-style index formula slot.

This is not the Atiyah-Singer theorem. It is the field in which such an index
formula would be recorded.
-/
structure CrystallineCharacteristicFormula
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (H : CohomologyTheory)
    (I : CrystallineIndexClass D H) where
  chern : CrystallineChernCharacter H
  ahat? : Option (CrystallineAhatGenus H)
  witten? : Option (WittenGenusIndexBoundary H)
  characteristicClass : CohomologyClass H
  formula :
    ClassEquality I.indexCohomologyClass characteristicClass
  formulaIsAtiyahSingerStyle : Prop
  formulaIsAtiyahSingerStyle_certified : formulaIsAtiyahSingerStyle

theorem characteristic_formula_compatible
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {I : CrystallineIndexClass D H}
    (Phi : CrystallineCharacteristicFormula H I) :
    Phi.formula.compatible :=
  Phi.formula.compatible_certified

theorem characteristic_formula_is_index_style
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {I : CrystallineIndexClass D H}
    (Phi : CrystallineCharacteristicFormula H I) :
    Phi.formulaIsAtiyahSingerStyle :=
  Phi.formulaIsAtiyahSingerStyle_certified

end CrystallineIndex
end Folder
```
