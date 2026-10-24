-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.IsThetaOfReal.Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.IsThetaOfReal.Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Complex/Asymptotics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.Asymptotics.Theta

/-!
# Lemmas about asymptotics and the natural embedding `ℝ → ℂ`

In this file we prove several trivial lemmas about `Asymptotics.IsBigO` etc. and `(↑) : ℝ → ℂ`.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.IsThetaOfReal.Variant5e0d9a0fda0f8cd935d52dee9a2f9982b18a2a52e373cc90e772a7b1b1101192

public section

namespace Complex

variable {α E : Type*} [Norm E] {l : Filter α}

theorem isTheta_ofReal (f : α → ℝ) (l : Filter α) : (f · : α → ℂ) =Θ[l] f :=
  .of_norm_left <| by simpa using (Asymptotics.isTheta_rfl (f := f)).norm_left

@[simp, norm_cast]
theorem isLittleO_ofReal_left {f : α → ℝ} {g : α → E} : (f · : α → ℂ) =o[l] g ↔ f =o[l] g :=
  (isTheta_ofReal f l).isLittleO_congr_left

@[simp, norm_cast]
theorem isLittleO_ofReal_right {f : α → E} {g : α → ℝ} : f =o[l] (g · : α → ℂ) ↔ f =o[l] g :=
  (isTheta_ofReal g l).isLittleO_congr_right

@[simp, norm_cast]
theorem isBigO_ofReal_left {f : α → ℝ} {g : α → E} : (f · : α → ℂ) =O[l] g ↔ f =O[l] g :=
  (isTheta_ofReal f l).isBigO_congr_left

@[simp, norm_cast]
theorem isBigO_ofReal_right {f : α → E} {g : α → ℝ} : f =O[l] (g · : α → ℂ) ↔ f =O[l] g :=
  (isTheta_ofReal g l).isBigO_congr_right

@[simp, norm_cast]
theorem isTheta_ofReal_left {f : α → ℝ} {g : α → E} : (f · : α → ℂ) =Θ[l] g ↔ f =Θ[l] g :=
  (isTheta_ofReal f l).isTheta_congr_left

@[simp, norm_cast]
theorem isTheta_ofReal_right {f : α → E} {g : α → ℝ} : f =Θ[l] (g · : α → ℂ) ↔ f =Θ[l] g :=
  (isTheta_ofReal g l).isTheta_congr_right

open scoped Topology

lemma isBigO_comp_ofReal_nhds {f g : ℂ → ℂ} {x : ℝ} (h : f =O[𝓝 (x : ℂ)] g) :
    (fun y : ℝ ↦ f y) =O[𝓝 x] (fun y : ℝ ↦ g y) :=
  h.comp_tendsto <| continuous_ofReal.tendsto x

lemma isBigO_comp_ofReal_nhds_ne {f g : ℂ → ℂ} {x : ℝ} (h : f =O[𝓝[≠] (x : ℂ)] g) :
    (fun y : ℝ ↦ f y) =O[𝓝[≠] x] (fun y : ℝ ↦ g y) :=
  h.comp_tendsto <| continuous_ofReal.continuousWithinAt.tendsto_nhdsWithin fun _ _ ↦ by simp_all

lemma isBigO_re_sub_re {z : ℂ} : (fun (w : ℂ) ↦ w.re - z.re) =O[𝓝 z] fun w ↦ w - z :=
  Asymptotics.isBigO_of_le _ fun w ↦ abs_re_le_norm (w - z)

lemma isBigO_im_sub_im {z : ℂ} : (fun (w : ℂ) ↦ w.im - z.im) =O[𝓝 z] fun w ↦ w - z :=
  Asymptotics.isBigO_of_le _ fun w ↦ abs_im_le_norm (w - z)

end Complex

section Int

open Filter in
lemma Int.cast_complex_isTheta_cast_real : Int.cast (R := ℂ) =Θ[cofinite] Int.cast (R := ℝ) := by
  apply Asymptotics.IsTheta.of_norm_eventuallyEq_norm
  filter_upwards with n using by simp

end Int
