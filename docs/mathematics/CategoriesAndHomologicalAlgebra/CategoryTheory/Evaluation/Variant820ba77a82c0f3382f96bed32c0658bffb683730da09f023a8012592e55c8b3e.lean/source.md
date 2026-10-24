# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Evaluation.Variant820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0143fe17f0749146bbb17fc685ae3c581604294b` · SHA-256 `820ba77a82c0f3382f96bed32c0658bffb683730da09f023a8012592e55c8b3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.Functor.EpiMono

#align_import category_theory.adjunction.evaluation from "leanprover-community/mathlib"@"937c692d73f5130c7fecd3fd32e81419f4e04eb7"

/-!

# Adjunctions involving evaluation

We show that evaluation of functors have adjoints, given the existence of (co)products.

-/


namespace CategoryTheory

open CategoryTheory.Limits

universe v₁ v₂ u₁ u₂

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
    { app := fun e => Sigma.desc fun h => f ≫ Sigma.ι (fun _ => d₂) h
      naturality := by
        intros
        dsimp
        ext
        simp }
#align category_theory.evaluation_left_adjoint CategoryTheory.evaluationLeftAdjoint

/-- The adjunction showing that evaluation is a right adjoint. -/
@[simps! unit_app counit_app_app]
def evaluationAdjunctionRight (c : C) : evaluationLeftAdjoint D c ⊣ (evaluation _ _).obj c :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun d F =>
        { toFun := fun f => Sigma.ι (fun _ => d) (𝟙 _) ≫ f.app c
          invFun := fun f =>
            { app := fun e => Sigma.desc fun h => f ≫ F.map h
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
            simp only [colimit.ι_desc, Cofan.mk_ι_app, Category.assoc, ←f.naturality,
              evaluationLeftAdjoint_obj_map, colimit.ι_desc_assoc,
              Discrete.functor_obj, Cofan.mk_pt, Discrete.natTrans_app, Category.id_comp]
          right_inv := fun f => by
            dsimp
            simp } }
#align category_theory.evaluation_adjunction_right CategoryTheory.evaluationAdjunctionRight

instance evaluationIsRightAdjoint (c : C) : IsRightAdjoint ((evaluation _ D).obj c) :=
  ⟨_, evaluationAdjunctionRight _ _⟩
#align category_theory.evaluation_is_right_adjoint CategoryTheory.evaluationIsRightAdjoint

theorem NatTrans.mono_iff_mono_app {F G : C ⥤ D} (η : F ⟶ G) : Mono η ↔ ∀ c, Mono (η.app c) := by
  constructor
  · intro h c
    exact (inferInstance : Mono (((evaluation _ _).obj c).map η))
  · intro _
    apply NatTrans.mono_of_mono_app
#align category_theory.nat_trans.mono_iff_mono_app CategoryTheory.NatTrans.mono_iff_mono_app

end

section

variable [∀ a b : C, HasProductsOfShape (a ⟶ b) D]

/-- The right adjoint of evaluation. -/
@[simps]
def evaluationRightAdjoint (c : C) : D ⥤ C ⥤ D where
  obj d :=
    { obj := fun t => ∏ fun _ : t ⟶ c => d
      map := fun f => Pi.lift fun g => Pi.π _ <| f ≫ g }
  map f :=
    { app := fun t => Pi.lift fun g => Pi.π _ g ≫ f
      naturality := by
        intros
        dsimp
        ext
        simp }
#align category_theory.evaluation_right_adjoint CategoryTheory.evaluationRightAdjoint

/-- The adjunction showing that evaluation is a left adjoint. -/
@[simps! unit_app_app counit_app]
def evaluationAdjunctionLeft (c : C) : (evaluation _ _).obj c ⊣ evaluationRightAdjoint D c :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun F d =>
        { toFun := fun f =>
            { app := fun t => Pi.lift fun g => F.map g ≫ f
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
#align category_theory.evaluation_adjunction_left CategoryTheory.evaluationAdjunctionLeft

instance evaluationIsLeftAdjoint (c : C) : IsLeftAdjoint ((evaluation _ D).obj c) :=
  ⟨_, evaluationAdjunctionLeft _ _⟩
#align category_theory.evaluation_is_left_adjoint CategoryTheory.evaluationIsLeftAdjoint

theorem NatTrans.epi_iff_epi_app {F G : C ⥤ D} (η : F ⟶ G) : Epi η ↔ ∀ c, Epi (η.app c) := by
  constructor
  · intro h c
    exact (inferInstance : Epi (((evaluation _ _).obj c).map η))
  · intros
    apply NatTrans.epi_of_epi_app
#align category_theory.nat_trans.epi_iff_epi_app CategoryTheory.NatTrans.epi_iff_epi_app

end

end

end CategoryTheory
```
