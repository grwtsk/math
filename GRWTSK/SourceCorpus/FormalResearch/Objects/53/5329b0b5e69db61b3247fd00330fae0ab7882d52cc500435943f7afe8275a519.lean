module

public meta import Surface.Core.Classification
public import Surface.Core.Weil.TestFunction
public import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.Tactic

/-!
# Weil autocorrelation

The autocorrelation is the literal additive convolution `g ⋆ g⋆` using
complex multiplication and Lebesgue measure.  This module proves only exact
test-function identities.  It contains no arithmetic coefficient, positivity,
explicit-formula, RH, or GRH assertion.
-/

public section

namespace Surface.Core.Weil

noncomputable section

open Set MeasureTheory Complex
open scoped ContDiff ComplexConjugate Pointwise

/-- Complex multiplication as the continuous bilinear map used by the
canonical convolution. -/
@[expose]
def complexMultiplication : ℂ →L[ℝ] ℂ →L[ℝ] ℂ :=
  ContinuousLinearMap.mul ℝ ℂ

namespace PrimitiveWeilTestFunction

/-- Raw autocorrelation function `g ⋆ g⋆`. -/
@[expose]
def autocorrelationFun (g : PrimitiveWeilTestFunction) : ℝ → ℂ :=
  MeasureTheory.convolution g g.star complexMultiplication volume

@[surface_adapter]
theorem autocorrelationFun_apply (g : PrimitiveWeilTestFunction) (x : ℝ) :
    autocorrelationFun g x =
      ∫ y : ℝ, g y * conj (g (y - x)) := by
  rw [autocorrelationFun, MeasureTheory.convolution_def]
  apply integral_congr_ae
  filter_upwards with y
  simp [complexMultiplication, star_apply]

/-- The autocorrelation, packaged again as a compactly supported smooth Weil
test function. -/
@[expose]
def autocorrelation (g : PrimitiveWeilTestFunction) :
    PrimitiveWeilTestFunction where
  toFun := autocorrelationFun g
  smooth := by
    exact g.star.hasCompactSupport.contDiff_convolution_right
      complexMultiplication g.locallyIntegrable g.star.smooth
  supportRadius := 2 * g.supportRadius
  supportRadius_nonneg := mul_nonneg (by norm_num) g.supportRadius_nonneg
  support_subset := by
    intro x hx
    have hsum : x ∈ Function.support g + Function.support g.star :=
      MeasureTheory.support_convolution_subset complexMultiplication hx
    rcases hsum with ⟨a, ha, b, hb, hab⟩
    rcases g.support_subset ha with ⟨haLower, haUpper⟩
    rcases g.star.support_subset hb with ⟨hbLower, hbUpper⟩
    rw [star_supportRadius] at hbLower hbUpper
    change a + b = x at hab
    constructor <;> linarith

@[surface_adapter, simp]
theorem autocorrelation_apply (g : PrimitiveWeilTestFunction) (x : ℝ) :
    g.autocorrelation x = ∫ y : ℝ, g y * conj (g (y - x)) :=
  autocorrelationFun_apply g x

@[surface_adapter, simp]
theorem autocorrelation_supportRadius (g : PrimitiveWeilTestFunction) :
    g.autocorrelation.supportRadius = 2 * g.supportRadius :=
  rfl

/-- Autocorrelation is Hermitian under reflection. -/
@[surface_novel, surface_published]
theorem autocorrelation_neg (g : PrimitiveWeilTestFunction) (x : ℝ) :
    g.autocorrelation (-x) = conj (g.autocorrelation x) := by
  rw [autocorrelation_apply, autocorrelation_apply, ← integral_conj]
  simp only [sub_neg_eq_add, map_mul, Complex.conj_conj]
  rw [← MeasureTheory.integral_add_right_eq_self
    (fun y : ℝ ↦ conj (g y) * g (y - x)) x]
  apply integral_congr_ae
  filter_upwards with y
  simp only [add_sub_cancel_right]
  ring

/-- The value at zero is the exact `L²` energy integral. -/
@[surface_novel, surface_published]
theorem autocorrelation_zero (g : PrimitiveWeilTestFunction) :
    g.autocorrelation 0 =
      ∫ y : ℝ, ((‖g y‖ ^ 2 : ℝ) : ℂ) := by
  rw [autocorrelation_apply]
  apply integral_congr_ae
  filter_upwards with y
  simp [Complex.mul_conj']

/-- The packaged support bound is available as an explicit theorem for
prime-cutoff and transform clients. -/
@[surface_novel, surface_published]
theorem autocorrelation_support (g : PrimitiveWeilTestFunction) :
    Function.support g.autocorrelation ⊆
      Set.Icc (-(2 * g.supportRadius)) (2 * g.supportRadius) := by
  exact g.autocorrelation.support_subset

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
