# Complete source: GRWTSK.Algebra.LinearAlgebra.Update.Variant7abb4957d8951d28f857f2b620214acbccf42ff5f0d14bc67f0032db3095396f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `007df0e2ec1c328cee1729bf19a6772900212988` · SHA-256 `62b52736adb0a791192f086586d19e1e88bbbe6da73f5ca9814db84f9d370b3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Set.Variant1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Set.Variant1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Matrix/Update.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Core

/-!
# Local BooleanMatrix updates
-/


namespace GRWTSK.Algebra.LinearAlgebra.Set.Variant1f9358c5c3851fc9073cbabc05cd7edb3f41ab2a77b88ac96e28c8a1eaeb97cd

namespace BooleanMatrix
namespace Matrix

/-- Replace one matrix entry. -/
def set
    (matrix : Matrix)
    (targetRow targetColumn : Nat)
    (value : Bool) :
    Matrix :=
  fun row column =>
    if row = targetRow ∧ column = targetColumn then
      value
    else
      matrix row column

@[simp]
theorem set_target
    (matrix : Matrix)
    (row column : Nat)
    (value : Bool) :
    set matrix row column value row column = value := by
  simp [set]

theorem set_other
    (matrix : Matrix)
    (targetRow targetColumn row column : Nat)
    (value : Bool)
    (different :
      row ≠ targetRow ∨ column ≠ targetColumn) :
    set matrix targetRow targetColumn value row column =
      matrix row column := by
  unfold set
  split
  · rename_i equal
    exact False.elim <|
      different.elim
        (fun hrow => hrow equal.1)
        (fun hcolumn => hcolumn equal.2)
  · rfl

end Matrix
end BooleanMatrix
```
