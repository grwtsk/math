-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreadditiveIsSeparatingIff.Variant331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreadditiveIsSeparatingIff.Variant331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Generator/Preadditive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

public import Mathlib.CategoryTheory.Generator.Basic
public import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic

/-!
# Separators in preadditive categories

This file contains characterizations of separating sets and objects that are valid in all
preadditive categories.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreadditiveIsSeparatingIff.Variant331aa5d06352b8f288ee218b95ad63c9a59137bc063b8cf8ad405c21f89586f2

public section


universe v u

open CategoryTheory Opposite

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [Preadditive C]

theorem Preadditive.isSeparating_iff (P : ObjectProperty C) :
    P.IsSeparating ↔
      ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ (G : C) (_ : P G), ∀ (h : G ⟶ X), h ≫ f = 0) → f = 0 :=
  ⟨fun h𝒢 X Y f hf => h𝒢 _ _ (by simpa only [Limits.comp_zero] using hf), fun h𝒢 X Y f g hfg =>
    sub_eq_zero.1 <| h𝒢 _ (by simpa only [Preadditive.comp_sub, sub_eq_zero] using hfg)⟩

theorem Preadditive.isCoseparating_iff (P : ObjectProperty C) :
    P.IsCoseparating ↔
      ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ (G : C) (_ : P G), ∀ (h : Y ⟶ G), f ≫ h = 0) → f = 0 :=
  ⟨fun h𝒢 X Y f hf => h𝒢 _ _ (by simpa only [Limits.zero_comp] using hf), fun h𝒢 X Y f g hfg =>
    sub_eq_zero.1 <| h𝒢 _ (by simpa only [Preadditive.sub_comp, sub_eq_zero] using hfg)⟩

theorem Preadditive.isSeparator_iff (G : C) :
    IsSeparator G ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ h : G ⟶ X, h ≫ f = 0) → f = 0 :=
  ⟨fun hG X Y f hf => hG.def _ _ (by simpa only [Limits.comp_zero] using hf), fun hG =>
    (isSeparator_def _).2 fun X Y f g hfg =>
      sub_eq_zero.1 <| hG _ (by simpa only [Preadditive.comp_sub, sub_eq_zero] using hfg)⟩

theorem Preadditive.isCoseparator_iff (G : C) :
    IsCoseparator G ↔ ∀ ⦃X Y : C⦄ (f : X ⟶ Y), (∀ h : Y ⟶ G, f ≫ h = 0) → f = 0 :=
  ⟨fun hG X Y f hf => hG.def _ _ (by simpa only [Limits.zero_comp] using hf), fun hG =>
    (isCoseparator_def _).2 fun X Y f g hfg =>
      sub_eq_zero.1 <| hG _ (by simpa only [Preadditive.sub_comp, sub_eq_zero] using hfg)⟩

theorem isSeparator_iff_faithful_preadditiveCoyoneda (G : C) :
    IsSeparator G ↔ (preadditiveCoyoneda.obj (op G)).Faithful := by
  rw [isSeparator_iff_faithful_coyoneda_obj, ← whiskering_preadditiveCoyoneda, Functor.comp_obj,
    Functor.whiskeringRight_obj_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget AddCommGrpCat),
    fun h => Functor.Faithful.comp _ _⟩

theorem isSeparator_iff_faithful_preadditiveCoyonedaObj (G : C) :
    IsSeparator G ↔ (preadditiveCoyonedaObj G).Faithful := by
  rw [isSeparator_iff_faithful_preadditiveCoyoneda, preadditiveCoyoneda_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget₂ _ AddCommGrpCat.{v}),
    fun h => Functor.Faithful.comp _ _⟩

theorem isCoseparator_iff_faithful_preadditiveYoneda (G : C) :
    IsCoseparator G ↔ (preadditiveYoneda.obj G).Faithful := by
  rw [isCoseparator_iff_faithful_yoneda_obj, ← whiskering_preadditiveYoneda, Functor.comp_obj,
    Functor.whiskeringRight_obj_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget AddCommGrpCat),
    fun h => Functor.Faithful.comp _ _⟩

theorem isCoseparator_iff_faithful_preadditiveYonedaObj (G : C) :
    IsCoseparator G ↔ (preadditiveYonedaObj G).Faithful := by
  rw [isCoseparator_iff_faithful_preadditiveYoneda, preadditiveYoneda_obj]
  exact ⟨fun h => Functor.Faithful.of_comp _ (forget₂ _ AddCommGrpCat.{v}),
    fun h => Functor.Faithful.comp _ _⟩

end CategoryTheory
