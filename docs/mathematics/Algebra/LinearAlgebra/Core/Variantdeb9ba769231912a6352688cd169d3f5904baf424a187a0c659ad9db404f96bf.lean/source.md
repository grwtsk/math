# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variantdeb9ba769231912a6352688cd169d3f5904baf424a187a0c659ad9db404f96bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `267e2b07c03ff24dfab246f9ef90f4699df0d0d8` · SHA-256 `62930bc0c7f99a312e7303d18ec424026f681c252db17ca15e443fb2d4a7ab20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Matrix.Variant8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Matrix.Variant8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Matrix/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std

/-!
# BooleanMatrix carrier

The universal carrier is a Boolean matrix indexed by two natural numbers.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Matrix.Variant8e457ae93b872fb8d8a46389ab0d2d6ee6c6b439146eca88e55d5b434fc42164

namespace BooleanMatrix

/--
The universal Boolean-matrix carrier.

Both dimensions are countably infinite. Finite matrices, streams, chains,
programs, state, data, and metadata can be represented by choosing suitable
regions and encodings.
-/
abbrev Matrix :=
  Nat → Nat → Bool

namespace Matrix

/-- Two matrices are equal when every entry is equal. -/
theorem ext
    {left right : Matrix}
    (h : ∀ row column, left row column = right row column) :
    left = right := by
  funext row column
  exact h row column

/-- The matrix containing `false` at every coordinate. -/
def empty : Matrix :=
  fun _ _ => false

@[simp]
theorem empty_apply (row column : Nat) :
    empty row column = false :=
  rfl

end Matrix

end BooleanMatrix
```
