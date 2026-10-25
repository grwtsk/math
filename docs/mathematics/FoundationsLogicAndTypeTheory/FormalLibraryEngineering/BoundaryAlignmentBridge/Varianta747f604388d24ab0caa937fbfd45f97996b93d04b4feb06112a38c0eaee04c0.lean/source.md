# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryAlignmentBridge.Varianta747f604388d24ab0caa937fbfd45f97996b93d04b4feb06112a38c0eaee04c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce4a4b17943294c1895617674c83f0f024deabdd` · SHA-256 `a747f604388d24ab0caa937fbfd45f97996b93d04b4feb06112a38c0eaee04c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.BoundaryAlignmentBridge

/-!
# Folder.Theorem.CrystallineTensor.BoundaryAlignmentBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the fixed-tensor to adelic-boundary bridge theorem.
Ontology: proof.crystalline.boundary_alignment_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace BoundaryAlignmentBridge

theorem fixed_tensor_implies_adelic_critical_line
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {H : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {K : Folder.CrystallineTensor.TensorFixedPointContract nabla H e}
    (B : Folder.CrystallineTensor.FixedTensorToBoundaryAlignmentBridge K) :
    Folder.AdelicInfinityTopos.AllZerosOnCriticalLine B.alignmentContract :=
  Folder.CrystallineTensor.BoundaryAlignmentBridge.fixed_tensor_implies_adelic_critical_line B

end BoundaryAlignmentBridge
end CrystallineTensor
end Theorem
end Folder
```
