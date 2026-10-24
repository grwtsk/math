# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Classifier.Variant9c9756770ca6e59d4626029ba3222dd02aa680c575e9f8e40d10fc02d55ce906

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7d6efa198ebdad7a2576026351dc1715cc53b29` · SHA-256 `9c9756770ca6e59d4626029ba3222dd02aa680c575e9f8e40d10fc02d55ce906`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.PoleAssignment

set_option autoImplicit false

namespace Think.Poles.Classifier

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.classifier

theorem placements_count :
    placements.length = 7 :=
  Think.SourceTree.classifierPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Classifier
```
