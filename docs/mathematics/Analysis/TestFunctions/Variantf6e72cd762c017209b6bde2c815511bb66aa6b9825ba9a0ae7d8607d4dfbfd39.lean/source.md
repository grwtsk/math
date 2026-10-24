# Complete source: GRWTSK.Analysis.TestFunction.Variantf6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85b1f95a69335d5bf239a8bca1303ef30e64ad33` · SHA-256 `f6e72cd762c017209b6bde2c815511bb66aa6b9825ba9a0ae7d8607d4dfbfd39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.Calculus.ContDiff.Convolution
public import Mathlib.Analysis.Calculus.FDeriv.Star
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

instance : CoeFun PrimitiveWeilTestFunction (fun _ ↦ ℝ → ℂ) :=
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
  toFun := fun x ↦ conj (g (-x))
  smooth := by
    exact Complex.conjCLE.contDiff.comp
      (g.smooth.comp (contDiff_neg contDiff_id))
  supportRadius := g.supportRadius
  supportRadius_nonneg := g.supportRadius_nonneg
  support_subset := by
    intro x hx
    have hneg : g (-x) ≠ 0 := by
      intro hzero
      exact hx (by simp [hzero])
    have hbounds := g.support_subset hneg
    constructor <;> linarith

@[surface_adapter, simp]
theorem star_apply (g : PrimitiveWeilTestFunction) (x : ℝ) :
    g.star x = conj (g (-x)) :=
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
```
