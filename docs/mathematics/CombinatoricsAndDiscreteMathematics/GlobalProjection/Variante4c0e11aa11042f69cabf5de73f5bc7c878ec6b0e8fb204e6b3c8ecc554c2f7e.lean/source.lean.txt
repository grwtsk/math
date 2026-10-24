import BitMatrix.FiniteField.Galois
import Mathlib.Data.Finset.Sort

/-!
# Absolute row and column loci for binary matrices

A `MatrixLocus m n` is a pair of finite sets in the original `Fin m` and
`Fin n` coordinate frames.  Local indices are enumerated increasingly, and
the embeddings below retain the exact global index.  They never create an
independent coordinate universe.
-/

namespace BitMatrix.Geometry

/-- An exact set of global row and column coordinates. -/
structure MatrixLocus (m n : Nat) where
  rows : Finset (Fin m)
  columns : Finset (Fin n)
  deriving DecidableEq

namespace MatrixLocus

variable {m n : Nat}

/-- Increasing embedding of local row positions into the global row frame. -/
def rowEmbed (L : MatrixLocus m n) : Fin L.rows.card ↪ Fin m :=
  (L.rows.orderEmbOfFin rfl).toEmbedding

/-- Increasing embedding of local column positions into the global column frame. -/
def columnEmbed (L : MatrixLocus m n) : Fin L.columns.card ↪ Fin n :=
  (L.columns.orderEmbOfFin rfl).toEmbedding

@[simp]
theorem rowEmbed_mem (L : MatrixLocus m n) (i : Fin L.rows.card) :
    L.rowEmbed i ∈ L.rows :=
  L.rows.orderEmbOfFin_mem rfl i

@[simp]
theorem columnEmbed_mem (L : MatrixLocus m n) (j : Fin L.columns.card) :
    L.columnEmbed j ∈ L.columns :=
  L.columns.orderEmbOfFin_mem rfl j

theorem rowEmbed_injective (L : MatrixLocus m n) :
    Function.Injective L.rowEmbed :=
  L.rowEmbed.injective

theorem columnEmbed_injective (L : MatrixLocus m n) :
    Function.Injective L.columnEmbed :=
  L.columnEmbed.injective

/-- Locate a global row in the local enumeration when it belongs to the locus. -/
def localRow? (L : MatrixLocus m n) (i : Fin m) : Option (Fin L.rows.card) :=
  if h : i ∈ L.rows then
    some ((L.rows.orderIsoOfFin rfl).symm ⟨i, h⟩)
  else
    none

/-- Locate a global column in the local enumeration when selected. -/
def localColumn? (L : MatrixLocus m n) (j : Fin n) :
    Option (Fin L.columns.card) :=
  if h : j ∈ L.columns then
    some ((L.columns.orderIsoOfFin rfl).symm ⟨j, h⟩)
  else
    none

@[simp]
theorem localRow?_rowEmbed (L : MatrixLocus m n) (i : Fin L.rows.card) :
    L.localRow? (L.rowEmbed i) = some i := by
  simp only [localRow?, L.rowEmbed_mem, ↓reduceDIte, Option.some.injEq]
  have hsub :
      (⟨L.rowEmbed i, L.rowEmbed_mem i⟩ : L.rows) =
        L.rows.orderIsoOfFin rfl i := by
    apply Subtype.ext
    rfl
  rw [hsub]
  exact (L.rows.orderIsoOfFin rfl).symm_apply_apply i

@[simp]
theorem localColumn?_columnEmbed
    (L : MatrixLocus m n) (j : Fin L.columns.card) :
    L.localColumn? (L.columnEmbed j) = some j := by
  simp only [localColumn?, L.columnEmbed_mem, ↓reduceDIte, Option.some.injEq]
  have hsub :
      (⟨L.columnEmbed j, L.columnEmbed_mem j⟩ : L.columns) =
        L.columns.orderIsoOfFin rfl j := by
    apply Subtype.ext
    rfl
  rw [hsub]
  exact (L.columns.orderIsoOfFin rfl).symm_apply_apply j

theorem localRow?_eq_none_iff (L : MatrixLocus m n) (i : Fin m) :
    L.localRow? i = none ↔ i ∉ L.rows := by
  simp [localRow?]

theorem localColumn?_eq_none_iff (L : MatrixLocus m n) (j : Fin n) :
    L.localColumn? j = none ↔ j ∉ L.columns := by
  simp [localColumn?]

theorem localRow?_eq_some_iff
    (L : MatrixLocus m n) (i : Fin m) (a : Fin L.rows.card) :
    L.localRow? i = some a ↔ L.rowEmbed a = i := by
  constructor
  · intro h
    by_cases hi : i ∈ L.rows
    · simp only [localRow?, hi, ↓reduceDIte, Option.some.injEq] at h
      subst a
      exact congrArg Subtype.val
        ((L.rows.orderIsoOfFin rfl).apply_symm_apply ⟨i, hi⟩)
    · simp [localRow?, hi] at h
  · intro h
    subst i
    exact L.localRow?_rowEmbed a

theorem localColumn?_eq_some_iff
    (L : MatrixLocus m n) (j : Fin n) (b : Fin L.columns.card) :
    L.localColumn? j = some b ↔ L.columnEmbed b = j := by
  constructor
  · intro h
    by_cases hj : j ∈ L.columns
    · simp only [localColumn?, hj, ↓reduceDIte, Option.some.injEq] at h
      subst b
      exact congrArg Subtype.val
        ((L.columns.orderIsoOfFin rfl).apply_symm_apply ⟨j, hj⟩)
    · simp [localColumn?, hj] at h
  · intro h
    subst j
    exact L.localColumn?_columnEmbed b

theorem rowEmbed_range (L : MatrixLocus m n) :
    Set.range L.rowEmbed = L.rows := by
  exact L.rows.range_orderEmbOfFin rfl

theorem columnEmbed_range (L : MatrixLocus m n) :
    Set.range L.columnEmbed = L.columns := by
  exact L.columns.range_orderEmbOfFin rfl

/-! ## Row-major runtime offsets -/

/-- Recover the global matrix coordinate represented by a row-major offset. -/
def coordinateOfOffset (k : Fin (m * n)) :
    Fin m × Fin n :=
  (BitMatrix.FiniteField.rowMajorIndexEquiv m n).symm k

@[simp]
theorem coordinateOfOffset_flatIdx
    (i : Fin m) (j : Fin n) :
    coordinateOfOffset (BitMatrix.ArrayBacked.flatIdx i j) = (i, j) := by
  unfold coordinateOfOffset
  rw [← BitMatrix.FiniteField.rowMajorIndexEquiv_apply]
  exact Equiv.symm_apply_apply _ _

/--
The exact row-major implementation offsets whose decoded global coordinates
lie in both components of the formal matrix locus.
-/
def rowMajorOffsets (L : MatrixLocus m n) : Finset (Fin (m * n)) :=
  Finset.univ.filter fun k =>
    (coordinateOfOffset k).1 ∈ L.rows ∧
      (coordinateOfOffset k).2 ∈ L.columns

theorem mem_rowMajorOffsets_iff
    (L : MatrixLocus m n) (k : Fin (m * n)) :
    k ∈ L.rowMajorOffsets ↔
      (coordinateOfOffset k).1 ∈ L.rows ∧
        (coordinateOfOffset k).2 ∈ L.columns := by
  simp [rowMajorOffsets]

@[simp]
theorem flatIdx_mem_rowMajorOffsets_iff
    (L : MatrixLocus m n) (i : Fin m) (j : Fin n) :
    BitMatrix.ArrayBacked.flatIdx i j ∈ L.rowMajorOffsets ↔
      i ∈ L.rows ∧ j ∈ L.columns := by
  simp [mem_rowMajorOffsets_iff]

end MatrixLocus
end BitMatrix.Geometry
