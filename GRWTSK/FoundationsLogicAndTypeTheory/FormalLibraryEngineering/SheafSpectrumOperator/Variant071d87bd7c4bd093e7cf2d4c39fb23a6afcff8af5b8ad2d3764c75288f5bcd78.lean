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
