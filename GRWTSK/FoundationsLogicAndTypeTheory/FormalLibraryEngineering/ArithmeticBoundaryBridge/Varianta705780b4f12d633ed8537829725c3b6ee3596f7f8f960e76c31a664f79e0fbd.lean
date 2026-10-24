import Folder.CrystallineIndex.ArithmeticBoundaryBridge

/-!
# Folder.Theorem.CrystallineIndex.ArithmeticBoundaryBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports arithmetic-boundary-to-Witt-index bridge facts.
Ontology: proof.crystalline_index.arithmetic_boundary_bridge
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace ArithmeticBoundaryBridge

theorem arithmetic_bridge_supports_index
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (B : Folder.CrystallineIndex.ArithmeticBoundaryIndexBridge D W) :
    B.arithmeticDataSupportsIndex :=
  Folder.CrystallineIndex.arithmetic_bridge_supports_index B

theorem arithmetic_bridge_has_witt_index
    {C : Folder.ResearchTopos.SiteCategory}
    {J : Folder.ResearchTopos.GrothendieckTopology C}
    {F : Folder.AdelicInfinityTopos.SheafOfSpectra J}
    {D : Folder.CrystallineIndex.SheafSpectrumOperator F}
    {W : Folder.CrystallineIndex.WittComplex}
    (B : Folder.CrystallineIndex.ArithmeticBoundaryIndexBridge D W) :
    ∃ I : Folder.CrystallineIndex.WittValuedCrystallineIndex D W, I = B.index :=
  Folder.CrystallineIndex.arithmetic_bridge_has_witt_index B

end ArithmeticBoundaryBridge
end CrystallineIndex
end Theorem
end Folder
