import GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

namespace GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

open scoped BigOperators

universe u

variable {ι : Type u} [Fintype ι]

/-- A uniform positive diagonal gap gives exact exponential damping of the squared norm. -/
theorem heat_gap_contracts
    (a x : ι → ℝ) {t γ : ℝ}
    (ht : 0 ≤ t) (hγ : ∀ i, γ ≤ a i ^ 2) :
    dot (heat a t x) (heat a t x) ≤
      Real.exp (-2 * t * γ) * dot x x := by
  unfold dot
  calc
    (∑ i, heat a t x i * heat a t x i) =
        ∑ i, Real.exp (-2 * t * (a i ^ 2)) * (x i) ^ 2 := by
      apply Finset.sum_congr rfl
      intro i _
      change
        (Real.exp (-t * (a i ^ 2)) * x i) *
            (Real.exp (-t * (a i ^ 2)) * x i) =
          Real.exp (-2 * t * (a i ^ 2)) * (x i) ^ 2
      calc
        (Real.exp (-t * (a i ^ 2)) * x i) *
              (Real.exp (-t * (a i ^ 2)) * x i) =
            (Real.exp (-t * (a i ^ 2)) *
              Real.exp (-t * (a i ^ 2))) * (x i) ^ 2 := by
          ring
        _ = Real.exp
              ((-t * (a i ^ 2)) + (-t * (a i ^ 2))) * (x i) ^ 2 := by
          rw [Real.exp_add]
        _ = Real.exp (-2 * t * (a i ^ 2)) * (x i) ^ 2 := by
          congr 2
          ring
    _ ≤ ∑ i, Real.exp (-2 * t * γ) * (x i) ^ 2 := by
      apply Finset.sum_le_sum
      intro i _
      apply mul_le_mul_of_nonneg_right
      · apply Real.exp_le_exp.mpr
        have hmul : 2 * t * γ ≤ 2 * t * (a i ^ 2) := by
          exact mul_le_mul_of_nonneg_left (hγ i)
            (mul_nonneg (by norm_num) ht)
        linarith
      · exact sq_nonneg (x i)
    _ = Real.exp (-2 * t * γ) * (∑ i, (x i) ^ 2) := by
      rw [Finset.mul_sum]
    _ = Real.exp (-2 * t * γ) * (∑ i, x i * x i) := by
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- The diagonal Hodge energy scales quadratically under scalar attenuation. -/
theorem energy_smul (a x : ι → ℝ) (r : ℝ) :
    energy a (r • x) = r ^ 2 * energy a x := by
  unfold energy dot
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp [diagonal]
  ring

/-- Restoring an attenuation by `r` exposes the exact inverse-square energy factor. -/
theorem energy_inv_smul (a x : ι → ℝ) (r : ℝ) :
    energy a (r⁻¹ • x) = (r⁻¹) ^ 2 * energy a x :=
  energy_smul a x r⁻¹

/-- A signed quadratic consumer, kept separate from the positive Hodge metric. -/
def signedQuadratic (x : Fin 2 → ℝ) : ℝ :=
  x 0 ^ 2 - x 1 ^ 2

/-- The signed consumer is not positive semidefinite. -/
theorem signedQuadratic_negative :
    ∃ x : Fin 2 → ℝ, signedQuadratic x < 0 := by
  refine ⟨![0, 1], ?_⟩
  norm_num [signedQuadratic]

end GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
