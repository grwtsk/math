module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.ContDiff.Convolution
public import Mathlib.Analysis.Calculus.FDeriv.Star
public import Mathlib.Tactic.SetNotationForOrder
import Mathlib.Tactic

/-!
# Compactly supported smooth Weil test functions

This module is the coefficient-independent test-function substrate for a
future primitive-character Weil criterion.  A value contains only a smooth
complex function and an explicit support radius.  It contains no positivity,
explicit-formula, zero-location, RH, or GRH field.

Conventions are frozen in `PrimitiveWeilPositivity_DESIGN.md` before this
module is used.  The Weil involution is `g⋆(x) = conj (g(-x))`.
-/

public section

namespace Surface.Core.Weil

noncomputable section

open Set MeasureTheory Complex
open scoped ContDiff

/-- A smooth complex function on `ℝ` with an explicit symmetric compact
support interval.  The radius is data used to obtain finite prime cutoffs;
it is not an analytic estimate or theorem-authority field. -/
structure PrimitiveWeilTestFunction where
  toFun : ℝ → ℂ
  smooth : ContDiff ℝ ∞ toFun
  supportRadius : ℝ
  supportRadius_nonneg : 0 ≤ supportRadius
  support_subset : Function.support toFun ⊆
    Set.Icc (-supportRadius) supportRadius

namespace PrimitiveWeilTestFunction

instance instCoeFunPrimitiveWeilTestFunction :
    CoeFun PrimitiveWeilTestFunction (fun _ ↦ ℝ → ℂ) :=
  ⟨PrimitiveWeilTestFunction.toFun⟩

@[surface_adapter, simp]
theorem coe_mk (f : ℝ → ℂ) (hf : ContDiff ℝ ∞ f)
    (R : ℝ) (hR : 0 ≤ R)
    (hsupport : Function.support f ⊆ Set.Icc (-R) R) :
    ((⟨f, hf, R, hR, hsupport⟩ : PrimitiveWeilTestFunction) : ℝ → ℂ) = f :=
  rfl

@[surface_adapter]
theorem continuous (g : PrimitiveWeilTestFunction) : Continuous g :=
  g.smooth.continuous

@[surface_adapter]
theorem hasCompactSupport (g : PrimitiveWeilTestFunction) :
    HasCompactSupport g :=
  HasCompactSupport.of_support_subset_isCompact isCompact_Icc g.support_subset

@[surface_adapter]
theorem integrable (g : PrimitiveWeilTestFunction) : Integrable g :=
  g.continuous.integrable_of_hasCompactSupport g.hasCompactSupport

@[surface_adapter]
theorem locallyIntegrable (g : PrimitiveWeilTestFunction) :
    LocallyIntegrable g :=
  g.continuous.locallyIntegrable

/-- Weil involution `g⋆(x) = conj (g(-x))`. -/
@[expose]
def star (g : PrimitiveWeilTestFunction) : PrimitiveWeilTestFunction where
  toFun := fun x ↦ Complex.conjCLE (g (-x))
  smooth := by
    have hneg : ContDiff ℝ ∞ (fun x : ℝ ↦ -x) := by
      exact ContDiff.neg (𝕜 := ℝ) (n := ∞)
        (f := fun x : ℝ ↦ x) contDiff_id
    exact Complex.conjCLE.contDiff.comp (g.smooth.comp hneg)
  supportRadius := g.supportRadius
  supportRadius_nonneg := g.supportRadius_nonneg
  support_subset := by
    intro x hx
    have hneg : g (-x) ≠ 0 := by
      intro hzero
      apply hx
      change Complex.conjCLE (g (-x)) = 0
      rw [hzero]
      simp
    rcases g.support_subset hneg with ⟨hlower, hupper⟩
    constructor <;> linarith

@[surface_adapter, simp]
theorem star_apply (g : PrimitiveWeilTestFunction) (x : ℝ) :
    g.star x = Complex.conjCLE (g (-x)) :=
  rfl

@[surface_adapter, simp]
theorem star_supportRadius (g : PrimitiveWeilTestFunction) :
    g.star.supportRadius = g.supportRadius :=
  rfl

@[surface_novel, surface_published]
theorem star_star_apply (g : PrimitiveWeilTestFunction) (x : ℝ) :
    g.star.star x = g x := by
  simp

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
