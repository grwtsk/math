# Complete source: GRWTSK.Analysis.TestFunction.Variant57d6384adcf44a451dfbe82d190ffa91c0b9015c57885e12ce39f650dd5c6dcb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05710b3d14196d21bf7516ea4a21b409c4434e4c` · SHA-256 `ca3418702e146a23e8d5fcfb4b512b70aaffba4e59ff277d08796e16631400df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.PrimitiveWeilTestFunction.Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PrimitiveWeilTestFunction.Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/Weil/TestFunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.PrimitiveWeilTestFunction.Variant7154be43a99d94530f6b0072cdaed022e6ee84e93823efc81c8d9bcf7af46989

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
