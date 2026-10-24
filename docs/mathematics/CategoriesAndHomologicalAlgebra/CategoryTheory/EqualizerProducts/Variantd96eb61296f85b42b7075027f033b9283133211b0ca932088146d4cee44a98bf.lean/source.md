# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqualizerProducts.Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0c04d40d758060b20ae3b518f85c3b3fa6705e7` · SHA-256 `cc3a121696b4ed316608aa9d672334d42477d4246b94d564dfb8beeed7325115`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiOpens.Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PiOpens.Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/Sheaves/SheafCondition/EqualizerProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiOpens.Variant3cb40c0036ec92f51602fd5e5b82a685a9f282925120d011d3df6d41a3d7d706

#align_import topology.sheaves.sheaf_condition.equalizer_products from "leanprover-community/mathlib"@"85d6221d32c37e68f05b2e42cde6cee658dae5e9"

/-!
# The sheaf condition in terms of an equalizer of products

Here we set up the machinery for the "usual" definition of the sheaf condition,
e.g. as in https://stacks.math.columbia.edu/tag/0072
in terms of an equalizer diagram where the two objects are
`∏ F.obj (U i)` and `∏ F.obj (U i) ⊓ (U j)`.

We show that this sheaf condition is equivalent to the `pairwise_intersections` sheaf condition when
the presheaf is valued in a category with products, and thereby equivalent to the default sheaf
condition.
-/


universe v' v u

noncomputable section

open CategoryTheory CategoryTheory.Limits TopologicalSpace Opposite TopologicalSpace.Opens

namespace TopCat

variable {C : Type u} [Category.{v} C] [HasProducts.{v'} C]

variable {X : TopCat.{v'}} (F : Presheaf C X) {ι : Type v'} (U : ι → Opens X)

namespace Presheaf

namespace SheafConditionEqualizerProducts

/-- The product of the sections of a presheaf over a family of open sets. -/
def piOpens : C :=
  ∏ fun i : ι => F.obj (op (U i))
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.pi_opens TopCat.Presheaf.SheafConditionEqualizerProducts.piOpens

/-- The product of the sections of a presheaf over the pairwise intersections of
a family of open sets.
-/
def piInters : C :=
  ∏ fun p : ι × ι => F.obj (op (U p.1 ⊓ U p.2))
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.pi_inters TopCat.Presheaf.SheafConditionEqualizerProducts.piInters

/-- The morphism `Π F.obj (U i) ⟶ Π F.obj (U i) ⊓ (U j)` whose components
are given by the restriction maps from `U i` to `U i ⊓ U j`.
-/
def leftRes : piOpens F U ⟶ piInters.{v'} F U :=
  Pi.lift fun p : ι × ι => Pi.π _ p.1 ≫ F.map (infLELeft (U p.1) (U p.2)).op
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.left_res TopCat.Presheaf.SheafConditionEqualizerProducts.leftRes

/-- The morphism `Π F.obj (U i) ⟶ Π F.obj (U i) ⊓ (U j)` whose components
are given by the restriction maps from `U j` to `U i ⊓ U j`.
-/
def rightRes : piOpens F U ⟶ piInters.{v'} F U :=
  Pi.lift fun p : ι × ι => Pi.π _ p.2 ≫ F.map (infLERight (U p.1) (U p.2)).op
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.right_res TopCat.Presheaf.SheafConditionEqualizerProducts.rightRes

/-- The morphism `F.obj U ⟶ Π F.obj (U i)` whose components
are given by the restriction maps from `U j` to `U i ⊓ U j`.
-/
def res : F.obj (op (iSup U)) ⟶ piOpens.{v'} F U :=
  Pi.lift fun i : ι => F.map (TopologicalSpace.Opens.leSupr U i).op
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.res TopCat.Presheaf.SheafConditionEqualizerProducts.res

@[simp, elementwise]
theorem res_π (i : ι) : res F U ≫ limit.π _ ⟨i⟩ = F.map (Opens.leSupr U i).op := by
  rw [res, limit.lift_π, Fan.mk_π_app]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.res_π TopCat.Presheaf.SheafConditionEqualizerProducts.res_π

@[elementwise]
theorem w : res F U ≫ leftRes F U = res F U ≫ rightRes F U := by
  dsimp [res, leftRes, rightRes]
  -- Porting note : `ext` can't see `limit.hom_ext` applies here:
  -- See https://github.com/leanprover-community/mathlib4/issues/5229
  refine limit.hom_ext (fun _ => ?_)
  simp only [limit.lift_π, limit.lift_π_assoc, Fan.mk_π_app, Category.assoc]
  rw [← F.map_comp]
  rw [← F.map_comp]
  congr 1
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.w TopCat.Presheaf.SheafConditionEqualizerProducts.w

/-- The equalizer diagram for the sheaf condition.
-/
@[reducible]
def diagram : WalkingParallelPair ⥤ C :=
  parallelPair (leftRes.{v'} F U) (rightRes F U)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.diagram TopCat.Presheaf.SheafConditionEqualizerProducts.diagram

/-- The restriction map `F.obj U ⟶ Π F.obj (U i)` gives a cone over the equalizer diagram
for the sheaf condition. The sheaf condition asserts this cone is a limit cone.
-/
def fork : Fork.{v} (leftRes F U) (rightRes F U) :=
  Fork.ofι _ (w F U)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.fork TopCat.Presheaf.SheafConditionEqualizerProducts.fork

@[simp]
theorem fork_pt : (fork F U).pt = F.obj (op (iSup U)) :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.fork_X TopCat.Presheaf.SheafConditionEqualizerProducts.fork_pt

@[simp]
theorem fork_ι : (fork F U).ι = res F U :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.fork_ι TopCat.Presheaf.SheafConditionEqualizerProducts.fork_ι

@[simp]
theorem fork_π_app_walkingParallelPair_zero : (fork F U).π.app WalkingParallelPair.zero = res F U :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.fork_π_app_walking_parallel_pair_zero TopCat.Presheaf.SheafConditionEqualizerProducts.fork_π_app_walkingParallelPair_zero

-- Porting note : Shortcut simplifier
@[simp (high)]
theorem fork_π_app_walkingParallelPair_one :
    (fork F U).π.app WalkingParallelPair.one = res F U ≫ leftRes F U :=
  rfl
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.fork_π_app_walking_parallel_pair_one TopCat.Presheaf.SheafConditionEqualizerProducts.fork_π_app_walkingParallelPair_one

variable {F} {G : Presheaf C X}

/-- Isomorphic presheaves have isomorphic `piOpens` for any cover `U`. -/
@[simp]
def piOpens.isoOfIso (α : F ≅ G) : piOpens F U ≅ piOpens.{v'} G U :=
  Pi.mapIso fun _ => α.app _
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.pi_opens.iso_of_iso TopCat.Presheaf.SheafConditionEqualizerProducts.piOpens.isoOfIso

/-- Isomorphic presheaves have isomorphic `piInters` for any cover `U`. -/
@[simp]
def piInters.isoOfIso (α : F ≅ G) : piInters F U ≅ piInters.{v'} G U :=
  Pi.mapIso fun _ => α.app _
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.pi_inters.iso_of_iso TopCat.Presheaf.SheafConditionEqualizerProducts.piInters.isoOfIso

/-- Isomorphic presheaves have isomorphic sheaf condition diagrams. -/
def diagram.isoOfIso (α : F ≅ G) : diagram F U ≅ diagram.{v'} G U :=
  NatIso.ofComponents (by rintro ⟨⟩; exact piOpens.isoOfIso U α; exact piInters.isoOfIso U α)
    (by
      rintro ⟨⟩ ⟨⟩ ⟨⟩
      · simp
      · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
        -- See https://github.com/leanprover-community/mathlib4/issues/5229
        refine limit.hom_ext (fun _ => ?_)
        simp only [leftRes, piOpens.isoOfIso, piInters.isoOfIso, parallelPair_map_left,
          Functor.mapIso_hom, lim_map, limit.lift_map, limit.lift_π, Cones.postcompose_obj_π,
          NatTrans.comp_app, Fan.mk_π_app, Discrete.natIso_hom_app, Iso.app_hom, Category.assoc,
          NatTrans.naturality, limMap_π_assoc]
      · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
        -- See https://github.com/leanprover-community/mathlib4/issues/5229
        refine limit.hom_ext (fun _ => ?_)
        simp only [rightRes, piOpens.isoOfIso, piInters.isoOfIso, parallelPair_map_right,
          Functor.mapIso_hom, lim_map, limit.lift_map, limit.lift_π, Cones.postcompose_obj_π,
          NatTrans.comp_app, Fan.mk_π_app, Discrete.natIso_hom_app, Iso.app_hom, Category.assoc,
          NatTrans.naturality, limMap_π_assoc]
      · simp)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.diagram.iso_of_iso TopCat.Presheaf.SheafConditionEqualizerProducts.diagram.isoOfIso

/-- If `F G : presheaf C X` are isomorphic presheaves,
then the `fork F U`, the canonical cone of the sheaf condition diagram for `F`,
is isomorphic to `fork F G` postcomposed with the corresponding isomorphism between
sheaf condition diagrams.
-/
def fork.isoOfIso (α : F ≅ G) :
    fork F U ≅ (Cones.postcompose (diagram.isoOfIso U α).inv).obj (fork G U) := by
  fapply Fork.ext
  · apply α.app
  · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
    -- See https://github.com/leanprover-community/mathlib4/issues/5229
    refine limit.hom_ext (fun _ => ?_)
    dsimp only [Fork.ι]
    -- Ugh, `simp` can't unfold abbreviations.
    simp only [res, diagram.isoOfIso, Iso.app_hom, piOpens.isoOfIso, Cones.postcompose_obj_π,
      NatTrans.comp_app, fork_π_app_walkingParallelPair_zero, NatIso.ofComponents_inv_app,
      Functor.mapIso_inv, lim_map, limit.lift_map, Category.assoc, limit.lift_π, Fan.mk_π_app,
      Discrete.natIso_inv_app, Iso.app_inv, NatTrans.naturality, Iso.hom_inv_id_app_assoc]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_equalizer_products.fork.iso_of_iso TopCat.Presheaf.SheafConditionEqualizerProducts.fork.isoOfIso

end SheafConditionEqualizerProducts

/-- The sheaf condition for a `F : presheaf C X` requires that the morphism
`F.obj U ⟶ ∏ F.obj (U i)` (where `U` is some open set which is the union of the `U i`)
is the equalizer of the two morphisms
`∏ F.obj (U i) ⟶ ∏ F.obj (U i) ⊓ (U j)`.
-/
def IsSheafEqualizerProducts (F : Presheaf.{v', v, u} C X) : Prop :=
  ∀ ⦃ι : Type v'⦄ (U : ι → Opens X), Nonempty (IsLimit (SheafConditionEqualizerProducts.fork F U))
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_equalizer_products TopCat.Presheaf.IsSheafEqualizerProducts

/-!
The remainder of this file shows that the equalizer_products sheaf condition is equivalent
to the pairwise_intersections sheaf condition.
-/


namespace SheafConditionPairwiseIntersections

open CategoryTheory.Pairwise CategoryTheory.Pairwise.Hom

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps]
def coneEquivFunctorObj (c : Cone ((diagram U).op ⋙ F)) :
    Cone (SheafConditionEqualizerProducts.diagram F U) where
  pt := c.pt
  π :=
    { app := fun Z =>
        WalkingParallelPair.casesOn Z (Pi.lift fun i : ι => c.π.app (op (single i)))
          (Pi.lift fun b : ι × ι => c.π.app (op (pair b.1 b.2)))
      naturality := fun Y Z f => by
        cases Y <;> cases Z <;> cases f
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun i => ?_
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app, CategoryTheory.Functor.map_id,
            Category.assoc]
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app]
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun ⟨i, j⟩ => ?_
          dsimp [SheafConditionEqualizerProducts.leftRes]
          simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
            Category.assoc]
          have h := c.π.naturality (Quiver.Hom.op (Hom.left i j))
          dsimp at h
          simpa using h
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun ⟨i, j⟩ => ?_
          dsimp [SheafConditionEqualizerProducts.rightRes]
          simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
            Category.assoc]
          have h := c.π.naturality (Quiver.Hom.op (Hom.right i j))
          dsimp at h
          simpa using h
        · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
          -- See https://github.com/leanprover-community/mathlib4/issues/5229
          refine limit.hom_ext fun i => ?_
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app, CategoryTheory.Functor.map_id,
            Category.assoc]
          dsimp
          simp only [limit.lift_π, Category.id_comp, Fan.mk_π_app] }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_functor_obj TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivFunctorObj

section

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps!]
def coneEquivFunctor :
    Limits.Cone ((diagram U).op ⋙ F) ⥤ Limits.Cone (SheafConditionEqualizerProducts.diagram F U)
    where
  obj c := coneEquivFunctorObj F U c
  map {c c'} f :=
    { Hom := f.Hom
      w := fun j => by
        cases j <;>
          · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
            -- See https://github.com/leanprover-community/mathlib4/issues/5229
            refine limit.hom_ext fun i => ?_
            simp only [Limits.Fan.mk_π_app, Limits.ConeMorphism.w, Limits.limit.lift_π,
              Category.assoc, coneEquivFunctorObj_π_app] }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_functor TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivFunctor

end

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps]
def coneEquivInverseObj (c : Limits.Cone (SheafConditionEqualizerProducts.diagram F U)) :
    Limits.Cone ((diagram U).op ⋙ F) where
  pt := c.pt
  π :=
    { app := by
        intro x
        induction x using Opposite.rec' with | h x => ?_
        rcases x with (⟨i⟩ | ⟨i, j⟩)
        · exact c.π.app WalkingParallelPair.zero ≫ Pi.π _ i
        · exact c.π.app WalkingParallelPair.one ≫ Pi.π _ (i, j)
      naturality := by
        intro x y f
        induction x using Opposite.rec' with | h x => ?_
        induction y using Opposite.rec' with | h y => ?_
        have ef : f = f.unop.op := rfl
        revert ef
        generalize f.unop = f'
        rintro rfl
        rcases x with (⟨i⟩ | ⟨⟩) <;> rcases y with (⟨⟩ | ⟨j, j⟩) <;> rcases f' with ⟨⟩
        · dsimp
          erw [F.map_id]
          simp
        · dsimp
          simp only [Category.id_comp, Category.assoc]
          have h := c.π.naturality WalkingParallelPairHom.left
          dsimp [SheafConditionEqualizerProducts.leftRes] at h
          simp only [Category.id_comp] at h
          have h' := h =≫ Pi.π _ (i, j)
          rw [h']
          simp only [Category.assoc, limit.lift_π, Fan.mk_π_app]
          rfl
        · dsimp
          simp only [Category.id_comp, Category.assoc]
          have h := c.π.naturality WalkingParallelPairHom.right
          dsimp [SheafConditionEqualizerProducts.rightRes] at h
          simp only [Category.id_comp] at h
          have h' := h =≫ Pi.π _ (j, i)
          rw [h']
          simp
          rfl
        · dsimp
          erw [F.map_id]
          simp }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_inverse_obj TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivInverseObj

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps!]
def coneEquivInverse :
    Limits.Cone (SheafConditionEqualizerProducts.diagram F U) ⥤ Limits.Cone ((diagram U).op ⋙ F)
    where
  obj c := coneEquivInverseObj F U c
  map {c c'} f :=
    { Hom := f.Hom
      w := by
        intro x
        induction x using Opposite.rec' with | h x => ?_
        rcases x with (⟨i⟩ | ⟨i, j⟩)
        · dsimp
          dsimp only [Fork.ι]
          rw [← f.w WalkingParallelPair.zero, Category.assoc]
        · dsimp
          rw [← f.w WalkingParallelPair.one, Category.assoc] }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_inverse TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivInverse

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps]
def coneEquivUnitIsoApp (c : Cone ((diagram U).op ⋙ F)) :
    (𝟭 (Cone ((diagram U).op ⋙ F))).obj c ≅ (coneEquivFunctor F U ⋙ coneEquivInverse F U).obj c
    where
  hom :=
    { Hom := 𝟙 _
      w := fun j => by
        induction j using Opposite.rec' with | h j => ?_;
        rcases j with ⟨⟩ <;>
        · dsimp [coneEquivInverse]
          simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π] }
  inv :=
    { Hom := 𝟙 _
      w := fun j => by
        induction j using Opposite.rec' with | h j => ?_;
        rcases j with ⟨⟩ <;>
        · dsimp [coneEquivInverse]
          simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π] }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_unit_iso_app TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivUnitIsoApp

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps!]
def coneEquivUnitIso :
    𝟭 (Limits.Cone ((diagram U).op ⋙ F)) ≅ coneEquivFunctor F U ⋙ coneEquivInverse F U :=
  NatIso.ofComponents (coneEquivUnitIsoApp F U)
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_unit_iso TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivUnitIso

/-- Implementation of `SheafConditionPairwiseIntersections.coneEquiv`. -/
@[simps!]
def coneEquivCounitIso :
    coneEquivInverse F U ⋙ coneEquivFunctor F U ≅
      𝟭 (Limits.Cone (SheafConditionEqualizerProducts.diagram F U)) :=
  NatIso.ofComponents
    (fun c =>
      { hom :=
          { Hom := 𝟙 _
            w := by
              rintro ⟨_ | _⟩
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π]
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨i, j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π] }
        inv :=
          { Hom := 𝟙 _
            w := by
              rintro ⟨_ | _⟩
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π]
              · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
                -- See https://github.com/leanprover-community/mathlib4/issues/5229
                refine limit.hom_ext fun ⟨i, j⟩ => ?_
                dsimp [coneEquivInverse]
                simp only [Limits.Fan.mk_π_app, Category.id_comp, Limits.limit.lift_π] } })
    fun {c d} f => by
    ext
    dsimp
    simp only [Category.comp_id, Category.id_comp]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv_counit_iso TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquivCounitIso

/--
Cones over `diagram U ⋙ F` are the same as a cones over the usual sheaf condition equalizer diagram.
-/
@[simps]
def coneEquiv :
    Limits.Cone ((diagram U).op ⋙ F) ≌ Limits.Cone (SheafConditionEqualizerProducts.diagram F U)
    where
  functor := coneEquivFunctor F U
  inverse := coneEquivInverse F U
  unitIso := coneEquivUnitIso F U
  counitIso := coneEquivCounitIso F U
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.cone_equiv TopCat.Presheaf.SheafConditionPairwiseIntersections.coneEquiv

-- Porting note: not supported in Lean 4
-- attribute [local reducible]
--   SheafConditionEqualizerProducts.res SheafConditionEqualizerProducts.leftRes

/-- If `SheafConditionEqualizerProducts.fork` is an equalizer,
then `F.mapCone (cone U)` is a limit cone.
-/
def isLimitMapConeOfIsLimitSheafConditionFork
    (P : IsLimit (SheafConditionEqualizerProducts.fork F U)) : IsLimit (F.mapCone (cocone U).op) :=
  IsLimit.ofIsoLimit ((IsLimit.ofConeEquiv (coneEquiv F U).symm).symm P)
    { hom :=
        { Hom := 𝟙 _
          w := by
            intro x
            induction x with | h x => ?_
            rcases x with ⟨⟩
            · simp
              rfl
            · dsimp [coneEquivInverse, SheafConditionEqualizerProducts.res,
                SheafConditionEqualizerProducts.leftRes]
              simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
                Category.assoc]
              rw [← F.map_comp]
              rfl }
      inv :=
        { Hom := 𝟙 _
          w := by
            intro x
            induction x with | h x => ?_
            rcases x with ⟨⟩
            · simp
              rfl
            · dsimp [coneEquivInverse, SheafConditionEqualizerProducts.res,
                SheafConditionEqualizerProducts.leftRes]
              simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
                Category.assoc]
              rw [← F.map_comp]
              rfl } }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.is_limit_map_cone_of_is_limit_sheaf_condition_fork TopCat.Presheaf.SheafConditionPairwiseIntersections.isLimitMapConeOfIsLimitSheafConditionFork

/-- If `F.mapCone (cone U)` is a limit cone,
then `SheafConditionEqualizerProducts.fork` is an equalizer.
-/
def isLimitSheafConditionForkOfIsLimitMapCone (Q : IsLimit (F.mapCone (cocone U).op)) :
    IsLimit (SheafConditionEqualizerProducts.fork F U) :=
  IsLimit.ofIsoLimit ((IsLimit.ofConeEquiv (coneEquiv F U)).symm Q)
    { hom :=
        { Hom := 𝟙 _
          w := by
            rintro ⟨⟩
            · simp
              rfl
            · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
              -- See https://github.com/leanprover-community/mathlib4/issues/5229
              refine limit.hom_ext fun ⟨i, j⟩ => ?_
              dsimp [coneEquivInverse, SheafConditionEqualizerProducts.res,
                SheafConditionEqualizerProducts.leftRes]
              simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
                Category.assoc]
              rw [← F.map_comp]
              rfl }
      inv :=
        { Hom := 𝟙 _
          w := by
            rintro ⟨⟩
            · simp
              rfl
            · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
              -- See https://github.com/leanprover-community/mathlib4/issues/5229
              refine limit.hom_ext fun ⟨i, j⟩ => ?_
              dsimp [coneEquivInverse, SheafConditionEqualizerProducts.res,
                SheafConditionEqualizerProducts.leftRes]
              simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
                Category.assoc]
              rw [← F.map_comp]
              rfl } }
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition_pairwise_intersections.is_limit_sheaf_condition_fork_of_is_limit_map_cone TopCat.Presheaf.SheafConditionPairwiseIntersections.isLimitSheafConditionForkOfIsLimitMapCone

end SheafConditionPairwiseIntersections

open SheafConditionPairwiseIntersections

/-- The sheaf condition in terms of an equalizer diagram is equivalent
to the default sheaf condition.
-/
theorem isSheaf_iff_isSheafEqualizerProducts (F : Presheaf C X) :
    F.IsSheaf ↔ F.IsSheafEqualizerProducts :=
  (isSheaf_iff_isSheafPairwiseIntersections F).trans <|
    Iff.intro (fun h _ U => ⟨isLimitSheafConditionForkOfIsLimitMapCone F U (h U).some⟩) fun h _ U =>
      ⟨isLimitMapConeOfIsLimitSheafConditionFork F U (h U).some⟩
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_iff_is_sheaf_equalizer_products TopCat.Presheaf.isSheaf_iff_isSheafEqualizerProducts

end Presheaf

end TopCat
```
