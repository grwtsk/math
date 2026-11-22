/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpectralHeat
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.LinearAlgebra.Matrix.Stochastic

/-!
# Finite spectral heat and stochastic Euler heat

The real coordinate heat is the exponential of the negative diagonal generator.
Its Euclidean pairing is symmetric and positive, and the existing squared-energy
estimate applies for nonnegative time and spectrum. Conservation of a specified
linear readout at positive time is equivalent to its support on zero modes.
The inverse bound across resolutions is governed by the accumulated spectral
exposure, the product of heat time and eigenvalue.

A two-point rational Euler family gives a stochastic step at every time in
`[0, 1]`. A half step already loses the difference of the two masses and two half
steps disagree with one full step. This example uses the finite
column-stochastic matrix and its mass-preservation theorem from Mathlib.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.OperatorTheory.FiniteHeatSemigroup

open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat
open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat (diagonal_apply)
open scoped BigOperators Matrix

section Spectral

variable {ι : Type*} [Fintype ι]

/-- Coordinate heat is the action of the actual matrix exponential in spectral
coordinates, with the generator and sign both explicit. -/
theorem spectralHeat_eq_exp_mulVec [DecidableEq ι] (eigenvalue : ι → ℝ) (s : ℝ)
    (x : ι → ℝ) :
    spectralHeat eigenvalue s x =
      NormedSpace.exp (Matrix.diagonal (fun i => -s * eigenvalue i)) *ᵥ x := by
  rw [Matrix.exp_diagonal]
  funext i
  simp [Matrix.mulVec_diagonal, spectralHeat, diagonal_apply, Real.exp_eq_exp_ℝ]

omit [Fintype ι] in
/-- The zero-time operator is the identity. -/
theorem spectralHeat_zero_time (eigenvalue : ι → ℝ) (x : ι → ℝ) :
    spectralHeat eigenvalue 0 x = x := by
  funext i
  simp [spectralHeat, diagonal_apply]

/-- Self-adjointness in the real Euclidean pairing. -/
theorem spectralHeat_pairing_symm (eigenvalue : ι → ℝ) (s : ℝ) (x y : ι → ℝ) :
    (∑ i, spectralHeat eigenvalue s x i * y i) =
      ∑ i, x i * spectralHeat eigenvalue s y i := by
  apply Finset.sum_congr rfl
  intro i _
  simp only [spectralHeat, diagonal_apply]
  ring

/-- Operator positivity in the Euclidean pairing is independent of the sign
of time. Contractivity additionally needs forward time and nonnegative spectrum. -/
theorem spectralHeat_pairing_nonneg (eigenvalue : ι → ℝ) (s : ℝ) (x : ι → ℝ) :
    0 ≤ ∑ i, x i * spectralHeat eigenvalue s x i := by
  apply Finset.sum_nonneg
  intro i _
  rw [spectralHeat, diagonal_apply, show x i * (Real.exp (-s * eigenvalue i) * x i) =
    Real.exp (-s * eigenvalue i) * (x i)^2 by ring]
  exact mul_nonneg (Real.exp_nonneg _) (sq_nonneg _)

/-- Exact signed difference between a linear readout before and after heat. -/
theorem readout_defect (eigenvalue : ι → ℝ) (s : ℝ) (weight x : ι → ℝ) :
    (∑ i, weight i * x i) - (∑ i, weight i * spectralHeat eigenvalue s x i) =
      ∑ i, weight i * (1 - Real.exp (-s * eigenvalue i)) * x i := by
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp only [spectralHeat, diagonal_apply]
  ring

/-- A linear functional, such as a physical mass in orthonormal coordinates,
is conserved on every input exactly when it reads only zero modes. -/
theorem readout_preserved_iff (eigenvalue : ι → ℝ) {s : ℝ} (hs : 0 < s)
    (weight : ι → ℝ) :
    (∀ x : ι → ℝ, (∑ i, weight i * spectralHeat eigenvalue s x i) = ∑ i, weight i * x i) ↔
      ∀ i, eigenvalue i ≠ 0 → weight i = 0 := by
  classical
  constructor
  · intro h i hi
    let x : ι → ℝ := fun j => if j = i then 1 else 0
    have hmode : weight i * Real.exp (-s * eigenvalue i) = weight i := by
      simpa [x, spectralHeat, diagonal_apply, mul_ite] using h x
    by_contra hweight
    have hexp : Real.exp (-s * eigenvalue i) = Real.exp 0 := by
      rw [Real.exp_zero]
      exact mul_left_cancel₀ hweight (hmode.trans (mul_one _).symm)
    have hproduct : s * eigenvalue i = 0 := by linarith [Real.exp_injective hexp]
    exact hi ((mul_eq_zero.mp hproduct).resolve_left hs.ne')
  · intro h x
    apply Finset.sum_congr rfl
    intro i _
    by_cases hi : eigenvalue i = 0
    · simp [spectralHeat, diagonal_apply, hi]
    · rw [h i hi, zero_mul, zero_mul]

/-- Squared Euclidean energy dissipates with the exact doubled exponent. -/
theorem squareEnergy_defect (eigenvalue : ι → ℝ) (s : ℝ) (x : ι → ℝ) :
    (∑ i, (x i)^2) - (∑ i, (spectralHeat eigenvalue s x i)^2) =
      ∑ i, (1 - Real.exp (-2 * s * eigenvalue i)) * (x i)^2 := by
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  simp only [spectralHeat, diagonal_apply]
  rw [show -2 * s * eigenvalue i = (-s * eigenvalue i) + (-s * eigenvalue i) by ring,
    Real.exp_add]
  ring

variable {E : Type*} [AddCommGroup E] [Module ℝ E]

/-- Positivity in the pairing supplied by a diagonalization of one operator. -/
theorem model_heat_pairing_nonneg (M : Model ι E) (s : ℝ) (x : E) :
    0 ≤ M.pairing x (M.heat s x) := by
  simpa only [Model.pairing, Model.heat_coordinates,
    GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.dot] using
    spectralHeat_pairing_nonneg M.eigenvalue s (M.frame x)

/-- Self-adjointness in the same pairing as the energy and positivity results. -/
theorem model_heat_pairing_symm (M : Model ι E) (s : ℝ) (x y : E) :
    M.pairing (M.heat s x) y = M.pairing x (M.heat s y) := by
  simpa only [Model.pairing, Model.heat_coordinates,
    GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat.dot] using
    spectralHeat_pairing_symm M.eigenvalue s (M.frame x) (M.frame y)

end Spectral

/-- Exact inverse on the full coordinates. -/
theorem spectralHeat_neg_time_inverse {ι : Type*} (eigenvalue : ι → ℝ) (s : ℝ)
    (x : ι → ℝ) :
    spectralHeat eigenvalue (-s) (spectralHeat eigenvalue s x) = x := by
  funext i
  simp only [spectralHeat, diagonal_apply, neg_neg]
  rw [← mul_assoc, ← Real.exp_add]
  simp

/-- A single inverse bound across a resolution tower holds exactly when the
exposure products admit one shared upper bound. The time may vary by resolution. -/
theorem uniform_tower_inverse_iff_exposure_bound {ι : ℕ → Type*}
    (eigenvalue : (n : ℕ) → ι n → ℝ) (s : ℕ → ℝ) :
    (∃ C : ℝ, ∀ (n : ℕ) (x : ι n → ℝ) (i : ι n),
      |spectralHeat (eigenvalue n) (-(s n)) x i| ≤ C * |x i|) ↔
      ∃ B : ℝ, ∀ n i, s n * eigenvalue n i ≤ B := by
  constructor
  · rintro ⟨C, hC⟩
    refine ⟨Real.log (max 1 C), fun n i => ?_⟩
    have hmode : Real.exp (s n * eigenvalue n i) ≤ C := by
      simpa [spectralHeat, diagonal_apply, abs_of_pos (Real.exp_pos _)] using hC n (fun _ => 1) i
    apply Real.exp_le_exp.mp
    rw [Real.exp_log (lt_of_lt_of_le zero_lt_one (le_max_left 1 C))]
    exact hmode.trans (le_max_right 1 C)
  · rintro ⟨B, hB⟩
    refine ⟨Real.exp B, fun n x i => ?_⟩
    simp only [spectralHeat, diagonal_apply, neg_neg, abs_mul, abs_of_pos (Real.exp_pos _)]
    exact mul_le_mul_of_nonneg_right (Real.exp_le_exp.mpr (hB n i)) (abs_nonneg _)

/-- The same stability criterion holds in squared Euclidean energy, with
amplification `exp (2 * B)` for a bound `B` on the exposure. -/
theorem uniform_tower_inverse_squareEnergy_iff_exposure_bound {ι : ℕ → Type*}
    [∀ n, Fintype (ι n)] (eigenvalue : (n : ℕ) → ι n → ℝ) (s : ℕ → ℝ) :
    (∃ C : ℝ, ∀ (n : ℕ) (x : ι n → ℝ),
      (∑ i, (spectralHeat (eigenvalue n) (-(s n)) x i)^2) ≤ C * ∑ i, (x i)^2) ↔
      ∃ B : ℝ, ∀ n i, s n * eigenvalue n i ≤ B := by
  classical
  constructor
  · rintro ⟨C, hC⟩
    refine ⟨Real.log (max 1 C) / 2, fun n i => ?_⟩
    let x : ι n → ℝ := fun j => if j = i then 1 else 0
    have hmode : (Real.exp (s n * eigenvalue n i))^2 ≤ C := by
      simpa [x, spectralHeat, diagonal_apply, mul_ite, apply_ite (fun z : ℝ => z^2)]
        using hC n x
    have hlog : 2 * (s n * eigenvalue n i) ≤ Real.log (max 1 C) := by
      apply Real.exp_le_exp.mp
      rw [Real.exp_log (lt_of_lt_of_le zero_lt_one (le_max_left 1 C)),
        two_mul, Real.exp_add, ← sq]
      exact hmode.trans (le_max_right 1 C)
    linarith
  · rintro ⟨B, hB⟩
    refine ⟨Real.exp (2 * B), fun n x => ?_⟩
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro i _
    simp only [spectralHeat, diagonal_apply, neg_neg, mul_pow]
    have hgain : (Real.exp (s n * eigenvalue n i))^2 ≤ Real.exp (2 * B) := by
      rw [sq, ← Real.exp_add, ← two_mul]
      exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left (hB n i) (by norm_num))
    exact mul_le_mul_of_nonneg_right hgain (sq_nonneg _)

/-- Growing the retained integer frequencies at any fixed strictly positive
time gives exact inverse identities at each resolution but no common bound. -/
theorem increasing_modes_no_uniform_inverse {s : ℝ} (hs : 0 < s) :
    ¬ (∃ C : ℝ, ∀ (n : ℕ) (x : Fin (n + 1) → ℝ) (i : Fin (n + 1)),
      |spectralHeat (fun i : Fin (n + 1) => (i.val : ℝ)) (-s) x i| ≤ C * |x i|) := by
  intro h
  obtain ⟨B, hB⟩ := (uniform_tower_inverse_iff_exposure_bound
    (fun n (i : Fin (n + 1)) => (i.val : ℝ)) (fun _ => s)).mp h
  obtain ⟨n, hn⟩ := exists_nat_gt (B / s)
  have hb : s * (n : ℝ) ≤ B := hB n (Fin.last n)
  exact (not_lt_of_ge hb) (by simpa [mul_comm] using (div_lt_iff₀ hs).mp hn)

section Euler

/-- Natural-time evolution by a fixed matrix obeys the semigroup law. -/
theorem matrixIterate_add {ι : Type*} [Fintype ι] [DecidableEq ι]
    (K : Matrix ι ι ℚ) (m n : ℕ) (x : ι → ℚ) :
    (K ^ (m + n)) *ᵥ x = (K ^ m) *ᵥ ((K ^ n) *ᵥ x) := by
  rw [pow_add, Matrix.mulVec_mulVec]

/-- For the two-point Laplacian with diagonal `1` and off-diagonal `-1`, this
is one explicit Euler step. -/
def twoPointEuler (t : ℚ) : Matrix (Fin 2) (Fin 2) ℚ :=
  fun i j => if i = j then 1 - t else t

/-- Nonnegativity and column sums characterize this Euler family's stochastic
range. Mass preservation then follows from `Matrix.sum_mulVec_of_mem_colStochastic`. -/
theorem twoPointEuler_colStochastic_iff (t : ℚ) :
    twoPointEuler t ∈ Matrix.colStochastic ℚ (Fin 2) ↔ 0 ≤ t ∧ t ≤ 1 := by
  rw [Matrix.mem_colStochastic_iff_sum]
  constructor
  · intro h
    refine ⟨?_, ?_⟩
    · simpa [twoPointEuler] using h.1 0 1
    · simpa [twoPointEuler] using h.1 0 0
  · rintro ⟨h₀, h₁⟩
    refine ⟨fun i j => ?_, fun j => ?_⟩
    · unfold twoPointEuler
      split_ifs <;> linarith
    · fin_cases j <;> simp [twoPointEuler, Fin.sum_univ_two]

/-- The half-step maps both unit-mass point seeds to the same state. -/
theorem twoPointEuler_half_not_injective :
    ¬ Function.Injective (fun x => twoPointEuler (1 / 2) *ᵥ x) := by
  intro hinj
  let x : Fin 2 → ℚ := fun i => if i = 0 then 1 else 0
  let y : Fin 2 → ℚ := fun i => if i = 1 then 1 else 0
  have hstep : twoPointEuler (1 / 2) *ᵥ x = twoPointEuler (1 / 2) *ᵥ y := by
    funext i
    fin_cases i <;> norm_num [Matrix.mulVec, dotProduct, twoPointEuler, Fin.sum_univ_two, x, y]
  have hseed := congrFun (hinj hstep) (0 : Fin 2)
  norm_num [x, y] at hseed

/-- At a specified input the stochastic time-one step disagrees with two
stochastic half-steps. The real exponential always satisfies composition. -/
theorem twoPointEuler_not_time_additive :
    ∃ x : Fin 2 → ℚ,
      twoPointEuler 1 *ᵥ x ≠ twoPointEuler (1 / 2) *ᵥ (twoPointEuler (1 / 2) *ᵥ x) := by
  refine ⟨fun i => if i = 0 then 1 else 0, fun h => ?_⟩
  have hzero := congrFun h (0 : Fin 2)
  norm_num [Matrix.mulVec, dotProduct, twoPointEuler, Fin.sum_univ_two] at hzero

end Euler

end GRWTSK.OperatorTheory.FiniteHeatSemigroup
