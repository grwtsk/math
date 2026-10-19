import Think.Pipeline.Center.KakeyaMedoid
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryAlgebra

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryMedoid

abbrev Phase := Think.PhaseId
abbrev MemoryVertex := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.MemoryVertex
abbrev WeightedMemory := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.WeightedMemory
abbrev ResidueAtom := Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom

structure PhasePoleDistance where
  dist : Nat -> Phase -> Nat

def projectedDistance
    (projection : MemoryVertex -> Nat)
    (D : PhasePoleDistance)
    (v : MemoryVertex)
    (p : Phase) : Nat :=
  D.dist (projection v) p

def medoidOverProjectedSupport
    (projection : MemoryVertex -> Nat)
    (D : PhasePoleDistance)
    (M : WeightedMemory)
    (support : List MemoryVertex) : Phase :=
  Think.Pipeline.Center.KakeyaMedoid.medoidK
    (projectedDistance projection D)
    M
    support

def medoidProjectionResidues : List ResidueAtom :=
  Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues ++
    Think.Pipeline.Center.KakeyaMedoid.medoidResidues

theorem medoidProjectionResidues_mark_projection :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.sourceTreeProjectionMayEraseEdges ∈
      medoidProjectionResidues := by
  simp
    [medoidProjectionResidues,
      Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues,
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues]

theorem medoidProjectionResidues_mark_nonTheorem :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      medoidProjectionResidues := by
  simp
    [medoidProjectionResidues,
      Think.RadoProjectedModularHeatflow.MemoryAlgebra.projectionResidues,
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues]

end Think.RadoProjectedModularHeatflow.MemoryMedoid
