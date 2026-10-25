# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Plucker24.Variant7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c2a927df4ba3b0d3121749026127598f87c459a` · SHA-256 `7c1523a188832ddad373a883eb9a8f3afcaa1bbb23f047d44f05c529b64e11e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Determinant-based recognition on the normalized (1,2) chart of Gr(2,4)

The Pluecker relation is proved for actual matrix minors by polynomial algebra.
Conversely, normalized coordinates satisfying that relation are realized by a
unique explicit chart matrix. This is a coordinate-chart theorem, not yet an
identification with Mathlib's quotient-rank Grassmannian or an Atlas quotient.

Matrix indices are zero-based; coordinate names `p12` through `p34` are one-based.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {n : ℕ}

/-- The explicit two-row determinant expansion on columns `i,j`. -/
def minor₂ (A : Matrix (Fin 2) (Fin n) ℝ) (i j : Fin n) : ℝ :=
  A 0 i * A 1 j - A 0 j * A 1 i

/-- The polynomial expansion is the actual determinant, not surrogate coordinates. -/
theorem minor₂_eq_columnMinor (A : Matrix (Fin 2) (Fin n) ℝ) (i j : Fin n) :
    minor₂ A i j = columnMinor A ![i, j] := by
  simp [minor₂, columnMinor, columnSubmatrix, Matrix.det_fin_two]

/-- An increasing two-column determinant is the corresponding explicit minor. -/
theorem orderedMinor_two (A : Matrix (Fin 2) (Fin n) ℝ)
    (I : Fin 2 ↪o Fin n) :
    orderedMinor A I = minor₂ A (I 0) (I 1) := by
  simp [orderedMinor, columnMinor, columnSubmatrix, Matrix.det_fin_two, minor₂]

/-- Alternation is inherited from the determinant expansion. -/
theorem minor₂_swap (A : Matrix (Fin 2) (Fin n) ℝ) (i j : Fin n) :
    minor₂ A j i = -minor₂ A i j := by
  unfold minor₂
  ring

/-- The rank-two Pluecker relation holds without positivity or rank assumptions. -/
theorem minor₂_plucker (A : Matrix (Fin 2) (Fin n) ℝ) (i j l m : Fin n) :
    minor₂ A i l * minor₂ A j m =
      minor₂ A i j * minor₂ A l m + minor₂ A i m * minor₂ A j l := by
  unfold minor₂
  ring

/-- Six coordinates ordered as (12,13,14,23,24,34). -/
@[ext]
structure PluckerCoordinates24 where
  p12 : ℝ
  p13 : ℝ
  p14 : ℝ
  p23 : ℝ
  p24 : ℝ
  p34 : ℝ

namespace PluckerCoordinates24

/-- The independent quadratic compatibility relation. -/
def Compatible (p : PluckerCoordinates24) : Prop :=
  p.p13 * p.p24 = p.p12 * p.p34 + p.p14 * p.p23

/-- Strict positivity of all six specified coordinates. -/
def StrictlyPositive (p : PluckerCoordinates24) : Prop :=
  0 < p.p12 ∧ 0 < p.p13 ∧ 0 < p.p14 ∧ 0 < p.p23 ∧ 0 < p.p24 ∧ 0 < p.p34

/-- Nonnegativity of all six specified coordinates. -/
def Nonnegative (p : PluckerCoordinates24) : Prop :=
  0 ≤ p.p12 ∧ 0 ≤ p.p13 ∧ 0 ≤ p.p14 ∧ 0 ≤ p.p23 ∧ 0 ≤ p.p24 ∧ 0 ≤ p.p34

/-- Extract actual determinants from a two-by-four matrix. -/
def ofMatrix (A : Matrix (Fin 2) (Fin 4) ℝ) : PluckerCoordinates24 :=
  ⟨minor₂ A 0 1, minor₂ A 0 2, minor₂ A 0 3,
    minor₂ A 1 2, minor₂ A 1 3, minor₂ A 2 3⟩

/-- Actual matrix coordinates satisfy the quadratic compatibility relation. -/
theorem ofMatrix_compatible (A : Matrix (Fin 2) (Fin 4) ℝ) :
    (ofMatrix A).Compatible :=
  minor₂_plucker A 0 1 2 3

/-- Six positive pair minors imply positivity for every increasing selection. -/
theorem allOrderedMinorsPos_of_strictlyPositive
    (A : Matrix (Fin 2) (Fin 4) ℝ) (h : (ofMatrix A).StrictlyPositive) :
    AllOrderedMinorsPos A := by
  rcases h with ⟨h12, h13, h14, h23, h24, h34⟩
  have hp : ∀ i j : Fin 4, i < j → 0 < minor₂ A i j := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> simp_all [ofMatrix]
  intro I
  rw [orderedMinor_two]
  exact hp (I 0) (I 1) (I.strictMono (by decide))

/-- The analogous finite-to-ordered bridge on the nonnegative boundary. -/
theorem allOrderedMinorsNonneg_of_nonnegative
    (A : Matrix (Fin 2) (Fin 4) ℝ) (h : (ofMatrix A).Nonnegative) :
    AllOrderedMinorsNonneg A := by
  rcases h with ⟨h12, h13, h14, h23, h24, h34⟩
  have hp : ∀ i j : Fin 4, i < j → 0 ≤ minor₂ A i j := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> simp_all [ofMatrix]
  intro I
  rw [orderedMinor_two]
  exact hp (I 0) (I 1) (I.strictMono (by decide))

end PluckerCoordinates24

/-- Parameters for a chart matrix with its first two columns equal to the identity. -/
@[ext]
structure Chart24 where
  a : ℝ
  b : ℝ
  c : ℝ
  d : ℝ

namespace Chart24

/-- An actual pivot-normalized matrix, with signs chosen for increasing minors. -/
def matrix (x : Chart24) : Matrix (Fin 2) (Fin 4) ℝ :=
  !![1, 0, -x.c, -x.d; 0, 1, x.a, x.b]

/-- Coordinates are extracted as determinants of the constructed matrix. -/
def coordinates (x : Chart24) : PluckerCoordinates24 :=
  PluckerCoordinates24.ofMatrix x.matrix

/-- Direct determinant evaluation of all chart coordinates. -/
theorem coordinates_eq (x : Chart24) :
    x.coordinates = ⟨1, x.a, x.b, x.c, x.d, x.a * x.d - x.b * x.c⟩ := by
  apply PluckerCoordinates24.ext <;>
    simp [coordinates, PluckerCoordinates24.ofMatrix, matrix, minor₂] <;> ring

/-- The pivot minor is exactly one, supplying a concrete nonzero-minor witness. -/
theorem pivot_eq_one (x : Chart24) : columnMinor x.matrix ![0, 1] = 1 := by
  rw [← minor₂_eq_columnMinor]
  simp [minor₂, matrix]

/-- These inequalities are the exact strict-positivity conditions on this chart. -/
def Positive (x : Chart24) : Prop :=
  0 < x.a ∧ 0 < x.b ∧ 0 < x.c ∧ 0 < x.d ∧ 0 < x.a * x.d - x.b * x.c

/-- Chart positivity is equivalent to positivity of all actual coordinates. -/
theorem coordinates_strictlyPositive_iff (x : Chart24) :
    x.coordinates.StrictlyPositive ↔ x.Positive := by
  rw [coordinates_eq]
  simp [PluckerCoordinates24.StrictlyPositive, Positive]

/-- The four parameters can be read back from their determinant coordinates. -/
theorem coordinates_injective : Function.Injective coordinates := by
  intro x y h
  rw [coordinates_eq, coordinates_eq] at h
  apply Chart24.ext
  · exact congrArg PluckerCoordinates24.p13 h
  · exact congrArg PluckerCoordinates24.p14 h
  · exact congrArg PluckerCoordinates24.p23 h
  · exact congrArg PluckerCoordinates24.p24 h

/-- Construct chart parameters directly from four entries of a coordinate tuple. -/
def fromCoordinates (p : PluckerCoordinates24) : Chart24 :=
  ⟨p.p13, p.p14, p.p23, p.p24⟩

/-- The quadratic relation, not an assumed decomposability field, proves recovery. -/
theorem coordinates_fromCoordinates (p : PluckerCoordinates24)
    (hn : p.p12 = 1) (hp : p.Compatible) :
    (fromCoordinates p).coordinates = p := by
  rw [coordinates_eq]
  apply PluckerCoordinates24.ext
  · exact hn.symm
  · rfl
  · rfl
  · rfl
  · rfl
  · change p.p13 * p.p24 - p.p14 * p.p23 = p.p34
    change p.p13 * p.p24 = p.p12 * p.p34 + p.p14 * p.p23 at hp
    rw [hn, one_mul] at hp
    linarith

/-- Every chart returns its own parameters under coordinate recovery. -/
theorem fromCoordinates_coordinates (x : Chart24) :
    fromCoordinates x.coordinates = x := by
  rw [coordinates_eq]
  cases x
  rfl

/-- Normalized compatible coordinates are realized by a unique actual chart matrix. -/
theorem normalized_recognition (p : PluckerCoordinates24) (hn : p.p12 = 1) :
    p.Compatible ↔ ∃! x : Chart24, x.coordinates = p := by
  constructor
  · intro hp
    refine ⟨fromCoordinates p, coordinates_fromCoordinates p hn hp, ?_⟩
    intro y hy
    apply coordinates_injective
    exact hy.trans (coordinates_fromCoordinates p hn hp).symm
  · rintro ⟨x, hx, _⟩
    rw [← hx]
    exact PluckerCoordinates24.ofMatrix_compatible x.matrix

/-- Strict positivity survives the concrete normalized recognition in both directions. -/
theorem positive_normalized_recognition (p : PluckerCoordinates24) (hn : p.p12 = 1) :
    p.Compatible ∧ p.StrictlyPositive ↔
      ∃! x : Chart24, x.Positive ∧ x.coordinates = p := by
  constructor
  · rintro ⟨hp, hpos⟩
    have hx := coordinates_fromCoordinates p hn hp
    have hxp : (fromCoordinates p).Positive := by
      apply (coordinates_strictlyPositive_iff _).mp
      rw [hx]
      exact hpos
    refine ⟨fromCoordinates p, ⟨hxp, hx⟩, ?_⟩
    intro y hy
    apply coordinates_injective
    exact hy.2.trans hx.symm
  · rintro ⟨x, ⟨hxpos, hx⟩, _⟩
    constructor
    · rw [← hx]
      exact PluckerCoordinates24.ofMatrix_compatible x.matrix
    · rw [← hx]
      exact (coordinates_strictlyPositive_iff x).mpr hxpos

end Chart24

end

end FormalResearch.PositiveAtlas.Grassmannian
```
