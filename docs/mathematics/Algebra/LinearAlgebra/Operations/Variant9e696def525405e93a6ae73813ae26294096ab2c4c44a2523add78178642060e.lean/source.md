# Complete source: GRWTSK.Algebra.LinearAlgebra.Operations.Variant9e696def525405e93a6ae73813ae26294096ab2c4c44a2523add78178642060e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e45c4dd51828cc482e2484aa7821ad4b664104e` · SHA-256 `1d9b2dbfe0b02b8cc69feb3dafb115799c31f870de804cc713d2d77f7bca6213`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BoolMatrixZeros.Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BoolMatrixZeros.Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Matrix/Operations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Matrix.Basic


namespace GRWTSK.Algebra.LinearAlgebra.BoolMatrixZeros.Variant2b046d6406509445f4df3261d70103847b7c5ccfcfef9081aaa12568d9ab2bdf

namespace Surface.Boolean

/-- The all-zero Boolean matrix. -/
def BoolMatrix.zeros : BoolMatrix rows cols :=
  fun _ _ => false

/-- The all-one Boolean matrix. -/
def BoolMatrix.ones : BoolMatrix rows cols :=
  fun _ _ => true

/-- Pointwise Boolean disjunction of matrices. -/
def BoolMatrix.join
    (A B : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => A i j || B i j

/-- Pointwise Boolean conjunction of matrices. -/
def BoolMatrix.meet
    (A B : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => A i j && B i j

/-- Pointwise Boolean complement of a matrix. -/
def BoolMatrix.compl
    (A : BoolMatrix rows cols) :
    BoolMatrix rows cols :=
  fun i j => !(A i j)

/-- Transpose a Boolean matrix. -/
def BoolMatrix.transpose
    (A : BoolMatrix rows cols) :
    BoolMatrix cols rows :=
  fun i j => A j i

/-- Change exactly one entry. -/
def BoolMatrix.set
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    BoolMatrix rows cols :=
  fun i' j' =>
    if i' = i then
      if j' = j then value else A i' j'
    else
      A i' j'

@[simp] theorem BoolMatrix.entry_zeros
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.zeros : BoolMatrix rows cols) i j = false :=
  rfl

@[simp] theorem BoolMatrix.entry_ones
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.ones : BoolMatrix rows cols) i j = true :=
  rfl

@[simp] theorem BoolMatrix.entry_join
    (A B : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.join A B) i j =
      (BoolMatrix.entry A i j || BoolMatrix.entry B i j) :=
  rfl

@[simp] theorem BoolMatrix.entry_meet
    (A B : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.meet A B) i j =
      (BoolMatrix.entry A i j && BoolMatrix.entry B i j) :=
  rfl

@[simp] theorem BoolMatrix.entry_compl
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols) :
    BoolMatrix.entry (BoolMatrix.compl A) i j =
      !(BoolMatrix.entry A i j) :=
  rfl

@[simp] theorem BoolMatrix.entry_transpose
    (A : BoolMatrix rows cols)
    (i : Fin cols)
    (j : Fin rows) :
    BoolMatrix.entry (BoolMatrix.transpose A) i j =
      BoolMatrix.entry A j i :=
  rfl

@[simp] theorem BoolMatrix.transpose_transpose
    (A : BoolMatrix rows cols) :
    BoolMatrix.transpose (BoolMatrix.transpose A) = A := by
  funext i
  funext j
  rfl

@[simp] theorem BoolMatrix.entry_set_same
    (A : BoolMatrix rows cols)
    (i : Fin rows)
    (j : Fin cols)
    (value : Bool) :
    BoolMatrix.entry (BoolMatrix.set A i j value) i j = value := by
  simp [BoolMatrix.entry, BoolMatrix.set]

end Surface.Boolean
```
