# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Topology.Varianta86b0df894197337b9e90290d7ba4be9fd84f9d67f2b3d3e5725c231e8f3656e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a1a2e87646b513d04570f7fa156af549d1b3f50` · SHA-256 `a86b0df894197337b9e90290d7ba4be9fd84f9d67f2b3d3e5725c231e8f3656e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mathlib topology patch boundary.

This marker records local topology patches without importing the patch corpus.
-/

namespace Formal.Patches.Mathlib.Topology

def conceptualSubdirectories : List String :=
  [ "MetricSpace"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 1 := by
  rfl

end Formal.Patches.Mathlib.Topology
```
