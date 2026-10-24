-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtCompConstAdd.Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.HasDerivAtCompConstAdd.Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c","mathematical_subject":"Analysis.Calculus","original_sha256":"9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Calculus/Deriv/Shift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll, Yaël Dillies
-/
module

public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.Deriv.CompMul

/-!
# Invariance of the derivative under translation

We show that if a function `f` has derivative `f'` at a point `a + x`, then `f (a + ·)`
has derivative `f'` at `x`. Similarly for `x + a`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.HasDerivAtCompConstAdd.Variant9d71d5b273b2a3f9d16c1794f5f2639d8888aa47fdfbd26cef26cac3f0a4b51c

public section

open scoped Pointwise

variable {𝕜 F : Type*} [NontriviallyNormedField 𝕜] [NormedAddCommGroup F] [NormedSpace 𝕜 F]
  {f : 𝕜 → F} {f' : F}

/-- Translation in the domain does not change the derivative. -/
lemma HasDerivAt.comp_const_add (a x : 𝕜) (hf : HasDerivAt f f' (a + x)) :
    HasDerivAt (fun x ↦ f (a + x)) f' x := by
  simpa [Function.comp_def] using HasDerivAt.scomp (𝕜 := 𝕜) x hf <| hasDerivAt_id' x |>.const_add a

/-- Translation in the domain does not change the derivative. -/
lemma HasDerivAt.comp_add_const (x a : 𝕜) (hf : HasDerivAt f f' (x + a)) :
    HasDerivAt (fun x ↦ f (x + a)) f' x := by
  simpa [Function.comp_def] using HasDerivAt.scomp (𝕜 := 𝕜) x hf <| hasDerivAt_id' x |>.add_const a

/-- Translation in the domain does not change the derivative. -/
lemma HasDerivAt.comp_const_sub (a x : 𝕜) (hf : HasDerivAt f f' (a - x)) :
    HasDerivAt (fun x ↦ f (a - x)) (-f') x := by
  simpa [Function.comp_def] using HasDerivAt.scomp (𝕜 := 𝕜) x hf <| hasDerivAt_id' x |>.const_sub a

/-- Translation in the domain does not change the derivative. -/
lemma HasDerivAt.comp_sub_const (x a : 𝕜) (hf : HasDerivAt f f' (x - a)) :
    HasDerivAt (fun x ↦ f (x - a)) f' x := by
  simpa [Function.comp_def] using HasDerivAt.scomp (𝕜 := 𝕜) x hf <| hasDerivAt_id' x |>.sub_const a

variable (f)
variable (a : 𝕜) (s : Set 𝕜) (x : 𝕜)

lemma derivWithin_comp_neg : derivWithin (f <| -·) s x = -derivWithin f (-s) (-x) := by
  simpa using derivWithin_comp_mul_left (-1) f s x

/-- The derivative of `x ↦ f (-x)` at `a` is the negative of the derivative of `f` at `-a`. -/
lemma deriv_comp_neg : deriv (fun x ↦ f (-x)) x = -deriv f (-x) := by
  simpa using deriv_comp_mul_left (-1) f x

/-- Translation in the domain does not change the derivative. -/
lemma derivWithin_comp_const_add :
    derivWithin (f <| a + ·) s x = derivWithin f (a +ᵥ s) (a + x) := by
  simp only [derivWithin, fderivWithin_comp_add_left]

/-- Translation in the domain does not change the derivative. -/
lemma deriv_comp_const_add : deriv (fun x ↦ f (a + x)) x = deriv f (a + x) := by
  simp only [deriv, fderiv_comp_add_left]

/-- Translation in the domain does not change the derivative. -/
lemma derivWithin_comp_add_const :
    derivWithin (f <| · + a) s x = derivWithin f (a +ᵥ s) (x + a) := by
  simp only [derivWithin, fderivWithin_comp_add_right]

/-- Translation in the domain does not change the derivative. -/
lemma deriv_comp_add_const : deriv (fun x ↦ f (x + a)) x = deriv f (x + a) := by
  simpa [add_comm] using deriv_comp_const_add f a x

lemma derivWithin_comp_const_sub :
    derivWithin (f <| a - ·) s x = -derivWithin f (a +ᵥ -s) (a - x) := by
  simp only [sub_eq_add_neg]
  rw [derivWithin_comp_neg (f <| a + ·), derivWithin_comp_const_add]

lemma deriv_comp_const_sub : deriv (fun x ↦ f (a - x)) x = -deriv f (a - x) := by
  simp_rw [sub_eq_add_neg, deriv_comp_neg (f <| a + ·), deriv_comp_const_add]

lemma derivWithin_comp_sub_const :
    derivWithin (fun x ↦ f (x - a)) s x = derivWithin f (-a +ᵥ s) (x - a) := by
  simp_rw [sub_eq_add_neg, derivWithin_comp_add_const]

lemma deriv_comp_sub_const : deriv (fun x ↦ f (x - a)) x = deriv f (x - a) := by
  simp_rw [sub_eq_add_neg, deriv_comp_add_const]
