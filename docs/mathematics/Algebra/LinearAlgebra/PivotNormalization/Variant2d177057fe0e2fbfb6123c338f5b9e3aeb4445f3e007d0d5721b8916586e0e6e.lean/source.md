# Complete source: GRWTSK.Algebra.LinearAlgebra.PivotNormalization.Variant2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b1bc9b94d15beb3cb56d35a83947f51ab06065b` · SHA-256 `2d177057fe0e2fbfb6123c338f5b9e3aeb4445f3e007d0d5721b8916586e0e6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.LinearAlgebra.Matrix.Rank

/-!
# Pivot normalization, row-space recognition, and chart coherence

The row space is the actual linear span of matrix rows. A nonzero selected minor
constructs a normalized frame of that same space, and normalized frames on the
same pivot are equal exactly when their row spaces are equal. Changing a pivot
twice agrees with changing directly. No existence of a nonzero pivot from full
rank is assumed or proved here, and no totalized inverse is used as a valid chart
without its determinant hypothesis.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix

variable {k n : ℕ}

/-- The actual real row subspace, not a relation defined using chart coordinates. -/
def frameRowSpace (A : Matrix (Fin k) (Fin n) ℝ) : Submodule ℝ (Fin n → ℝ) :=
  Submodule.span ℝ (Set.range A.row)

/-- Row-space membership is precisely representation by a row coefficient vector. -/
theorem mem_frameRowSpace_iff (A : Matrix (Fin k) (Fin n) ℝ) (v : Fin n → ℝ) :
    v ∈ frameRowSpace A ↔ ∃ u : Fin k → ℝ, u ᵥ* A = v := by
  rw [frameRowSpace, ← range_vecMulLinear A]
  rfl

/-- Every actual row lies in its row space. -/
theorem row_mem_frameRowSpace (A : Matrix (Fin k) (Fin n) ℝ) (i : Fin k) :
    A.row i ∈ frameRowSpace A :=
  Submodule.subset_span ⟨i, rfl⟩

/-- Left matrix multiplication can only decrease the row subspace. -/
theorem frameRowSpace_mul_left_le (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) : frameRowSpace (B * A) ≤ frameRowSpace A := by
  intro v hv
  obtain ⟨u, hu⟩ := (mem_frameRowSpace_iff (B * A) v).mp hv
  apply (mem_frameRowSpace_iff A v).mpr
  refine ⟨u ᵥ* B, ?_⟩
  rw [Matrix.vecMul_vecMul]
  exact hu

/-- An invertible row change preserves the actual row subspace. -/
theorem frameRowSpace_mul_left_eq (B : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) (hB : Matrix.det B ≠ 0) :
    frameRowSpace (B * A) = frameRowSpace A := by
  apply le_antisymm (frameRowSpace_mul_left_le B A)
  have he : B⁻¹ * (B * A) = A :=
    Matrix.nonsing_inv_mul_cancel_left B A (isUnit_iff_ne_zero.mpr hB)
  calc
    frameRowSpace A = frameRowSpace (B⁻¹ * (B * A)) := congrArg frameRowSpace he.symm
    _ ≤ frameRowSpace (B * A) := frameRowSpace_mul_left_le _ _

/-- Normalize selected columns by their actual matrix inverse. -/
def pivotNormalize (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n) :
    Matrix (Fin k) (Fin n) ℝ :=
  (columnSubmatrix A c)⁻¹ * A

/-- A valid pivot becomes the identity submatrix. -/
theorem pivotNormalize_pivot (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hc : columnMinor A c ≠ 0) :
    columnSubmatrix (pivotNormalize A c) c = 1 := by
  rw [pivotNormalize, columnSubmatrix_mul_left]
  exact Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr hc)

/-- The original frame is reconstructed from its pivot and normalized frame. -/
theorem pivot_mul_pivotNormalize (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hc : columnMinor A c ≠ 0) :
    columnSubmatrix A c * pivotNormalize A c = A :=
  Matrix.mul_nonsing_inv_cancel_left _ _ (isUnit_iff_ne_zero.mpr hc)

/-- Pivot normalization preserves the independently defined row space. -/
theorem frameRowSpace_pivotNormalize (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    frameRowSpace (pivotNormalize A c) = frameRowSpace A := by
  apply le_antisymm (frameRowSpace_mul_left_le _ _)
  calc
    frameRowSpace A = frameRowSpace (columnSubmatrix A c * pivotNormalize A c) :=
      congrArg frameRowSpace (pivot_mul_pivotNormalize A c hc).symm
    _ ≤ frameRowSpace (pivotNormalize A c) := frameRowSpace_mul_left_le _ _

/-- The determinant of the pivot inverse is the inverse of the actual pivot minor. -/
theorem det_pivotInverse (A : Matrix (Fin k) (Fin n) ℝ) (c : Fin k → Fin n)
    (hc : columnMinor A c ≠ 0) :
    Matrix.det ((columnSubmatrix A c)⁻¹) = (columnMinor A c)⁻¹ := by
  have he := congrArg Matrix.det
    (Matrix.mul_nonsing_inv (columnSubmatrix A c) (isUnit_iff_ne_zero.mpr hc))
  rw [Matrix.det_mul, Matrix.det_one] at he
  change columnMinor A c * Matrix.det ((columnSubmatrix A c)⁻¹) = 1 at he
  apply mul_left_cancel₀ hc
  rw [he, mul_inv_cancel₀ hc]

/-- Every selected minor becomes its ratio to the pivot minor. -/
theorem columnMinor_pivotNormalize (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    columnMinor (pivotNormalize A c) d = columnMinor A d / columnMinor A c := by
  rw [pivotNormalize, columnMinor_mul_left, det_pivotInverse A c hc]
  simp only [div_eq_mul_inv, mul_comm]

/-- A second nonzero pivot stays nonzero after normalization at the first. -/
theorem columnMinor_pivotNormalize_ne_zero (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0) (hd : columnMinor A d ≠ 0) :
    columnMinor (pivotNormalize A c) d ≠ 0 := by
  rw [columnMinor_pivotNormalize A c d hc]
  exact div_ne_zero hd hc

/-- The ordered-minor version of the projective ratio formula. -/
theorem orderedMinor_pivotNormalize (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (I : Fin k ↪o Fin n) (hc : columnMinor A c ≠ 0) :
    orderedMinor (pivotNormalize A c) I = orderedMinor A I / columnMinor A c :=
  columnMinor_pivotNormalize A c I hc

/-- A positive pivot preserves and reflects nonnegative ordered minors. -/
theorem allOrderedMinorsNonneg_pivotNormalize_iff (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : 0 < columnMinor A c) :
    AllOrderedMinorsNonneg (pivotNormalize A c) ↔ AllOrderedMinorsNonneg A := by
  change AllOrderedMinorsNonneg ((columnSubmatrix A c)⁻¹ * A) ↔ AllOrderedMinorsNonneg A
  apply allOrderedMinorsNonneg_mul_left_iff
  rw [det_pivotInverse A c (ne_of_gt hc)]
  exact inv_pos.mpr hc

/-- A positive pivot preserves and reflects strictly positive ordered minors. -/
theorem allOrderedMinorsPos_pivotNormalize_iff (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : 0 < columnMinor A c) :
    AllOrderedMinorsPos (pivotNormalize A c) ↔ AllOrderedMinorsPos A := by
  change AllOrderedMinorsPos ((columnSubmatrix A c)⁻¹ * A) ↔ AllOrderedMinorsPos A
  apply allOrderedMinorsPos_mul_left_iff
  rw [det_pivotInverse A c (ne_of_gt hc)]
  exact inv_pos.mpr hc

/-- Restriction of a row combination equals combination of the restricted columns. -/
theorem vecMul_columnSubmatrix (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (u : Fin k → ℝ) :
    u ᵥ* columnSubmatrix A c = fun j => (u ᵥ* A) (c j) := rfl

/-- On a normalized frame, the pivot entries read back every row coefficient. -/
theorem normalized_coefficients_readback (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnSubmatrix A c = 1) (u : Fin k → ℝ) :
    (fun j => (u ᵥ* A) (c j)) = u := by
  rw [← vecMul_columnSubmatrix, hc, Matrix.vecMul_one]

/-- Two pivot-normalized frames of the same actual row space coincide. -/
theorem normalized_eq_of_frameRowSpace_eq (A B : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hA : columnSubmatrix A c = 1)
    (hB : columnSubmatrix B c = 1) (h : frameRowSpace A = frameRowSpace B) : A = B := by
  apply Matrix.ext
  intro i j
  have hm : A.row i ∈ frameRowSpace B := by
    rw [← h]
    exact row_mem_frameRowSpace A i
  obtain ⟨u, hu⟩ := (mem_frameRowSpace_iff B (A.row i)).mp hm
  have hr := congrArg (fun v : Fin n → ℝ => fun l => v (c l)) hu
  rw [normalized_coefficients_readback B c hB u] at hr
  have hrow : (fun l => A.row i (c l)) = (1 : Matrix (Fin k) (Fin k) ℝ) i :=
    congrFun hA i
  have huid : u = (1 : Matrix (Fin k) (Fin k) ℝ) i := hr.trans hrow
  have hv : u ᵥ* B = B.row i := by
    rw [huid]
    change ((1 : Matrix (Fin k) (Fin k) ℝ) * B) i = B i
    rw [Matrix.one_mul]
  exact congrFun (hu.symm.trans hv) j

/-- Equality of constructed normal forms recognizes equality of actual row spaces. -/
theorem pivotNormalize_eq_iff_rowSpace (A B : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hA : columnMinor A c ≠ 0) (hB : columnMinor B c ≠ 0) :
    pivotNormalize A c = pivotNormalize B c ↔ frameRowSpace A = frameRowSpace B := by
  constructor
  · intro h
    have hs := congrArg frameRowSpace h
    simpa only [frameRowSpace_pivotNormalize A c hA,
      frameRowSpace_pivotNormalize B c hB] using hs
  · intro h
    apply normalized_eq_of_frameRowSpace_eq _ _ c
      (pivotNormalize_pivot A c hA) (pivotNormalize_pivot B c hB)
    rw [frameRowSpace_pivotNormalize A c hA, frameRowSpace_pivotNormalize B c hB, h]

/-- The same row space has a unique representative normalized at the declared pivot. -/
theorem existsUnique_pivotNormalized (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    ∃! B : Matrix (Fin k) (Fin n) ℝ,
      columnSubmatrix B c = 1 ∧ frameRowSpace B = frameRowSpace A := by
  refine ⟨pivotNormalize A c,
    ⟨pivotNormalize_pivot A c hc, frameRowSpace_pivotNormalize A c hc⟩, ?_⟩
  intro B hB
  apply normalized_eq_of_frameRowSpace_eq B (pivotNormalize A c) c
    hB.1 (pivotNormalize_pivot A c hc)
  rw [hB.2, frameRowSpace_pivotNormalize A c hc]

/-- An already normalized matrix is fixed without an additional choice operation. -/
theorem pivotNormalize_fixed (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnSubmatrix A c = 1) : pivotNormalize A c = A := by
  simp [pivotNormalize, hc]

/-- Normalizing at a second valid pivot is independent of a preceding valid chart. -/
theorem pivotNormalize_transition (A : Matrix (Fin k) (Fin n) ℝ)
    (c d : Fin k → Fin n) (hc : columnMinor A c ≠ 0) (hd : columnMinor A d ≠ 0) :
    pivotNormalize (pivotNormalize A c) d = pivotNormalize A d := by
  have hcd := columnMinor_pivotNormalize_ne_zero A c d hc hd
  apply (pivotNormalize_eq_iff_rowSpace (pivotNormalize A c) A d hcd hd).mpr
  exact frameRowSpace_pivotNormalize A c hc

/-- Three successive valid chart choices satisfy the concrete cocycle law. -/
theorem pivotNormalize_cocycle (A : Matrix (Fin k) (Fin n) ℝ)
    (c d e : Fin k → Fin n) (hc : columnMinor A c ≠ 0)
    (hd : columnMinor A d ≠ 0) (he : columnMinor A e ≠ 0) :
    pivotNormalize (pivotNormalize (pivotNormalize A c) d) e = pivotNormalize A e := by
  rw [pivotNormalize_transition A c d hc hd, pivotNormalize_transition A d e hd he]

/-- A specified nonzero maximal minor proves full row rank of its original frame. -/
theorem rank_eq_of_columnMinor_ne_zero (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) : A.rank = k := by
  apply le_antisymm (Matrix.rank_le_height A)
  have hp : (columnSubmatrix A c).rank = k := by
    simpa only [Fintype.card_fin] using
      (Matrix.rank_of_det_ne_zero (A := columnSubmatrix A c) hc)
  have hs : (columnSubmatrix A c).rank ≤ A.rank := Matrix.rank_submatrix_le A id c
  exact hp.symm.trans_le hs

/-- The real row subspace has exactly the certified pivot dimension. -/
theorem finrank_frameRowSpace_of_columnMinor_ne_zero (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) :
    Module.finrank ℝ (frameRowSpace A) = k := by
  change Module.finrank ℝ (Submodule.span ℝ (Set.range A.row)) = k
  rw [← Matrix.rank_eq_finrank_span_row]
  exact rank_eq_of_columnMinor_ne_zero A c hc

end

end FormalResearch.PositiveAtlas.Grassmannian
```
