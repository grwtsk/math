/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib character and norm facts retain upstream authorship and licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletAnalyticBoundaryConstruction

set_option autoImplicit false
noncomputable section

/-!
# Conditioning cost of the analytic-preserving boundary solution

The explicit solution parameter has denominator D from the actual
Hurwitz row and cyclic operator. A positive lower bound d<=norm(D)
controls its size by 2 abs(t)/d and controls the entire vector change.
No source-specific d is supplied. These costs do not estimate the
remaining cyclic residual. SOURCE_PROOF_CANDIDATES / NOT_RUN.
-/
namespace GRWTSK.NumberTheory.Zeta.Riemann.DirichletBoundaryConditioning
open DirichletAnalyticBoundaryConstruction DirichletAnalyticNullPatch
open DirichletSourceVectorConstruction

variable (level : ℕ) [NeZero level]

def repairParameter (χ : DirichletCharacter ℂ level) (s z : ℂ)
    (t : ℝ) (q : ZMod level → ℝ) : ℂ :=
  -((t : ℂ) * (1 + χ (-1))) / boundaryCoefficient level s z t q

theorem unit_phase_sum_norm_le_two (χ : DirichletCharacter ℂ level) :
    ‖1 + χ (-1)‖ ≤ 2 := by
  have hu : ‖χ (-1)‖ = 1 := by simpa using χ.unit_norm_eq_one (-1)
  calc
    _ ≤ ‖(1 : ℂ)‖ + ‖χ (-1)‖ := norm_add_le _ _
    _ = 2 := by rw [norm_one, hu]; norm_num

theorem repairParameter_norm (χ : DirichletCharacter ℂ level) (s z : ℂ)
    (t : ℝ) (q : ZMod level → ℝ) :
    ‖repairParameter level χ s z t q‖ =
      |t| * ‖1 + χ (-1)‖ / ‖boundaryCoefficient level s z t q‖ := by
  simp [repairParameter, norm_div, norm_neg, norm_mul, Complex.norm_real, Real.norm_eq_abs]

theorem repairParameter_norm_le (χ : DirichletCharacter ℂ level) (s z : ℂ)
    (t : ℝ) (q : ZMod level → ℝ) (d : ℝ) (hd : 0 < d)
    (hD : d ≤ ‖boundaryCoefficient level s z t q‖) :
    ‖repairParameter level χ s z t q‖ ≤ 2 * |t| / d := by
  rw [repairParameter_norm]
  apply (div_le_div_iff₀ (hd.trans_le hD) hd).mpr
  have hn := mul_le_mul_of_nonneg_left (unit_phase_sum_norm_le_two level χ) (abs_nonneg t)
  calc
    (|t| * ‖1 + χ (-1)‖) * d ≤ (2 * |t|) * d :=
      mul_le_mul_of_nonneg_right (by nlinarith) hd.le
    _ ≤ (2 * |t|) * ‖boundaryCoefficient level s z t q‖ :=
      mul_le_mul_of_nonneg_left hD (by positivity)

theorem complete_repair_norm_le (χ : DirichletCharacter ℂ level) (s z : ℂ)
    (t : ℝ) (q : ZMod level → ℝ) (d : ℝ) (hd : 0 < d)
    (hD : d ≤ ‖boundaryCoefficient level s z t q‖) :
    ‖repairedVector level χ s (repairParameter level χ s z t q) - sourceVector level χ‖ ≤
      (2 * |t| / d) * (‖analyticRow level s 0 1‖ + ‖analyticRow level s 0 0‖) :=
  (repair_norm_bound level χ s _).trans (mul_le_mul_of_nonneg_right
    (repairParameter_norm_le level χ s z t q d hd hD) (add_nonneg (norm_nonneg _) (norm_nonneg _)))

end GRWTSK.NumberTheory.Zeta.Riemann.DirichletBoundaryConditioning
