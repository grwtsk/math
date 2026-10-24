# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant731f8c319291c3d35279c32f63586f7b744385487d9bb983cb853bfd0b53f6b4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dab95eade22d15fe987cb88b018ee3697bdc7187` · SHA-256 `3fe71e089acd96139fecceb4e3e529ac176e83ce89a903c43ae79a4e40af552f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variantf5344f4dd029f5b4f8c7cad77749cffeba9250cd6bd1f7153deda2e1184fc3f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5344f4dd029f5b4f8c7cad77749cffeba9250cd6bd1f7153deda2e1184fc3f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Biproducts.Variantf5344f4dd029f5b4f8c7cad77749cffeba9250cd6bd1f7153deda2e1184fc3f7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f5344f4dd029f5b4f8c7cad77749cffeba9250cd6bd1f7153deda2e1184fc3f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/Grp/AB.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 David Kurniadi Angdinata. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Kurniadi Angdinata, Moritz Firsching, Nikolas Kuhn, Amelia Livingston
-/
import Mathlib.Algebra.Category.Grp.Biproducts
import Mathlib.Algebra.Category.Grp.FilteredColimits
import Mathlib.Algebra.Homology.ShortComplex.Ab
import Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic
import Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono
/-!
# AB axioms for the category of abelian groups

This file proves that the category of abelian groups satisfies Grothendieck's axioms AB5, AB4, and
AB4*.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variantf5344f4dd029f5b4f8c7cad77749cffeba9250cd6bd1f7153deda2e1184fc3f7

universe u

open CategoryTheory Limits

instance {J C : Type*} [Category J] [Category C] [HasColimitsOfShape J C] [Preadditive C] :
    (colim (J := J) (C := C)).Additive where

variable {J : Type u} [SmallCategory J] [IsFiltered J]

noncomputable instance :
    (colim (J := J) (C := AddCommGrp.{u})).PreservesHomology :=
  Functor.preservesHomology_of_map_exact _ (fun S hS ↦ by
    replace hS := fun j => hS.map ((evaluation _ _).obj j)
    simp only [ShortComplex.ab_exact_iff_ker_le_range] at hS ⊢
    intro x (hx : _ = _)
    dsimp at hx
    rcases Concrete.colimit_exists_rep S.X₂ x with ⟨j, y, rfl⟩
    rw [← ConcreteCategory.comp_apply, colimMap_eq, colimit.ι_map, ConcreteCategory.comp_apply,
      ← map_zero (colimit.ι S.X₃ j).hom] at hx
    rcases Concrete.colimit_exists_of_rep_eq.{u, u, u} S.X₃ _ _ hx with ⟨k, e₁, e₂, hk⟩
    rw [map_zero, ← ConcreteCategory.comp_apply, ← NatTrans.naturality, ConcreteCategory.comp_apply]
      at hk
    rcases hS k hk with ⟨t, ht⟩
    use colimit.ι S.X₁ k t
    erw [← ConcreteCategory.comp_apply, colimit.ι_map, ConcreteCategory.comp_apply, ht]
    exact colimit.w_apply S.X₂ e₁ y)

noncomputable instance :
    PreservesFiniteLimits <| colim (J := J) (C := AddCommGrp.{u}) := by
  apply Functor.preservesFiniteLimits_of_preservesHomology

instance : HasFilteredColimits (AddCommGrp.{u}) where
  HasColimitsOfShape := inferInstance

noncomputable instance : AB5 (AddCommGrp.{u}) where
  ofShape _ := { preservesFiniteLimits := inferInstance }

attribute [local instance] Abelian.hasFiniteBiproducts

instance : AB4 AddCommGrp.{u} := AB4.of_AB5 _

instance : HasExactLimitsOfShape (Discrete J) (AddCommGrp.{u}) := by
  apply (config := { allowSynthFailures := true }) hasExactLimitsOfShape_of_preservesEpi
  exact {
    preserves {X Y} f hf := by
      let iX : limit X ≅ AddCommGrp.of ((i : J) → X.obj ⟨i⟩) := (Pi.isoLimit X).symm ≪≫
          (limit.isLimit _).conePointUniqueUpToIso (AddCommGrp.HasLimit.productLimitCone _).isLimit
      let iY : limit Y ≅ AddCommGrp.of ((i : J) → Y.obj ⟨i⟩) := (Pi.isoLimit Y).symm ≪≫
          (limit.isLimit _).conePointUniqueUpToIso (AddCommGrp.HasLimit.productLimitCone _).isLimit
      have : Pi.map (fun i ↦ f.app ⟨i⟩) = iX.inv ≫ lim.map f ≫ iY.hom := by
        simp only [Functor.comp_obj, Discrete.functor_obj_eq_as, Discrete.mk_as, Pi.isoLimit,
          IsLimit.conePointUniqueUpToIso, limit.cone, AddCommGrp.HasLimit.productLimitCone,
          Iso.trans_inv, Functor.mapIso_inv, IsLimit.uniqueUpToIso_inv, Cones.forget_map,
          IsLimit.liftConeMorphism_hom, limit.isLimit_lift, Iso.symm_inv, Functor.mapIso_hom,
          IsLimit.uniqueUpToIso_hom, lim_obj, lim_map, Iso.trans_hom, Iso.symm_hom,
          AddCommGrp.HasLimit.lift, Functor.const_obj_obj, Category.assoc, limit.lift_map_assoc,
          Pi.cone_pt, iX, iY]
        ext g j
        change _ = (_ ≫ limit.π (Discrete.functor fun j ↦ Y.obj { as := j }) ⟨j⟩) _
        simp only [Discrete.functor_obj_eq_as, Functor.comp_obj, Discrete.mk_as, productIsProduct',
          limit.lift_π, Fan.mk_pt, Fan.mk_π_app, Pi.map_apply]
        change _ = (_ ≫ _ ≫ limit.π Y ⟨j⟩) _
        simp
      suffices Epi (iX.hom ≫ (iX.inv ≫ lim.map f ≫ iY.hom) ≫ iY.inv) by simpa using this
      suffices Epi (iX.inv ≫ lim.map f ≫ iY.hom) from inferInstance
      rw [AddCommGrp.epi_iff_surjective, ← this]
      simp_rw [CategoryTheory.NatTrans.epi_iff_epi_app, AddCommGrp.epi_iff_surjective] at hf
      refine fun b ↦ ⟨fun i ↦ (hf ⟨i⟩ (b i)).choose, ?_⟩
      funext i
      exact (hf ⟨i⟩ (b i)).choose_spec }

instance : AB4Star AddCommGrp.{u} where
  ofShape _ := inferInstance
```
