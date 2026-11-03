/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingTwistEndpointFloor

set_option autoImplicit false
noncomputable section

/-! Fixed coefficients and parameter, variable actual source dimensions.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingShrinkingFamilyObstruction
open DirichletGrowingTwistEndpointFloor DirichletGrowingNormalizedResidualFloors

theorem actual_shrinking_family_parameter_endpoints
    (M : ℕ → ℕ) [∀ n, NeZero (M n)] (h3 : ∀ n, 3 ∣ M n*3)
    (k : ∀ n, ZMod (M n*3)) (t w : ℝ) (λ : ℂ)
    (hbudget : ∀ ε : ℝ, 0<ε → ∃ n : ℕ,
      normalizedTwistEnergy (M n) (h3 n) t w λ (k n)≤ε) :
    λ=((w-t : ℝ) : ℂ) ∨ λ=((w+t : ℝ) : ℂ) := by
  let D : ℝ := min ‖(((w-t : ℝ) : ℂ)-λ)‖^2 ‖(((w+t : ℝ) : ℂ)-λ)‖^2
  have hD : 0≤D := le_min (sq_nonneg _) (sq_nonneg _)
  have hz : D=0 := by
    by_contra hn
    have hp : 0<D := lt_of_le_of_ne hD (Ne.symm hn)
    obtain ⟨n,hn⟩ := hbudget (D/2) (by linarith)
    have hf := actual_growing_endpoint_floor (M n) (h3 n) t w λ (k n)
    change D≤_ at hf
    linarith
  unfold D at hz
  rcases le_total ‖(((w-t : ℝ) : ℂ)-λ)‖^2 ‖(((w+t : ℝ) : ℂ)-λ)‖^2 with h | h
  · rw [min_eq_left h] at hz
    have hn : ‖(((w-t : ℝ) : ℂ)-λ)‖=0 := pow_eq_zero hz
    exact Or.inl (sub_eq_zero.mp (norm_eq_zero.mp hn)).symm
  · rw [min_eq_right h] at hz
    have hn : ‖(((w+t : ℝ) : ℂ)-λ)‖=0 := pow_eq_zero hz
    exact Or.inr (sub_eq_zero.mp (norm_eq_zero.mp hn)).symm

/- This quantified family may change block counts and twists with epsilon,
but t,w,lambda remain fixed. Only the two endpoint values can satisfy
its all-epsilon source budget. No such budget is constructed from actual
analytic zeros; this is an obstruction for this family, not a restriction
on all eigenvectors or the whole growing cyclic spectrum. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingShrinkingFamilyObstruction
