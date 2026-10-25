# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexFixedTensorBridge.Variantf618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd9438f5c9b9ce8f04e986007509e54fdf183fa3` · SHA-256 `f618c222b567e75f48d75b96edd46ffcd2b4278c5b8d5891ad17c8a81e2d76c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
