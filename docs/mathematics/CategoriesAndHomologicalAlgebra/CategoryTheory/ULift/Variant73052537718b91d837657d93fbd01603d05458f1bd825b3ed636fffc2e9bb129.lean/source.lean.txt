-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UliftFunctor.Variant2e497914b0d6c0f0c8b5931a525fc65d59ac69584ae76970ebaeec6db5f81837","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e497914b0d6c0f0c8b5931a525fc65d59ac69584ae76970ebaeec6db5f81837","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.UliftFunctor.Variant2e497914b0d6c0f0c8b5931a525fc65d59ac69584ae76970ebaeec6db5f81837","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"2e497914b0d6c0f0c8b5931a525fc65d59ac69584ae76970ebaeec6db5f81837","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/ModuleCat/Ulift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan
-/
module

public import Mathlib.Algebra.Category.ModuleCat.Injective
public import Mathlib.Algebra.Category.ModuleCat.Projective
public import Mathlib.Algebra.Homology.ShortComplex.ModuleCat
public import Mathlib.CategoryTheory.Linear.LinearFunctor
public import Mathlib.CategoryTheory.Preadditive.Injective.Preserves
public import Mathlib.CategoryTheory.Preadditive.Projective.Preserves

/-!

# Ulift functor for ModuleCat

In this file, we define the obvious functor `ModuleCat.{v} R ⥤ ModuleCat.{max v v'} R` and prove
it is exact, fully faithful and preserves projective and injective objects.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UliftFunctor.Variant2e497914b0d6c0f0c8b5931a525fc65d59ac69584ae76970ebaeec6db5f81837

@[expose] public section

universe v' v u

variable (R : Type u)

open CategoryTheory

namespace ModuleCat

section Ring

variable [Ring R]

/-- Universe lift functor for `R`-module. -/
@[simps obj map, pp_with_univ]
def uliftFunctor : ModuleCat.{v} R ⥤ ModuleCat.{max v v'} R where
  obj X := ↧(ULift.{v', v} X)
  map f := ModuleCat.ofHom <|
    ULift.moduleEquiv.symm.toLinearMap.comp (f.hom.comp ULift.moduleEquiv.toLinearMap)

/-- The universe lift functor for `R`-module is fully faithful. -/
def fullyFaithfulUliftFunctor : (uliftFunctor R).FullyFaithful where
  preimage f := ModuleCat.ofHom (ULift.moduleEquiv.toLinearMap.comp
    (f.hom.comp ULift.moduleEquiv.symm.toLinearMap))

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- The `ULift` functor on `ModuleCat` is compatible with the one defined on categories of types. -/
@[simps! +dsimpLhs]
def uliftFunctorForgetIso :
    ModuleCat.uliftFunctor.{v'} R ⋙ forget _ ≅
    forget _ ⋙ CategoryTheory.uliftFunctor.{v'} :=
  .refl _

instance : (uliftFunctor.{v', v} R).Full := (fullyFaithfulUliftFunctor R).full

instance : (uliftFunctor.{v', v} R).Faithful := (fullyFaithfulUliftFunctor R).faithful

instance : (uliftFunctor R).Additive where

instance : Limits.PreservesLimitsOfSize.{v, v} (uliftFunctor.{v', v} R) :=
  let : Limits.PreservesLimitsOfSize.{v, v} (uliftFunctor.{v', v} R ⋙ forget _) := by
    change Limits.PreservesLimitsOfSize.{v, v} (forget (ModuleCat R) ⋙
      CategoryTheory.uliftFunctor.{v'})
    infer_instance
  Limits.preservesLimits_of_reflects_of_preserves (uliftFunctor.{v', v} R) (forget _)

instance : Limits.PreservesFiniteLimits (uliftFunctor.{v', v} R) :=
  Limits.PreservesLimitsOfSize.preservesFiniteLimits _

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma uliftFunctor_map_exact (S : ShortComplex (ModuleCat.{v} R)) (h : S.Exact) :
    (S.map (uliftFunctor R)).Exact := by
  rw [CategoryTheory.ShortComplex.ShortExact.moduleCat_exact_iff_function_exact]
  dsimp [uliftFunctor]
  intro x
  simp only [Function.comp_apply, Set.mem_range, LinearEquiv.symm_apply_eq, map_zero]
  rw [(CategoryTheory.ShortComplex.ShortExact.moduleCat_exact_iff_function_exact S).mp h]
  cat_disch

instance : Limits.PreservesFiniteColimits (uliftFunctor.{v', v} R) := by
  have := ((CategoryTheory.Functor.exact_tfae (uliftFunctor.{v', v} R)).out 2 4).mp
    (uliftFunctor_map_exact R)
  exact this.2

set_option backward.defeqAttrib.useBackward true in
instance [Small.{v} R] : (uliftFunctor.{v', v} R).PreservesProjectiveObjects where
  projective_obj {M} proj := by
    have := small_lift.{u, v'} R
    dsimp
    infer_instance

instance [Small.{v} R] : (uliftFunctor.{v', v} R).PreservesInjectiveObjects where
  injective_obj {M} inj := (Module.injective_iff_injective_object R _).mp
    (Module.ulift_injective_of_injective R ((Module.injective_iff_injective_object R M).mpr inj))

end Ring

instance [CommRing R] : (uliftFunctor.{v', v} R).Linear R where

end ModuleCat
