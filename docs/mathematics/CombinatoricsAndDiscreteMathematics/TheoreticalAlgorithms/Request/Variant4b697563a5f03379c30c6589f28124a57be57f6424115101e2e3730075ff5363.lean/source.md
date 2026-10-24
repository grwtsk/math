# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant4b697563a5f03379c30c6589f28124a57be57f6424115101e2e3730075ff5363

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66725dc8a4af7f4d28cc10ab9ba8d0b81557e740` · SHA-256 `0b420f5efc66ffc4f69630bdd3d2a8c32603f215b37eb821c7456301b6dd39bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Request.Variant18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39","mathematical_subject":"Computation.DataStructures","original_sha256":"18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Surgery/Request.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Surgery.Boundary

/-! # Explicit surgery requests -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Request.Variant18f6f6cf981d813fb69705dd6c776bbf5ee31984e8f99b8ad7d498566d44bf39

namespace Mathematics.Surgery

structure Request where
  id : SurgeryRequestId
  boundary : BoundaryObservation
  preservedInvariants : List String
  changedInvariants : List String
  lostInvariants : List String
  authority : String := "candidate"
  deriving DecidableEq, Repr

end Mathematics.Surgery
```
