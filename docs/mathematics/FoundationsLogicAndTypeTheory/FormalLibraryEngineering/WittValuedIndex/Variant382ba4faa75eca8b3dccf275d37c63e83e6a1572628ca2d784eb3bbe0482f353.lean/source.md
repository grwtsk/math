# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittValuedIndex.Variant382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ba3b514767efc498c4692a48aad2325dc7181b0` · SHA-256 `382ba4faa75eca8b3dccf275d37c63e83e6a1572628ca2d784eb3bbe0482f353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.WittComplex
import Folder.CrystallineIndex.SheafSpectrumOperator
import Folder.CrystallineIndex.KernelCokernel

/-!
# Folder.CrystallineIndex.WittValuedIndex

Radiation role: research-boundary
BinaryMatrix spine: This module records Witt-valued indices, not integer BinaryMatrix invariants.
Ontology: crystalline_index.witt_valued_index
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

open AdelicInfinityTopos
open ResearchTopos

/--
The crystalline index of a sheaf-spectrum operator as an element of a Witt
complex.

This is the central type for the index in this layer.
-/
structure WittValuedCrystallineIndex
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    (D : SheafSpectrumOperator F)
    (W : WittComplex) where
  index : WittElement W
  representsOperatorIndex : Prop
  representsOperatorIndex_certified : representsOperatorIndex
  kernelCokernelData? : Option Type
  sourceLabel : String

def WittValuedCrystallineIndex.Nonzero
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) : Prop :=
  I.index.Nonzero

theorem witt_index_represents_operator_index
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) :
    I.representsOperatorIndex :=
  I.representsOperatorIndex_certified

theorem witt_index_has_witt_element
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : WittValuedCrystallineIndex D W) :
    ∃ x : WittElement W, x = I.index :=
  ⟨I.index, rfl⟩

end CrystallineIndex
end Folder
```
