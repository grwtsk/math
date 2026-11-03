/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.OperatorTheory.CyclicSecondDifferenceSineMultiplier
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

set_option autoImplicit false
noncomputable section

/-! Quantitative actual multiplier lower bound on a literal half-circle
frequency interval. Cycle-size dependence is explicit. NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceHalfCircleBound
open ZMod CyclicSecondDifferenceSineMultiplier CyclicStandardFourierPhase
variable (N : ℕ) [NeZero N]

theorem sine_multiplier_quadratic_lower (x : ℝ) (hx : 0≤x) (hhalf : x≤Real.pi/2) :
    16*(x/Real.pi)^2 ≤ 4*Real.sin x^2 := by
  have hs := Real.mul_le_sin hx hhalf
  have hp : 0≤2/Real.pi*x := by positivity
  have hsin : 0≤Real.sin x := hp.trans hs
  have hsq := (sq_le_sq₀ hp hsin).mpr hs
  have he : 4*(2/Real.pi*x)^2=16*(x/Real.pi)^2 := by ring
  nlinarith

theorem actual_half_circle_multiplier_lower (k : ℤ) (hk : 0≤k)
    (hhalf : 2*k ≤ (N : ℤ)) :
    16*((k : ℝ)/(N : ℝ))^2 ≤ ‖1-stdAddChar (k : ZMod N)‖^2 := by
  have hN : (0 : ℝ)<N := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)
  have hkr : (0 : ℝ)≤k := by exact_mod_cast hk
  have hhr : 2*(k : ℝ)≤N := by exact_mod_cast hhalf
  have hx : 0≤Real.pi*(k : ℝ)/(N : ℝ) := by positivity
  have hh : Real.pi*(k : ℝ)/(N : ℝ)≤Real.pi/2 := by
    apply (div_le_iff₀ hN).mpr
    nlinarith [mul_nonneg Real.pi_pos.le (sub_nonneg.mpr hhr)]
  have hs := sine_multiplier_quadratic_lower (Real.pi*(k : ℝ)/(N : ℝ)) hx hh
  have he : (Real.pi*(k : ℝ)/(N : ℝ))/Real.pi=(k : ℝ)/(N : ℝ) := by
    field_simp
    <;> ring
  rw [he] at hs
  rw [actual_multiplier_sine]
  have ha : fourierAngle N k/2=Real.pi*(k : ℝ)/(N : ℝ) := by
    unfold fourierAngle
    ring
  rw [ha]
  exact hs

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.CyclicSecondDifferenceHalfCircleBound
