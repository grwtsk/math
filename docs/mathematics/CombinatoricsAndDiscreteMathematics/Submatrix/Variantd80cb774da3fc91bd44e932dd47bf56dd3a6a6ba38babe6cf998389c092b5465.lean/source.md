# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Submatrix.Variantd80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d9ee3123f42a1a2955379f193b980a44fd3266e6` · SHA-256 `d80cb774da3fc91bd44e932dd47bf56dd3a6a6ba38babe6cf998389c092b5465`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Geometry.GlobalProjection

/-!
# Exact declarative submatrix surgery

Extraction and implantation use the ordered global embeddings supplied by a
`MatrixLocus`.  Payload length and index order are therefore explicit.  The
round-trip theorem says that extracting an implanted replacement returns that
replacement exactly, while `implantSubmatrix_outside` proves the complement
unchanged.  No local invertibility or row/column property is promoted to a
global action-matrix certificate without an additional proof.
-/

namespace BitMatrix

open BitMatrix.Geometry

variable {m n : Nat}

/-- Extract a selected matrix block using exact global coordinate embeddings. -/
def extractSubmatrix (A : BitMatrix m n) (L : MatrixLocus m n) :
    BitMatrix L.rows.card L.columns.card :=
  fun i j => A (L.rowEmbed i) (L.columnEmbed j)

@[simp]
theorem extractSubmatrix_apply
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (i : Fin L.rows.card) (j : Fin L.columns.card) :
    extractSubmatrix A L i j = A (L.rowEmbed i) (L.columnEmbed j) :=
  rfl

/-- Implant a local replacement, falling back to `A` outside the exact locus. -/
def implantSubmatrix
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card) : BitMatrix m n :=
  fun i j =>
    match L.localRow? i, L.localColumn? j with
    | some a, some b => replacement a b
    | _, _ => A i j

@[simp]
theorem implantSubmatrix_inside
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card)
    (i : Fin L.rows.card) (j : Fin L.columns.card) :
    implantSubmatrix A L replacement (L.rowEmbed i) (L.columnEmbed j) =
      replacement i j := by
  simp [implantSubmatrix]

/-- Extraction after implantation is the identity on local replacements. -/
@[simp]
theorem extractSubmatrix_implantSubmatrix
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card) :
    extractSubmatrix (implantSubmatrix A L replacement) L = replacement := by
  apply BitMatrix.ext
  intro i j
  simp

/-- Reimplanting the extracted original block does not change the matrix. -/
@[simp]
theorem implantSubmatrix_extractSubmatrix
    (A : BitMatrix m n) (L : MatrixLocus m n) :
    implantSubmatrix A L (extractSubmatrix A L) = A := by
  apply BitMatrix.ext
  intro i j
  unfold implantSubmatrix
  cases hr : L.localRow? i with
  | none => rfl
  | some a =>
      cases hc : L.localColumn? j with
      | none => rfl
      | some b =>
          simp only
          have hi : L.rowEmbed a = i :=
            (L.localRow?_eq_some_iff i a).mp hr
          have hj : L.columnEmbed b = j :=
            (L.localColumn?_eq_some_iff j b).mp hc
          simp [extractSubmatrix, hi, hj]

/-- An entry outside either selected coordinate set is unchanged. -/
theorem implantSubmatrix_outside
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card)
    (i : Fin m) (j : Fin n)
    (houtside : i ∉ L.rows ∨ j ∉ L.columns) :
    implantSubmatrix A L replacement i j = A i j := by
  rcases houtside with hi | hj
  · have hnone : L.localRow? i = none :=
      (L.localRow?_eq_none_iff i).mpr hi
    simp [implantSubmatrix, hnone]
  · have hnone : L.localColumn? j = none :=
      (L.localColumn?_eq_none_iff j).mpr hj
    unfold implantSubmatrix
    cases L.localRow? i <;> simp [hnone]

/-- A second replacement of the same locus overwrites the first one exactly. -/
theorem implantSubmatrix_overwrite
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (first second : BitMatrix L.rows.card L.columns.card) :
    implantSubmatrix (implantSubmatrix A L first) L second =
      implantSubmatrix A L second := by
  apply BitMatrix.ext
  intro i j
  unfold implantSubmatrix
  cases L.localRow? i <;> cases L.localColumn? j <;> rfl

/-- Coordinates on which two binary matrices differ. -/
def differenceSupport (A B : BitMatrix m n) : Finset (Fin m × Fin n) :=
  Finset.univ.filter fun ij => A ij.1 ij.2 ≠ B ij.1 ij.2

theorem mem_differenceSupport_iff (A B : BitMatrix m n) (i : Fin m) (j : Fin n) :
    (i, j) ∈ differenceSupport A B ↔ A i j ≠ B i j := by
  simp [differenceSupport]

/-- Implantation can change entries only inside the selected row/column locus. -/
theorem implant_differenceSupport_inside
    (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card)
    {i : Fin m} {j : Fin n}
    (h : (i, j) ∈ differenceSupport (implantSubmatrix A L replacement) A) :
    i ∈ L.rows ∧ j ∈ L.columns := by
  have hdiff := (mem_differenceSupport_iff _ _ _ _).mp h
  constructor
  · by_contra hi
    exact hdiff (implantSubmatrix_outside A L replacement i j (Or.inl hi))
  · by_contra hj
    exact hdiff (implantSubmatrix_outside A L replacement i j (Or.inr hj))

/-- Row uniqueness for Boolean action matrices. -/
def RowUnique (A : BitMatrix m n) : Prop :=
  ∀ i, ∃! j, A i j = true

/-- Column uniqueness for Boolean action matrices. -/
def ColumnUnique (A : BitMatrix m n) : Prop :=
  ∀ j, ∃! i, A i j = true

end BitMatrix

namespace BitMatrix.Surgery

open BitMatrix.Geometry

/-- A binary submatrix replacement with its exact global complement theorem. -/
structure SubmatrixSurgery
    {m n : Nat} (A : BitMatrix m n) (L : MatrixLocus m n) where
  replacement : BitMatrix L.rows.card L.columns.card
  result : BitMatrix m n
  result_spec : result = BitMatrix.implantSubmatrix A L replacement
  extract_result : BitMatrix.extractSubmatrix result L = replacement
  outside_unchanged :
    ∀ i j, i ∉ L.rows ∨ j ∉ L.columns → result i j = A i j

namespace SubmatrixSurgery

variable {m n : Nat} {A : BitMatrix m n} {L : MatrixLocus m n}

/-- Canonical surgery generated by a replacement block. -/
def replace (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card) :
    SubmatrixSurgery A L where
  replacement := replacement
  result := BitMatrix.implantSubmatrix A L replacement
  result_spec := rfl
  extract_result := BitMatrix.extractSubmatrix_implantSubmatrix A L replacement
  outside_unchanged := BitMatrix.implantSubmatrix_outside A L replacement

@[simp]
theorem replace_result (A : BitMatrix m n) (L : MatrixLocus m n)
    (replacement : BitMatrix L.rows.card L.columns.card) :
    (replace A L replacement).result =
      BitMatrix.implantSubmatrix A L replacement :=
  rfl

theorem difference_support_inside (S : SubmatrixSurgery A L)
    {i : Fin m} {j : Fin n}
    (h : (i, j) ∈ BitMatrix.differenceSupport S.result A) :
    i ∈ L.rows ∧ j ∈ L.columns := by
  rw [S.result_spec] at h
  exact BitMatrix.implant_differenceSupport_inside A L S.replacement h

end SubmatrixSurgery

/-- A square surgery does not inherit permutation-matrix invariants for free;
this certificate carries both required proofs explicitly. -/
structure CertifiedActionMatrixSurgery
    {n : Nat} (A : BitMatrix n n) (L : MatrixLocus n n)
    extends SubmatrixSurgery A L where
  rowUnique : BitMatrix.RowUnique result
  columnUnique : BitMatrix.ColumnUnique result

end BitMatrix.Surgery

/-! ## Array-backed refinement -/

namespace BitMatrix.ArrayBacked

open BitMatrix.Geometry

variable {m n : Nat}

/--
Reify a declarative matrix in the existing row-major array representation.
This is an executable representation boundary; mathematical surgery remains
defined only once, by `BitMatrix.implantSubmatrix` above.
-/
def ofMatrix (A : BitMatrix m n) : BitMatrix.ArrayBacked m n :=
  ⟨Array.ofFn (BitMatrix.FiniteField.flattenEquiv m n A), by simp⟩

@[simp]
theorem toMatrix_ofMatrix (A : BitMatrix m n) :
    (ofMatrix A).toMatrix = A := by
  apply BitMatrix.ext
  intro i j
  simp [ofMatrix, toMatrix, get, BitMatrix.FiniteField.flattenEquiv_apply_flatIdx]

/--
Executable submatrix replacement obtained by reifying the single declarative
specification.  Its theorem below is the refinement boundary; array equality
or proof-field equality is never used as the observational semantics.
-/
def implantSubmatrix
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    BitMatrix.ArrayBacked m n :=
  ofMatrix (BitMatrix.implantSubmatrix A.toMatrix L replacement.toMatrix)

@[simp]
theorem implantSubmatrix_spec
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    (implantSubmatrix A L replacement).toMatrix =
      BitMatrix.implantSubmatrix A.toMatrix L replacement.toMatrix := by
  simp [implantSubmatrix]

end BitMatrix.ArrayBacked

open BitMatrix.Geometry

/--
A proof-bearing connection between one row-major implementation surgery and
the canonical declarative surgery on its `toMatrix` observations.
-/
structure BitMatrix.Surgery.ArrayBackedRefinement
    {m n : Nat} (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n) where
  replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card
  result : BitMatrix.ArrayBacked m n
  declarative : BitMatrix.Surgery.SubmatrixSurgery A.toMatrix L
  replacement_refines : replacement.toMatrix = declarative.replacement
  result_refines : result.toMatrix = declarative.result

namespace BitMatrix.Surgery.ArrayBackedRefinement

open BitMatrix.Geometry

variable {m n : Nat}

/-- Canonical executable refinement of a replacement block. -/
def replace
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    BitMatrix.Surgery.ArrayBackedRefinement A L where
  replacement := replacement
  result := BitMatrix.ArrayBacked.implantSubmatrix A L replacement
  declarative := BitMatrix.Surgery.SubmatrixSurgery.replace
    A.toMatrix L replacement.toMatrix
  replacement_refines := rfl
  result_refines := by
    simp [BitMatrix.Surgery.SubmatrixSurgery.replace_result]

@[simp]
theorem replace_result_refines
    (A : BitMatrix.ArrayBacked m n) (L : MatrixLocus m n)
    (replacement : BitMatrix.ArrayBacked L.rows.card L.columns.card) :
    (replace A L replacement).result.toMatrix =
      BitMatrix.implantSubmatrix A.toMatrix L replacement.toMatrix := by
  simp [replace]

end BitMatrix.Surgery.ArrayBackedRefinement
```
