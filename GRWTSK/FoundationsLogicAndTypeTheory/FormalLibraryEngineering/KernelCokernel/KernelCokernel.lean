import Folder.CrystallineIndex.KernelCokernel

/-!
# Folder.Theorem.CrystallineIndex.KernelCokernel

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports kernel/cokernel contract exposure facts.
Ontology: proof.crystalline_index.kernel_cokernel
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace KernelCokernel

theorem kernel_finite
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (K : Folder.CrystallineIndex.KernelCokernelData D) :
    K.kernelFinite :=
  Folder.CrystallineIndex.kernel_finite K

theorem cokernel_finite
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    (K : Folder.CrystallineIndex.KernelCokernelData D) :
    K.cokernelFinite :=
  Folder.CrystallineIndex.cokernel_finite K

end KernelCokernel
end CrystallineIndex
end Theorem
end Folder
