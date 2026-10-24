# Complete source: GRWTSK.Analysis.TestFunction.Variant37ee872a67b9bf398dd69d12d5f226109a2eb9a5105f4553e425c648a270e65b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b99a3c4d0f802c2ca61c7360652ba8dd66f0e78` · SHA-256 `7b1babdea6c2c00ab5d8eae79b6976a7d19bb05bc41c72aa771d0b7665ac463b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.PrimitiveWeilTestFunction.Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PrimitiveWeilTestFunction.Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:0fb42e20fee1ea48f0f02cd1/workspace/lib/SurfaceCore/Surface/Core/Weil/TestFunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.PrimitiveWeilTestFunction.Variant7873e65cf372d5ca5ed4e466352232cfdead414a8028d4f09ddfe786fbe78d5d

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
```
