# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexTheoremContract.Variant3c7b8ec204608c4fe5fc4ddf400178cca6c5f86a50e70b0c11981ec756670dc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20a960305fc97d2646b138e888af16b9e4c0f5ac` · SHA-256 `3c7b8ec204608c4fe5fc4ddf400178cca6c5f86a50e70b0c11981ec756670dc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CharacteristicFormula
import Folder.CrystallineIndex.CrystallineTraceFormula
import Folder.CrystallineIndex.GhostZeroObstruction

/-!
# Folder.CrystallineIndex.IndexTheoremContract

Radiation role: research-boundary
BinaryMatrix spine: This module records an index theorem contract, not a BinaryMatrix theorem.
Ontology: crystalline_index.index_theorem_contract
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Atiyah-Singer-style crystalline index theorem contract.

This is a supplied package of index class, characteristic formula, optional
trace formula, and optional obstruction data. It does not prove the
Atiyah-Singer Index Theorem.
-/
structure CrystallineIndexTheoremContract
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    (H : CohomologyTheory) where
  indexClass : CrystallineIndexClass D H
  characteristicFormula :
    CrystallineCharacteristicFormula H indexClass
  traceFormula? :
    Option (CrystallineTraceFormula H)
  ghostObstruction? :
    Option (GhostZeroObstruction H)
  indexFormulaCertified : Prop
  indexFormulaCertified_certified : indexFormulaCertified
  sourceLabel : String

namespace IndexTheoremContract

theorem index_formula_certified
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (T : @CrystallineIndexTheoremContract C F nabla D H) :
    T.indexFormulaCertified :=
  T.indexFormulaCertified_certified

theorem index_theorem_characteristic_formula
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (T : @CrystallineIndexTheoremContract C F nabla D H) :
    T.characteristicFormula.formula.compatible :=
  T.characteristicFormula.formula.compatible_certified

end IndexTheoremContract

end CrystallineIndex
end Folder
```
