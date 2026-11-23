/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Gaussian.FourierTransform
import Mathlib.Tactic

/-! Fourier transform of the two translated Gaussians in the high-order heat explicit formula. -/
namespace GRWTSK.XiGaussianPrimeProfile
open MeasureTheory Complex
noncomputable section

def wave (t s w : ℝ) (x : ℝ) : ℂ :=
  Complex.exp (-2*(t:ℂ)*((x:ℂ)-s)^2-Complex.I*w*x)

theorem wave_integrable {t : ℝ} (ht : 0 < t) (s w : ℝ) : Integrable (wave t s w) := by
  have h := integrable_cexp_quadratic' (b := -2*(t:ℂ)) (by simp; linarith)
    (4*(t:ℂ)*s-Complex.I*w) (-2*(t:ℂ)*s^2)
  convert h using 1
  ext x
  unfold wave
  congr 1
  ring

theorem wave_integral {t : ℝ} (ht : 0 < t) (s w : ℝ) :
    (∫ x, wave t s w x) =
    (Real.pi/(2*(t:ℂ)))^(1/2:ℂ) *
    Complex.exp (-(w:ℂ)^2/(8*t)-Complex.I*w*s) := by
  have h := integral_cexp_quadratic (b := -2*(t:ℂ)) (by simp; linarith)
    (4*(t:ℂ)*s-Complex.I*w) (-2*(t:ℂ)*s^2)
  have hn : (t:ℂ) ≠ 0 := by exact_mod_cast ht.ne'
  calc
    _ = ∫ x : ℝ, Complex.exp ((-2*(t:ℂ))*(x:ℂ)^2+
      (4*(t:ℂ)*s-Complex.I*w)*x-2*(t:ℂ)*s^2) := by
        apply integral_congr_ae; filter_upwards with x; unfold wave; congr 1; ring
    _ = _ := by
      simp only [neg_mul] at h ⊢
      convert h using 1 <;> push_cast <;> congr 2 <;> field_simp <;>
        ring_nf <;> simp [Complex.I_sq,sub_eq_add_neg]

theorem two_wave_integral {t : ℝ} (ht : 0<t) (s w : ℝ) :
    (∫ x, wave t s w x+wave t (-s) w x) =
    (Real.pi/(2*(t:ℂ)))^(1/2:ℂ) * Complex.exp (-(w:ℂ)^2/(8*t)) *
      (2*Complex.cos ((w:ℂ)*s)) := by
  rw [integral_add (wave_integrable ht _ _) (wave_integrable ht _ _),
    wave_integral ht, wave_integral ht]
  push_cast
  simp only [sub_eq_add_neg, Complex.exp_add, Complex.cos]
  ring_nf

end
end GRWTSK.XiGaussianPrimeProfile
