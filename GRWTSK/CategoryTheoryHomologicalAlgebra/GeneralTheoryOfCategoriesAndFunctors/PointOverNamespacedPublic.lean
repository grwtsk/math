-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant92af1c9dc69c2dbad2edfd71f62bff8e184a078ae196050cfbc388da3a23083e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92af1c9dc69c2dbad2edfd71f62bff8e184a078ae196050cfbc388da3a23083e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Over.Variant92af1c9dc69c2dbad2edfd71f62bff8e184a078ae196050cfbc388da3a23083e","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"92af1c9dc69c2dbad2edfd71f62bff8e184a078ae196050cfbc388da3a23083e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Point/Over.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Filtered.FinallySmall
public import Mathlib.CategoryTheory.Functor.TypeValuedFlat
public import Mathlib.CategoryTheory.Comma.StructuredArrow.Small
public import Mathlib.CategoryTheory.Comma.LocallySmall
public import Mathlib.CategoryTheory.Sites.Over
public import Mathlib.CategoryTheory.Sites.Point.Conservative

/-!
# Points of `Over` sites

Given a point `Φ` of a site `(C, J)`, an object `X : C`, and `x : Φ.fiber.obj X`,
we define a point `Φ.over x` of the site `(Over X, J.over X)`.

We show that if `(C, J)` has enough points, then so does `(Over X, J.over X)`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variant92af1c9dc69c2dbad2edfd71f62bff8e184a078ae196050cfbc388da3a23083e

@[expose] public section

universe w v u

namespace CategoryTheory

open GrothendieckTopology

variable {C : Type u} [Category.{v} C] {J : GrothendieckTopology C}
  [LocallySmall.{w} C] (Φ : Point.{w} J) {X : C} (x : Φ.fiber.obj X)

namespace GrothendieckTopology.Point

/-- Given a point `Φ` of a site `(C, J)`, an object `X : C`, and `x : Φ.fiber.obj X`,
this is the point of the site `(Over X, J.over X)` such that the fiber of
an object of `Over X` corresponding to a morphism `f : Y ⟶ X` identifies
to subtype of `Φ.fiber.obj Y` consisting of elements `y` such
that `Φ.fiber.map f y = x`. -/
@[simps]
def over : Point.{w} (J.over X) where
  fiber := FunctorToTypes.fromOverFunctor Φ.fiber x
  initiallySmall :=
    initiallySmall_of_initial_of_initiallySmall
      (FunctorToTypes.fromOverFunctorElementsEquivalence Φ.fiber x).inverse
  jointly_surjective := by
    rintro U R hR ⟨u, hu⟩
    obtain ⟨R, rfl⟩ := (Sieve.overEquiv _).symm.surjective R
    simp only [mem_over_iff, OrderIso.apply_symm_apply] at hR
    obtain ⟨Y, f, hf, v, rfl⟩ := Φ.jointly_surjective R hR u
    refine ⟨Over.mk (f ≫ U.hom), Over.homMk f, hf, ⟨v, ?_⟩, rfl⟩
    rw [FunctorToTypes.mem_fromOverSubfunctor_iff] at hu ⊢
    simpa

end GrothendieckTopology.Point

namespace ObjectProperty

set_option backward.isDefEq.respectTransparency false in
lemma IsConservativeFamilyOfPoints.over
    {P : ObjectProperty (Point.{w} J)} [ObjectProperty.Small.{w} P]
    [J.WEqualsLocallyBijective (Type w)] [HasSheafify J (Type w)]
    (hP : P.IsConservativeFamilyOfPoints) (X : C) [HasSheafify (J.over X) (Type w)] :
    IsConservativeFamilyOfPoints
      (ObjectProperty.ofObj (fun (ψ : Σ (Φ : P.FullSubcategory),
        Φ.obj.fiber.obj X) ↦ ψ.1.obj.over ψ.2)) :=
  mk' (fun Y S hS ↦ by
    obtain ⟨Y, f, rfl⟩ := Over.mk_surjective Y
    obtain ⟨S, rfl⟩ := (Sieve.overEquiv _).symm.surjective S
    rw [mem_over_iff, OrderIso.apply_symm_apply]
    obtain ⟨ι, Z, g, rfl⟩ := S.exists_eq_ofArrows
    rw [hP.jointly_reflect_ofArrows_mem_of_small]
    intro Φ y
    obtain ⟨T, a, ⟨_, b, _, ⟨i⟩, hb⟩, ⟨z, hz₁⟩, hz₂⟩ := hS (⟨_, ⟨⟨Φ, Φ.obj.fiber.map f y⟩⟩⟩)
      (⟨by exact y, by rw [FunctorToTypes.mem_fromOverSubfunctor_iff]; rfl⟩)
    rw [Subtype.ext_iff] at hz₂
    exact ⟨i, Φ.obj.fiber.map b z,
      (ConcreteCategory.congr_hom (Φ.obj.fiber.map_comp b (g i)) _).symm.trans (by rwa [hb])⟩)

end ObjectProperty

namespace GrothendieckTopology

instance [HasEnoughPoints.{w} J] [J.WEqualsLocallyBijective (Type w)]
    [HasSheafify J (Type w)] (X : C)
    [HasSheafify (J.over X) (Type w)] :
    HasEnoughPoints.{w} (J.over X) := by
  obtain ⟨P, _, hP⟩ := HasEnoughPoints.exists_objectProperty J
  exact ⟨_, inferInstance, hP.over X⟩

end GrothendieckTopology

end CategoryTheory
