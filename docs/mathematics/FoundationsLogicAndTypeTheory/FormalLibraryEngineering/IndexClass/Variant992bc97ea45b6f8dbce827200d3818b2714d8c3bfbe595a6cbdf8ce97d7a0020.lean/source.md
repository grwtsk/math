# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexClass.Variant992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73beebda25a813be143c0c4b748656c237a4a53c` · SHA-256 `992bc97ea45b6f8dbce827200d3818b2714d8c3bfbe595a6cbdf8ce97d7a0020`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.KernelCokernel
import Folder.CrystallineIndex.CohomologyClass
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.CrystallineIndex.IndexClass

Radiation role: research-boundary
BinaryMatrix spine: This module records cohomology-valued index classes, not integer BinaryMatrix invariants.
Ontology: crystalline_index.index_class
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Cohomology-class-valued formal index for a supplied Dirac-type operator.

The index is not assumed to be an integer; it lives in the supplied cohomology
theory.
-/
structure CrystallineIndexClass
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    (D : CrystallineDiracOperator nabla)
    (H : CohomologyTheory) where
  indexCohomologyClass : CohomologyClass H
  kernelCokernel : KernelCokernelData D
  representsFormalIndex : Prop
  representsFormalIndex_certified : representsFormalIndex
  label : String

theorem index_class_represents_formal_index
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    (I : CrystallineIndexClass D H) :
    I.representsFormalIndex :=
  I.representsFormalIndex_certified

/--
Compatibility layer for the preferred Witt-complex-valued index object.
-/
structure CrystallineIndexClassInWitt
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    (D : SheafSpectrumOperator F)
    (W : WittComplex) where
  wittIndex : WittValuedCrystallineIndex D W
  isCrystallineIndex : Prop
  isCrystallineIndex_certified : isCrystallineIndex

theorem crystalline_index_class_in_witt_is_index
    {C : ResearchTopos.SiteCategory}
    {J : ResearchTopos.GrothendieckTopology C}
    {F : AdelicInfinityTopos.SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (I : CrystallineIndexClassInWitt D W) :
    I.isCrystallineIndex :=
  I.isCrystallineIndex_certified

end CrystallineIndex
end Folder
```
