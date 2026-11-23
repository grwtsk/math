/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.Calculus.Deriv.Pow
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

/-! # Compression of signed scattering packets and integration of their density

The signed contraction can be either sign of the reflected scattering
involution. The scalar integral evaluates the spectral lower bound arising
from the dense lattice of translated bilateral theta pulses.
-/
noncomputable section
namespace GRWTSK.NumberTheory.XiCuspSignedHankel

open Real MeasureTheory

section
variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

/-- Reflection interchanges paired translates, so their two parity
combinations belong to the two distinct eigenspaces. -/
theorem paired_eigenvectors (J : E →L[ℂ] E) {u v : E} (h₁ : J u = v) (h₂ : J v = u) :
    J (u+v) = u+v ∧ J (u-v) = -(u-v) := by
  simp only [map_add,map_sub,h₁,h₂]
  constructor <;> abel

/-- A self-adjoint contraction fixing a packet has quadratic Rayleigh
loss after an arbitrary truncation. No spectral hypothesis on the clipping
map is needed. -/
theorem quadratic_loss (J : E →L[ℂ] E)
    (hs : ∀ u v : E, inner ℂ (J u) v = inner ℂ u (J v))
    (hc : ∀ u : E, ‖J u‖ ≤ ‖u‖) {f : E} (hf : J f = f) (x : E) :
    (inner ℂ x (x-J x)).re ≤ 2*‖x-f‖^2 := by
  have hzero : inner ℂ f (x - J x) = 0 := by
    rw [inner_sub_right, ← hs, hf, sub_self]
  have hform : inner ℂ x (x-J x) = inner ℂ (x-f) ((x-f)-J (x-f)) := by
    have he : (x-f)-J (x-f)=x-J x := by rw [map_sub,hf]; abel
    rw [he,inner_sub_left,hzero,sub_zero]
  rw [hform]
  calc
    _ ≤ ‖x-f‖*‖(x-f)-J (x-f)‖ :=
      (Complex.re_le_norm _).trans (norm_inner_le_norm ..)
    _ ≤ ‖x-f‖*(‖x-f‖+‖x-f‖) := by
      apply mul_le_mul_of_nonneg_left _ (norm_nonneg _)
      exact (norm_sub_le ..).trans (add_le_add le_rfl (hc _))
    _ = _ := by ring

end

/-- Number of trial packets per sign divided by the exponential radius. -/
def density (a : ℝ) := 8/π*a^2*exp (-2*a)

/-- Lower exponential rate for the spectral gap at the prescribed density. -/
def gapRate (a : ℝ) := 2*π*(1-2*a)*exp (-2*a)

theorem density_derivative (a : ℝ) :
    HasDerivAt density (16/π*a*(1-a)*exp (-2*a)) a := by
  have he := ((hasDerivAt_id a).const_mul (-2 : ℝ)).exp
  convert (((hasDerivAt_id a).pow 2).const_mul (8/π)).mul he using 1
  · rfl
  · simp
    ring

/-- Substitution of the lattice spacing into the loss exponent. -/
theorem density_gap {a : ℝ} (_ha : a ≠ 0) :
    2*π*exp (-2*a)-π^2*density a/(2*a) = gapRate a := by
  unfold density gapRate
  field_simp [pi_ne_zero,_ha]
  ring

/-- Contribution from the sum over both signs. -/
theorem density_integrand (a : ℝ) :
    2*gapRate a*(16/π*a*(1-a)*exp (-2*a)) =
      64*a*(1-a)*(1-2*a)*exp (-4*a) := by
  unfold gapRate
  rw [show -4*a=(-2*a)+(-2*a) by ring,exp_add]
  field_simp
  ring

private theorem density_primitive (t : ℝ) :
    HasDerivAt (fun a : ℝ => (-32*a^3+24*a^2-4*a-1)*exp (-4*a))
      (64*t*(1-t)*(1-2*t)*exp (-4*t)) t := by
  have hi := hasDerivAt_id t
  have hp := (((((hi.pow 3).const_mul (-32 : ℝ)).add ((hi.pow 2).const_mul 24)).sub
    (hi.const_mul 4)).sub_const 1)
  convert hp.mul (hi.const_mul (-4 : ℝ)).exp using 1
  · rfl
  · simp
    ring

/-- Integrated signed density for the lower bound on the regularized
Fredholm determinant in the window scale. -/
theorem integrated_density :
    (∫ a in (0:ℝ)..1/2, 64*a*(1-a)*(1-2*a)*exp (-4*a)) = 1-exp (-2) := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun u _ => density_primitive u)
    (Continuous.intervalIntegrable (by fun_prop) ..)]
  norm_num
  ring

/-- Product of the two signed third-order determinant factors. -/
theorem regularized_product (r : ℝ) :
    ((1+r)*exp (-r+r^2/2))*((1-r)*exp (r+r^2/2)) = (1-r^2)*exp (r^2) := by
  rw [mul_mul_mul_comm, ← exp_add]
  congr 1 <;> ring

end GRWTSK.NumberTheory.XiCuspSignedHankel
