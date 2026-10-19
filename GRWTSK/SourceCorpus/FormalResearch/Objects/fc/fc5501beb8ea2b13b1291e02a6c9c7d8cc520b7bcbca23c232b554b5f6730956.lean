import Folder.CrystallineTensor.BoundaryAlignmentBridge
import Folder.CrystallineIndex.IndexFixedTensorBridge

/-!
# Folder.CrystallineIndex.IndexBoundaryAlignmentBridge

Radiation role: research-boundary
BinaryMatrix spine: This module composes supplied index and boundary bridges, not BinaryMatrix critical-line data.
Ontology: crystalline_index.index_boundary_alignment_bridge
Pivot role: spectral
Zero typology: l-function
Contract boundary: contract-composition
Composite stack role: crystalline-index
-/

namespace Folder
namespace CrystallineIndex

/--
Full bridge from nonzero crystalline index data to the existing adelic
critical-line conclusion.

The theorem is contract composition. Nonzero index does not imply critical-line
behavior without this explicit bridge data.
-/
structure IndexToBoundaryAlignmentBridge
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    (N : @NonvanishingIndex C F nabla D H T) where
  indexFixedTensor :
    @IndexToFixedTensorBridge C F nabla Hflow e D H T N
  tensorBoundary :
    @CrystallineTensor.FixedTensorToBoundaryAlignmentBridge C F nabla Hflow e
      indexFixedTensor.fixedPointContract
  nonzeroIndex :
    N.nonzeroIndex

namespace IndexBoundaryAlignmentBridge

theorem critical_line_from_nonzero_crystalline_index
    {C : CrystallineTensor.CrystallineSite}
    {F : CrystallineTensor.Crystal C}
    {nabla : CrystallineTensor.Connection F}
    {Hflow : CrystallineTensor.HeatFlowAction F}
    {e : CrystallineTensor.CrystalEndomorphism F}
    {D : CrystallineDiracOperator nabla}
    {H : CohomologyTheory}
    {T : @CrystallineIndexTheoremContract C F nabla D H}
    {N : @NonvanishingIndex C F nabla D H T}
    (B : @IndexToBoundaryAlignmentBridge C F nabla Hflow e D H T N) :
    AdelicInfinityTopos.AllZerosOnCriticalLine
      B.tensorBoundary.alignmentContract :=
  B.tensorBoundary.alignmentConclusion

end IndexBoundaryAlignmentBridge

end CrystallineIndex
end Folder
