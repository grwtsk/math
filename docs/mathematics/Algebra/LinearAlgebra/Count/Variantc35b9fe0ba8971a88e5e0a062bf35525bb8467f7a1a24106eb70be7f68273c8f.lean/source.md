# Complete source: GRWTSK.Algebra.LinearAlgebra.Count.Variantc35b9fe0ba8971a88e5e0a062bf35525bb8467f7a1a24106eb70be7f68273c8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `add1c0e3c638688ee6ca25a2d7d6d53d2dc0772e` · SHA-256 `1de7f1a8c0729300e5830a9ba7fd757eadd4a056382576934fbcb7ce5ded2592`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.TrueCount.Variant315554c91747801d17723e8eb3ab221019b6758b84065f599ea369b5757991f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"315554c91747801d17723e8eb3ab221019b6758b84065f599ea369b5757991f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.TrueCount.Variant315554c91747801d17723e8eb3ab221019b6758b84065f599ea369b5757991f1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"315554c91747801d17723e8eb3ab221019b6758b84065f599ea369b5757991f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Matrix/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Matrix.Encoding
import Boolean.Matrix.Operations


namespace GRWTSK.Algebra.LinearAlgebra.TrueCount.Variant315554c91747801d17723e8eb3ab221019b6758b84065f599ea369b5757991f1

namespace Boolean

namespace Matrix

/-- Number of true entries in row-major order. -/
def trueCount
    (A : Matrix rows cols) :
    Nat :=
  (rowMajorBits A).filter (fun b => b = true) |>.length

theorem trueCount_nonneg
    (A : Matrix rows cols) :
    0 ≤ trueCount A :=
  Nat.zero_le _

theorem trueCount_zeros :
    trueCount (Matrix.zeros : Matrix rows cols) = 0 := by
  simp [trueCount, rowMajorBits, Matrix.zeros]

end Matrix

end Boolean
```
