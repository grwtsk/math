# Complete source: GRWTSK.Algebra.LinearAlgebra.Encoding.Variant9faeba656fc08832f22e760b79f85458e1ca7f2a3a4edaa7501db753b2594581

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b412d6240587574d3e63b0aabdda60962d06c67` · SHA-256 `7ea42cea32d1e11e0a9cf738de8c9003c255456d9c5cc75e58fad4b36e58ea30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RowMajorBits.Variantb5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RowMajorBits.Variantb5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Matrix/Encoding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Matrix


namespace GRWTSK.Algebra.LinearAlgebra.RowMajorBits.Variantb5fdee7edc2eb8640ed9bf64c8484fa14d1ad55ce0422289afff58cea5edbe08

namespace Boolean

namespace Matrix

/-- Row-major list of all entries. -/
def rowMajorBits
    (A : Matrix rows cols) :
    List Bool :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).map fun j => A i j

/-- Coordinates of true entries. -/
def support
    (A : Matrix rows cols) :
    List (Fin rows × Fin cols) :=
  (List.finRange rows).flatMap fun i =>
    (List.finRange cols).filterMap fun j =>
      if A i j then some (i, j) else none

/--
Build a matrix from row-major bits, padding absent entries by `false`.

This is a finite combinatorial decoder, not a proof-authority bridge.
-/
def fromBoolList
    (rows cols : Nat)
    (bits : List Bool) :
    Matrix rows cols :=
  fun i j => bits.getD (i.val * cols + j.val) false

theorem rowMajor_length_visible
    (A : Matrix rows cols) :
    (rowMajorBits A).length = (rowMajorBits A).length :=
  rfl

end Matrix

end Boolean
```
