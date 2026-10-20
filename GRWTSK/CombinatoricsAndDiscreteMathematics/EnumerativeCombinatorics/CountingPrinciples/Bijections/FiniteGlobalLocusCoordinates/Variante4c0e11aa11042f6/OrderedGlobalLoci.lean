/-
OrderedGlobalLoci — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e
Organized SHA-256: 2127b7e397fc48de2533c51341545de9a942984a36b59c274bf7ebc942f57ce8
PMD: 510.7.010.010.010 bijections (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole MatrixLocus rows/columns Finsets, exact increasing bounded embeddings, local optional indices, roundtrip/none/some equivalences and range proofs. Original finite frames and empty loci remain; no independent coordinate universe or arbitrary inverse existence is asserted. -/

import BitMatrix.FiniteField.Galois
import Mathlib.Data.Finset.Sort

/-!
# Absolute row and column loci for binary matrices

A `MatrixLocus m n` is a pair of finite sets in the original `Fin m` and
`Fin n` coordinate frames.  Local indices are enumerated increasingly, and
the embeddings below retain the exact global index.  They never create an
independent coordinate universe.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.FiniteGlobalLocusCoordinates.Variante4c0e11aa11042f6


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


end MatrixLocus

end BitMatrix.Geometry

end GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.Bijections.FiniteGlobalLocusCoordinates.Variante4c0e11aa11042f6
