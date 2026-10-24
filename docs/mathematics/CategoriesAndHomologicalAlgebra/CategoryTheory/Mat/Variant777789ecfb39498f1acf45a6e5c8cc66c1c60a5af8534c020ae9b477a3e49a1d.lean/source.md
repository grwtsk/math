# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mat.Variant777789ecfb39498f1acf45a6e5c8cc66c1c60a5af8534c020ae9b477a3e49a1d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b306c6bcfb9e9c42deb3386cd93e24c576cfe9c` · SHA-256 `0530b789292843b06239e8ef4514914bf949ec2d36d8f700c0369bdc006c29e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mat.Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Mat.Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Preadditive/Mat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.BigOperators.Basic
import Mathlib.Algebra.BigOperators.Pi
import Mathlib.CategoryTheory.Limits.Shapes.Biproducts
import Mathlib.CategoryTheory.Preadditive.Basic
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.Data.Matrix.DMatrix
import Mathlib.Data.Matrix.Basic
import Mathlib.CategoryTheory.FintypeCat
import Mathlib.CategoryTheory.Preadditive.SingleObj
import Mathlib.Algebra.Opposites


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mat.Variantd9189bb7dce747ac37743ef2e3aa86b37f50c1f40324d5e51ef8155348f44a43

#align_import category_theory.preadditive.Mat from "leanprover-community/mathlib"@"829895f162a1f29d0133f4b3538f4cd1fb5bffd3"

/-!
# Matrices over a category.

When `C` is a preadditive category, `Mat_ C` is the preadditive category
whose objects are finite tuples of objects in `C`, and
whose morphisms are matrices of morphisms from `C`.

There is a functor `Mat_.embedding : C ⥤ Mat_ C` sending morphisms to one-by-one matrices.

`Mat_ C` has finite biproducts.

## The additive envelope

We show that this construction is the "additive envelope" of `C`,
in the sense that any additive functor `F : C ⥤ D` to a category `D` with biproducts
lifts to a functor `Mat_.lift F : Mat_ C ⥤ D`,
Moreover, this functor is unique (up to natural isomorphisms) amongst functors `L : Mat_ C ⥤ D`
such that `embedding C ⋙ L ≅ F`.
(As we don't have 2-category theory, we can't explicitly state that `Mat_ C` is
the initial object in the 2-category of categories under `C` which have biproducts.)

As a consequence, when `C` already has finite biproducts we have `Mat_ C ≌ C`.

## Future work

We should provide a more convenient `Mat R`, when `R` is a ring,
as a category with objects `n : FinType`,
and whose morphisms are matrices with components in `R`.

Ideally this would conveniently interact with both `Mat_` and `Matrix`.

-/


open CategoryTheory CategoryTheory.Preadditive

open scoped BigOperators Classical

noncomputable section

namespace CategoryTheory

universe w v₁ v₂ u₁ u₂

variable (C : Type u₁) [Category.{v₁} C] [Preadditive C]

/-- An object in `Mat_ C` is a finite tuple of objects in `C`.
-/
structure Mat_ where
  ι : Type
  [F : Fintype ι]
  X : ι → C
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_ CategoryTheory.Mat_

attribute [instance] Mat_.F

namespace Mat_

variable {C}

-- porting note: removed @[nolint has_nonempty_instance]
/-- A morphism in `Mat_ C` is a dependently typed matrix of morphisms. -/
def Hom (M N : Mat_ C) : Type v₁ :=
  DMatrix M.ι N.ι fun i j => M.X i ⟶ N.X j
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.hom CategoryTheory.Mat_.Hom

namespace Hom

/-- The identity matrix consists of identity morphisms on the diagonal, and zeros elsewhere. -/
def id (M : Mat_ C) : Hom M M := fun i j => if h : i = j then eqToHom (congr_arg M.X h) else 0
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.hom.id CategoryTheory.Mat_.Hom.id

/-- Composition of matrices using matrix multiplication. -/
def comp {M N K : Mat_ C} (f : Hom M N) (g : Hom N K) : Hom M K := fun i k =>
  ∑ j : N.ι, f i j ≫ g j k
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.hom.comp CategoryTheory.Mat_.Hom.comp

end Hom

section

attribute [local simp] Hom.id Hom.comp

instance : Category.{v₁} (Mat_ C) where
  Hom := Hom
  id := Hom.id
  comp f g := f.comp g
  id_comp f := by simp [dite_comp]
  comp_id f := by simp [comp_dite]
  assoc f g h := by
    apply DMatrix.ext
    intros
    simp_rw [Hom.comp, sum_comp, comp_sum, Category.assoc]
    rw [Finset.sum_comm]

-- porting note: added because `DMatrix.ext` is not triggered automatically
-- See https://github.com/leanprover-community/mathlib4/issues/5229
@[ext]
theorem hom_ext {M N : Mat_ C} (f g : M ⟶ N) (H : ∀ i j, f i j = g i j) : f = g :=
  DMatrix.ext_iff.mp H

theorem id_def (M : Mat_ C) :
    (𝟙 M : Hom M M) = fun i j => if h : i = j then eqToHom (congr_arg M.X h) else 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.id_def CategoryTheory.Mat_.id_def

theorem id_apply (M : Mat_ C) (i j : M.ι) :
    (𝟙 M : Hom M M) i j = if h : i = j then eqToHom (congr_arg M.X h) else 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.id_apply CategoryTheory.Mat_.id_apply

@[simp]
theorem id_apply_self (M : Mat_ C) (i : M.ι) : (𝟙 M : Hom M M) i i = 𝟙 _ := by simp [id_apply]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.id_apply_self CategoryTheory.Mat_.id_apply_self

@[simp]
theorem id_apply_of_ne (M : Mat_ C) (i j : M.ι) (h : i ≠ j) : (𝟙 M : Hom M M) i j = 0 := by
  simp [id_apply, h]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.id_apply_of_ne CategoryTheory.Mat_.id_apply_of_ne

theorem comp_def {M N K : Mat_ C} (f : M ⟶ N) (g : N ⟶ K) :
    f ≫ g = fun i k => ∑ j : N.ι, f i j ≫ g j k :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.comp_def CategoryTheory.Mat_.comp_def

@[simp]
theorem comp_apply {M N K : Mat_ C} (f : M ⟶ N) (g : N ⟶ K) (i k) :
    (f ≫ g) i k = ∑ j : N.ι, f i j ≫ g j k :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.comp_apply CategoryTheory.Mat_.comp_apply

instance (M N : Mat_ C) : Inhabited (M ⟶ N) :=
  ⟨fun i j => (0 : M.X i ⟶ N.X j)⟩

end

-- porting note: to ease the construction of the preadditive structure, the `AddCommGroup`
-- was introduced separately and the lemma `add_apply` was moved upwards
instance (M N : Mat_ C) : AddCommGroup (M ⟶ N) := by
  change AddCommGroup (DMatrix M.ι N.ι _)
  infer_instance

@[simp]
theorem add_apply {M N : Mat_ C} (f g : M ⟶ N) (i j) : (f + g) i j = f i j + g i j :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.add_apply CategoryTheory.Mat_.add_apply

instance : Preadditive (Mat_ C) where
  add_comp M N K f f' g := by ext; simp [Finset.sum_add_distrib]
  comp_add M N K f g g' := by ext; simp [Finset.sum_add_distrib]

open CategoryTheory.Limits

/-- We now prove that `Mat_ C` has finite biproducts.

Be warned, however, that `Mat_ C` is not necessarily Krull-Schmidt,
and so the internal indexing of a biproduct may have nothing to do with the external indexing,
even though the construction we give uses a sigma type.
See however `isoBiproductEmbedding`.
-/
instance hasFiniteBiproducts : HasFiniteBiproducts (Mat_ C)
    where out n :=
    { has_biproduct := fun f =>
        hasBiproduct_of_total
          { pt := ⟨Σ j, (f j).ι, fun p => (f p.1).X p.2⟩
            π := fun j x y => by
              refine' if h : x.1 = j then _ else 0
              refine' if h' : @Eq.ndrec (Fin n) x.1 (fun j => (f j).ι) x.2 _ h = y then _ else 0
              apply eqToHom
              substs h h'
              rfl
            -- Notice we were careful not to use `subst` until we had a goal in `Prop`.
            ι := fun j x y => by
              refine' if h : y.1 = j then _ else 0
              refine' if h' : @Eq.ndrec _ y.1 (fun j => (f j).ι) y.2 _ h = x then _ else 0
              apply eqToHom
              substs h h'
              rfl
            ι_π := fun j j' => by
              ext x y
              dsimp
              simp_rw [dite_comp, comp_dite]
              simp only [ite_self, dite_eq_ite, dif_ctx_congr, Limits.comp_zero, Limits.zero_comp,
                eqToHom_trans, Finset.sum_congr]
              erw [Finset.sum_sigma]
              dsimp
              simp only [if_congr, if_true, dif_ctx_congr, Finset.sum_dite_irrel, Finset.mem_univ,
                Finset.sum_const_zero, Finset.sum_congr, Finset.sum_dite_eq']
              split_ifs with h h'
              · substs h h'
                simp only [CategoryTheory.eqToHom_refl, CategoryTheory.Mat_.id_apply_self]
              · subst h
                rw [eqToHom_refl, id_apply_of_ne _ _ _ h']
              · rfl }
          (by
            dsimp
            ext1 ⟨i, j⟩
            rintro ⟨i', j'⟩
            rw [Finset.sum_apply, Finset.sum_apply]
            dsimp
            rw [Finset.sum_eq_single i]; rotate_left
            · intro b _ hb
              apply Finset.sum_eq_zero
              intro x _
              rw [dif_neg hb.symm, zero_comp]
            · intro hi
              simp at hi
            rw [Finset.sum_eq_single j]; rotate_left
            · intro b _ hb
              rw [dif_pos rfl, dif_neg, zero_comp]
              simp only
              tauto
            · intro hj
              simp at hj
            simp only [eqToHom_refl, dite_eq_ite, ite_true, Category.id_comp, ne_eq,
              Sigma.mk.inj_iff, not_and, id_def]
            by_cases i' = i
            · subst h
              rw [dif_pos rfl]
              simp only [heq_eq_eq, true_and]
              by_cases j' = j
              · subst h
                simp
              · rw [dif_neg h, dif_neg (Ne.symm h)]
            · rw [dif_neg h, dif_neg]
              tauto ) }
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.has_finite_biproducts CategoryTheory.Mat_.hasFiniteBiproducts

end Mat_

namespace Functor

variable {C} {D : Type*} [Category.{v₁} D] [Preadditive D]

attribute [local simp] Mat_.id_apply eqToHom_map

/-- A functor induces a functor of matrix categories.
-/
@[simps]
def mapMat_ (F : C ⥤ D) [Functor.Additive F] : Mat_ C ⥤ Mat_ D where
  obj M := ⟨M.ι, fun i => F.obj (M.X i)⟩
  map f i j := F.map (f i j)
set_option linter.uppercaseLean3 false in
#align category_theory.functor.map_Mat_ CategoryTheory.Functor.mapMat_

/-- The identity functor induces the identity functor on matrix categories.
-/
@[simps!]
def mapMatId : (𝟭 C).mapMat_ ≅ 𝟭 (Mat_ C) :=
  NatIso.ofComponents (fun M => eqToIso (by cases M; rfl)) fun {M N} f => by
    ext
    cases M; cases N
    simp [comp_dite, dite_comp]
set_option linter.uppercaseLean3 false in
#align category_theory.functor.map_Mat_id CategoryTheory.Functor.mapMatId

/-- Composite functors induce composite functors on matrix categories.
-/
@[simps!]
def mapMatComp {E : Type*} [Category.{v₁} E] [Preadditive E] (F : C ⥤ D) [Functor.Additive F]
    (G : D ⥤ E) [Functor.Additive G] : (F ⋙ G).mapMat_ ≅ F.mapMat_ ⋙ G.mapMat_ :=
  NatIso.ofComponents (fun M => eqToIso (by cases M; rfl)) fun {M N} f => by
    ext
    cases M; cases N
    simp [comp_dite, dite_comp]
set_option linter.uppercaseLean3 false in
#align category_theory.functor.map_Mat_comp CategoryTheory.Functor.mapMatComp

end Functor

namespace Mat_

/-- The embedding of `C` into `Mat_ C` as one-by-one matrices.
(We index the summands by `punit`.) -/
@[simps]
def embedding : C ⥤ Mat_ C where
  obj X := ⟨PUnit, fun _ => X⟩
  map f _ _ := f
  map_id _ := by ext ⟨⟩; simp
  map_comp _ _ := by ext ⟨⟩; simp
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.embedding CategoryTheory.Mat_.embedding

namespace Embedding

instance : Faithful (embedding C)
    where map_injective h := congr_fun (congr_fun h PUnit.unit) PUnit.unit

instance : Full (embedding C) where preimage f := f PUnit.unit PUnit.unit

instance : Functor.Additive (embedding C) where

end Embedding

instance [Inhabited C] : Inhabited (Mat_ C) :=
  ⟨(embedding C).obj default⟩

open CategoryTheory.Limits

variable {C}

/-- Every object in `Mat_ C` is isomorphic to the biproduct of its summands.
-/
@[simps]
def isoBiproductEmbedding (M : Mat_ C) : M ≅ ⨁ fun i => (embedding C).obj (M.X i) where
  hom := biproduct.lift fun i j k => if h : j = i then eqToHom (congr_arg M.X h) else 0
  inv := biproduct.desc fun i j k => if h : i = k then eqToHom (congr_arg M.X h) else 0
  hom_inv_id := by
    simp only [biproduct.lift_desc]
    funext i j
    dsimp [id_def]
    rw [Finset.sum_apply, Finset.sum_apply, Finset.sum_eq_single i]; rotate_left
    · intro b _ hb
      dsimp
      simp only [Finset.sum_const, Finset.card_singleton, one_smul]
      rw [dif_neg hb.symm, zero_comp]
    · intro h
      simp at h
    simp
  inv_hom_id := by
    apply biproduct.hom_ext
    intro i
    apply biproduct.hom_ext'
    intro j
    simp only [Category.id_comp, Category.assoc, biproduct.lift_π, biproduct.ι_desc_assoc,
      biproduct.ι_π]
    ext ⟨⟩ ⟨⟩
    simp only [embedding, comp_apply, comp_dite, dite_comp, comp_zero, zero_comp,
      Finset.sum_dite_eq', Finset.mem_univ, ite_true, eqToHom_refl, Category.comp_id]
    split_ifs with h
    · subst h
      simp
    · rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.iso_biproduct_embedding CategoryTheory.Mat_.isoBiproductEmbedding

variable {D : Type u₁} [Category.{v₁} D] [Preadditive D]

-- porting note: added because it was not found automatically
instance (F : Mat_ C ⥤ D) [Functor.Additive F] (M : Mat_ C) :
    HasBiproduct (fun i => F.obj ((embedding C).obj (M.X i))) :=
  F.hasBiproduct_of_preserves _

-- porting note: removed the @[simps] attribute as the automatically generated lemmas
-- are not very useful; two more useful lemmas have been added just after this
-- definition in order to ease the proof of `additiveObjIsoBiproduct_naturality`
/-- Every `M` is a direct sum of objects from `C`, and `F` preserves biproducts. -/
def additiveObjIsoBiproduct (F : Mat_ C ⥤ D) [Functor.Additive F] (M : Mat_ C) :
    F.obj M ≅ ⨁ fun i => F.obj ((embedding C).obj (M.X i)) :=
  F.mapIso (isoBiproductEmbedding M) ≪≫ F.mapBiproduct _
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.additive_obj_iso_biproduct CategoryTheory.Mat_.additiveObjIsoBiproduct

@[reassoc (attr := simp)]
lemma additiveObjIsoBiproduct_hom_π (F : Mat_ C ⥤ D) [Functor.Additive F] (M : Mat_ C) (i : M.ι) :
    (additiveObjIsoBiproduct F M).hom ≫ biproduct.π _ i =
      F.map (M.isoBiproductEmbedding.hom ≫ biproduct.π _ i) := by
  dsimp [additiveObjIsoBiproduct]
  rw [biproduct.lift_π, Category.assoc]
  erw [biproduct.lift_π, ← F.map_comp]
  simp

@[reassoc (attr := simp)]
lemma ι_additiveObjIsoBiproduct_inv (F : Mat_ C ⥤ D) [Functor.Additive F] (M : Mat_ C) (i : M.ι) :
    biproduct.ι _ i ≫ (additiveObjIsoBiproduct F M).inv =
      F.map (biproduct.ι _ i ≫ M.isoBiproductEmbedding.inv) := by
  dsimp [additiveObjIsoBiproduct, Functor.mapBiproduct, Functor.mapBicone]
  simp only [biproduct.ι_desc, biproduct.ι_desc_assoc, ← F.map_comp]

variable [HasFiniteBiproducts D]

@[reassoc]
theorem additiveObjIsoBiproduct_naturality (F : Mat_ C ⥤ D) [Functor.Additive F] {M N : Mat_ C}
    (f : M ⟶ N) :
    F.map f ≫ (additiveObjIsoBiproduct F N).hom =
      (additiveObjIsoBiproduct F M).hom ≫
        biproduct.matrix fun i j => F.map ((embedding C).map (f i j)) := by
  ext i : 1
  simp only [Category.assoc, additiveObjIsoBiproduct_hom_π, isoBiproductEmbedding_hom,
    embedding_obj_ι, embedding_obj_X, biproduct.lift_π, biproduct.matrix_π,
    ← cancel_epi (additiveObjIsoBiproduct F M).inv, Iso.inv_hom_id_assoc]
  ext j : 1
  simp only [ι_additiveObjIsoBiproduct_inv_assoc, isoBiproductEmbedding_inv,
    biproduct.ι_desc, ← F.map_comp]
  congr 1
  funext ⟨⟩ ⟨⟩
  simp [comp_apply, dite_comp, comp_dite]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.additive_obj_iso_biproduct_naturality CategoryTheory.Mat_.additiveObjIsoBiproduct_naturality

@[reassoc]
theorem additiveObjIsoBiproduct_naturality' (F : Mat_ C ⥤ D) [Functor.Additive F] {M N : Mat_ C}
    (f : M ⟶ N) :
    (additiveObjIsoBiproduct F M).inv ≫ F.map f =
      biproduct.matrix (fun i j => F.map ((embedding C).map (f i j)) : _) ≫
        (additiveObjIsoBiproduct F N).inv :=
  by rw [Iso.inv_comp_eq, ← Category.assoc, Iso.eq_comp_inv, additiveObjIsoBiproduct_naturality]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.additive_obj_iso_biproduct_naturality' CategoryTheory.Mat_.additiveObjIsoBiproduct_naturality'

attribute [local simp] biproduct.lift_desc

/-- Any additive functor `C ⥤ D` to a category `D` with finite biproducts extends to
a functor `Mat_ C ⥤ D`. -/
@[simps]
def lift (F : C ⥤ D) [Functor.Additive F] : Mat_ C ⥤ D where
  obj X := ⨁ fun i => F.obj (X.X i)
  map f := biproduct.matrix fun i j => F.map (f i j)
  map_id X := by
    dsimp
    ext i j
    by_cases h : j = i
    · subst h; simp
    · simp [h]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.lift CategoryTheory.Mat_.lift

instance lift_additive (F : C ⥤ D) [Functor.Additive F] : Functor.Additive (lift F) where
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.lift_additive CategoryTheory.Mat_.lift_additive

/-- An additive functor `C ⥤ D` factors through its lift to `Mat_ C ⥤ D`. -/
@[simps!]
def embeddingLiftIso (F : C ⥤ D) [Functor.Additive F] : embedding C ⋙ lift F ≅ F :=
  NatIso.ofComponents
    (fun X =>
      { hom := biproduct.desc fun _ => 𝟙 (F.obj X)
        inv := biproduct.lift fun _ => 𝟙 (F.obj X) })
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.embedding_lift_iso CategoryTheory.Mat_.embeddingLiftIso

/-- `Mat_.lift F` is the unique additive functor `L : Mat_ C ⥤ D` such that `F ≅ embedding C ⋙ L`.
-/
def liftUnique (F : C ⥤ D) [Functor.Additive F] (L : Mat_ C ⥤ D) [Functor.Additive L]
    (α : embedding C ⋙ L ≅ F) : L ≅ lift F :=
  NatIso.ofComponents
    (fun M =>
      additiveObjIsoBiproduct L M ≪≫
        (biproduct.mapIso fun i => α.app (M.X i)) ≪≫
          (biproduct.mapIso fun i => (embeddingLiftIso F).symm.app (M.X i)) ≪≫
            (additiveObjIsoBiproduct (lift F) M).symm)
    fun f => by
      dsimp only [Iso.trans_hom, Iso.symm_hom, biproduct.mapIso_hom]
      simp only [additiveObjIsoBiproduct_naturality_assoc]
      simp only [biproduct.matrix_map_assoc, Category.assoc]
      simp only [additiveObjIsoBiproduct_naturality']
      simp only [biproduct.map_matrix_assoc, Category.assoc]
      congr 3
      ext j k
      apply biproduct.hom_ext
      rintro ⟨⟩
      dsimp
      simpa using α.hom.naturality (f j k)
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.lift_unique CategoryTheory.Mat_.liftUnique

-- porting note: removed @[ext] as the statement is not an equality
-- TODO is there some uniqueness statement for the natural isomorphism in `liftUnique`?
/-- Two additive functors `Mat_ C ⥤ D` are naturally isomorphic if
their precompositions with `embedding C` are naturally isomorphic as functors `C ⥤ D`. -/
def ext {F G : Mat_ C ⥤ D} [Functor.Additive F] [Functor.Additive G]
    (α : embedding C ⋙ F ≅ embedding C ⋙ G) : F ≅ G :=
  liftUnique (embedding C ⋙ G) _ α ≪≫ (liftUnique _ _ (Iso.refl _)).symm
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.ext CategoryTheory.Mat_.ext

/-- Natural isomorphism needed in the construction of `equivalenceSelfOfHasFiniteBiproducts`.
-/
def equivalenceSelfOfHasFiniteBiproductsAux [HasFiniteBiproducts C] :
    embedding C ⋙ 𝟭 (Mat_ C) ≅ embedding C ⋙ lift (𝟭 C) ⋙ embedding C :=
  Functor.rightUnitor _ ≪≫
    (Functor.leftUnitor _).symm ≪≫
      isoWhiskerRight (embeddingLiftIso _).symm _ ≪≫ Functor.associator _ _ _
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.equivalence_self_of_has_finite_biproducts_aux CategoryTheory.Mat_.equivalenceSelfOfHasFiniteBiproductsAux

/--
A preadditive category that already has finite biproducts is equivalent to its additive envelope.

Note that we only prove this for a large category;
otherwise there are universe issues that I haven't attempted to sort out.
-/
def equivalenceSelfOfHasFiniteBiproducts (C : Type (u₁ + 1)) [LargeCategory C] [Preadditive C]
    [HasFiniteBiproducts C] : Mat_ C ≌ C :=
  Equivalence.mk
    (-- I suspect this is already an adjoint equivalence, but it seems painful to verify.
      lift
      (𝟭 C))
    (embedding C) (ext equivalenceSelfOfHasFiniteBiproductsAux) (embeddingLiftIso (𝟭 C))
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.equivalence_self_of_has_finite_biproducts CategoryTheory.Mat_.equivalenceSelfOfHasFiniteBiproducts

@[simp]
theorem equivalenceSelfOfHasFiniteBiproducts_functor {C : Type (u₁ + 1)} [LargeCategory C]
    [Preadditive C] [HasFiniteBiproducts C] :
    (equivalenceSelfOfHasFiniteBiproducts C).functor = lift (𝟭 C) :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.equivalence_self_of_has_finite_biproducts_functor CategoryTheory.Mat_.equivalenceSelfOfHasFiniteBiproducts_functor

@[simp]
theorem equivalenceSelfOfHasFiniteBiproducts_inverse {C : Type (u₁ + 1)} [LargeCategory C]
    [Preadditive C] [HasFiniteBiproducts C] :
    (equivalenceSelfOfHasFiniteBiproducts C).inverse = embedding C :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat_.equivalence_self_of_has_finite_biproducts_inverse CategoryTheory.Mat_.equivalenceSelfOfHasFiniteBiproducts_inverse

end Mat_

universe u

/-- A type synonym for `Fintype`, which we will equip with a category structure
where the morphisms are matrices with components in `R`. -/
@[nolint unusedArguments]
def Mat (_ : Type u) :=
  FintypeCat.{u}
set_option linter.uppercaseLean3 false in
#align category_theory.Mat CategoryTheory.Mat

instance (R : Type u) : Inhabited (Mat R) := by
  dsimp [Mat]
  infer_instance

instance (R : Type u) : CoeSort (Mat R) (Type u) :=
  Bundled.coeSort

open Matrix

instance (R : Type u) [Semiring R] : Category (Mat R) where
  Hom X Y := Matrix X Y R
  id X := (1 : Matrix X X R)
  comp {X Y Z} f g := (show Matrix X Y R from f) * (show Matrix Y Z R from g)
  assoc := by intros; simp [Matrix.mul_assoc]

namespace Mat

section

variable {R : Type u} [Semiring R]

-- porting note: added because `Matrix.ext` is not triggered automatically
-- See https://github.com/leanprover-community/mathlib4/issues/5229
@[ext]
theorem hom_ext {X Y : Mat R} (f g : X ⟶ Y) (h : ∀ i j, f i j = g i j) : f = g :=
  Matrix.ext_iff.mp h

variable (R)

theorem id_def (M : Mat R) : 𝟙 M = fun i j => if i = j then 1 else 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.id_def CategoryTheory.Mat.id_def

theorem id_apply (M : Mat R) (i j : M) : (𝟙 M : Matrix M M R) i j = if i = j then 1 else 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.id_apply CategoryTheory.Mat.id_apply

@[simp]
theorem id_apply_self (M : Mat R) (i : M) : (𝟙 M : Matrix M M R) i i = 1 := by simp [id_apply]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.id_apply_self CategoryTheory.Mat.id_apply_self

@[simp]
theorem id_apply_of_ne (M : Mat R) (i j : M) (h : i ≠ j) : (𝟙 M : Matrix M M R) i j = 0 := by
  simp [id_apply, h]
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.id_apply_of_ne CategoryTheory.Mat.id_apply_of_ne

theorem comp_def {M N K : Mat R} (f : M ⟶ N) (g : N ⟶ K) :
    f ≫ g = fun i k => ∑ j : N, f i j * g j k :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.comp_def CategoryTheory.Mat.comp_def

@[simp]
theorem comp_apply {M N K : Mat R} (f : M ⟶ N) (g : N ⟶ K) (i k) :
    (f ≫ g) i k = ∑ j : N, f i j * g j k :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.comp_apply CategoryTheory.Mat.comp_apply

instance (M N : Mat R) : Inhabited (M ⟶ N) :=
  ⟨fun (_ : M) (_ : N) => (0 : R)⟩

end

variable (R : Type) [Ring R]

open Opposite

/-- Auxiliary definition for `CategoryTheory.Mat.equivalenceSingleObj`. -/
@[simps]
def equivalenceSingleObjInverse : Mat_ (SingleObj Rᵐᵒᵖ) ⥤ Mat R where
  obj X := FintypeCat.of X.ι
  map f i j := MulOpposite.unop (f i j)
  map_id X := by
    ext
    simp only [Mat_.id_def, id_def]
    split_ifs <;> rfl
  map_comp f g := by
    -- Porting note: this proof was automatic in mathlib3
    ext
    simp only [Mat_.comp_apply, comp_apply]
    apply Finset.unop_sum
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.equivalence_single_obj_inverse CategoryTheory.Mat.equivalenceSingleObjInverse

instance : Faithful (equivalenceSingleObjInverse R) where
  map_injective w := by
    ext
    apply_fun MulOpposite.unop using MulOpposite.unop_injective
    exact congr_fun (congr_fun w _) _

instance : Full (equivalenceSingleObjInverse R) where
  preimage f i j := MulOpposite.op (f i j)

instance : EssSurj (equivalenceSingleObjInverse R)
    where mem_essImage X :=
    ⟨{  ι := X
        X := fun _ => PUnit.unit }, ⟨eqToIso (by dsimp; cases X; congr)⟩⟩

/-- The categorical equivalence between the category of matrices over a ring,
and the category of matrices over that ring considered as a single-object category. -/
def equivalenceSingleObj : Mat R ≌ Mat_ (SingleObj Rᵐᵒᵖ) :=
  haveI := Equivalence.ofFullyFaithfullyEssSurj (equivalenceSingleObjInverse R)
  (equivalenceSingleObjInverse R).asEquivalence.symm
set_option linter.uppercaseLean3 false in
#align category_theory.Mat.equivalence_single_obj CategoryTheory.Mat.equivalenceSingleObj

-- porting note: added as this was not found automatically
instance (X Y : Mat R) : AddCommGroup (X ⟶ Y) := by
  change AddCommGroup (Matrix X Y R)
  infer_instance

variable {R}

-- porting note: added to ease automation
@[simp]
theorem add_apply {M N : Mat R} (f g : M ⟶ N) (i j) : (f + g) i j = f i j + g i j :=
  rfl

attribute [local simp] add_mul mul_add Finset.sum_add_distrib

instance : Preadditive (Mat R) where

-- TODO show `Mat R` has biproducts, and that `biprod.map` "is" forming a block diagonal matrix.
end Mat

end CategoryTheory
```
