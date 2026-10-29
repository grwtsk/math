import Folder.Research.ArithmeticBoundary
import Folder.CrystallineIndex.WittValuedIndex

/-!
# Folder.CrystallineIndex.ArithmeticBoundaryBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges arithmetic contracts to Witt-valued indices, not BinaryMatrix computations.
Ontology: arithmetic.index_bridge
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

open Research.ArithmeticBoundary
open AdelicInfinityTopos
open ResearchTopos

/--
An arithmetic contract may parameterize or certify the data used to define a
Witt-valued crystalline index.

This is a bridge, not an index computation inside `ArithmeticBoundary`.
-/
structure ArithmeticBoundaryIndexBridge
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    (D : SheafSpectrumOperator F)
    (W : WittComplex) where
  arithmeticSource : Type _
  hasseWeil? : Option HasseWeilContract
  modularity? : Option ModularityContract
  bsd? : Option BSDContract
  index : WittValuedCrystallineIndex D W
  arithmeticDataSupportsIndex : Prop
  arithmeticDataSupportsIndex_certified : arithmeticDataSupportsIndex
  sourceLabel : String

theorem arithmetic_bridge_supports_index
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (B : ArithmeticBoundaryIndexBridge D W) :
    B.arithmeticDataSupportsIndex :=
  B.arithmeticDataSupportsIndex_certified

theorem arithmetic_bridge_has_witt_index
    {C : SiteCategory}
    {J : GrothendieckTopology C}
    {F : SheafOfSpectra J}
    {D : SheafSpectrumOperator F}
    {W : WittComplex}
    (B : ArithmeticBoundaryIndexBridge D W) :
    ∃ I : WittValuedCrystallineIndex D W, I = B.index :=
  ⟨B.index, rfl⟩

end CrystallineIndex
end Folder
