# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSublists.Variant18fea12b55eb8fd776c5c6cd57eaeb4293e9f2abc7f72d028b56c2ee77b9eb31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4760fabd50c02a1c318827950b805df4b7ab0ab` · SHA-256 `f58e8bea351ff32073fd8df66325436f9176247379fb9cab911adac444ae2fc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.List.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","mathematical_subject":"Computation.DataStructures","original_sha256":"f011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/list_sublists.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.List.Basic

-- this times out with `sublistsFast`

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantf011d03e67929ee071fd14e17cc30fc916157bfe659ec1d9b362e4c43896cc76

set_option maxRecDepth 562 in
example : [1, 2, 3].sublists.sublists.length = 256 := rfl
```
