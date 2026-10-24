# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Boundary.Variantb6fc8f6494c2e72b771766b66080dd13a98abfb3e26866755b0068b4311e551d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4e2eb05bc81329df3db2cdaea29ebac16a49d1b` · SHA-256 `b6fc8f6494c2e72b771766b66080dd13a98abfb3e26866755b0068b4311e551d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Boundary

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.boundary

theorem placements_count :
    placements.length = 8 :=
  Think.SourceTree.boundaryPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Boundary
```
