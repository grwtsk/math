-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant03b4b6c4b69e9778c0d769bb08035a0f4d9ffbd9a63287121bad59d9f919d891","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03b4b6c4b69e9778c0d769bb08035a0f4d9ffbd9a63287121bad59d9f919d891","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Filtered.Variant03b4b6c4b69e9778c0d769bb08035a0f4d9ffbd9a63287121bad59d9f919d891","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"03b4b6c4b69e9778c0d769bb08035a0f4d9ffbd9a63287121bad59d9f919d891","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Preserves/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.CategoryTheory.Limits.Preserves.Filtered

/-!

# Forgetful functor from `Over X` preserves cofiltered limits

Note that `Over.forget X : Over X ⥤ C` already preserves all colimits because it is a left adjoint.
See `Mathlib/CategoryTheory/Comma/Over/Pullback.lean`

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant03b4b6c4b69e9778c0d769bb08035a0f4d9ffbd9a63287121bad59d9f919d891

public section

namespace CategoryTheory.Limits

variable {C : Type*} [Category* C]

attribute [local instance] IsFiltered.nonempty IsCofiltered.nonempty

set_option backward.defeqAttrib.useBackward true in
instance {X : C} : PreservesCofilteredLimitsOfSize (Over.forget X) := by
  refine ⟨fun J hJ hJ' ↦ ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨.ofExistsUnique fun s ↦ ?_⟩⟩⟩⟩
  obtain i := Nonempty.some ((inferInstance : Nonempty J))
  let s' : Cone F := ⟨Over.mk (s.π.app i ≫ (F.obj i).hom), fun j ↦ Over.homMk (s.π.app j) (by
    obtain ⟨k, hik, hjk, -⟩ := IsCofilteredOrEmpty.cone_objs i j
    simp only [Functor.const_obj_obj, Over.mk_left, Over.mk_hom,
      ← s.w hjk, ← s.w hik]
    simp), fun j k e ↦ by ext; simpa using (s.w e).symm⟩
  refine ⟨(hc.lift s').left, fun j ↦ congr($(hc.fac s' j).left), fun f hf ↦ ?_⟩
  dsimp at hf
  exact congr($(hc.uniq s' (Over.homMk f (by simp [s', ← hf]))
    fun j ↦ Over.OverMorphism.ext (hf j)).left)

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
instance {X : C} : PreservesFilteredColimitsOfSize (Under.forget X) := by
  refine ⟨fun J hJ hJ' ↦ ⟨fun {F} ↦ ⟨fun {c} hc ↦ ⟨.ofExistsUnique fun s ↦ ?_⟩⟩⟩⟩
  obtain i := Nonempty.some ((inferInstance : Nonempty J))
  let s' : Cocone F := ⟨Under.mk ((F.obj i).hom ≫ s.ι.app i), fun j ↦ Under.homMk (s.ι.app j) (by
    obtain ⟨k, hik, hjk, -⟩ := IsFilteredOrEmpty.cocone_objs i j
    simp only [Functor.const_obj_obj, Under.mk_right, Under.mk_hom,
      ← s.w hjk, ← s.w hik]
    simp), fun j k e ↦ by ext; simpa using s.w e⟩
  refine ⟨(hc.desc s').right, fun j ↦ congr($(hc.fac s' j).right), fun f hf ↦ ?_⟩
  dsimp at hf
  exact congr($(hc.uniq s' (Under.homMk f (by simp [s', ← hf]))
    fun j ↦ Under.UnderMorphism.ext (hf j)).right)

end CategoryTheory.Limits
