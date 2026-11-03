/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingNormalizedResidualFloors

set_option autoImplicit false
noncomputable section

/-! Uniform endpoint floor for this actual growing source-vector family.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistEndpointFloor
open DirichletGrowingNormalizedResidualFloors DirichletGrowingTwistRealPhases

theorem unit_circle_energy_interpolation (t w x y : ℝ) (λ : ℂ)
    (hc : x^2+y^2=1) :
    ‖(((w-t*x : ℝ) : ℂ)-λ)‖^2+3*(t*y)^2 =
      ((1+x)/2)*‖(((w-t : ℝ) : ℂ)-λ)‖^2+
      ((1-x)/2)*‖(((w+t : ℝ) : ℂ)-λ)‖^2+2*(t*y)^2 := by
  have ht := congrArg (fun z : ℝ => t^2*z) hc
  simp [Complex.sq_norm,Complex.normSq_apply,pow_two]
  <;> nlinarith

theorem unit_circle_endpoint_floor (t w x y : ℝ) (λ : ℂ)
    (hc : x^2+y^2=1) :
    min ‖(((w-t : ℝ) : ℂ)-λ)‖^2 ‖(((w+t : ℝ) : ℂ)-λ)‖^2 ≤
      ‖(((w-t*x : ℝ) : ℂ)-λ)‖^2+3*(t*y)^2 := by
  have hp : 0≤(1+x)/2 := by nlinarith [sq_nonneg y,sq_nonneg (x+1)]
  have hm : 0≤(1-x)/2 := by nlinarith [sq_nonneg y,sq_nonneg (x-1)]
  have h₁ := mul_le_mul_of_nonneg_left
    (min_le_left ‖(((w-t : ℝ) : ℂ)-λ)‖^2 ‖(((w+t : ℝ) : ℂ)-λ)‖^2) hp
  have h₂ := mul_le_mul_of_nonneg_left
    (min_le_right ‖(((w-t : ℝ) : ℂ)-λ)‖^2 ‖(((w+t : ℝ) : ℂ)-λ)‖^2) hm
  rw [unit_circle_energy_interpolation t w x y λ hc]
  nlinarith [sq_nonneg (t*y)]

theorem actual_growing_endpoint_floor (M : ℕ) [NeZero M] (h3 : 3 ∣ M*3)
    (t w : ℝ) (λ : ℂ) (k : ZMod (M*3)) :
    min ‖(((w-t : ℝ) : ℂ)-λ)‖^2 ‖(((w+t : ℝ) : ℂ)-λ)‖^2 ≤
      normalizedTwistEnergy M h3 t w λ k := by
  rw [actual_normalized_twist_energy]
  exact unit_circle_endpoint_floor t w (ZMod.stdAddChar k).re
    (ZMod.stdAddChar k).im λ (actual_phase_unit_circle (M*3) k)

/- This positive endpoint-distance floor persists at every block size.
It restricts this twisted genuine-character construction, not the entire
cyclic spectrum. No analytic zero supplies residuals below this floor;
changing t or w with the target would change the fixed-source problem. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingTwistEndpointFloor
