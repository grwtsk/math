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
