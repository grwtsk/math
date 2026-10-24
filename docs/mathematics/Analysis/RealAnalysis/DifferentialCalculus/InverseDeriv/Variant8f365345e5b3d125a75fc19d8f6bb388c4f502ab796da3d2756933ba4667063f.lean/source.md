# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.InverseDeriv.Variant8f365345e5b3d125a75fc19d8f6bb388c4f502ab796da3d2756933ba4667063f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0b05fec6aaffb7fec17cb2be7bf6e915d70294e` · SHA-256 `13dd9360ea07a2e5648e09c3f78c5d9563dbc70f1715e90406eea431a538ad76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivArcsinAux.Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivArcsinAux.Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481","mathematical_subject":"Analysis.Calculus","original_sha256":"907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/SpecialFunctions/Trigonometric/InverseDeriv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Benjamin Davidson
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

/-!
# derivatives of the inverse trigonometric functions

Derivatives of `arcsin` and `arccos`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivArcsinAux.Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481

noncomputable section

open scoped Topology Filter Real ContDiff
open Set

namespace Real

section Arcsin

theorem deriv_arcsin_aux {x : ℝ} (h₁ : x ≠ -1) (h₂ : x ≠ 1) :
    HasStrictDerivAt arcsin (1 / √(1 - x ^ 2)) x ∧ ContDiffAt ℝ ω arcsin x := by
  rcases h₁.lt_or_lt with h₁ | h₁
  · have : 1 - x ^ 2 < 0 := by nlinarith [h₁]
    rw [sqrt_eq_zero'.2 this.le, div_zero]
    have : arcsin =ᶠ[𝓝 x] fun _ => -(π / 2) :=
      (gt_mem_nhds h₁).mono fun y hy => arcsin_of_le_neg_one hy.le
    exact ⟨(hasStrictDerivAt_const x _).congr_of_eventuallyEq this.symm,
      contDiffAt_const.congr_of_eventuallyEq this⟩
  rcases h₂.lt_or_lt with h₂ | h₂
  · have : 0 < √(1 - x ^ 2) := sqrt_pos.2 (by nlinarith [h₁, h₂])
    simp only [← cos_arcsin, one_div] at this ⊢
    exact ⟨sinPartialHomeomorph.hasStrictDerivAt_symm ⟨h₁, h₂⟩ this.ne' (hasStrictDerivAt_sin _),
      sinPartialHomeomorph.contDiffAt_symm_deriv this.ne' ⟨h₁, h₂⟩ (hasDerivAt_sin _)
        contDiff_sin.contDiffAt⟩
  · have : 1 - x ^ 2 < 0 := by nlinarith [h₂]
    rw [sqrt_eq_zero'.2 this.le, div_zero]
    have : arcsin =ᶠ[𝓝 x] fun _ => π / 2 := (lt_mem_nhds h₂).mono fun y hy => arcsin_of_one_le hy.le
    exact ⟨(hasStrictDerivAt_const x _).congr_of_eventuallyEq this.symm,
      contDiffAt_const.congr_of_eventuallyEq this⟩

theorem hasStrictDerivAt_arcsin {x : ℝ} (h₁ : x ≠ -1) (h₂ : x ≠ 1) :
    HasStrictDerivAt arcsin (1 / √(1 - x ^ 2)) x :=
  (deriv_arcsin_aux h₁ h₂).1

theorem hasDerivAt_arcsin {x : ℝ} (h₁ : x ≠ -1) (h₂ : x ≠ 1) :
    HasDerivAt arcsin (1 / √(1 - x ^ 2)) x :=
  (hasStrictDerivAt_arcsin h₁ h₂).hasDerivAt

theorem contDiffAt_arcsin {x : ℝ} (h₁ : x ≠ -1) (h₂ : x ≠ 1) {n : WithTop ℕ∞} :
    ContDiffAt ℝ n arcsin x :=
  (deriv_arcsin_aux h₁ h₂).2.of_le le_top

theorem hasDerivWithinAt_arcsin_Ici {x : ℝ} (h : x ≠ -1) :
    HasDerivWithinAt arcsin (1 / √(1 - x ^ 2)) (Ici x) x := by
  rcases eq_or_ne x 1 with (rfl | h')
  · convert (hasDerivWithinAt_const (1 : ℝ) _ (π / 2)).congr _ _ <;>
      simp +contextual [arcsin_of_one_le]
  · exact (hasDerivAt_arcsin h h').hasDerivWithinAt

theorem hasDerivWithinAt_arcsin_Iic {x : ℝ} (h : x ≠ 1) :
    HasDerivWithinAt arcsin (1 / √(1 - x ^ 2)) (Iic x) x := by
  rcases em (x = -1) with (rfl | h')
  · convert (hasDerivWithinAt_const (-1 : ℝ) _ (-(π / 2))).congr _ _ <;>
      simp +contextual [arcsin_of_le_neg_one]
  · exact (hasDerivAt_arcsin h' h).hasDerivWithinAt

theorem differentiableWithinAt_arcsin_Ici {x : ℝ} :
    DifferentiableWithinAt ℝ arcsin (Ici x) x ↔ x ≠ -1 := by
  refine ⟨?_, fun h => (hasDerivWithinAt_arcsin_Ici h).differentiableWithinAt⟩
  rintro h rfl
  have : sin ∘ arcsin =ᶠ[𝓝[≥] (-1 : ℝ)] id := by
    filter_upwards [Icc_mem_nhdsGE (neg_lt_self zero_lt_one)] with x using sin_arcsin'
  have := h.hasDerivWithinAt.sin.congr_of_eventuallyEq this.symm (by simp)
  simpa using (uniqueDiffOn_Ici _ _ left_mem_Ici).eq_deriv _ this (hasDerivWithinAt_id _ _)

theorem differentiableWithinAt_arcsin_Iic {x : ℝ} :
    DifferentiableWithinAt ℝ arcsin (Iic x) x ↔ x ≠ 1 := by
  refine ⟨fun h => ?_, fun h => (hasDerivWithinAt_arcsin_Iic h).differentiableWithinAt⟩
  rw [← neg_neg x, ← image_neg_Ici] at h
  have := (h.comp (-x) differentiableWithinAt_id.neg (mapsTo_image _ _)).neg
  simpa [(· ∘ ·), differentiableWithinAt_arcsin_Ici] using this

theorem differentiableAt_arcsin {x : ℝ} : DifferentiableAt ℝ arcsin x ↔ x ≠ -1 ∧ x ≠ 1 :=
  ⟨fun h => ⟨differentiableWithinAt_arcsin_Ici.1 h.differentiableWithinAt,
      differentiableWithinAt_arcsin_Iic.1 h.differentiableWithinAt⟩,
    fun h => (hasDerivAt_arcsin h.1 h.2).differentiableAt⟩

@[simp]
theorem deriv_arcsin : deriv arcsin = fun x => 1 / √(1 - x ^ 2) := by
  funext x
  by_cases h : x ≠ -1 ∧ x ≠ 1
  · exact (hasDerivAt_arcsin h.1 h.2).deriv
  · rw [deriv_zero_of_not_differentiableAt (mt differentiableAt_arcsin.1 h)]
    simp only [not_and_or, Ne, Classical.not_not] at h
    rcases h with (rfl | rfl) <;> simp

theorem differentiableOn_arcsin : DifferentiableOn ℝ arcsin {-1, 1}ᶜ := fun _x hx =>
  (differentiableAt_arcsin.2
      ⟨fun h => hx (Or.inl h), fun h => hx (Or.inr h)⟩).differentiableWithinAt

theorem contDiffOn_arcsin {n : WithTop ℕ∞} : ContDiffOn ℝ n arcsin {-1, 1}ᶜ := fun _x hx =>
  (contDiffAt_arcsin (mt Or.inl hx) (mt Or.inr hx)).contDiffWithinAt

theorem contDiffAt_arcsin_iff {x : ℝ} {n : WithTop ℕ∞} :
    ContDiffAt ℝ n arcsin x ↔ n = 0 ∨ x ≠ -1 ∧ x ≠ 1 :=
  ⟨fun h => or_iff_not_imp_left.2 fun hn => differentiableAt_arcsin.1 <| h.differentiableAt <|
      ENat.one_le_iff_ne_zero_withTop.mpr hn,
    fun h => h.elim (fun hn => hn.symm ▸ (contDiff_zero.2 continuous_arcsin).contDiffAt) fun hx =>
      contDiffAt_arcsin hx.1 hx.2⟩

end Arcsin

section Arccos

theorem hasStrictDerivAt_arccos {x : ℝ} (h₁ : x ≠ -1) (h₂ : x ≠ 1) :
    HasStrictDerivAt arccos (-(1 / √(1 - x ^ 2))) x :=
  (hasStrictDerivAt_arcsin h₁ h₂).const_sub (π / 2)

theorem hasDerivAt_arccos {x : ℝ} (h₁ : x ≠ -1) (h₂ : x ≠ 1) :
    HasDerivAt arccos (-(1 / √(1 - x ^ 2))) x :=
  (hasDerivAt_arcsin h₁ h₂).const_sub (π / 2)

theorem contDiffAt_arccos {x : ℝ} (h₁ : x ≠ -1) (h₂ : x ≠ 1) {n : WithTop ℕ∞} :
    ContDiffAt ℝ n arccos x :=
  contDiffAt_const.sub (contDiffAt_arcsin h₁ h₂)

theorem hasDerivWithinAt_arccos_Ici {x : ℝ} (h : x ≠ -1) :
    HasDerivWithinAt arccos (-(1 / √(1 - x ^ 2))) (Ici x) x :=
  (hasDerivWithinAt_arcsin_Ici h).const_sub _

theorem hasDerivWithinAt_arccos_Iic {x : ℝ} (h : x ≠ 1) :
    HasDerivWithinAt arccos (-(1 / √(1 - x ^ 2))) (Iic x) x :=
  (hasDerivWithinAt_arcsin_Iic h).const_sub _

theorem differentiableWithinAt_arccos_Ici {x : ℝ} :
    DifferentiableWithinAt ℝ arccos (Ici x) x ↔ x ≠ -1 :=
  (differentiableWithinAt_const_sub_iff _).trans differentiableWithinAt_arcsin_Ici

theorem differentiableWithinAt_arccos_Iic {x : ℝ} :
    DifferentiableWithinAt ℝ arccos (Iic x) x ↔ x ≠ 1 :=
  (differentiableWithinAt_const_sub_iff _).trans differentiableWithinAt_arcsin_Iic

theorem differentiableAt_arccos {x : ℝ} : DifferentiableAt ℝ arccos x ↔ x ≠ -1 ∧ x ≠ 1 :=
  (differentiableAt_const _).sub_iff_right.trans differentiableAt_arcsin

@[simp]
theorem deriv_arccos : deriv arccos = fun x => -(1 / √(1 - x ^ 2)) :=
  funext fun x => (deriv_const_sub _).trans <| by simp only [deriv_arcsin]

theorem differentiableOn_arccos : DifferentiableOn ℝ arccos {-1, 1}ᶜ :=
  differentiableOn_arcsin.const_sub _

theorem contDiffOn_arccos {n : WithTop ℕ∞} : ContDiffOn ℝ n arccos {-1, 1}ᶜ :=
  contDiffOn_const.sub contDiffOn_arcsin

theorem contDiffAt_arccos_iff {x : ℝ} {n : WithTop ℕ∞} :
    ContDiffAt ℝ n arccos x ↔ n = 0 ∨ x ≠ -1 ∧ x ≠ 1 := by
  refine Iff.trans ⟨fun h => ?_, fun h => ?_⟩ contDiffAt_arcsin_iff <;>
    simpa [arccos] using (contDiffAt_const (c := π / 2)).sub h

end Arccos

end Real
```
