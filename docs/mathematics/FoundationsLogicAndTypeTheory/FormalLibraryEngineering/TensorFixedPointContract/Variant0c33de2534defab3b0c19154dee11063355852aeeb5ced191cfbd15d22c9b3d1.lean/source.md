# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TensorFixedPointContract.Variant0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4463ab403c54473fcf2ccdd9934edb925826592` · SHA-256 `0c33de2534defab3b0c19154dee11063355852aeeb5ced191cfbd15d22c9b3d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.TensorFixedPointContract

/-!
# Folder.Theorem.CrystallineTensor.TensorFixedPointContract

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the tensor fixed-point contract-composition theorems.
Ontology: proof.crystalline.tensor_fixed_point_contract
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace TensorFixedPointContract

theorem tensor_fixed_point_exists
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ _ : Folder.CrystallineTensor.FixedTensor nabla e K.object, True :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_exists K

theorem tensor_fixed_point_horizontal
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ T : Folder.CrystallineTensor.FixedTensor nabla e K.object,
      nabla.horizontal K.object T.tensor.underlyingSection :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_horizontal K

theorem tensor_fixed_point_fixed
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    (K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e) :
    ∃ T : Folder.CrystallineTensor.FixedTensor nabla e K.object,
      e.map K.object T.tensor.underlyingSection =
        T.tensor.underlyingSection :=
  Folder.CrystallineTensor.TensorFixedPointContract.tensor_fixed_point_fixed K

end TensorFixedPointContract
end CrystallineTensor
end Theorem
end Folder
```
