# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cluster.Variant0b232c5b763781d5b26f6b38efd8f13fa7c95b473de0f8519c79050ede9afdc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04620fe59ade71703db0edc3a0d7cb1f68c4022c` · SHA-256 `0b232c5b763781d5b26f6b38efd8f13fa7c95b473de0f8519c79050ede9afdc0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Cluster

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.cluster

theorem placements_count :
    placements.length = 5 :=
  Think.SourceTree.clusterPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Cluster
```
