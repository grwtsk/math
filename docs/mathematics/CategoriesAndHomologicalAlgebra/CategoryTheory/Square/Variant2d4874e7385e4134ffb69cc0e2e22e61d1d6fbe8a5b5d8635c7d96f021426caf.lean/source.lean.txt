-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackCone.Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PullbackCone.Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/Pullback/Square.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.MorphismProperty.Limits
import Mathlib.CategoryTheory.Square
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq

/-!
# Commutative squares that are pushout or pullback squares

In this file, we translate the `IsPushout` and `IsPullback`
API for the objects of the category `Square C` of commutative
squares in a category `C`. We also obtain lemmas which states
in this language that a pullback of a monomorphism is
a monomorphism (and similarly for pushouts of epimorphisms).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PullbackCone.Variant229826d9c6b01cdabe2f283b9fc0f0212485bcaa31d2f8025f3873bd7d4a9e1d

universe v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

namespace Square

variable (sq : Square C)

/-- The pullback cone attached to a commutative square. -/
abbrev pullbackCone : PullbackCone sq.f₂₄ sq.f₃₄ :=
  PullbackCone.mk sq.f₁₂ sq.f₁₃ sq.fac

/-- The pushout cocone attached to a commutative square. -/
abbrev pushoutCocone : PushoutCocone sq.f₁₂ sq.f₁₃ :=
  PushoutCocone.mk sq.f₂₄ sq.f₃₄ sq.fac

/-- The condition that a commutative square is a pullback square. -/
protected def IsPullback : Prop :=
  IsPullback sq.f₁₂ sq.f₁₃ sq.f₂₄ sq.f₃₄

/-- The condition that a commutative square is a pushout square. -/
protected def IsPushout : Prop :=
  IsPushout sq.f₁₂ sq.f₁₃ sq.f₂₄ sq.f₃₄

lemma isPullback_iff :
    sq.IsPullback ↔ Nonempty (IsLimit sq.pullbackCone) :=
  ⟨fun h ↦ ⟨h.isLimit⟩, fun h ↦ { w := sq.fac, isLimit' := h }⟩

lemma isPushout_iff :
    sq.IsPushout ↔ Nonempty (IsColimit sq.pushoutCocone) :=
  ⟨fun h ↦ ⟨h.isColimit⟩, fun h ↦ { w := sq.fac, isColimit' := h }⟩

lemma IsPullback.mk (h : IsLimit sq.pullbackCone) : sq.IsPullback :=
  sq.isPullback_iff.2 ⟨h⟩

lemma IsPushout.mk (h : IsColimit sq.pushoutCocone) : sq.IsPushout :=
  sq.isPushout_iff.2 ⟨h⟩

variable {sq}

/-- If a commutative square `sq` is a pullback square,
then `sq.pullbackCone` is limit. -/
noncomputable def IsPullback.isLimit (h : sq.IsPullback) :
    IsLimit sq.pullbackCone :=
  CategoryTheory.IsPullback.isLimit h

/-- If a commutative square `sq` is a pushout square,
then `sq.pushoutCocone` is colimit. -/
noncomputable def IsPushout.isColimit (h : sq.IsPushout) :
    IsColimit sq.pushoutCocone :=
  CategoryTheory.IsPushout.isColimit h

lemma IsPullback.of_iso {sq₁ sq₂ : Square C} (h : sq₁.IsPullback)
    (e : sq₁ ≅ sq₂) : sq₂.IsPullback := by
  refine CategoryTheory.IsPullback.of_iso h
    (evaluation₁.mapIso e) (evaluation₂.mapIso e)
    (evaluation₃.mapIso e) (evaluation₄.mapIso e) ?_ ?_ ?_ ?_
  all_goals simp

lemma IsPullback.iff_of_iso {sq₁ sq₂ : Square C} (e : sq₁ ≅ sq₂) :
    sq₁.IsPullback ↔ sq₂.IsPullback :=
  ⟨fun h ↦ h.of_iso e, fun h ↦ h.of_iso e.symm⟩

lemma IsPushout.of_iso {sq₁ sq₂ : Square C} (h : sq₁.IsPushout)
    (e : sq₁ ≅ sq₂) : sq₂.IsPushout := by
  refine CategoryTheory.IsPushout.of_iso h
    (evaluation₁.mapIso e) (evaluation₂.mapIso e)
    (evaluation₃.mapIso e) (evaluation₄.mapIso e) ?_ ?_ ?_ ?_
  all_goals simp

lemma IsPushout.iff_of_iso {sq₁ sq₂ : Square C} (e : sq₁ ≅ sq₂) :
    sq₁.IsPushout ↔ sq₂.IsPushout :=
  ⟨fun h ↦ h.of_iso e, fun h ↦ h.of_iso e.symm⟩

lemma IsPushout.op {sq : Square C} (h : sq.IsPushout) : sq.op.IsPullback :=
  CategoryTheory.IsPushout.op h.flip

lemma IsPushout.unop {sq : Square Cᵒᵖ} (h : sq.IsPushout) : sq.unop.IsPullback :=
  CategoryTheory.IsPushout.unop h.flip

lemma IsPullback.op {sq : Square C} (h : sq.IsPullback) : sq.op.IsPushout :=
  CategoryTheory.IsPullback.op h.flip

lemma IsPullback.unop {sq : Square Cᵒᵖ} (h : sq.IsPullback) : sq.unop.IsPushout :=
  CategoryTheory.IsPullback.unop h.flip

namespace IsPullback

variable (h : sq.IsPullback)

include h

lemma flip : sq.flip.IsPullback := CategoryTheory.IsPullback.flip h

lemma mono_f₁₃ [Mono sq.f₂₄] : Mono sq.f₁₃ :=
  (MorphismProperty.monomorphisms C).of_isPullback h (by assumption)

lemma mono_f₁₂ [Mono sq.f₃₄] : Mono sq.f₁₂ := by
  have : Mono sq.flip.f₂₄ := by dsimp; infer_instance
  exact h.flip.mono_f₁₃

end IsPullback

namespace IsPushout

variable (h : sq.IsPushout)

include h

lemma flip : sq.flip.IsPushout := CategoryTheory.IsPushout.flip h

lemma epi_f₂₄ [Epi sq.f₁₃] : Epi sq.f₂₄ :=
  (MorphismProperty.epimorphisms C).of_isPushout h (by assumption)

lemma epi_f₃₄ [Epi sq.f₁₂] : Epi sq.f₃₄ := by
  have : Epi sq.flip.f₁₃ := by dsimp; infer_instance
  exact h.flip.epi_f₂₄

end IsPushout

end Square

end CategoryTheory
