# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexFixedTensorBridge.Varianta175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ba876729690d81959e30c0bb2d784e1e68da709` · SHA-256 `a175f80385852ad236e22b363833f2ae4340dfb6d3e3a0a73883dead96887b53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
