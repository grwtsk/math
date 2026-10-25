# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexTheoremContract.Variantd98b28c459a2233f2c595a77a1a939833148186905736f81687b466fcc505aa2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22c7dccb33ec525951e1a13a2e23e1034752dafd` · SHA-256 `d98b28c459a2233f2c595a77a1a939833148186905736f81687b466fcc505aa2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.IndexTheoremContract

/-!
# Folder.Theorem.CrystallineIndex.IndexTheoremContract

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline index theorem contract facts.
Ontology: proof.crystalline_index.index_theorem_contract
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexTheoremContract

theorem index_formula_certified
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H) :
    T.indexFormulaCertified :=
  Folder.CrystallineIndex.IndexTheoremContract.index_formula_certified T

theorem index_theorem_characteristic_formula
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H) :
    T.characteristicFormula.formula.compatible :=
  Folder.CrystallineIndex.IndexTheoremContract.index_theorem_characteristic_formula T

end IndexTheoremContract
end CrystallineIndex
end Theorem
end Folder
```
