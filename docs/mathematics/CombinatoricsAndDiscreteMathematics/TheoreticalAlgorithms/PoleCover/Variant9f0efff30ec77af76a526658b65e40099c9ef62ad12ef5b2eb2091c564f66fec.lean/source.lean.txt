import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Compact

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure PoleChart where
  poleLabel : String
  compact : CompactPatch
  support : List MemoryVertex
  residueMapLabel : String
deriving Repr

structure PoleCover where
  compact : CompactPatch
  charts : List PoleChart
  compactConservative : Prop
  residueComplete : Prop
  overlapCompatible : Prop

def PoleCover.compactDeterminedByPoles (C : PoleCover) : Prop :=
  C.compactConservative ∧ C.residueComplete ∧ C.overlapCompatible

def polesFormCompactConservativeResidueCover (C : PoleCover) : Prop :=
  C.compactConservative ∧ C.residueComplete

theorem compact_determined_requires_conservative_cover
    (C : PoleCover)
    (h : C.compactDeterminedByPoles) :
    polesFormCompactConservativeResidueCover C := by
  exact And.intro h.1 h.2.1

theorem conservative_residue_cover_with_overlaps_determines_compact
    (C : PoleCover)
    (hCover : polesFormCompactConservativeResidueCover C)
    (hOverlap : C.overlapCompatible) :
    C.compactDeterminedByPoles := by
  exact And.intro hCover.1 (And.intro hCover.2 hOverlap)

end Think.RadoProjectedModularHeatflow.MemoryCore
