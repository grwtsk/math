import Folder.CrystallineTensor.TensorFixedPointContract
import Folder.CrystallineIndex.NonvanishingIndex

/-!
# Folder.CrystallineIndex.IndexFixedTensorBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges index contracts to fixed tensors, not BinaryMatrix fixed points.
Ontology: crystalline_index.index_fixed_tensor_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Bridge from supplied nonzero index data to a supplied fixed tensor contract.

This is the explicit theorem-target boundary where nonzero index may produce
fixed tensor data.
-/
structure IndexToFixedTensorBridge
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) where
  fixedPointContract :
    CrystallineTensor.TensorFixedPointContract nabla Hflow e
  nonzeroIndexSuppliesFixedTensor :
    N.nonzeroIndex →
      ∃ _ : CrystallineTensor.FixedTensor nabla e fixedPointContract.object, True

namespace IndexFixedTensorBridge

theorem fixed_tensor_from_nonzero_index
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    {N : @NonvanishingIndex C F nabla D H T}
    (B : @IndexToFixedTensorBridge C F nabla Hflow e D H T N)
    (hN : N.nonzeroIndex) :
    ∃ _ : CrystallineTensor.FixedTensor nabla e B.fixedPointContract.object, True :=
  B.nonzeroIndexSuppliesFixedTensor hN

end IndexFixedTensorBridge

end CrystallineIndex
end Folder
