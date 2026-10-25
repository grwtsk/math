# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineDirac.Varianta7579da2d44acf4663ee0bd71c6d453b1153d71d41bb89cbeca63ff808bb62c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `970d41bc66198c5fa566aaed1261a28355807134` · SHA-256 `a7579da2d44acf4663ee0bd71c6d453b1153d71d41bb89cbeca63ff808bb62c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.CrystallineDirac

/-!
# Folder.Theorem.CrystallineIndex.CrystallineDirac

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline Dirac contract exposure facts.
Ontology: proof.crystalline_index.dirac
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CrystallineDirac

theorem crystalline_dirac_uses_connection
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    (D : Folder.CrystallineIndex.CrystallineDiracOperator nabla) :
    D.usesConnection :=
  Folder.CrystallineIndex.crystalline_dirac_uses_connection D

theorem crystalline_dirac_fredholm_analogue
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    (D : Folder.CrystallineIndex.CrystallineDiracOperator nabla) :
    D.fredholmAnalogue :=
  Folder.CrystallineIndex.crystalline_dirac_fredholm_analogue D

end CrystallineDirac
end CrystallineIndex
end Theorem
end Folder
```
