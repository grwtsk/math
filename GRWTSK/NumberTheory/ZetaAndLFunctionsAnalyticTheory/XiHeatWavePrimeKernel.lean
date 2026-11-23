/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiGaussianPrimeProfile
import Mathlib.Tactic

/-! The two shifted Fourier Gaussians for the arithmetic wave and its two-point kernel. -/
namespace GRWTSK.XiHeatWavePrimeKernel
open Complex MeasureTheory
open GRWTSK.XiGaussianPrimeProfile
noncomputable section

theorem modulated_gaussian (t r w x : ℝ) :
    Complex.exp (-(t:ℂ)*x^2-Complex.I*w*x)*Complex.cos ((r:ℂ)*x) =
    (wave (t/2) 0 (w-r) x+wave (t/2) 0 (w+r) x)/2 := by
  simp only [wave,Complex.cos,ofReal_div,ofReal_ofNat,ofReal_zero,sub_zero,ofReal_add,ofReal_sub]
  rw [mul_div_assoc',mul_add,←Complex.exp_add,←Complex.exp_add]
  congr 2 <;> congr 1 <;> ring

theorem modulated_integral {t : ℝ} (ht : 0<t) (r w : ℝ) :
    (∫ x : ℝ, Complex.exp (-(t:ℂ)*x^2-Complex.I*w*x)*Complex.cos ((r:ℂ)*x)) =
    (Real.pi/(t:ℂ))^(1/2:ℂ) *
    (Complex.exp (-((w:ℂ)-r)^2/(4*t)) + Complex.exp (-((w:ℂ)+r)^2/(4*t)))/2 := by
  simp_rw [modulated_gaussian]
  have hh : 0 < t/2 := half_pos ht
  rw [integral_div,integral_add (wave_integrable hh ..) (wave_integrable hh ..),
    wave_integral hh, wave_integral hh]
  push_cast
  simp only [mul_zero,sub_zero]
  ring_nf

theorem two_point_energy (H V x y : ℝ) :
    2*(H*x^2+2*V*x*y+H*y^2) = (H+V)*(x+y)^2+(H-V)*(x-y)^2 := by ring

theorem two_point_positive_iff (H V : ℝ) :
    (∀ x y : ℝ, 0 ≤ H*x^2+2*V*x*y+H*y^2) ↔ |V| ≤ H := by
  constructor
  · intro h; apply abs_le.mpr; constructor <;> nlinarith [h 1 1,h 1 (-1)]
  · intro h x y
    obtain ⟨hl,hu⟩ := abs_le.mp h
    nlinarith [two_point_energy H V x y,mul_nonneg (show 0 ≤ H+V by linarith) (sq_nonneg (x+y)),
      mul_nonneg (sub_nonneg.mpr hu) (sq_nonneg (x-y))]

end
end GRWTSK.XiHeatWavePrimeKernel
