-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tfst.Variant9e6339ce2b9b99dc32b1bdbdb962ab6f40da288f9f5ba0c2d2ff197046c88b72","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e6339ce2b9b99dc32b1bdbdb962ab6f40da288f9f5ba0c2d2ff197046c88b72","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Tfst.Variant9e6339ce2b9b99dc32b1bdbdb962ab6f40da288f9f5ba0c2d2ff197046c88b72","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"9e6339ce2b9b99dc32b1bdbdb962ab6f40da288f9f5ba0c2d2ff197046c88b72","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Control/Bitraversable/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Bitraversable.Basic

/-!
# Bitraversable Lemmas

## Main definitions
  * tfst - traverse on first functor argument
  * tsnd - traverse on second functor argument

## Lemmas

Combination of
  * bitraverse
  * tfst
  * tsnd

with the applicatives `id` and `comp`

## References

* Hackage: <https://hackage.haskell.org/package/base-4.12.0.0/docs/Data-Bitraversable.html>

## Tags

traversable bitraversable functor bifunctor applicative


-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tfst.Variant9e6339ce2b9b99dc32b1bdbdb962ab6f40da288f9f5ba0c2d2ff197046c88b72

universe u

variable {t : Type u → Type u → Type u} [Bitraversable t]
variable {β : Type u}

namespace Bitraversable

open Functor LawfulApplicative

variable {F G : Type u → Type u} [Applicative F] [Applicative G]

/-- traverse on the first functor argument -/
abbrev tfst {α α'} (f : α → F α') : t α β → F (t α' β) :=
  bitraverse f pure

/-- traverse on the second functor argument -/
abbrev tsnd {α α'} (f : α → F α') : t β α → F (t β α') :=
  bitraverse pure f

variable [LawfulBitraversable t] [LawfulApplicative F] [LawfulApplicative G]

@[higher_order tfst_id]
theorem id_tfst : ∀ {α β} (x : t α β), tfst (F := Id) pure x = pure x :=
  id_bitraverse

@[higher_order tsnd_id]
theorem id_tsnd : ∀ {α β} (x : t α β), tsnd (F := Id) pure x = pure x :=
  id_bitraverse

@[higher_order tfst_comp_tfst]
theorem comp_tfst {α₀ α₁ α₂ β} (f : α₀ → F α₁) (f' : α₁ → G α₂) (x : t α₀ β) :
    Comp.mk (tfst f' <$> tfst f x) = tfst (Comp.mk ∘ map f' ∘ f) x := by
  rw [← comp_bitraverse]
  simp only [Function.comp_def, tfst, map_pure, Pure.pure]

@[higher_order tfst_comp_tsnd]
theorem tfst_tsnd {α₀ α₁ β₀ β₁} (f : α₀ → F α₁) (f' : β₀ → G β₁) (x : t α₀ β₀) :
    Comp.mk (tfst f <$> tsnd f' x)
      = bitraverse (Comp.mk ∘ pure ∘ f) (Comp.mk ∘ map pure ∘ f') x := by
  rw [← comp_bitraverse]
  simp only [Function.comp_def, map_pure]

@[higher_order tsnd_comp_tfst]
theorem tsnd_tfst {α₀ α₁ β₀ β₁} (f : α₀ → F α₁) (f' : β₀ → G β₁) (x : t α₀ β₀) :
    Comp.mk (tsnd f' <$> tfst f x)
      = bitraverse (Comp.mk ∘ map pure ∘ f) (Comp.mk ∘ pure ∘ f') x := by
  rw [← comp_bitraverse]
  simp only [Function.comp_def, map_pure]

@[higher_order tsnd_comp_tsnd]
theorem comp_tsnd {α β₀ β₁ β₂} (g : β₀ → F β₁) (g' : β₁ → G β₂) (x : t α β₀) :
    Comp.mk (tsnd g' <$> tsnd g x) = tsnd (Comp.mk ∘ map g' ∘ g) x := by
  rw [← comp_bitraverse]
  simp only [Function.comp_def, map_pure]
  rfl

open Bifunctor Function

@[higher_order]
theorem tfst_eq_fst_id {α α' β} (f : α → α') (x : t α β) :
    tfst (F := Id) (pure ∘ f) x = pure (fst f x) := by
  apply bitraverse_eq_bimap_id

@[higher_order]
theorem tsnd_eq_snd_id {α β β'} (f : β → β') (x : t α β) :
    tsnd (F := Id) (pure ∘ f) x = pure (snd f x) := by
  apply bitraverse_eq_bimap_id

attribute [functor_norm] comp_bitraverse comp_tsnd comp_tfst tsnd_comp_tsnd tsnd_comp_tfst
  tfst_comp_tsnd tfst_comp_tfst bitraverse_comp bitraverse_id_id tfst_id tsnd_id

end Bitraversable
