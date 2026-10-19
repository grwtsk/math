/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Motivation: Gavrilova--Petrov, arXiv:2305.17747v3. This module does not import
their point-process theorems or identify a Möbius process with their measures.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic

/-!
# Determinant representations and the exact arithmetic debt

A signed quadratic form admits a rank-one determinant representation for
every coefficient row. This is algebraic and yields no arithmetic cancellation.
For the actual CCC response Gram, the determinant is exactly `1 + pickupEnergy`.
Thus a polynomial upper bound for this determinant pays precisely the existing
energy debt. It does not construct a determinantal point process.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open Matrix
open scoped BigOperators

/-- Every signed quadratic form has this rank-one determinant encoding. -/
theorem determinant_encoding {ι : Type*} [Fintype ι] [DecidableEq ι]
    (H : Matrix ι ι ℝ) (c : ι → ℝ) :
    (1 + vecMulVec (H.mulVec c) c).det =
      1 + ∑ m, ∑ n, c m * c n * H m n := by
  let A : Matrix ι (Fin 1) ℝ := fun i _ ↦ (H.mulVec c) i
  let B : Matrix (Fin 1) ι ℝ := fun _ j ↦ c j
  have hAB : A * B = vecMulVec (H.mulVec c) c := by
    ext i j
    change (∑ _k : Fin 1, (H.mulVec c) i * c j) = (H.mulVec c) i * c j
    simp
  rw [← hAB, Matrix.det_one_add_mul_comm, Matrix.det_fin_one]
  change 1 + (∑ m, c m * (H.mulVec c) m) = _
  simp only [Matrix.mulVec, dotProduct]
  congr 1
  apply Finset.sum_congr rfl
  intro m _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  ring

/-- Literal final closed-cutoff index type; every source integer remains present. -/
abbrev PickupIndex (T : ℝ) := {n // n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊}

/-- The genuine integral response Gram on the final integer inventory. -/
def responseMatrix (T : ℝ) : Matrix (PickupIndex T) (PickupIndex T) ℝ :=
  fun m n ↦ pickupResponseGram T m n

/-- The actual signed Möbius row; its signs are preserved. -/
def coefficientRow (T : ℝ) : PickupIndex T → ℝ := fun n ↦ moebiusReal n

/-- A rank-one determinant encoding of the completed signed arithmetic response. -/
def pickupDeterminant (T : ℝ) : ℝ :=
  (1 + vecMulVec ((responseMatrix T).mulVec (coefficientRow T)) (coefficientRow T)).det

/-- The proposed determinant contains exactly the same completed signed energy. -/
theorem pickupDeterminant_eq_energy {T : ℝ} (hT : 0 ≤ T) :
    pickupDeterminant T = 1 + pickupEnergy T := by
  rw [pickupDeterminant, determinant_encoding, pickupEnergy_eq_full_gram hT]
  simp only [coefficientRow, responseMatrix, pickupFullGram]
  congr 1
  calc
    _ = ∑ m : PickupIndex T, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        moebiusReal m * moebiusReal n * pickupResponseGram T m n := by
      apply Finset.sum_congr rfl
      intro m _
      exact Finset.sum_coe_sort (Finset.Icc 1 ⌊Real.exp T⌋₊)
        (fun n : ℕ ↦ moebiusReal m * moebiusReal n * pickupResponseGram T m n)
    _ = _ := Finset.sum_coe_sort (Finset.Icc 1 ⌊Real.exp T⌋₊)
      (fun m : ℕ ↦ ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        moebiusReal m * moebiusReal n * pickupResponseGram T m n)

/-- Exact bound equivalence; no estimate is supplied by changing the representation. -/
theorem pickupDeterminant_bound_iff {T B : ℝ} (hT : 0 ≤ T) :
    pickupDeterminant T ≤ 1 + B ↔ pickupEnergy T ≤ B := by
  rw [pickupDeterminant_eq_energy hT]
  exact add_le_add_iff_left 1

/-- Polynomial determinant growth is the original open energy budget. -/
theorem pickupDeterminant_poly_iff :
    (∃ C q : ℝ, 0 ≤ C ∧ 0 ≤ q ∧ ∀ T : ℝ, 0 ≤ T →
      pickupDeterminant T ≤ 1 + C * (1 + T) ^ q) ↔ PickupEnergyPoly := by
  constructor
  · rintro ⟨C, q, hC, hq, hbound⟩
    exact ⟨C, q, hC, hq, fun T hT ↦ (pickupDeterminant_bound_iff hT).mp (hbound T hT)⟩
  · rintro ⟨C, q, hC, hq, hbound⟩
    exact ⟨C, q, hC, hq, fun T hT ↦ (pickupDeterminant_bound_iff hT).mpr (hbound T hT)⟩

end GRWTSK.RiemannHypothesis.CCC
