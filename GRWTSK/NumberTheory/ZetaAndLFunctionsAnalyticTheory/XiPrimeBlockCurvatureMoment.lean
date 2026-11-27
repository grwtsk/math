/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Gamma moments of the signed block's curvature polynomial

All integrals use Lebesgue measure on the positive real ray. The density is
the unnormalized Gamma(3/4,1) density. Its normalization is Γ(3/4).
-/

noncomputable section
namespace GRWTSK.XiPrimeBlockCurvatureMoment
open MeasureTheory Set

def density (x : ℝ) : ℝ := Real.exp (-x) * x ^ ((3/4:ℝ)-1)
def curvature (x : ℝ) : ℝ := 2-10*x+4*x^2
private def kernel (j : ℕ) (x : ℝ) : ℝ := Real.exp (-x) * x ^ ((3/4:ℝ)+j-1)

private theorem integrable_kernel (j : ℕ) : IntegrableOn (kernel j) (Ioi (0:ℝ)) :=
  Real.GammaIntegral_convergent (s := 3/4+(j:ℝ)) (by positivity)

private theorem int_kernel (j : ℕ) :
    (∫ x in Ioi (0:ℝ), kernel j x) = Real.Gamma (3/4+(j:ℝ)) :=
  (Real.Gamma_eq_integral (s := 3/4+(j:ℝ)) (by positivity)).symm

private theorem kernel_eq (j : ℕ) {x : ℝ} (hx : 0 < x) :
    kernel j x = density x * x^j := by
  unfold kernel density
  rw [show (3/4:ℝ)+j-1 = (3/4-1)+(j:ℝ) by ring, Real.rpow_add hx, Real.rpow_natCast]
  ring

private theorem density_integrable : IntegrableOn density (Ioi (0:ℝ)) := by
  exact Real.GammaIntegral_convergent (s := (3/4:ℝ)) (by norm_num)

theorem density_mass :
    (∫ x in Ioi (0:ℝ), density x) = Real.Gamma (3/4) := by
  simpa [density,kernel] using int_kernel 0

private theorem density_nonneg {x : ℝ} (hx : 0 ≤ x) : 0 ≤ density x :=
  mul_nonneg (Real.exp_nonneg _) (Real.rpow_nonneg hx _)

private theorem gamma_eval :
    4*Real.Gamma (3/4) - 40*Real.Gamma (3/4+1) + 116*Real.Gamma (3/4+2) -
      80*Real.Gamma (3/4+3) + 16*Real.Gamma (3/4+4) = (865/16)*Real.Gamma (3/4) := by
  rw [show (3/4:ℝ)+4 = (3/4+3)+1 by norm_num, Real.Gamma_add_one (by norm_num : (3/4:ℝ)+3 ≠ 0),
    show (3/4:ℝ)+3 = (3/4+2)+1 by norm_num, Real.Gamma_add_one (by norm_num : (3/4:ℝ)+2 ≠ 0),
    show (3/4:ℝ)+2 = (3/4+1)+1 by norm_num, Real.Gamma_add_one (by norm_num : (3/4:ℝ)+1 ≠ 0),
    Real.Gamma_add_one (by norm_num : (3/4:ℝ) ≠ 0)]
  ring

private def expansion (x : ℝ) : ℝ :=
  4*kernel 0 x - 40*kernel 1 x + 116*kernel 2 x - 80*kernel 3 x + 16*kernel 4 x

private theorem expansion_eq {x : ℝ} (hx : 0 < x) :
    expansion x = density x * (curvature x)^2 := by
  unfold expansion curvature
  simp only [kernel_eq _ hx]
  ring

private theorem integrable_expansion : IntegrableOn expansion (Ioi (0:ℝ)) :=
  (((((integrable_kernel 0).const_mul 4).sub ((integrable_kernel 1).const_mul 40)).add
     ((integrable_kernel 2).const_mul 116)).sub ((integrable_kernel 3).const_mul 80)).add
     ((integrable_kernel 4).const_mul 16)

private theorem integrable_square :
    IntegrableOn (fun x => density x * (curvature x)^2) (Ioi (0:ℝ)) := by
  apply integrable_expansion.congr_fun _ measurableSet_Ioi
  intro x hx
  exact expansion_eq hx

/-- Exact unnormalized second moment of the quadratic curvature polynomial. -/
theorem square_moment :
    (∫ x in Ioi (0:ℝ), density x * (curvature x)^2) = (865/16)*Real.Gamma (3/4) := by
  rw [setIntegral_congr_fun measurableSet_Ioi (fun x hx => (expansion_eq hx).symm)]
  unfold expansion
  have h₀ := (integrable_kernel 0).const_mul (4:ℝ)
  have h₁ := (integrable_kernel 1).const_mul (40:ℝ)
  have h₂ := (integrable_kernel 2).const_mul (116:ℝ)
  have h₃ := (integrable_kernel 3).const_mul (80:ℝ)
  have h₄ := (integrable_kernel 4).const_mul (16:ℝ)
  have h₅ : IntegrableOn (fun x => 4*kernel 0 x-40*kernel 1 x) (Ioi (0:ℝ)) := h₀.sub h₁
  have h₆ : IntegrableOn (fun x => 4*kernel 0 x-40*kernel 1 x+116*kernel 2 x) (Ioi (0:ℝ)) := h₅.add h₂
  have h₇ : IntegrableOn (fun x => 4*kernel 0 x-40*kernel 1 x+116*kernel 2 x-80*kernel 3 x) (Ioi (0:ℝ)) := h₆.sub h₃
  rw [integral_add h₇ h₄, integral_sub h₆ h₃, integral_add h₅ h₂, integral_sub h₀ h₁]
  simp only [integral_const_mul, int_kernel, Nat.cast_ofNat, Nat.cast_zero, add_zero, Nat.cast_one]
  exact gamma_eval

private theorem integrable_weighted_abs :
    IntegrableOn (fun x => density x * |curvature x|) (Ioi (0:ℝ)) := by
  have hc : IntegrableOn (fun x => density x * curvature x) (Ioi (0:ℝ)) := by
    have h : IntegrableOn (fun x => 2*kernel 0 x - 10*kernel 1 x + 4*kernel 2 x) (Ioi (0:ℝ)) :=
      (((integrable_kernel 0).const_mul (2:ℝ)).sub ((integrable_kernel 1).const_mul 10)).add
        ((integrable_kernel 2).const_mul 4)
    apply h.congr_fun _ measurableSet_Ioi
    intro x hx
    change 2*kernel 0 x - 10*kernel 1 x + 4*kernel 2 x = density x * curvature x
    simp only [kernel_eq _ hx,curvature]
    ring
  have hcc : IntegrableOn (fun x => |density x * curvature x|) (Ioi (0:ℝ)) := hc.abs
  apply hcc.congr_fun _ measurableSet_Ioi
  intro x hx
  change |density x * curvature x| = density x * |curvature x|
  rw [abs_mul, abs_of_nonneg (density_nonneg hx.le)]

/-- The normalized mean absolute curvature is at most sqrt(865)/4. -/
theorem absolute_moment_le :
    (∫ x in Ioi (0:ℝ), density x * |curvature x|) ≤ (Real.sqrt 865/4)*Real.Gamma (3/4) := by
  let t : ℝ := Real.sqrt 865 / 4
  have ht : 0 < t := by dsimp [t]; positivity
  have ht2 : t^2 = 865/16 := by dsimp [t]; nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 865)]
  have hcmp := setIntegral_mono_on (integrable_weighted_abs.const_mul (2*t))
    (integrable_square.add (density_integrable.const_mul (t^2))) measurableSet_Ioi
    (fun x (hx : x ∈ Ioi (0:ℝ)) => by
      change (2*t)*(density x * |curvature x|) ≤ density x * (curvature x)^2 + t^2*density x
      have hsq := mul_nonneg (density_nonneg hx.le) (sq_nonneg (|curvature x|-t))
      rw [show (|curvature x|-t)^2 = (curvature x)^2 - 2*t*|curvature x| + t^2 by
        rw [sub_sq, sq_abs]; ring] at hsq
      nlinarith only [hsq])
  change (∫ x in Ioi (0:ℝ), (2*t)*(density x*|curvature x|)) ≤
    ∫ x in Ioi (0:ℝ), density x*(curvature x)^2 + t^2*density x at hcmp
  rw [integral_add integrable_square (density_integrable.const_mul (t^2)), integral_const_mul,
    integral_const_mul, square_moment, density_mass, ← ht2] at hcmp
  change _ ≤ t*Real.Gamma (3/4)
  have hh : (2*t)*(∫ x in Ioi (0:ℝ), density x*|curvature x|) ≤
      (2*t)*(t*Real.Gamma (3/4)) := by linarith only [hcmp]
  exact le_of_mul_le_mul_left hh (by positivity)

end GRWTSK.XiPrimeBlockCurvatureMoment
