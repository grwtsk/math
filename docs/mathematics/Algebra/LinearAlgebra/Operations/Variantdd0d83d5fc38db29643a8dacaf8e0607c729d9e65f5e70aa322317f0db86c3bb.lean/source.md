# Complete source: GRWTSK.Algebra.LinearAlgebra.Operations.Variantdd0d83d5fc38db29643a8dacaf8e0607c729d9e65f5e70aa322317f0db86c3bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31555a320f83104dacc36a211274373c777f31a4` · SHA-256 `41b4aa5d8ef8d1e9f35ad1efc4d1801b01d40041071ff6718048fe3ff8c8af09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixZeros.Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixZeros.Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Matrix/Operations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Matrix


namespace GRWTSK.Algebra.LinearAlgebra.MatrixZeros.Variant0e64841b1192e464507be73ba6703093aa426f98415cc71107d04f52c59602d1

namespace Boolean

/-- The all-zero Boolean matrix. -/
def Matrix.zeros : Matrix rows cols :=
  fun _ _ => false

/-- The all-one Boolean matrix. -/
def Matrix.ones : Matrix rows cols :=
  fun _ _ => true

/-- Pointwise Boolean disjunction of matrices. -/
def Matrix.join
    (A B : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => A i j || B i j

/-- Pointwise Boolean conjunction of matrices. -/
def Matrix.meet
    (A B : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => A i j && B i j

/-- Pointwise Boolean complement of a matrix. -/
def Matrix.compl
    (A : Matrix rows cols) :
    Matrix rows cols :=
  fun i j => !(A i j)

/-- Transpose a Boolean matrix. -/
def Matrix.transpose
    (A : Matrix rows cols) :
    Matrix cols rows :=
  fun i j => A j i

/-- Change exactly one entry. -/
def Matrix.set
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    Matrix rows cols :=
  fun i' j' =>
    if i' = i then
      if j' = j then value else A i' j'
    else
      A i' j'

@[simp] theorem Matrix.entry_zeros
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.zeros : Matrix rows cols) i j = false :=
  rfl

@[simp] theorem Matrix.entry_ones
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.ones : Matrix rows cols) i j = true :=
  rfl

@[simp] theorem Matrix.entry_join
    (A B : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.join A B) i j =
      (Matrix.entry A i j || Matrix.entry B i j) :=
  rfl

@[simp] theorem Matrix.entry_meet
    (A B : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.meet A B) i j =
      (Matrix.entry A i j && Matrix.entry B i j) :=
  rfl

@[simp] theorem Matrix.entry_compl
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    Matrix.entry (Matrix.compl A) i j =
      !(Matrix.entry A i j) :=
  rfl

@[simp] theorem Matrix.entry_transpose
    (A : Matrix rows cols)
    (i : Fin cols)
    (j : Fin rows) :
    Matrix.entry (Matrix.transpose A) i j =
      Matrix.entry A j i :=
  rfl

@[simp] theorem Matrix.transpose_transpose
    (A : Matrix rows cols) :
    Matrix.transpose (Matrix.transpose A) = A := by
  funext i
  funext j
  rfl

@[simp] theorem Matrix.entry_set_same
    (A : Matrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    Matrix.entry (Matrix.set A i j value) i j = value := by
  simp [Matrix.entry, Matrix.set]

end Boolean
```
