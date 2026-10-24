# Complete source: GRWTSK.Algebra.LinearAlgebra.OrderedMinors.Variant0ff21dcbfa5b5352fb05b7c88551678906be2f6f7c7c75b0c304c4818f53af67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42ce1c4294bbc3ab9839fe92308a636559777cdf` · SHA-256 `243b9a4b9a5f7b9c9586dcb66aea35ea3a43b5c053ac471eae5b5938223e66c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ColumnSubmatrix.Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ColumnSubmatrix.Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"bae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/Grassmannian/OrderedMinors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Order.Hom.Basic

/-!
# Ordered maximal minors and row-basis gauge

Column selection is defined on arbitrary index maps. Increasing selections give
ordered maximal minors. Positivity predicates here do not assert full row rank:
a nonzero minor witness and the subspace/Grassmannian adapter remain separate.
In particular, a universal predicate over empty selections can be vacuous.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ColumnSubmatrix.Variantbae34110a40ef5512173d8ea63439b48439d1e7c7881c25e5895e45daf18f6c0

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {k n : ℕ}

/-- Select `k` columns in their supplied order, retaining all `k` rows. -/
def columnSubmatrix (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n) :
    Matrix (Fin k) (Fin k) ℝ :=
  fun i j => A i (c j)

/-- The determinant of an explicitly ordered column selection. -/
def columnMinor (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n) : ℝ :=
  Matrix.det (columnSubmatrix A c)

/-- An ordered maximal minor uses an increasing column selection. -/
def orderedMinor (A : Matrix (Fin k) (Fin n) ℝ) (I : Fin k ↪o Fin n) : ℝ :=
  columnMinor A I

/-- Nonnegativity of all increasing maximal minors, without an implicit rank claim. -/
def AllOrderedMinorsNonneg (A : Matrix (Fin k) (Fin n) ℝ) : Prop :=
  ∀ I : Fin k ↪o Fin n, 0 ≤ orderedMinor A I

/-- Strict positivity of all increasing maximal minors, without an implicit rank claim. -/
def AllOrderedMinorsPos (A : Matrix (Fin k) (Fin n) ℝ) : Prop :=
  ∀ I : Fin k ↪o Fin n, 0 < orderedMinor A I

/-- Strict ordered-minor positivity implies ordered-minor nonnegativity. -/
theorem allOrderedMinorsNonneg_of_pos {A : Matrix (Fin k) (Fin n) ℝ}
    (h : AllOrderedMinorsPos A) : AllOrderedMinorsNonneg A := by
  intro I
  exact le_of_lt (h I)

/-- Column selection commutes with an arbitrary left matrix multiplication. -/
theorem columnSubmatrix_mul_left (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n) :
    columnSubmatrix (B * A) c = B * columnSubmatrix A c := by
  ext i j
  rfl

/-- Every maximal minor has the same determinant gauge under a row change. -/
theorem columnMinor_mul_left (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n) :
    columnMinor (B * A) c = Matrix.det B * columnMinor A c := by
  unfold columnMinor
  rw [columnSubmatrix_mul_left, Matrix.det_mul]

/-- The row-change gauge law for increasing selections. -/
theorem orderedMinor_mul_left (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (I : Fin k ↪o Fin n) :
    orderedMinor (B * A) I = Matrix.det B * orderedMinor A I :=
  columnMinor_mul_left B A I

/-- A nonsingular row change preserves the vanishing pattern of maximal minors. -/
theorem orderedMinor_mul_left_eq_zero_iff (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (hB : Matrix.det B ≠ 0)
    (I : Fin k ↪o Fin n) :
    orderedMinor (B * A) I = 0 ↔ orderedMinor A I = 0 := by
  rw [orderedMinor_mul_left, mul_eq_zero]
  simp [hB]

/-- Positive-determinant row changes preserve and reflect ordered-minor positivity. -/
theorem allOrderedMinorsPos_mul_left_iff (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (hB : 0 < Matrix.det B) :
    AllOrderedMinorsPos (B * A) ↔ AllOrderedMinorsPos A := by
  constructor
  · intro h I
    have hI := h I
    rw [orderedMinor_mul_left] at hI
    exact (mul_pos_iff_of_pos_left hB).mp hI
  · intro h I
    rw [orderedMinor_mul_left]
    exact mul_pos hB (h I)

/-- Positive-determinant row changes preserve and reflect nonnegativity. -/
theorem allOrderedMinorsNonneg_mul_left_iff (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (hB : 0 < Matrix.det B) :
    AllOrderedMinorsNonneg (B * A) ↔ AllOrderedMinorsNonneg A := by
  constructor
  · intro h I
    have hI := h I
    rw [orderedMinor_mul_left] at hI
    exact (mul_nonneg_iff_of_pos_left hB).mp hI
  · intro h I
    rw [orderedMinor_mul_left]
    exact mul_nonneg (le_of_lt hB) (h I)

end

end FormalResearch.PositiveAtlas.Grassmannian
```
