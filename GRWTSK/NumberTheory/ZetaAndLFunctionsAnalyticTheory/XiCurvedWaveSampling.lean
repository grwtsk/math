/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic

/-! Exponent estimates for the curved quadrature of Gaussian prime waves. -/
namespace GRWTSK.XiCurvedWaveSampling

/-- Reserve part of the Gaussian for summability before the contour shift. -/
theorem gaussian_strip {t : ℝ} (ht : 0 < t) (g y : ℝ) :
    -t*g^2 + g*y ≤ -(t/2)*g^2 + y^2/(2*t) := by
  have h := (le_div_iff₀ (show 0 < 2*t by positivity)).2
    (show (-t*g^2 + g*y + (t/2)*g^2)*(2*t) ≤ y^2 by nlinarith [sq_nonneg (t*g-y)])
  linarith

/-- At index exponent two thirds the best gain using half the Gaussian remains positive. -/
theorem critical_gain {t b : ℝ} (ht : 0 < t) (hb : 0 < b) :
    let δ := 9*Real.pi*t/(2*b^2)
    2*Real.pi*δ - (2*b*δ/3)^2/(2*t) = 9*Real.pi^2*t/(2*b^2) := by
  dsimp
  field_simp
  ring

theorem gaussian_window_margin {t B : ℝ} (ht : 0 < t) (hB : 2*t < B^2) :
    1/2 - B^2/(4*t) < 0 := by
  have h := (lt_div_iff₀ (show 0 < 4*t by positivity)).2 (by linarith : (1/2 : ℝ)*(4*t)<B^2)
  linarith

end GRWTSK.XiCurvedWaveSampling
