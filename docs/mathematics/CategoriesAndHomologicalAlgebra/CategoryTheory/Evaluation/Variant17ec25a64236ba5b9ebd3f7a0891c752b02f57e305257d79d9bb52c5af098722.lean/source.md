# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Evaluation.Variant17ec25a64236ba5b9ebd3f7a0891c752b02f57e305257d79d9bb52c5af098722

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17bdaf5309883b091f0adf22ca45a9f242da19ce` · SHA-256 `9634abb98e2e8197205b0451c2f22b404a1e5c9a1eb3e33e00ab70231583d28b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EvaluationLeftAdjoint.Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EvaluationLeftAdjoint.Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Adjunction/Evaluation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.Functor.EpiMono

/-!

# Adjunctions involving evaluation

We show that evaluation of functors have adjoints, given the existence of (co)products.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EvaluationLeftAdjoint.Variant1cf86ca495aa40b917391568cb65522365d8bda4ded81164efcb7c7e557ee7a3

namespace CategoryTheory

open CategoryTheory.Limits

universe v₁ v₂ v₃ u₁ u₂ u₃

variable {C : Type u₁} [Category.{v₁} C] (D : Type u₂) [Category.{v₂} D]

noncomputable section

section

variable [∀ a b : C, HasCoproductsOfShape (a ⟶ b) D]

/-- The left adjoint of evaluation. -/
@[simps]
def evaluationLeftAdjoint (c : C) : D ⥤ C ⥤ D where
  obj d :=
    { obj := fun t => ∐ fun _ : c ⟶ t => d
      map := fun f => Sigma.desc fun g => (Sigma.ι fun _ => d) <| g ≫ f}
  map {_ d₂} f :=
    { app := fun _ => Sigma.desc fun h => f ≫ Sigma.ι (fun _ => d₂) h
      naturality := by
        intros
        dsimp
        ext
        simp }

/-- The adjunction showing that evaluation is a right adjoint. -/
@[simps! unit_app counit_app_app]
def evaluationAdjunctionRight (c : C) : evaluationLeftAdjoint D c ⊣ (evaluation _ _).obj c :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun d F =>
        { toFun := fun f => Sigma.ι (fun _ => d) (𝟙 _) ≫ f.app c
          invFun := fun f =>
            { app := fun _ => Sigma.desc fun h => f ≫ F.map h
              naturality := by
                intros
                dsimp
                ext
                simp }
          left_inv := by
            intro f
            ext x
            dsimp
            ext g
            simp only [colimit.ι_desc, Cofan.mk_ι_app, Category.assoc, ← f.naturality,
              evaluationLeftAdjoint_obj_map, colimit.ι_desc_assoc,
              Discrete.functor_obj, Cofan.mk_pt, Discrete.natTrans_app, Category.id_comp]
          right_inv := fun f => by
            dsimp
            simp }
      -- This used to be automatic before https://github.com/leanprover/lean4/pull/2644
      homEquiv_naturality_right := by intros; dsimp; simp }

instance evaluationIsRightAdjoint (c : C) : ((evaluation _ D).obj c).IsRightAdjoint  :=
  ⟨_, ⟨evaluationAdjunctionRight _ _⟩⟩

/-- See also the file `CategoryTheory.Limits.FunctorCategory.EpiMono`
for a similar result under a `HasPullbacks` assumption. -/
theorem NatTrans.mono_iff_mono_app' {F G : C ⥤ D} (η : F ⟶ G) : Mono η ↔ ∀ c, Mono (η.app c) := by
  constructor
  · intro h c
    exact (inferInstance : Mono (((evaluation _ _).obj c).map η))
  · intro _
    apply NatTrans.mono_of_mono_app

end

section

variable [∀ a b : C, HasProductsOfShape (a ⟶ b) D]

/-- The right adjoint of evaluation. -/
@[simps]
def evaluationRightAdjoint (c : C) : D ⥤ C ⥤ D where
  obj d :=
    { obj := fun t => ∏ᶜ fun _ : t ⟶ c => d
      map := fun f => Pi.lift fun g => Pi.π _ <| f ≫ g }
  map f :=
    { app := fun _ => Pi.lift fun g => Pi.π _ g ≫ f
      naturality := by
        intros
        dsimp
        ext
        simp }

/-- The adjunction showing that evaluation is a left adjoint. -/
@[simps! unit_app_app counit_app]
def evaluationAdjunctionLeft (c : C) : (evaluation _ _).obj c ⊣ evaluationRightAdjoint D c :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun F d =>
        { toFun := fun f =>
            { app := fun _ => Pi.lift fun g => F.map g ≫ f
              naturality := by
                intros
                dsimp
                ext
                simp }
          invFun := fun f => f.app _ ≫ Pi.π _ (𝟙 _)
          left_inv := fun f => by
            dsimp
            simp
          right_inv := by
            intro f
            ext x
            dsimp
            ext g
            simp only [Discrete.functor_obj, NatTrans.naturality_assoc,
              evaluationRightAdjoint_obj_obj, evaluationRightAdjoint_obj_map, limit.lift_π,
              Fan.mk_pt, Fan.mk_π_app, Discrete.natTrans_app, Category.comp_id] } }

instance evaluationIsLeftAdjoint (c : C) : ((evaluation _ D).obj c).IsLeftAdjoint :=
  ⟨_, ⟨evaluationAdjunctionLeft _ _⟩⟩

/-- See also the file `CategoryTheory.Limits.FunctorCategory.EpiMono`
for a similar result under a `HasPushouts` assumption. -/
theorem NatTrans.epi_iff_epi_app' {F G : C ⥤ D} (η : F ⟶ G) : Epi η ↔ ∀ c, Epi (η.app c) := by
  constructor
  · intro h c
    exact (inferInstance : Epi (((evaluation _ _).obj c).map η))
  · intros
    apply NatTrans.epi_of_epi_app

end

end

end CategoryTheory
```
