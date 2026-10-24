# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant66d08c82f9237c80c54ef0412d01a549f9ab13931fe7b63614010df788410059

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed4f6d5a17e44e830397ac62f5ba381f3ad6050f` · SHA-256 `66d08c82f9237c80c54ef0412d01a549f9ab13931fe7b63614010df788410059`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Poles.Request
import Think.SourceTree.Legacy.Poles.Carrier
import Think.SourceTree.Legacy.Poles.Lowering
import Think.SourceTree.Legacy.Poles.Trace
import Think.SourceTree.Legacy.Poles.Compact
import Think.SourceTree.Legacy.Poles.Classifier
import Think.SourceTree.Legacy.Poles.Scheduler
import Think.SourceTree.Legacy.Poles.Cluster
import Think.SourceTree.Legacy.Poles.Boundary
import Think.SourceTree.Legacy.Poles.CompactPoleLaw

set_option autoImplicit false

namespace Think.Poles

def familyCounts : List Nat :=
  [ Request.placements.length
  , Carrier.placements.length
  , Lowering.placements.length
  , Trace.placements.length
  , Compact.placements.length
  , Classifier.placements.length
  , Scheduler.placements.length
  , Cluster.placements.length
  , Boundary.placements.length
  ]

theorem familyCounts_sum :
    familyCounts.sum = 61 := by
  rfl

end Think.Poles
```
