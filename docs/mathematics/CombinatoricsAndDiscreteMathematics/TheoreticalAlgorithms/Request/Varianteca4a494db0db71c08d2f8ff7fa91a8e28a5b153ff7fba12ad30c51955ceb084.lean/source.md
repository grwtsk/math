# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Varianteca4a494db0db71c08d2f8ff7fa91a8e28a5b153ff7fba12ad30c51955ceb084

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `161d16cfdb80500026590b24c7f71660caab4a09` · SHA-256 `eca4a494db0db71c08d2f8ff7fa91a8e28a5b153ff7fba12ad30c51955ceb084`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Request

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.request

theorem placements_count :
    placements.length = 4 :=
  Think.SourceTree.requestPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Request
```
