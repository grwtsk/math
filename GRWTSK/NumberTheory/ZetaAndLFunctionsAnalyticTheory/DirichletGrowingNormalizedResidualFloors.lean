/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletGrowingTwistFullResidualEnergy

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Actual full-source normalization and residual floors, uniform in block
count. SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingNormalizedResidualFloors
open DirichletGrowingModThreeTwistSource DirichletGrowingCharacterFullNorm
open DirichletGrowingTwistFullResidualEnergy
variable (M : ℕ) [NeZero M] (h3 : 3 ∣ M*3)

def normalizedTwistEnergy (t w : ℝ) (λ : ℂ) (k : ZMod (M*3)) : ℝ :=
  (∑ j : ZMod (M*3), ‖actualTwistResidual M h3 t w λ k j‖^2)/
    (∑ j : ZMod (M*3), ‖twistedCharacter (M*3) h3 k j‖^2)

theorem actual_normalized_twist_energy (t w : ℝ) (λ : ℂ) (k : ZMod (M*3)) :
    normalizedTwistEnergy M h3 t w λ k=
      ‖(((w-t*(ZMod.stdAddChar k).re : ℝ) : ℂ)-λ)‖^2+
        3*(t*(ZMod.stdAddChar k).im)^2 := by
  unfold normalizedTwistEnergy
  rw [actual_growing_full_residual_energy,actual_growing_twist_norm_sq]
  have hM : (M : ℝ)≠0 := by exact_mod_cast NeZero.ne M
  field_simp
  <;> ring

theorem actual_imaginary_parameter_floor (t w : ℝ) (λ : ℂ) (k : ZMod (M*3)) :
    λ.im^2≤normalizedTwistEnergy M h3 t w λ k := by
  rw [actual_normalized_twist_energy]
  have he : ‖(((w-t*(ZMod.stdAddChar k).re : ℝ) : ℂ)-λ)‖^2=
      (w-t*(ZMod.stdAddChar k).re-λ.re)^2+λ.im^2 := by
    simp [Complex.sq_norm,Complex.normSq_apply,pow_two]
    <;> ring
  rw [he]
  nlinarith [sq_nonneg (w-t*(ZMod.stdAddChar k).re-λ.re),
    sq_nonneg (t*(ZMod.stdAddChar k).im)]

theorem actual_twist_leakage_floor (t w : ℝ) (λ : ℂ) (k : ZMod (M*3)) :
    3*(t*(ZMod.stdAddChar k).im)^2≤normalizedTwistEnergy M h3 t w λ k := by
  rw [actual_normalized_twist_energy]
  nlinarith [sq_nonneg ‖(((w-t*(ZMod.stdAddChar k).re : ℝ) : ℂ)-λ)‖]

/- These floors are independent of M. An actual analytic zero-to-source
shrinking budget is still UNSUPPLIED. Increasing dimension or normalizing
the vector does not remove the imaginary-parameter or twist-leakage cost. -/
end GRWTSK.NumberTheory.Zeta.Riemann.DirichletGrowingNormalizedResidualFloors
