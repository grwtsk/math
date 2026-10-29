-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasWeaklyInitialOfWeaklyInitialSetAndHasProducts.Variant730bb7727a4254d40fe1a289f400405d2e4afc59db41b47235a38b1e066675e1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"730bb7727a4254d40fe1a289f400405d2e4afc59db41b47235a38b1e066675e1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.HasWeaklyInitialOfWeaklyInitialSetAndHasProducts.Variant730bb7727a4254d40fe1a289f400405d2e4afc59db41b47235a38b1e066675e1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"730bb7727a4254d40fe1a289f400405d2e4afc59db41b47235a38b1e066675e1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Constructions/WeaklyInitial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.WideEqualizers
public import Mathlib.CategoryTheory.Limits.Shapes.Products

/-!
# Constructions related to weakly initial objects

This file gives constructions related to weakly initial objects, namely:
* If a category has small products and a small weakly initial set of objects, then it has a weakly
  initial object.
* If a category has wide equalizers and a weakly initial object, then it has an initial object.

These are primarily useful to show the General Adjoint Functor Theorem.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasWeaklyInitialOfWeaklyInitialSetAndHasProducts.Variant730bb7727a4254d40fe1a289f400405d2e4afc59db41b47235a38b1e066675e1

public section


universe w v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

/--
If `C` has (small) products and a small weakly initial set of objects, then it has a weakly initial
object.
-/
theorem has_weakly_initial_of_weakly_initial_set_and_hasProducts [HasProducts.{w} C] {ι : Type w}
    {B : ι → C} (hB : ∀ A : C, ∃ i, Nonempty (B i ⟶ A)) : ∃ T : C, ∀ X, Nonempty (T ⟶ X) :=
  ⟨∏ᶜ B, fun X => ⟨Pi.π _ _ ≫ (hB X).choose_spec.some⟩⟩

/-- If `C` has (small) wide equalizers and a weakly initial object, then it has an initial object.

The initial object is constructed as the wide equalizer of all endomorphisms on the given weakly
initial object.
-/
theorem hasInitial_of_weakly_initial_and_hasWideEqualizers [HasWideEqualizers.{w} C] {T : C}
    [LocallySmall.{w} C]
    (hT : ∀ X, Nonempty (T ⟶ X)) : HasInitial C := by
  let endos := T ⟶ T
  have : HasLimitsOfShape (WalkingParallelFamily endos) C :=
    hasLimitsOfShape_of_equivalence
      (WalkingParallelFamily.equivalenceOfEquiv (equivShrink.{w} endos).symm)
  let i := wideEqualizer.ι (id : endos → endos)
  have : Nonempty endos := ⟨𝟙 _⟩
  have : ∀ X : C, Unique (wideEqualizer (id : endos → endos) ⟶ X) := by
    intro X
    refine ⟨⟨i ≫ Classical.choice (hT X)⟩, fun a => ?_⟩
    let E := equalizer a (i ≫ Classical.choice (hT _))
    let e : E ⟶ wideEqualizer id := equalizer.ι _ _
    let h : T ⟶ E := Classical.choice (hT E)
    have : ((i ≫ h) ≫ e) ≫ i = i ≫ 𝟙 _ := by
      rw [Category.assoc, Category.assoc]
      apply wideEqualizer.condition (id : endos → endos) (h ≫ e ≫ i)
    rw [Category.comp_id, cancel_mono_id i] at this
    have : IsSplitEpi e := IsSplitEpi.mk' ⟨i ≫ h, this⟩
    rw [← cancel_epi e]
    apply equalizer.condition
  exact hasInitial_of_unique (wideEqualizer (id : endos → endos))

end CategoryTheory
