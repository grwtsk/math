# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ComplexDeriv.Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ba1507a68a258fb18ad9daa7e51c06018f9bd3d` · SHA-256 `d2d06ad0a83d6d40345090b42238f1d9ae54c4f7345a3750b836702e0603da7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictDerivAtTan.Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasStrictDerivAtTan.Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff","mathematical_subject":"Analysis.Calculus","original_sha256":"c7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Trigonometric/ComplexDeriv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Benjamin Davidson
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasStrictDerivAtTan.Variantc7df2f93a81dd3477c06318ce296fa5bd220b0180143fe407d9199a478ed90ff

#align_import analysis.special_functions.trigonometric.complex_deriv from "leanprover-community/mathlib"@"2c1d8ca2812b64f88992a5294ea3dba144755cd1"

/-!
# Complex trigonometric functions

Basic facts and derivatives for the complex trigonometric functions.
-/


noncomputable section

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

namespace Complex

open Set Filter

open scoped Real

theorem hasStrictDerivAt_tan {x : ℂ} (h : cos x ≠ 0) : HasStrictDerivAt tan (1 / cos x ^ 2) x := by
  convert (hasStrictDerivAt_sin x).div (hasStrictDerivAt_cos x) h using 1
  rw_mod_cast [← sin_sq_add_cos_sq x]
  ring
#align complex.has_strict_deriv_at_tan Complex.hasStrictDerivAt_tan

theorem hasDerivAt_tan {x : ℂ} (h : cos x ≠ 0) : HasDerivAt tan (1 / cos x ^ 2) x :=
  (hasStrictDerivAt_tan h).hasDerivAt
#align complex.has_deriv_at_tan Complex.hasDerivAt_tan

open scoped Topology

theorem tendsto_abs_tan_of_cos_eq_zero {x : ℂ} (hx : cos x = 0) :
    Tendsto (fun x => abs (tan x)) (𝓝[≠] x) atTop := by
  simp only [tan_eq_sin_div_cos, ← norm_eq_abs, norm_div]
  have A : sin x ≠ 0 := fun h => by simpa [*, sq] using sin_sq_add_cos_sq x
  have B : Tendsto cos (𝓝[≠] x) (𝓝[≠] 0) :=
    hx ▸ (hasDerivAt_cos x).tendsto_punctured_nhds (neg_ne_zero.2 A)
  exact continuous_sin.continuousWithinAt.norm.mul_atTop (norm_pos_iff.2 A)
    (tendsto_norm_nhdsWithin_zero.comp B).inv_tendsto_zero
#align complex.tendsto_abs_tan_of_cos_eq_zero Complex.tendsto_abs_tan_of_cos_eq_zero

theorem tendsto_abs_tan_atTop (k : ℤ) :
    Tendsto (fun x => abs (tan x)) (𝓝[≠] ((2 * k + 1) * π / 2 : ℂ)) atTop :=
  tendsto_abs_tan_of_cos_eq_zero <| cos_eq_zero_iff.2 ⟨k, rfl⟩
#align complex.tendsto_abs_tan_at_top Complex.tendsto_abs_tan_atTop

@[simp]
theorem continuousAt_tan {x : ℂ} : ContinuousAt tan x ↔ cos x ≠ 0 := by
  refine' ⟨fun hc h₀ => _, fun h => (hasDerivAt_tan h).continuousAt⟩
  exact not_tendsto_nhds_of_tendsto_atTop (tendsto_abs_tan_of_cos_eq_zero h₀) _
    (hc.norm.tendsto.mono_left inf_le_left)
#align complex.continuous_at_tan Complex.continuousAt_tan

@[simp]
theorem differentiableAt_tan {x : ℂ} : DifferentiableAt ℂ tan x ↔ cos x ≠ 0 :=
  ⟨fun h => continuousAt_tan.1 h.continuousAt, fun h => (hasDerivAt_tan h).differentiableAt⟩
#align complex.differentiable_at_tan Complex.differentiableAt_tan

@[simp]
theorem deriv_tan (x : ℂ) : deriv tan x = 1 / cos x ^ 2 :=
  if h : cos x = 0 then by
    have : ¬DifferentiableAt ℂ tan x := mt differentiableAt_tan.1 (Classical.not_not.2 h)
    simp [deriv_zero_of_not_differentiableAt this, h, sq]
  else (hasDerivAt_tan h).deriv
#align complex.deriv_tan Complex.deriv_tan

@[simp]
theorem contDiffAt_tan {x : ℂ} {n : ℕ∞} : ContDiffAt ℂ n tan x ↔ cos x ≠ 0 :=
  ⟨fun h => continuousAt_tan.1 h.continuousAt, contDiff_sin.contDiffAt.div contDiff_cos.contDiffAt⟩
#align complex.cont_diff_at_tan Complex.contDiffAt_tan

end Complex
```
