# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `431a332683afcc49c26925d6577ad17060256414` · SHA-256 `6c79dddb916b8fd544b29261bc510fdd64ddbe62e615f1549d070910e4acb05f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsPullbackMap.Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsPullbackMap.Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Preserves/Shapes/Square.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.Square
import Mathlib.CategoryTheory.Limits.Yoneda
import Mathlib.CategoryTheory.Limits.Preserves.Ulift

/-!
# Preservations of pullback/pushout squares

If a functor `F : C ⥤ D` preserves suitable cospans (resp. spans),
and `sq : Square C` is a pullback square (resp. a pushout square)
then so is the square`sq.map F`.

The lemma `Square.isPullback_iff_map_coyoneda_isPullback` also
shows that a square is a pullback square iff it is so after the
application of the functor `coyoneda.obj X` for all `X : Cᵒᵖ`.
Similarly, a square is a pushout square iff the opposite
square becomes a pullback square after the application of the
functor `yoneda.obj X` for all `X : C`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsPullbackMap.Variant06dd0a77e70cc782599653549cbdd813285e069da34bce8f070b3b975b46eca3

universe v v' u u'

namespace CategoryTheory

open Opposite Limits

variable {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]

namespace Square

variable {sq : Square C}

lemma IsPullback.map (h : sq.IsPullback) (F : C ⥤ D) [PreservesLimit (cospan sq.f₂₄ sq.f₃₄) F] :
    (sq.map F).IsPullback :=
  Square.IsPullback.mk _ (isLimitPullbackConeMapOfIsLimit F sq.fac h.isLimit)

lemma IsPullback.of_map (F : C ⥤ D) [ReflectsLimit (cospan sq.f₂₄ sq.f₃₄) F]
    (h : (sq.map F).IsPullback) : sq.IsPullback :=
  CategoryTheory.IsPullback.of_map F sq.fac h

variable (sq) in
lemma IsPullback.map_iff (F : C ⥤ D) [PreservesLimit (cospan sq.f₂₄ sq.f₃₄) F]
    [ReflectsLimit (cospan sq.f₂₄ sq.f₃₄) F] :
    (sq.map F).IsPullback ↔ sq.IsPullback :=
  ⟨fun h ↦ of_map F h, fun h ↦ h.map F⟩

lemma IsPushout.map (h : sq.IsPushout) (F : C ⥤ D) [PreservesColimit (span sq.f₁₂ sq.f₁₃) F] :
    (sq.map F).IsPushout :=
  Square.IsPushout.mk _ (isColimitPushoutCoconeMapOfIsColimit F sq.fac h.isColimit)

lemma IsPushout.of_map (F : C ⥤ D) [ReflectsColimit (span sq.f₁₂ sq.f₁₃) F]
    (h : (sq.map F).IsPushout) : sq.IsPushout :=
  CategoryTheory.IsPushout.of_map F sq.fac h

variable (sq) in
lemma IsPushout.map_iff (F : C ⥤ D) [PreservesColimit (span sq.f₁₂ sq.f₁₃) F]
    [ReflectsColimit (span sq.f₁₂ sq.f₁₃) F] :
    (sq.map F).IsPushout ↔ sq.IsPushout :=
  ⟨fun h ↦ of_map F h, fun h ↦ h.map F⟩

variable (sq)

lemma isPullback_iff_map_coyoneda_isPullback :
    sq.IsPullback ↔ ∀ (X : Cᵒᵖ), (sq.map (coyoneda.obj X)).IsPullback :=
  ⟨fun h _ ↦ h.map _, fun h ↦ IsPullback.mk _
    ((sq.pullbackCone.isLimitCoyonedaEquiv).symm (fun X ↦ (h X).isLimit))⟩

lemma isPushout_iff_op_map_yoneda_isPullback :
    sq.IsPushout ↔ ∀ (X : C), (sq.op.map (yoneda.obj X)).IsPullback :=
  ⟨fun h _ ↦ h.op.map _, fun h ↦ IsPushout.mk _
    ((sq.pushoutCocone.isColimitYonedaEquiv).symm
      (fun X ↦ IsLimit.ofIsoLimit (h X).isLimit (PullbackCone.ext (Iso.refl _))))⟩

section

variable {sq₁ : Square (Type v)} {sq₂ : Square (Type u)}
  (e₁ : sq₁.X₁ ≃ sq₂.X₁) (e₂ : sq₁.X₂ ≃ sq₂.X₂)
  (e₃ : sq₁.X₃ ≃ sq₂.X₃) (e₄ : sq₁.X₄ ≃ sq₂.X₄)
  (comm₁₂ : e₂ ∘ sq₁.f₁₂ = sq₂.f₁₂ ∘ e₁)
  (comm₁₃ : e₃ ∘ sq₁.f₁₃ = sq₂.f₁₃ ∘ e₁)
  (comm₂₄ : e₄ ∘ sq₁.f₂₄ = sq₂.f₂₄ ∘ e₂)
  (comm₃₄ : e₄ ∘ sq₁.f₃₄ = sq₂.f₃₄ ∘ e₃)
include comm₁₂ comm₁₃ comm₂₄ comm₃₄

variable (sq₁ sq₂) in
lemma IsPullback.iff_of_equiv : sq₁.IsPullback ↔ sq₂.IsPullback := by
  rw [← IsPullback.map_iff sq₁ uliftFunctor.{max u v},
      ← IsPullback.map_iff sq₂ uliftFunctor.{max u v}]
  refine iff_of_iso (Square.isoMk
    (((Equiv.trans Equiv.ulift e₁).trans Equiv.ulift.symm).toIso)
    (((Equiv.trans Equiv.ulift e₂).trans Equiv.ulift.symm).toIso)
    (((Equiv.trans Equiv.ulift e₃).trans Equiv.ulift.symm).toIso)
    (((Equiv.trans Equiv.ulift e₄).trans Equiv.ulift.symm).toIso)
    ?_ ?_ ?_ ?_)
  all_goals ext; apply ULift.down_injective
  · simpa [types_comp, uliftFunctor_map] using congrFun comm₁₂ _
  · simpa [types_comp, uliftFunctor_map] using congrFun comm₁₃ _
  · simpa [types_comp, uliftFunctor_map] using congrFun comm₂₄ _
  · simpa [types_comp, uliftFunctor_map] using congrFun comm₃₄ _

lemma IsPullback.of_equiv (h₁ : sq₁.IsPullback) : sq₂.IsPullback :=
  (iff_of_equiv sq₁ sq₂ e₁ e₂ e₃ e₄ comm₁₂ comm₁₃ comm₂₄ comm₃₄).1 h₁

end

end Square

end CategoryTheory
```
