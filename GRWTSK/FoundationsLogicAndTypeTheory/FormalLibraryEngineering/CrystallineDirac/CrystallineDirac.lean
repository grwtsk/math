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
