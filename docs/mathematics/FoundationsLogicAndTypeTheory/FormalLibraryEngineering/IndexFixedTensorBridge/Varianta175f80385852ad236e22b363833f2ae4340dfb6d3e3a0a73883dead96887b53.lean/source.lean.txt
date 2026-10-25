import Folder.CrystallineIndex.IndexFixedTensorBridge

/-!
# Folder.Theorem.CrystallineIndex.IndexFixedTensorBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports index-to-fixed-tensor bridge facts.
Ontology: proof.crystalline_index.index_fixed_tensor_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexFixedTensorBridge

theorem fixed_tensor_from_nonzero_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {Hflow : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    {N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T}
    (B : @Folder.CrystallineIndex.IndexToFixedTensorBridge C F nabla Hflow e D H T N)
    (hN : N.nonzeroIndex) :
    ∃ _ :
      Folder.CrystallineTensor.FixedTensor nabla e B.fixedPointContract.object,
      True :=
  Folder.CrystallineIndex.IndexFixedTensorBridge.fixed_tensor_from_nonzero_index B hN

end IndexFixedTensorBridge
end CrystallineIndex
end Theorem
end Folder
