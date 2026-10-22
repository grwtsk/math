/-
MIT. grwtsk contributors direction; OpenAI Codex assistance; historical split unknown.
Upstream authors and source identities retained; established Jacobi transfer mathematics.
-/
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.IntervalCases
import GRWTSK.LinearAlgebra.LinearAlgebra.SchrodingerTransfer

namespace GRWTSK.LinearAlgebra.JacobiTransfer

/-!
# Exact Jacobi transfer normalization

The state is ordered as `(current, previous)`. The raw Jacobi transfer has
determinant `aPrevious / aCurrent`; only the weighted state
`(current, aPrevious * previous)` gives the canonical determinant-one matrix.
All division-based recurrence equivalences require `aCurrent ≠ 0`.

This is the one-dimensional transfer mechanic also used in spectral cocycle
arguments. It imports no Ten Martini theorem, spectrum conclusion, theta
identification, or RH estimate.
-/


open Matrix


universe u



open GRWTSK.LinearAlgebra.SchrodingerTransfer

/-- Raw general Jacobi transfer. Its determinant need not equal one. -/
def rawJacobiTransfer {K : Type u} [Field K] (E b aCurrent aPrevious : K) :
    Matrix (Fin 2) (Fin 2) K :=
  !![(E - b) / aCurrent, -(aPrevious / aCurrent); 1, 0]



/-- Scalar Jacobi recurrence, before any division or positivity assumptions. -/
def jacobiRecurrence {R : Type u} [CommRing R]
    (E b aCurrent aPrevious previous current next : R) : Prop :=
  aCurrent * next + b * current + aPrevious * previous = E * current



/-- Dividing by the current off-diagonal is justified exactly by its nonzero hypothesis. -/
theorem jacobi_recurrence_iff_solved {K : Type u} [Field K]
    (E b aCurrent aPrevious previous current next : K) (ha : aCurrent ≠ 0) :
    jacobiRecurrence E b aCurrent aPrevious previous current next ↔
      next = ((E - b) / aCurrent) * current -
        (aPrevious / aCurrent) * previous := by
  unfold jacobiRecurrence
  constructor
  · intro h
    apply (mul_left_cancel₀ ha)
    field_simp
    linear_combination h
  · intro h
    rw [h]
    field_simp
    ring



/-- Exact raw-state Jacobi transfer equivalence. -/
theorem jacobi_recurrence_iff_raw_transfer {K : Type u} [Field K]
    (E b aCurrent aPrevious previous current next : K) (ha : aCurrent ≠ 0) :
    jacobiRecurrence E b aCurrent aPrevious previous current next ↔
      rawState next current =
        (rawJacobiTransfer E b aCurrent aPrevious).mulVec (rawState current previous) := by
  rw [jacobi_recurrence_iff_solved E b aCurrent aPrevious previous current next ha]
  have hcoord : (rawJacobiTransfer E b aCurrent aPrevious).mulVec
      (rawState current previous) =
      rawState (((E - b) / aCurrent) * current -
        (aPrevious / aCurrent) * previous) current := by
    ext i
    fin_cases i <;> simp [rawJacobiTransfer, rawState, Matrix.mulVec, dotProduct,
      Fin.sum_univ_two]
    all_goals ring
  rw [hcoord]
  constructor
  · intro h
    rw [h]
  · intro h
    simpa only [rawState, Matrix.cons_val_zero] using congrFun h 0



/-- The raw determinant is a ratio, without an `SL₂` assertion. -/
theorem det_rawJacobiTransfer {K : Type u} [Field K] (E b aCurrent aPrevious : K) :
    (rawJacobiTransfer E b aCurrent aPrevious).det = aPrevious / aCurrent := by
  simp [rawJacobiTransfer, Matrix.det_fin_two]



/-- The canonical weighted state retains the previous off-diagonal explicitly. -/
def weightedState {R : Type u} [Mul R] (aPrevious previous current : R) : Fin 2 → R :=
  ![current, aPrevious * previous]



/-- Canonical Jacobi transfer for the weighted state. -/
def weightedJacobiTransfer {K : Type u} [Field K] (E b aCurrent : K) :
    Matrix (Fin 2) (Fin 2) K :=
  !![(E - b) / aCurrent, -(1 / aCurrent); aCurrent, 0]



/-- The second state coordinate advances from `aPrevious * previous` to `aCurrent * current`. -/
theorem jacobi_recurrence_iff_weighted_transfer {K : Type u} [Field K]
    (E b aCurrent aPrevious previous current next : K) (ha : aCurrent ≠ 0) :
    jacobiRecurrence E b aCurrent aPrevious previous current next ↔
      weightedState aCurrent current next =
        (weightedJacobiTransfer E b aCurrent).mulVec
          (weightedState aPrevious previous current) := by
  rw [jacobi_recurrence_iff_solved E b aCurrent aPrevious previous current next ha]
  have hcoord : (weightedJacobiTransfer E b aCurrent).mulVec
      (weightedState aPrevious previous current) =
      weightedState aCurrent current (((E - b) / aCurrent) * current -
        (aPrevious / aCurrent) * previous) := by
    ext i
    fin_cases i <;> simp [weightedJacobiTransfer, weightedState, Matrix.mulVec,
      dotProduct, Fin.sum_univ_two]
    all_goals ring
  rw [hcoord]
  constructor
  · intro h
    rw [h]
  · intro h
    simpa only [weightedState, Matrix.cons_val_zero] using congrFun h 0



/-- Nonzero current off-diagonal gives determinant one directly. -/
theorem det_weightedJacobiTransfer {K : Type u} [Field K]
    (E b aCurrent : K) (ha : aCurrent ≠ 0) :
    (weightedJacobiTransfer E b aCurrent).det = 1 := by
  simp [weightedJacobiTransfer, Matrix.det_fin_two, ha]



/-- Canonical general-Jacobi `SL₂` element, with the nonzero hypothesis retained. -/
def weightedJacobiSL {K : Type u} [Field K] (E b aCurrent : K) (ha : aCurrent ≠ 0) :
    Matrix.SpecialLinearGroup (Fin 2) K :=
  ⟨weightedJacobiTransfer E b aCurrent, det_weightedJacobiTransfer E b aCurrent ha⟩



/-- Schrödinger specialization is an equality theorem, not just a visual resemblance. -/
theorem weightedJacobiTransfer_schrodinger {K : Type u} [Field K] (E V : K) :
    weightedJacobiTransfer E V 1 = schrodingerTransfer E V := by
  simp [weightedJacobiTransfer, schrodingerTransfer]



/-- The raw state also specializes exactly when both off-diagonals are one. -/
theorem rawJacobiTransfer_schrodinger {K : Type u} [Field K] (E V : K) :
    rawJacobiTransfer E V 1 1 = schrodingerTransfer E V := by
  simp [rawJacobiTransfer, schrodingerTransfer]



/-- The raw-to-weighted change of state is the diagonal matrix `(1, aPrevious)`. -/
def stateWeightingMatrix {R : Type u} [Zero R] [One R] (a : R) :
    Matrix (Fin 2) (Fin 2) R := !![1, 0; 0, a]



/-- The matrix change of state is exactly the canonical weighted state. -/
theorem stateWeightingMatrix_mulVec {K : Type u} [Field K] (a previous current : K) :
    (stateWeightingMatrix a).mulVec (rawState current previous) =
      weightedState a previous current := by
  ext i
  fin_cases i <;> simp [stateWeightingMatrix, rawState, weightedState,
    Matrix.mulVec, dotProduct, Fin.sum_univ_two]



/-- Exact step-dependent intertwining of raw and weighted transfers.
The left weighting is the current coefficient; the right weighting is the previous one. -/
theorem weighted_raw_intertwining {K : Type u} [Field K]
    (E b aCurrent aPrevious : K) :
    weightedJacobiTransfer E b aCurrent * stateWeightingMatrix aPrevious =
      stateWeightingMatrix aCurrent * rawJacobiTransfer E b aCurrent aPrevious := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [weightedJacobiTransfer, rawJacobiTransfer, stateWeightingMatrix,
      Matrix.mul_apply, Fin.sum_univ_two]
  ring



/-- Integer indexing avoids inventing a left boundary coefficient at index zero. -/
def rawSequenceState {R : Type u} (u : ℤ → R) (n : ℤ) : Fin 2 → R :=
  rawState (u n) (u (n - 1))



/-- The weighted sequence state uses the previous coefficient at every index. -/
def weightedSequenceState {R : Type u} [Mul R] (a u : ℤ → R) (n : ℤ) : Fin 2 → R :=
  weightedState (a (n - 1)) (u (n - 1)) (u n)



/-- Schrödinger dynamics with exact adjacent integer indices. -/
theorem schrodinger_sequence_iff_transfer {R : Type u} [CommRing R]
    (E : R) (V u : ℤ → R) (n : ℤ) :
    u (n + 1) + u (n - 1) + V n * u n = E * u n ↔
      rawSequenceState u (n + 1) =
        (schrodingerTransfer E (V n)).mulVec (rawSequenceState u n) := by
  simpa [rawSequenceState] using
    schrodinger_recurrence_iff_transfer E (V n) (u (n - 1)) (u n) (u (n + 1))



/-- Raw Jacobi sequence dynamics retains both adjacent off-diagonals. -/
theorem jacobi_sequence_iff_raw_transfer {K : Type u} [Field K]
    (E : K) (a b u : ℤ → K) (n : ℤ) (ha : a n ≠ 0) :
    a n * u (n + 1) + b n * u n + a (n - 1) * u (n - 1) = E * u n ↔
      rawSequenceState u (n + 1) =
        (rawJacobiTransfer E (b n) (a n) (a (n - 1))).mulVec
          (rawSequenceState u n) := by
  simpa [jacobiRecurrence, rawSequenceState] using
    jacobi_recurrence_iff_raw_transfer E (b n) (a n) (a (n - 1))
      (u (n - 1)) (u n) (u (n + 1)) ha



/-- Weighted Jacobi sequence dynamics tracks `a (n - 1)` to `a n` exactly. -/
theorem jacobi_sequence_iff_weighted_transfer {K : Type u} [Field K]
    (E : K) (a b u : ℤ → K) (n : ℤ) (ha : a n ≠ 0) :
    a n * u (n + 1) + b n * u n + a (n - 1) * u (n - 1) = E * u n ↔
      weightedSequenceState a u (n + 1) =
        (weightedJacobiTransfer E (b n) (a n)).mulVec (weightedSequenceState a u n) := by
  simpa [jacobiRecurrence, weightedSequenceState] using
    jacobi_recurrence_iff_weighted_transfer E (b n) (a n) (a (n - 1))
      (u (n - 1)) (u n) (u (n + 1)) ha



/-- Hostile fixture: a raw Jacobi transfer with nonzero off-diagonals can have determinant two. -/
theorem rawJacobiTransfer_not_det_one :
    (rawJacobiTransfer (0 : ℚ) 0 1 2).det = 2 ∧
      (rawJacobiTransfer (0 : ℚ) 0 1 2).det ≠ 1 := by
  norm_num [det_rawJacobiTransfer]



/-- A symmetric two-site Jacobi fixture with a cyclic first basis vector. -/
def twoSiteJacobi (b : ℚ) : Matrix (Fin 2) (Fin 2) ℚ := !![0, 1; 1, b]



/-- The first vector and its first image span the entire fixture space. -/
theorem twoSiteJacobi_cyclic (b : ℚ) (x : Fin 2 → ℚ) :
    x = x 0 • rawState 1 0 + x 1 • (twoSiteJacobi b).mulVec (rawState 1 0) := by
  ext i
  fin_cases i <;> simp [rawState, twoSiteJacobi]



/-- A zero cyclic matrix coefficient can coexist with a trivial zero eigenspace.
Together with `twoSiteJacobi_cyclic`, this excludes the cyclic-coefficient inference. -/
theorem cyclic_coefficient_zero_without_zero_eigenvector :
    (rawState (1 : ℚ) 0) ⬝ᵥ (twoSiteJacobi 0).mulVec (rawState 1 0) = 0 ∧
      ∀ x : Fin 2 → ℚ, (twoSiteJacobi 0).mulVec x = 0 → x = 0 := by
  constructor
  · norm_num [rawState, twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two]
  · intro x hx
    have hx0 : x 0 = 0 := by
      have h := congrFun hx 1
      simpa [twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two] using h
    have hx1 : x 1 = 0 := by
      have h := congrFun hx 0
      simpa [twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two] using h
    ext i
    fin_cases i <;> simp [hx0, hx1]



/-- Even cyclic Jacobi fixtures can match finitely many exact moments. -/
theorem twoSiteJacobi_first_three_moments_match (n : ℕ) (hn : n ≤ 2) :
    rawState (1 : ℚ) 0 ⬝ᵥ (twoSiteJacobi 0 ^ n).mulVec (rawState 1 0) =
      rawState (1 : ℚ) 0 ⬝ᵥ (twoSiteJacobi 1 ^ n).mulVec (rawState 1 0) := by
  interval_cases n <;>
    norm_num [rawState, twoSiteJacobi, Matrix.mulVec, dotProduct, Fin.sum_univ_two,
      pow_succ, Matrix.mul_apply]



/-- Matching those moments does not imply even invertible similarity,
and hence cannot imply unitary equivalence. Trace separates the fixtures. -/
theorem twoSiteJacobi_not_conjugate :
    ¬ ∃ P : (Matrix (Fin 2) (Fin 2) ℚ)ˣ,
      (P : Matrix (Fin 2) (Fin 2) ℚ) * twoSiteJacobi 0 *
        (↑P⁻¹ : Matrix (Fin 2) (Fin 2) ℚ) = twoSiteJacobi 1 := by
  rintro ⟨P, hP⟩
  have htrace := Matrix.trace_units_conj P (twoSiteJacobi 0)
  rw [hP] at htrace
  norm_num [twoSiteJacobi, Matrix.trace, Fin.sum_univ_two] at htrace




end GRWTSK.LinearAlgebra.JacobiTransfer
