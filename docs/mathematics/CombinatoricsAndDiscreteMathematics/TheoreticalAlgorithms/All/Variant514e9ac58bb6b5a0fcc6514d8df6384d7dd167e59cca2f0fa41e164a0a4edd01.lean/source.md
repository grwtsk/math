# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.All.Variant514e9ac58bb6b5a0fcc6514d8df6384d7dd167e59cca2f0fa41e164a0a4edd01

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d2df878b8f6b0e262638b6b8d4a0e542363f99a` · SHA-256 `7da3a0529eb23eaba0422ba3447edb850fbe7063ddf5f0d16fda2a36238b750e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FamilyCounts.Variant66d08c82f9237c80c54ef0412d01a549f9ab13931fe7b63614010df788410059","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66d08c82f9237c80c54ef0412d01a549f9ab13931fe7b63614010df788410059","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FamilyCounts.Variant66d08c82f9237c80c54ef0412d01a549f9ab13931fe7b63614010df788410059","mathematical_subject":"Computation.DataStructures","original_sha256":"66d08c82f9237c80c54ef0412d01a549f9ab13931fe7b63614010df788410059","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/All.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FamilyCounts.Variant66d08c82f9237c80c54ef0412d01a549f9ab13931fe7b63614010df788410059

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
