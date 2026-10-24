# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PoleCover.Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfc529a2d56c429d33406f4c4885a16a80e14ebb` · SHA-256 `9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
