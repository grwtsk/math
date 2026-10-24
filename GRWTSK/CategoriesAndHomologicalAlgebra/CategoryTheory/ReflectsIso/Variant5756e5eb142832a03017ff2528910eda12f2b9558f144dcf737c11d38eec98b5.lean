-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIsomorphisms.Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ReflectsIsomorphisms.Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Functor/ReflectsIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Balanced
import Mathlib.CategoryTheory.Functor.EpiMono
import Mathlib.CategoryTheory.Functor.FullyFaithful


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ReflectsIsomorphisms.Variant792a0e55b9a85fe19670980096877226cee51def9dbc57bfded1bf26e14cd9cb

#align_import category_theory.functor.reflects_isomorphisms from "leanprover-community/mathlib"@"32253a1a1071173b33dc7d6a218cf722c6feb514"

/-!
# Functors which reflect isomorphisms

A functor `F` reflects isomorphisms if whenever `F.map f` is an isomorphism, `f` was too.

It is formalized as a `Prop` valued typeclass `ReflectsIsomorphisms F`.

Any fully faithful functor reflects isomorphisms.
-/


open CategoryTheory CategoryTheory.Functor

namespace CategoryTheory

universe v₁ v₂ v₃ u₁ u₂ u₃

variable {C : Type u₁} [Category.{v₁} C]

section ReflectsIso

variable {D : Type u₂} [Category.{v₂} D]

variable {E : Type u₃} [Category.{v₃} E]

/-- Define what it means for a functor `F : C ⥤ D` to reflect isomorphisms: for any
morphism `f : A ⟶ B`, if `F.map f` is an isomorphism then `f` is as well.
Note that we do not assume or require that `F` is faithful.
-/
class ReflectsIsomorphisms (F : C ⥤ D) : Prop where
  /-- For any `f`, if `F.map f` is an iso, then so was `f`-/
  reflects : ∀ {A B : C} (f : A ⟶ B) [IsIso (F.map f)], IsIso f
#align category_theory.reflects_isomorphisms CategoryTheory.ReflectsIsomorphisms

/-- If `F` reflects isos and `F.map f` is an iso, then `f` is an iso. -/
theorem isIso_of_reflects_iso {A B : C} (f : A ⟶ B) (F : C ⥤ D) [IsIso (F.map f)]
    [ReflectsIsomorphisms F] : IsIso f :=
  ReflectsIsomorphisms.reflects F f
#align category_theory.is_iso_of_reflects_iso CategoryTheory.isIso_of_reflects_iso

instance (priority := 100) reflectsIsomorphisms_of_full_and_faithful
    (F : C ⥤ D) [Full F] [Faithful F] :
    ReflectsIsomorphisms F
    where reflects f i :=
    ⟨⟨F.preimage (inv (F.map f)), ⟨F.map_injective (by simp), F.map_injective (by simp)⟩⟩⟩
#align category_theory.of_full_and_faithful CategoryTheory.reflectsIsomorphisms_of_full_and_faithful

instance reflectsIsomorphisms_of_comp (F : C ⥤ D) (G : D ⥤ E)
    [ReflectsIsomorphisms F] [ReflectsIsomorphisms G] :
    ReflectsIsomorphisms (F ⋙ G) :=
  ⟨fun f (hf : IsIso (G.map _)) => by
    haveI := isIso_of_reflects_iso (F.map f) G
    exact isIso_of_reflects_iso f F⟩

instance (priority := 100) reflectsIsomorphisms_of_reflectsMonomorphisms_of_reflectsEpimorphisms
    [Balanced C] (F : C ⥤ D) [ReflectsMonomorphisms F] [ReflectsEpimorphisms F] :
    ReflectsIsomorphisms F where
  reflects f hf := by
    haveI : Epi f := epi_of_epi_map F inferInstance
    haveI : Mono f := mono_of_mono_map F inferInstance
    exact isIso_of_mono_of_epi f
#align category_theory.reflects_isomorphisms_of_reflects_monomorphisms_of_reflects_epimorphisms CategoryTheory.reflectsIsomorphisms_of_reflectsMonomorphisms_of_reflectsEpimorphisms

end ReflectsIso

end CategoryTheory
