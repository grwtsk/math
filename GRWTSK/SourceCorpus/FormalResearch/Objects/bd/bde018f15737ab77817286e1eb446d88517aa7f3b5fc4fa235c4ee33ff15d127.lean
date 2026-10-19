import FormalResearch.PositiveAtlas.Grassmannian.SignedGraph
import Mathlib.Data.Fin.SuccPred

/-!
# Signed-unit elimination at arbitrary rank

The inverse signed reversal has determinant one. After that row change, the
frame [I | J M] becomes [J^{-1} | M]. Its selected left columns are signed unit
columns at decreasing pivot rows. A leading signed-unit column cancels its own
cofactor sign. The decoder below applies this argument at arbitrary rank and
returns an actual ordered source minor for every maximal-column selection.

This module does NOT yet prove surjectivity of `decodeSelection` onto all source
minor selections. Consequently it does not install a proof of the existing
`SignedGraph.MinorCorrespondence` equivalence. Its converse coverage proof is
spelled out mathematically in the accompanying guide and remains a Lean task.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.SignedMinorElimination

noncomputable section

/-- A signed unit first column cancels exactly the sign in its Laplace cofactor. -/
theorem det_cancel_signed_unit {n : ℕ}
    (A : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ) (p : Fin (n + 1))
    (hp : ∀ i, A i 0 = if i = p then (-1 : ℝ) ^ p.val else 0) :
    Matrix.det A = Matrix.det (A.submatrix p.succAbove Fin.succ) := by
  rw [Matrix.det_succ_column_zero]
  simp_rw [hp]
  have hs : (-1 : ℝ) ^ p.val * (-1 : ℝ) ^ p.val = 1 := by
    rw [← mul_pow]
    norm_num
  simpa [hs, mul_assoc] using
    (Finset.sum_eq_single p
      (fun i _ hi => by simp [hi])
      (by simp) :
      (∑ i : Fin (n + 1), (-1 : ℝ) ^ i.val *
        (if i = p then (-1 : ℝ) ^ p.val else 0) *
        Matrix.det (A.submatrix i.succAbove Fin.succ)) =
      (-1 : ℝ) ^ p.val *
        (if p = p then (-1 : ℝ) ^ p.val else 0) *
        Matrix.det (A.submatrix p.succAbove Fin.succ))

/-- The inverse signed reversal: its column j is (-1)^(N-1-j) e_(N-1-j). -/
def antiReverse (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => if j = i.rev then (-1 : ℝ) ^ i.val else 0

/-- A rectangular signed-unit augmentation, with the source M unchanged on the right. -/
def augment {N m : ℕ} (M : Matrix (Fin N) (Fin m) ℝ) :
    Matrix (Fin N) (Fin (N + m)) ℝ :=
  fun i j => if h : j.val < N then antiReverse N i ⟨j.val, h⟩
    else M i ⟨j.val - N, by omega⟩

/-- Deleting the last row and the first column reduces the signed reversal by one rank. -/
theorem antiReverse_delete_last (n : ℕ) :
    (antiReverse (n + 1)).submatrix (Fin.last n).succAbove Fin.succ = antiReverse n := by
  ext i j
  have hi : (Fin.last n).succAbove i = i.castSucc :=
    Fin.succAbove_of_castSucc_lt _ _ (by exact i.isLt)
  rw [Matrix.submatrix_apply, hi]
  have he : j.succ = i.castSucc.rev ↔ j = i.rev := by
    constructor <;> intro h <;> apply Fin.ext
    · have hv := congrArg Fin.val h
      simp only [Fin.val_succ, Fin.rev, Fin.val_castSucc] at hv ⊢
      omega
    · have hv := congrArg Fin.val h
      simp only [Fin.rev] at hv
      simp only [Fin.val_succ, Fin.rev, Fin.val_castSucc]
      omega
  simp only [antiReverse, Fin.val_castSucc, he]

/-- The signed reversal has determinant one at every rank, including zero. -/
theorem antiReverse_det (N : ℕ) : Matrix.det (antiReverse N) = 1 := by
  induction N with
  | zero => simp
  | succ n ih =>
    have hc : ∀ i : Fin (n + 1), antiReverse (n + 1) i 0 =
        if i = Fin.last n then (-1 : ℝ) ^ n else 0 := by
      intro i
      have he : (0 : Fin (n + 1)) = i.rev ↔ i = Fin.last n := by
        constructor <;> intro h <;> apply Fin.ext
        · have hv := congrArg Fin.val h
          simp only [Fin.rev, Fin.val_zero, Fin.val_last] at hv ⊢
          omega
        · have hv := congrArg Fin.val h
          simp only [Fin.rev, Fin.val_zero, Fin.val_last] at hv ⊢
          omega
      by_cases hi : i = Fin.last n
      · subst i
        simp [antiReverse]
      · simp [antiReverse, he, hi]
    rw [det_cancel_signed_unit _ (Fin.last n) hc, antiReverse_delete_last, ih]

/-- This row transformation changes the presentation but not any maximal determinant. -/
theorem antiReverse_mul_frame {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) :
    antiReverse N * SignedGraph.frame M = augment M := by
  ext i j
  have hs : (-1 : ℝ) ^ i.val * (-1 : ℝ) ^ i.val = 1 := by
    rw [← mul_pow]
    norm_num
  simp only [Matrix.mul_apply, antiReverse, ite_mul, zero_mul]
  simp only [Finset.sum_ite_eq', Finset.mem_univ, if_true]
  by_cases hj : j.val < N
  · simp [SignedGraph.frame, augment, hj, antiReverse, Matrix.one_apply, eq_comm]
  · simp [SignedGraph.frame, augment, hj, SignedGraph.signedBlock, ← mul_assoc, hs]

/-- The unit-determinant row change preserves every selected maximal minor exactly. -/
theorem frame_minor_eq_augment {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ)
    (S : Fin N → Fin (N + N)) :
    columnMinor (SignedGraph.frame M) S = columnMinor (augment M) S := by
  rw [← antiReverse_mul_frame, columnMinor_mul_left, antiReverse_det, one_mul]

/-- An ordered square submatrix of a rectangular source. No determinant equality is a field. -/
structure Selection (N m : ℕ) where
  /-- The minor size. -/
  size : ℕ
  /-- Increasing row selection. -/
  rows : Fin size ↪o Fin N
  /-- Increasing column selection. -/
  columns : Fin size ↪o Fin m

/-- The determinant observed by a selection. -/
def Selection.value {N m : ℕ} (I : Selection N m) (M : Matrix (Fin N) (Fin m) ℝ) : ℝ :=
  Matrix.det (fun i j => M (I.rows i) (I.columns j))

/-- Empty increasing selection into any finite ordinal. -/
def emptySelection (m : ℕ) : Fin 0 ↪o Fin m :=
  OrderEmbedding.ofStrictMono Fin.elim0 (fun i => Fin.elim0 i)

/-- Removing a row preserves the order of all remaining rows. -/
theorem succAbove_strictMono {n : ℕ} (p : Fin (n + 1)) : StrictMono p.succAbove := by
  intro i j hij
  simp only [Fin.succAbove]
  split_ifs <;> simp only [Fin.lt_def, Fin.val_castSucc, Fin.val_succ] at * <;>
    omega

/-- Remove the first selected column and lower every subsequent ambient index by one. -/
def deleteFirstColumns {n m : ℕ} (S : Fin (n + 1) ↪o Fin ((n + 1) + m)) :
    Fin n ↪o Fin (n + m) :=
  OrderEmbedding.ofStrictMono
    (fun i => ⟨(S i.succ).val - 1, by
      have h := S.strictMono (Fin.succ_pos i)
      have hb := (S i.succ).isLt
      change (S 0).val < (S i.succ).val at h
      omega⟩)
    (by
      intro i j hij
      have h := S.strictMono (Fin.succ_lt_succ_iff.mpr hij)
      have hi := S.strictMono (Fin.succ_pos i)
      change (S i.succ).val < (S j.succ).val at h
      change (S 0).val < (S i.succ).val at hi
      change (S i.succ).val - 1 < (S j.succ).val - 1
      omega)

/-- The pivot row of a first selected identity-block column. -/
def firstPivot {n m : ℕ} (S : Fin (n + 1) ↪o Fin ((n + 1) + m))
    (h : (S 0).val < n + 1) : Fin (n + 1) :=
  ⟨n - (S 0).val, by omega⟩

/-- When no left column is selected, all columns are original source columns. -/
def rightColumns {N m : ℕ} (S : Fin N ↪o Fin (N + m))
    (h : ∀ j, N ≤ (S j).val) : Fin N ↪o Fin m :=
  OrderEmbedding.ofStrictMono
    (fun j => ⟨(S j).val - N, by have hb := (S j).isLt; have hh := h j; omega⟩)
    (by intro i j hij
        have hh := S.strictMono hij
        have hi := h i
        have hj := h j
        change (S i).val < (S j).val at hh
        change (S i).val - N < (S j).val - N
        omega)

/-- All selected columns are right columns once the first one is. -/
theorem all_right_of_first {n m : ℕ} (S : Fin (n + 1) ↪o Fin ((n + 1) + m))
    (h : ¬ (S 0).val < n + 1) : ∀ j, n + 1 ≤ (S j).val := by
  intro j
  have hj := S.monotone (Fin.zero_le j)
  change (S 0).val ≤ (S j).val at hj
  omega

/-- Lift a selected minor through an order-preserving row insertion. -/
def liftSelection {n m : ℕ} (p : Fin (n + 1)) (I : Selection n m) : Selection (n + 1) m :=
  ⟨I.size, OrderEmbedding.ofStrictMono (fun i => p.succAbove (I.rows i))
    ((succAbove_strictMono p).comp I.rows.strictMono), I.columns⟩

/-- Recursive decoder for every maximal-column selection; no positivity assumption. -/
def decodeSelection : (N m : ℕ) → (Fin N ↪o Fin (N + m)) → Selection N m
  | 0, m, _ => ⟨0, OrderEmbedding.id _, emptySelection m⟩
  | n + 1, m, S =>
    if h : (S 0).val < n + 1 then
      liftSelection (firstPivot S h) (decodeSelection n m (deleteFirstColumns S))
    else ⟨n + 1, OrderEmbedding.id _, rightColumns S (all_right_of_first S h)⟩

/-- The first selected left column has exactly the signed-unit pattern. -/
theorem first_column_pattern {n m : ℕ} (M : Matrix (Fin (n + 1)) (Fin m) ℝ)
    (S : Fin (n + 1) ↪o Fin ((n + 1) + m)) (h : (S 0).val < n + 1) :
    ∀ i, columnSubmatrix (augment M) S i 0 =
      if i = firstPivot S h then (-1 : ℝ) ^ (firstPivot S h).val else 0 := by
  intro i
  have he : (⟨(S 0).val, h⟩ : Fin (n + 1)) = i.rev ↔ i = firstPivot S h := by
    constructor <;> intro hi <;> apply Fin.ext
    · have hv := congrArg Fin.val hi
      simp only [Fin.rev, firstPivot] at hv ⊢
      omega
    · have hv := congrArg Fin.val hi
      simp only [Fin.rev, firstPivot] at hv ⊢
      omega
  by_cases hi : i = firstPivot S h
  · subst i
    simp [columnSubmatrix, augment, h, antiReverse, he]
  · simp [columnSubmatrix, augment, h, antiReverse, he, hi]

/-- After the cancellation, remaining left pivots have smaller row numbers.
This is the entrywise structural identity needed for induction. -/
theorem delete_first_submatrix {n m : ℕ} (M : Matrix (Fin (n + 1)) (Fin m) ℝ)
    (S : Fin (n + 1) ↪o Fin ((n + 1) + m)) (h : (S 0).val < n + 1) :
    (columnSubmatrix (augment M) S).submatrix (firstPivot S h).succAbove Fin.succ =
      columnSubmatrix (augment (M.submatrix (firstPivot S h).succAbove id))
        (deleteFirstColumns S) := by
  ext i j
  have hs := S.strictMono (Fin.succ_pos j)
  change (S 0).val < (S j.succ).val at hs
  have hspos : 0 < (S j.succ).val := by omega
  by_cases hc : (S j.succ).val < n + 1
  · have hc' : (deleteFirstColumns S j).val < n := by
      change (S j.succ).val - 1 < n
      omega
    simp only [Matrix.submatrix_apply, columnSubmatrix, augment, dif_pos hc, dif_pos hc']
    by_cases hi : i.castSucc < firstPivot S h
    · rw [Fin.succAbove_of_castSucc_lt _ _ hi]
      have he : (⟨(S j.succ).val, hc⟩ : Fin (n + 1)) = i.castSucc.rev ↔
          (⟨(deleteFirstColumns S j).val, hc'⟩ : Fin n) = i.rev := by
        constructor <;> intro hh <;> apply Fin.ext
        · have hv := congrArg Fin.val hh
          dsimp [Fin.rev, deleteFirstColumns, OrderEmbedding.ofStrictMono] at hv ⊢
          omega
        · have hv := congrArg Fin.val hh
          dsimp [Fin.rev, deleteFirstColumns, OrderEmbedding.ofStrictMono] at hv
          dsimp [Fin.rev]
          omega
      simp only [antiReverse, Fin.val_castSucc, he]
    · have hip : (firstPivot S h).val ≤ i.val := by exact le_of_not_gt hi
      rw [Fin.succAbove_of_le_castSucc _ _ (le_of_not_gt hi)]
      have hleft : (⟨(S j.succ).val, hc⟩ : Fin (n + 1)) ≠ i.succ.rev := by
        intro hh
        have hv := congrArg Fin.val hh
        dsimp [Fin.rev, firstPivot] at hv hip
        omega
      have hright : (⟨(deleteFirstColumns S j).val, hc'⟩ : Fin n) ≠ i.rev := by
        intro hh
        have hv := congrArg Fin.val hh
        dsimp [Fin.rev, deleteFirstColumns, firstPivot, OrderEmbedding.ofStrictMono] at hv hip
        omega
      simp [antiReverse, hleft, hright]
  · have hc' : ¬ (deleteFirstColumns S j).val < n := by
      change ¬ (S j.succ).val - 1 < n
      omega
    simp only [Matrix.submatrix_apply, columnSubmatrix, augment, dif_neg hc, dif_neg hc']
    congr 1
    apply Fin.ext
    change (S j.succ).val - (n + 1) = (S j.succ).val - 1 - n
    omega

/-- Every maximal minor of the augmentation is an exact signed source minor, at arbitrary rank. -/
theorem augment_minor_eq_decoded : ∀ N m (M : Matrix (Fin N) (Fin m) ℝ)
    (S : Fin N ↪o Fin (N + m)),
    columnMinor (augment M) S = (decodeSelection N m S).value M := by
  intro N
  induction N with
  | zero =>
    intro m M S
    change (columnSubmatrix (augment M) S).det =
      (Matrix.of (fun i j : Fin 0 => M i (emptySelection m j))).det
    simp
  | succ n ih =>
    intro m M S
    by_cases h : (S 0).val < n + 1
    · unfold columnMinor
      rw [det_cancel_signed_unit _ (firstPivot S h) (first_column_pattern M S h),
        delete_first_submatrix M S h]
      change columnMinor _ _ = _
      rw [ih m (M.submatrix (firstPivot S h).succAbove id) (deleteFirstColumns S)]
      simp only [decodeSelection, dif_pos h]
      rfl
    · have hr := all_right_of_first S h
      have he : columnSubmatrix (augment M) S =
          (fun i j => M i (rightColumns S hr j)) := by
        ext i j
        simp [columnSubmatrix, augment, not_lt_of_ge (hr j), rightColumns,
          OrderEmbedding.ofStrictMono]
      rw [columnMinor, he]
      simp only [decodeSelection, dif_neg h]
      rfl

/-- The same decoder applies to the original maintained signed graph frame. -/
theorem frame_minor_eq_decoded {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ)
    (S : Fin N ↪o Fin (N + N)) :
    orderedMinor (SignedGraph.frame M) S = (decodeSelection N N S).value M := by
  rw [orderedMinor, frame_minor_eq_augment]
  exact augment_minor_eq_decoded N N M S

/-- One direction of the arbitrary-rank positivity transport, with no rank-two restriction. -/
theorem frame_nonnegative_of_source {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ)
    (hM : Toeplitz.FiniteNonnegative M) : AllOrderedMinorsNonneg (SignedGraph.frame M) := by
  intro S
  rw [frame_minor_eq_decoded]
  exact hM (decodeSelection N N S).size
    (decodeSelection N N S).rows (decodeSelection N N S).columns

end

end FormalResearch.PositiveAtlas.Grassmannian.SignedMinorElimination
