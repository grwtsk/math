# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SheafSpectrumOperator.Variant071d87bd7c4bd093e7cf2d4c39fb23a6afcff8af5b8ad2d3764c75288f5bcd78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb00ed2aeed9d3fa32f3fcb75912a131f45b8ad4` · SHA-256 `071d87bd7c4bd093e7cf2d4c39fb23a6afcff8af5b8ad2d3764c75288f5bcd78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.SheafSpectrumOperator

/-!
# Folder.Theorem.CrystallineIndex.SheafSpectrumOperator

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports sheaf-spectrum operator contract facts.
Ontology: proof.crystalline_index.sheaf_spectrum_operator
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace SheafSpectrumOperator

theorem sheaf_operator_fredholm_analogue
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    (D : Folder.CrystallineIndex.SheafSpectrumOperator F) :
    D.fredholmAnalogue :=
  Folder.CrystallineIndex.sheaf_operator_fredholm_analogue D

theorem sheaf_operator_dirac_type
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    (D : Folder.CrystallineIndex.SheafSpectrumOperator F) :
    D.diracType :=
  Folder.CrystallineIndex.sheaf_operator_dirac_type D

end SheafSpectrumOperator
end CrystallineIndex
end Theorem
end Folder
```
