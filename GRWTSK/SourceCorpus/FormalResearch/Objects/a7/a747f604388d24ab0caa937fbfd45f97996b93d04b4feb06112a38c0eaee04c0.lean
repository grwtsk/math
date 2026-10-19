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
