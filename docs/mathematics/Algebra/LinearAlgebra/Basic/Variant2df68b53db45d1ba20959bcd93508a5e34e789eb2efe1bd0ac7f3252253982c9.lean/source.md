# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant2df68b53db45d1ba20959bcd93508a5e34e789eb2efe1bd0ac7f3252253982c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a01507302aa823e8dc15fab1f9b104db0f3565d` · SHA-256 `39949fa1b8e4a83e2bcb25726bb08ba2035606c8ce62b3d205652545ffe95f9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BitMatrix.Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BitMatrix.Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1","mathematical_subject":"Foundations.Unclassified","original_sha256":"ce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/bit-matrix/BitMatrixElements/Core/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Declarative Boolean-matrix element

The semantic carrier is a total finite function.  Storage and foreign codecs
are refinements and cannot alter this definition.
-/


namespace GRWTSK.Algebra.LinearAlgebra.BitMatrix.Variantce423ffc1c06cbcad115673000714f8775ad1f2a6f71c852afd376343792bfe1

abbrev BitMatrix (m n : Nat) := Fin m → Fin n → Bool

namespace BitMatrix

@[ext] theorem ext
    {left right : BitMatrix m n}
    (pointwise : ∀ i j, left i j = right i j) :
    left = right := by
  funext i j
  exact pointwise i j

def transpose (matrix : BitMatrix m n) : BitMatrix n m :=
  fun i j ↦ matrix j i

def diagonal (value : Fin n → Bool) : BitMatrix n n :=
  fun i j ↦ if i = j then value i else false

@[simp] theorem transpose_apply
    (matrix : BitMatrix m n)
    (i : Fin n)
    (j : Fin m) :
    matrix.transpose i j = matrix j i :=
  rfl

@[simp] theorem transpose_transpose
    (matrix : BitMatrix m n) :
    matrix.transpose.transpose = matrix := by
  ext i j
  rfl

@[simp] theorem diagonal_on
    (value : Fin n → Bool)
    (i : Fin n) :
    diagonal value i i = value i := by
  simp [diagonal]

theorem diagonal_off
    (value : Fin n → Bool)
    {i j : Fin n}
    (different : i ≠ j) :
    diagonal value i j = false := by
  simp [diagonal, different]

end BitMatrix
```
