# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSublists.Variantf11cad543e8ddaa72158b4cc39d35cd836a2fd33dc5180fcef2a3e5f203e9b21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a2665c3dab0717ec8fcb00a5094d6e12d9320aa` · SHA-256 `e0f93ea1716362cf02d816b88486a23e1418a36d171e58dcd0b4c0111163582e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantfbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.List.Variantfbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","mathematical_subject":"Computation.DataStructures","original_sha256":"fbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/list_sublists.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Data.List.Basic

-- this times out with `sublistsFast`

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantfbe2994da43431978d9900c2c3ada674ba56b36f1ea6f3d3bdbf86b29c8a7a15

set_option maxRecDepth 561 in
example : [1, 2, 3].sublists.sublists.length = 256 := rfl

-- TODO(std4#307): until we have the `csimp` lemma in std, this is a sanity check that these two
-- are equal.
example : ([] : List Nat).sublists = [].sublistsFast := rfl
example : [1, 2, 3].sublists = [1, 2, 3].sublistsFast := rfl
```
