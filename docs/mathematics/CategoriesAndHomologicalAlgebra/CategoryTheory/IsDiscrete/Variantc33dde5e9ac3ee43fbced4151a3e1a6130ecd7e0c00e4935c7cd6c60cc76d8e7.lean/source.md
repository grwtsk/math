# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsDiscrete.Variantc33dde5e9ac3ee43fbced4151a3e1a6130ecd7e0c00e4935c7cd6c60cc76d8e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35e88f97444a77fc607637e8b4672b714e106752` · SHA-256 `da07439a97f975ce1505839a02992cbbe3fed5d207659fa827579054cf821572`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyPresentable.Variant66d7dff48102cbd99f3c5ac6f182ac33edcf070fec178fdc257f7ca818b983c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66d7dff48102cbd99f3c5ac6f182ac33edcf070fec178fdc257f7ca818b983c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LocallyPresentable.Variant66d7dff48102cbd99f3c5ac6f182ac33edcf070fec178fdc257f7ca818b983c3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"66d7dff48102cbd99f3c5ac6f182ac33edcf070fec178fdc257f7ca818b983c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Presentable/IsDiscrete.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Presentable.LocallyPresentable

/-! # Presentable objects in discrete categories

The purpose of this file is to show that a category with a single
object and a single morphism is locally presentable.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LocallyPresentable.Variant66d7dff48102cbd99f3c5ac6f182ac33edcf070fec178fdc257f7ca818b983c3

@[expose] public section

universe w

namespace CategoryTheory

open Limits

variable {C : Type*} [Category* C] [IsDiscrete C]

namespace IsDiscrete

attribute [local instance] IsFiltered.nonempty

protected instance (priority := low) isCardinalPresentable
    (X : C) (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    IsCardinalPresentable X κ :=
  .mk (fun J _ _ F c hc ↦ by
    have := isFiltered_of_isCardinalFiltered J κ
    refine ⟨fun g ↦ ?_, fun j f₁ f₂ _ ↦ ⟨j, 𝟙 j, by subsingleton⟩⟩
    obtain rfl := IsDiscrete.eq_of_hom g
    let j : J := Classical.arbitrary _
    exact ⟨j, eqToHom (IsDiscrete.eq_of_hom (c.ι.app j)).symm, by subsingleton⟩)

protected instance (priority := low) isCardinalAccessible
    {D : Type*} [Category* D]
    (F : C ⥤ D) (κ : Cardinal.{w}) [Fact κ.IsRegular] :
    F.IsCardinalAccessible κ where
  preservesColimitOfShape J _ _ := ⟨fun {K} ↦ ⟨fun {c} hc ↦ ⟨by
    have := isFiltered_of_isCardinalFiltered J κ
    let j : J := Classical.arbitrary _
    have : IsIso ((F.mapCocone c).ι.app j) := by
      dsimp; infer_instance
    exact Functor.IsEventuallyConstantFrom.isColimitOfIsIso (i₀ := j)
      (fun _ _ ↦ by dsimp; infer_instance) _⟩⟩⟩

protected instance (priority := low) isAccessible
    {D : Type*} [Category* D] (F : C ⥤ D) :
    Functor.IsAccessible.{w} F where
  exists_cardinal :=
    ⟨.aleph0, Cardinal.fact_isRegular_aleph0, inferInstance⟩

instance (priority := low) (κ : Cardinal.{w}) [Fact κ.IsRegular]
    [Subsingleton C] [Nonempty C] :
    IsCardinalLocallyPresentable C κ where
  has_colimits_of_shape J := ⟨fun F ↦
    ⟨Cocone.mk (Classical.arbitrary C)
      { app _ := eqToHom (by subsingleton) },
      { desc _ := eqToHom (by subsingleton) }⟩⟩
  exists_generator := by
    let X : C := Classical.arbitrary _
    refine ⟨.ofObj (fun (_ : PUnit.{w + 1}) ↦ X), inferInstance,
      fun _ _ ↦ IsDiscrete.isCardinalPresentable _ _,
      fun Y ↦ ?_⟩
    obtain rfl := Subsingleton.elim X Y
    exact ⟨PUnit.{w + 1}, inferInstance, inferInstance,
      { diag := (Functor.const _).obj X
        ι := 𝟙 _
        isColimit.desc _ := eqToHom (by subsingleton) }, fun _ ↦ ⟨⟨⟩⟩⟩

instance (priority := low) [Subsingleton C] [Nonempty C] :
    IsLocallyPresentable.{w} C :=
  ⟨.aleph0, Cardinal.fact_isRegular_aleph0, inferInstance⟩

end IsDiscrete

end CategoryTheory
```
