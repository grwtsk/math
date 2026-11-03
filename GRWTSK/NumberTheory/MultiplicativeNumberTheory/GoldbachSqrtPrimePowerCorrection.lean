/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Chebyshev estimates by Alastair Irving, Terry Tao and Ruben Van de Velde
retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.GoldbachChebyshevContamination

set_option autoImplicit false
noncomputable section

/-!
# Uniform square-root proper-power correction

The stronger imported psi-theta estimate yields a positive constant
uniform over every natural cutoff. Consequently actual contamination
is at most C sqrt(N) log(N+1), without the extra log(N) in the previous
explicit bound. This supplies no binary correlation lower estimate.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.NumberTheory.Primes.GoldbachSqrtPrimePowerCorrection
open GoldbachChebyshevContamination GoldbachMangoldtContamination
open GoldbachMangoldtContaminationBound

theorem properPowerMass_uniform_sqrt_bound :
    ∃ C : ℝ, 0 < C ∧ ∀ N : ℕ, properPowerMass N ≤ C * Real.sqrt (N : ℝ) := by
  obtain ⟨C, hC⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  refine ⟨|C| + 1, by positivity, fun N => ?_⟩
  rw [properPowerMass_eq_chebyshev_difference]
  exact (hC (N : ℝ)).trans
    (mul_le_mul_of_nonneg_right ((le_abs_self C).trans (by linarith)) (Real.sqrt_nonneg _))

theorem contamination_uniform_sqrt_log_bound :
    ∃ C : ℝ, 0 < C ∧ ∀ N : ℕ,
      contamination N ≤ C * Real.sqrt (N : ℝ) * Real.log ((N : ℝ) + 1) := by
  obtain ⟨C, hC, hbound⟩ := properPowerMass_uniform_sqrt_bound
  refine ⟨2 * C, by positivity, fun N => ?_⟩
  calc
    contamination N ≤ 2 * Real.log ((N : ℝ) + 1) * properPowerMass N :=
      contamination_le_properPowerMass N
    _ ≤ 2 * Real.log ((N : ℝ) + 1) * (C * Real.sqrt (N : ℝ)) :=
      mul_le_mul_of_nonneg_left (hbound N) (by positivity)
    _ = (2 * C) * Real.sqrt (N : ℝ) * Real.log ((N : ℝ) + 1) := by ring

end GRWTSK.NumberTheory.Primes.GoldbachSqrtPrimePowerCorrection
