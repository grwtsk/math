# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BoundaryAlignmentBridge.Variant3239e4634acf4f893d19b849843ac20dc2430e36a5ffc907f4468f97250fe234

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbe194bfc1ea65e698f618a9b6507f49bfab9844` · SHA-256 `3239e4634acf4f893d19b849843ac20dc2430e36a5ffc907f4468f97250fe234`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.AdelicInfinityTopos.SpectralBoundaryAlignment
import Folder.AdelicInfinityTopos.CriticalLineConclusion
import Folder.CrystallineTensor.TensorFixedPointContract

/-!
# Folder.CrystallineTensor.BoundaryAlignmentBridge

Radiation role: research-boundary
BinaryMatrix spine: This module bridges supplied fixed-tensor contracts to supplied adelic alignment contracts.
Ontology: crystalline.boundary_alignment_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure FixedTensorToBoundaryAlignmentBridge
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    (K : TensorFixedPointContract nabla H e) where
  alignmentContract :
    AdelicInfinityTopos.AdelicCriticalLineContract
  fixedTensorSuppliesAlignment : Prop
  fixedTensorSuppliesAlignment_certified : fixedTensorSuppliesAlignment
  alignmentConclusion :
    AdelicInfinityTopos.AllZerosOnCriticalLine alignmentContract

namespace BoundaryAlignmentBridge

theorem fixed_tensor_implies_adelic_critical_line
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {H : HeatFlowAction F}
    {e : CrystalEndomorphism F}
    {K : TensorFixedPointContract nabla H e}
    (B : FixedTensorToBoundaryAlignmentBridge K) :
    AdelicInfinityTopos.AllZerosOnCriticalLine B.alignmentContract :=
  B.alignmentConclusion

end BoundaryAlignmentBridge

end CrystallineTensor
end Folder
```
