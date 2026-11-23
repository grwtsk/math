/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.Chebyshev
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# The marked-weight replacement in the prime sum of inequality (M)

For fixed map and shift indices, each prime-power column belongs to precisely
as many translates of the marked set as there are marked columns. Summing
over translates before applying Chebyshev's estimate keeps this density
factor. The source weights and exceptional-prime conventions are described
in the marked-weight section of `AlpogeMainPrimeArithmetic.md`.
-/

namespace GRWTSK.NumberTheory.AlpogeMarkedWeightReplacement

open scoped BigOperators ArithmeticFunction
open Finset

/-- Loss when the threshold in a positive part is raised from `b` to `b + e`. -/
def weightLoss (v b e : ℝ) : ℝ := max (v - b) 0 - max (v - (b + e)) 0

theorem weightLoss_eq_min (v b e : ℝ) (he : 0 ≤ e) :
    weightLoss v b e = min e (max (v - b) 0) := by
  unfold weightLoss
  simp only [max_def, min_def]
  split_ifs <;> linarith

variable {H : Type*} [Group H] [Fintype H] [DecidableEq H]

/-- Sum of a constant over all translates marking a fixed column. -/
theorem sum_marked_translates (T : Finset H) (column : H) (c : ℝ) :
    (∑ u : H, if u⁻¹ * column ∈ T then c else 0) = (T.card : ℝ) * c := by
  calc
    _ = ∑ v : H, if v ∈ T then c else 0 :=
      ((Equiv.inv H).trans (Equiv.mulRight column)).sum_comp
        (fun v ↦ if v ∈ T then c else 0)
    _ = _ := by simp

/-- Sum of the prime-part loss over translates at fixed `t,j`. For index `r`,
`row` selects admissible row-one indices, `col` gives the source column
`t[r]`, and `inc` is the increase above the common marked weight. -/
noncomputable def markedPrimeLoss (T : Finset H) (row : ℕ → Bool) (col : ℕ → H)
    (c : ℕ → ℝ) (inc : H → ℕ → ℝ) (a b : ℝ) : ℝ :=
  ∑ u : H, ∑ r ∈ Ioc 0 ⌊a / b⌋₊,
    if row r = true ∧ u⁻¹ * col r ∈ T then c r * weightLoss (a / r) b (inc u r) else 0

/-- For the source, `c r = (1 - χ_d(r)) Λ(r)` on the retained primes.
The coefficient bound also covers the ramified prime. -/
theorem markedPrimeLoss_le_psi (T : Finset H) (row : ℕ → Bool) (col : ℕ → H)
    (c : ℕ → ℝ) (inc : H → ℕ → ℝ) (a b Δ : ℝ) (hΔ : 0 ≤ Δ)
    (hc : ∀ r, 0 ≤ c r ∧ c r ≤ 2 * Λ r)
    (hinc : ∀ u r, row r = true → u⁻¹ * col r ∈ T → 0 ≤ inc u r ∧ inc u r ≤ Δ) :
    markedPrimeLoss T row col c inc a b ≤ (T.card : ℝ) * (2 * Δ) * Chebyshev.psi (a / b) := by
  unfold markedPrimeLoss
  rw [Finset.sum_comm, Chebyshev.psi, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro r _
  calc
    _ ≤ ∑ u : H, if u⁻¹ * col r ∈ T then 2 * Λ r * Δ else 0 := by
      apply Finset.sum_le_sum
      intro u _
      by_cases hr : row r = true
      · by_cases hu : u⁻¹ * col r ∈ T
        · simp only [hr, hu, and_self, ite_true, weightLoss_eq_min _ _ _ (hinc u r hr hu).1]
          exact (mul_le_mul_of_nonneg_left
            ((min_le_left _ _).trans (hinc u r hr hu).2) (hc r).1).trans
            (mul_le_mul_of_nonneg_right (hc r).2 hΔ)
        · simp [hu]
      · by_cases hu : u⁻¹ * col r ∈ T
        · simp [hr, hu]
          exact mul_nonneg (mul_nonneg (by norm_num) ArithmeticFunction.vonMangoldt_nonneg) hΔ
        · simp [hr, hu]
    _ = _ := by rw [sum_marked_translates]; ring

/-- The prime-part replacement costs at most a constant times
`card(T) * Δ * (a/b)`, uniformly in the group order. -/
theorem markedPrimeLoss_le_linear (T : Finset H) (row : ℕ → Bool) (col : ℕ → H)
    (c : ℕ → ℝ) (inc : H → ℕ → ℝ) (a b Δ : ℝ) (hy : 0 ≤ a / b) (hΔ : 0 ≤ Δ)
    (hc : ∀ r, 0 ≤ c r ∧ c r ≤ 2 * Λ r)
    (hinc : ∀ u r, row r = true → u⁻¹ * col r ∈ T → 0 ≤ inc u r ∧ inc u r ≤ Δ) :
    markedPrimeLoss T row col c inc a b ≤
      (T.card : ℝ) * (2 * Δ) * ((Real.log 4 + 4) * (a / b)) :=
  (markedPrimeLoss_le_psi T row col c inc a b Δ hΔ hc hinc).trans
    (mul_le_mul_of_nonneg_left (Chebyshev.psi_le_const_mul_self hy) (by positivity))

end GRWTSK.NumberTheory.AlpogeMarkedWeightReplacement
