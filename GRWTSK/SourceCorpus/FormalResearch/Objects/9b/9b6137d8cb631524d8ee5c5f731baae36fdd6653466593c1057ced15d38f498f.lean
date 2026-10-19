import Folder.CrystallineIndex.IndexBoundaryAlignmentBridge

/-!
# Folder.Theorem.CrystallineIndex.IndexBoundaryAlignmentBridge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports the nonzero-index boundary-alignment composition theorem.
Ontology: proof.crystalline_index.index_boundary_alignment_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace IndexBoundaryAlignmentBridge

theorem critical_line_from_nonzero_crystalline_index
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    {Hflow : Folder.CrystallineTensor.HeatFlowAction F}
    {e : Folder.CrystallineTensor.CrystalEndomorphism F}
    {D : Folder.CrystallineIndex.CrystallineDiracOperator nabla}
    {H : Folder.CrystallineIndex.CohomologyTheory}
    {T : @Folder.CrystallineIndex.CrystallineIndexTheoremContract C F nabla D H}
    {N : @Folder.CrystallineIndex.NonvanishingIndex C F nabla D H T}
    (B : @Folder.CrystallineIndex.IndexToBoundaryAlignmentBridge C F nabla Hflow e D H T N) :
    Folder.AdelicInfinityTopos.AllZerosOnCriticalLine
      B.tensorBoundary.alignmentContract :=
  Folder.CrystallineIndex.IndexBoundaryAlignmentBridge.critical_line_from_nonzero_crystalline_index B

end IndexBoundaryAlignmentBridge
end CrystallineIndex
end Theorem
end Folder
