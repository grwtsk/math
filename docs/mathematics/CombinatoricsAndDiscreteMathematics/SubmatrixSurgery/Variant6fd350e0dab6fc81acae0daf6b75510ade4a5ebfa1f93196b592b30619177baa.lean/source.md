# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SubmatrixSurgery.Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6b983c4e2263fb559e08f36057a2d006a274988` · SHA-256 `508600d99ce57fb0c55a794b68db296ccdff7c6461a73084fbe97a540bf2a079`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.BinarySubmatrixSurgery.Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.BinarySubmatrixSurgery.Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/SubmatrixSurgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.GlobalProjection

/-!
# Exact declarative submatrix surgery

Extraction and implantation use the ordered global embeddings supplied by a
`MatrixLocus`.  Payload length and index order are therefore explicit.  The
round-trip theorem says that extracting an implanted replacement returns that
replacement exactly, while `implantSubmatrix_outside` proves the complement
unchanged.  No local invertibility or row/column property is promoted to a
global action-matrix certificate without an additional proof.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.BinarySubmatrixSurgery.Variante3f9f1c997e2b92e95ed647e7d20dcebcdc01cbdb5f85e4df09dcb8469959b4a

namespace BinMat

variable {m n : Nat}

/-- Extract a selected matrix block using exact global coordinate embeddings. -/
def extractSubmatrix (A : BinMat m n) (L : MatrixLocus m n) :
    BinMat L.rows.card L.columns.card :=
  fun i j => A (L.rowEmbed i) (L.columnEmbed j)

@[simp]
theorem extractSubmatrix_apply
    (A : BinMat m n) (L : MatrixLocus m n)
    (i : Fin L.rows.card) (j : Fin L.columns.card) :
    extractSubmatrix A L i j = A (L.rowEmbed i) (L.columnEmbed j) :=
  rfl

/-- Implant a local replacement, falling back to `A` outside the exact locus. -/
def implantSubmatrix
    (A : BinMat m n) (L : MatrixLocus m n)
    (replacement : BinMat L.rows.card L.columns.card) : BinMat m n :=
  fun i j =>
    match L.localRow? i, L.localColumn? j with
    | some a, some b => replacement a b
    | _, _ => A i j

@[simp]
theorem implantSubmatrix_inside
    (A : BinMat m n) (L : MatrixLocus m n)
    (replacement : BinMat L.rows.card L.columns.card)
    (i : Fin L.rows.card) (j : Fin L.columns.card) :
    implantSubmatrix A L replacement (L.rowEmbed i) (L.columnEmbed j) =
      replacement i j := by
  simp [implantSubmatrix]

/-- Extraction after implantation is the identity on local replacements. -/
@[simp]
theorem extractSubmatrix_implantSubmatrix
    (A : BinMat m n) (L : MatrixLocus m n)
    (replacement : BinMat L.rows.card L.columns.card) :
    extractSubmatrix (implantSubmatrix A L replacement) L = replacement := by
  apply BinMat.ext
  intro i j
  simp

/-- Reimplanting the extracted original block does not change the matrix. -/
@[simp]
theorem implantSubmatrix_extractSubmatrix
    (A : BinMat m n) (L : MatrixLocus m n) :
    implantSubmatrix A L (extractSubmatrix A L) = A := by
  apply BinMat.ext
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
    (A : BinMat m n) (L : MatrixLocus m n)
    (replacement : BinMat L.rows.card L.columns.card)
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
    (A : BinMat m n) (L : MatrixLocus m n)
    (first second : BinMat L.rows.card L.columns.card) :
    implantSubmatrix (implantSubmatrix A L first) L second =
      implantSubmatrix A L second := by
  apply BinMat.ext
  intro i j
  unfold implantSubmatrix
  cases L.localRow? i <;> cases L.localColumn? j <;> rfl

/-- Coordinates on which two binary matrices differ. -/
def differenceSupport (A B : BinMat m n) : Finset (Fin m × Fin n) :=
  Finset.univ.filter fun ij => A ij.1 ij.2 ≠ B ij.1 ij.2

theorem mem_differenceSupport_iff (A B : BinMat m n) (i : Fin m) (j : Fin n) :
    (i, j) ∈ differenceSupport A B ↔ A i j ≠ B i j := by
  simp [differenceSupport]

/-- Implantation can change entries only inside the selected row/column locus. -/
theorem implant_differenceSupport_inside
    (A : BinMat m n) (L : MatrixLocus m n)
    (replacement : BinMat L.rows.card L.columns.card)
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
def RowUnique (A : BinMat m n) : Prop :=
  ∀ i, ∃! j, A i j = true

/-- Column uniqueness for Boolean action matrices. -/
def ColumnUnique (A : BinMat m n) : Prop :=
  ∀ j, ∃! i, A i j = true

end BinMat

/-- A binary submatrix replacement with its exact global complement theorem. -/
structure BinarySubmatrixSurgery
    {m n : Nat} (A : BinMat m n) (L : MatrixLocus m n) where
  replacement : BinMat L.rows.card L.columns.card
  result : BinMat m n
  result_spec : result = BinMat.implantSubmatrix A L replacement
  extract_result : BinMat.extractSubmatrix result L = replacement
  outside_unchanged :
    ∀ i j, i ∉ L.rows ∨ j ∉ L.columns → result i j = A i j

namespace BinarySubmatrixSurgery

variable {m n : Nat} {A : BinMat m n} {L : MatrixLocus m n}

/-- Canonical surgery generated by a replacement block. -/
def replace (A : BinMat m n) (L : MatrixLocus m n)
    (replacement : BinMat L.rows.card L.columns.card) :
    BinarySubmatrixSurgery A L where
  replacement := replacement
  result := BinMat.implantSubmatrix A L replacement
  result_spec := rfl
  extract_result := BinMat.extractSubmatrix_implantSubmatrix A L replacement
  outside_unchanged := BinMat.implantSubmatrix_outside A L replacement

@[simp]
theorem replace_result (A : BinMat m n) (L : MatrixLocus m n)
    (replacement : BinMat L.rows.card L.columns.card) :
    (replace A L replacement).result =
      BinMat.implantSubmatrix A L replacement :=
  rfl

theorem difference_support_inside (S : BinarySubmatrixSurgery A L)
    {i : Fin m} {j : Fin n}
    (h : (i, j) ∈ BinMat.differenceSupport S.result A) :
    i ∈ L.rows ∧ j ∈ L.columns := by
  rw [S.result_spec] at h
  exact BinMat.implant_differenceSupport_inside A L S.replacement h

end BinarySubmatrixSurgery

/-- A square surgery does not inherit permutation-matrix invariants for free;
this certificate carries both required proofs explicitly. -/
structure CertifiedActionMatrixSurgery
    {n : Nat} (A : BinMat n n) (L : MatrixLocus n n)
    extends BinarySubmatrixSurgery A L where
  rowUnique : BinMat.RowUnique result
  columnUnique : BinMat.ColumnUnique result

/-! ## Array-backed refinement -/

namespace BinMatMut

variable {m n : Nat}

/--
Reify a declarative matrix in the existing row-major array representation.
This is an executable representation boundary; mathematical surgery remains
defined only once, by `BinMat.implantSubmatrix` above.
-/
def ofDecl (A : BinMat m n) : BinMatMut m n :=
  ⟨Array.ofFn (BinMatGalois.flattenEquiv m n A), by simp⟩

@[simp]
theorem toDecl_ofDecl (A : BinMat m n) :
    (ofDecl A).toDecl = A := by
  apply BinMat.ext
  intro i j
  simp [ofDecl, toDecl, get, BinMatGalois.flattenEquiv_apply_flatIdx]

/--
Executable submatrix replacement obtained by reifying the single declarative
specification.  Its theorem below is the refinement boundary; array equality
or proof-field equality is never used as the observational semantics.
-/
def implantSubmatrix
    (A : BinMatMut m n) (L : MatrixLocus m n)
    (replacement : BinMatMut L.rows.card L.columns.card) :
    BinMatMut m n :=
  ofDecl (BinMat.implantSubmatrix A.toDecl L replacement.toDecl)

@[simp]
theorem implantSubmatrix_spec
    (A : BinMatMut m n) (L : MatrixLocus m n)
    (replacement : BinMatMut L.rows.card L.columns.card) :
    (implantSubmatrix A L replacement).toDecl =
      BinMat.implantSubmatrix A.toDecl L replacement.toDecl := by
  simp [implantSubmatrix]

end BinMatMut

/--
A proof-bearing connection between one row-major implementation surgery and
the canonical declarative surgery on its `toDecl` observations.
-/
structure BinMatMutSurgeryRefinement
    {m n : Nat} (A : BinMatMut m n) (L : MatrixLocus m n) where
  replacement : BinMatMut L.rows.card L.columns.card
  result : BinMatMut m n
  declarative : BinarySubmatrixSurgery A.toDecl L
  replacement_refines : replacement.toDecl = declarative.replacement
  result_refines : result.toDecl = declarative.result

namespace BinMatMutSurgeryRefinement

variable {m n : Nat}

/-- Canonical executable refinement of a replacement block. -/
def replace
    (A : BinMatMut m n) (L : MatrixLocus m n)
    (replacement : BinMatMut L.rows.card L.columns.card) :
    BinMatMutSurgeryRefinement A L where
  replacement := replacement
  result := BinMatMut.implantSubmatrix A L replacement
  declarative := BinarySubmatrixSurgery.replace A.toDecl L replacement.toDecl
  replacement_refines := rfl
  result_refines := by
    simp [BinarySubmatrixSurgery.replace_result]

@[simp]
theorem replace_result_refines
    (A : BinMatMut m n) (L : MatrixLocus m n)
    (replacement : BinMatMut L.rows.card L.columns.card) :
    (replace A L replacement).result.toDecl =
      BinMat.implantSubmatrix A.toDecl L replacement.toDecl := by
  simp [replace]

end BinMatMutSurgeryRefinement
```
