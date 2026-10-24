# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretriangulated.Variant81bf26003a154ecd2bd721f40a961f50433ca4d207bade6af79e9378a936d831

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a0bab7104dbd5f973e0fc9e600ab36b624a9cf9` · SHA-256 `2ce4c3aeefd364570c15b8f5f861c990f0b52a8325a4c1a106e5d8b0c3e5654b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretriangulated.Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Pretriangulated.Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Triangulated/Pretriangulated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Luke Kershaw. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Luke Kershaw
-/
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.CategoryTheory.Shift.Basic
import Mathlib.CategoryTheory.Triangulated.Rotate


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretriangulated.Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05

#align_import category_theory.triangulated.pretriangulated from "leanprover-community/mathlib"@"6876fa15e3158ff3e4a4e2af1fb6e1945c6e8803"

/-!
# Pretriangulated Categories

This file contains the definition of pretriangulated categories and triangulated functors
between them.

## Implementation Notes

We work under the assumption that pretriangulated categories are preadditive categories,
but not necessarily additive categories, as is assumed in some sources.

TODO: generalise this to n-angulated categories as in https://arxiv.org/abs/1006.4592
-/


noncomputable section

open CategoryTheory

open CategoryTheory.Preadditive

open CategoryTheory.Limits

universe v v₀ v₁ v₂ u u₀ u₁ u₂

namespace CategoryTheory

open Category Pretriangulated ZeroObject

/-
We work in a preadditive category `C` equipped with an additive shift.
-/
variable (C : Type u) [Category.{v} C] [HasZeroObject C] [HasShift C ℤ] [Preadditive C]

/-- A preadditive category `C` with an additive shift, and a class of "distinguished triangles"
relative to that shift is called pretriangulated if the following hold:
* Any triangle that is isomorphic to a distinguished triangle is also distinguished.
* Any triangle of the form `(X,X,0,id,0,0)` is distinguished.
* For any morphism `f : X ⟶ Y` there exists a distinguished triangle of the form `(X,Y,Z,f,g,h)`.
* The triangle `(X,Y,Z,f,g,h)` is distinguished if and only if `(Y,Z,X⟦1⟧,g,h,-f⟦1⟧)` is.
* Given a diagram:
  ```
        f       g       h
    X  ───> Y  ───> Z  ───> X⟦1⟧
    │       │                │
    │a      │b               │a⟦1⟧'
    V       V                V
    X' ───> Y' ───> Z' ───> X'⟦1⟧
        f'      g'      h'
  ```
  where the left square commutes, and whose rows are distinguished triangles,
  there exists a morphism `c : Z ⟶ Z'` such that `(a,b,c)` is a triangle morphism.

See <https://stacks.math.columbia.edu/tag/0145>
-/
class Pretriangulated [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] where
  /-- a class of triangle which are called `distinguished` -/
  distinguishedTriangles : Set (Triangle C)
  /-- a triangle that is isomorphic to a distinguished triangle is distinguished -/
  isomorphic_distinguished :
    ∀ T₁ ∈ distinguishedTriangles, ∀ (T₂) (_ : T₂ ≅ T₁), T₂ ∈ distinguishedTriangles
  /-- obvious triangles `X ⟶ X ⟶ 0 ⟶ X⟦1⟧` are distinguished -/
  contractible_distinguished : ∀ X : C, contractibleTriangle X ∈ distinguishedTriangles
  /-- any morphism `X ⟶ Y` is part of a distinguished triangle `X ⟶ Y ⟶ Z ⟶ X⟦1⟧` -/
  distinguished_cocone_triangle :
    ∀ {X Y : C} (f : X ⟶ Y),
      ∃ (Z : C) (g : Y ⟶ Z) (h : Z ⟶ X⟦(1 : ℤ)⟧), Triangle.mk f g h ∈ distinguishedTriangles
  /-- a triangle is distinguished iff it is so after rotating it -/
  rotate_distinguished_triangle :
    ∀ T : Triangle C, T ∈ distinguishedTriangles ↔ T.rotate ∈ distinguishedTriangles
  /-- given two distinguished triangle, a commutative square
        can be extended as morphism of triangles -/
  complete_distinguished_triangle_morphism :
    ∀ (T₁ T₂ : Triangle C) (_ : T₁ ∈ distinguishedTriangles) (_ : T₂ ∈ distinguishedTriangles)
      (a : T₁.obj₁ ⟶ T₂.obj₁) (b : T₁.obj₂ ⟶ T₂.obj₂) (_ : T₁.mor₁ ≫ b = a ≫ T₂.mor₁),
      ∃ c : T₁.obj₃ ⟶ T₂.obj₃, T₁.mor₂ ≫ c = b ≫ T₂.mor₂ ∧ T₁.mor₃ ≫ a⟦1⟧' = c ≫ T₂.mor₃
#align category_theory.pretriangulated CategoryTheory.Pretriangulated


namespace Pretriangulated

variable [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [hC : Pretriangulated C]

-- porting note: increased the priority so that we can write `T ∈ distTriang C`, and
-- not just `T ∈ (distTriang C)`
/-- distinguished triangles in a pretriangulated category -/
notation:60 "distTriang " C => @distinguishedTriangles C _ _ _ _ _ _

variable {C}

lemma distinguished_iff_of_iso {T₁ T₂ : Triangle C} (e : T₁ ≅ T₂) :
    (T₁ ∈ distTriang C) ↔ T₂ ∈ distTriang C :=
  ⟨fun hT₁ => isomorphic_distinguished _ hT₁ _ e.symm,
    fun hT₂ => isomorphic_distinguished _ hT₂ _ e⟩

/-- Given any distinguished triangle `T`, then we know `T.rotate` is also distinguished.
-/
theorem rot_of_dist_triangle (T : Triangle C) (H : T ∈ distTriang C) : T.rotate ∈ distTriang C :=
  (rotate_distinguished_triangle T).mp H
#align category_theory.pretriangulated.rot_of_dist_triangle CategoryTheory.Pretriangulated.rot_of_dist_triangle

/-- Given any distinguished triangle `T`, then we know `T.inv_rotate` is also distinguished.
-/
theorem inv_rot_of_dist_triangle (T : Triangle C) (H : T ∈ distTriang C) :
    T.invRotate ∈ distTriang C :=
  (rotate_distinguished_triangle T.invRotate).mpr
    (isomorphic_distinguished T H T.invRotate.rotate (invRotCompRot.app T))
#align category_theory.pretriangulated.inv_rot_of_dist_triangle CategoryTheory.Pretriangulated.inv_rot_of_dist_triangle

/-- Given any distinguished triangle
```
      f       g       h
  X  ───> Y  ───> Z  ───> X⟦1⟧
```
the composition `f ≫ g = 0`.
See <https://stacks.math.columbia.edu/tag/0146>
-/
@[reassoc]
theorem comp_dist_triangle_mor_zero₁₂ (T) (H : T ∈ (distTriang C)) : T.mor₁ ≫ T.mor₂ = 0 := by
  obtain ⟨c, hc⟩ :=
    complete_distinguished_triangle_morphism _ _ (contractible_distinguished T.obj₁) H (𝟙 T.obj₁)
      T.mor₁ rfl
  simpa only [contractibleTriangle_mor₂, zero_comp] using hc.left.symm
#align category_theory.pretriangulated.comp_dist_triangle_mor_zero₁₂ CategoryTheory.Pretriangulated.comp_dist_triangle_mor_zero₁₂

/-- Given any distinguished triangle
```
      f       g       h
  X  ───> Y  ───> Z  ───> X⟦1⟧
```
the composition `g ≫ h = 0`.
See <https://stacks.math.columbia.edu/tag/0146>
-/
@[reassoc]
theorem comp_dist_triangle_mor_zero₂₃ (T : Triangle C) (H : T ∈ distTriang C) :
  T.mor₂ ≫ T.mor₃ = 0 :=
  comp_dist_triangle_mor_zero₁₂ T.rotate (rot_of_dist_triangle T H)
#align category_theory.pretriangulated.comp_dist_triangle_mor_zero₂₃ CategoryTheory.Pretriangulated.comp_dist_triangle_mor_zero₂₃

/-- Given any distinguished triangle
```
      f       g       h
  X  ───> Y  ───> Z  ───> X⟦1⟧
```
the composition `h ≫ f⟦1⟧ = 0`.
See <https://stacks.math.columbia.edu/tag/0146>
-/
@[reassoc]
theorem comp_dist_triangle_mor_zero₃₁ (T : Triangle C) (H : T ∈ distTriang C) :
    T.mor₃ ≫ (shiftEquiv C 1).functor.map T.mor₁ = 0 := by
  have H₂ := rot_of_dist_triangle T.rotate (rot_of_dist_triangle T H)
  simpa using comp_dist_triangle_mor_zero₁₂ T.rotate.rotate H₂
#align category_theory.pretriangulated.comp_dist_triangle_mor_zero₃₁ CategoryTheory.Pretriangulated.comp_dist_triangle_mor_zero₃₁

/-- Any morphism `Y ⟶ Z` is part of a distinguished triangle `X ⟶ Y ⟶ Z ⟶ X⟦1⟧` -/
lemma distinguished_cocone_triangle₁ {Y Z : C} (g : Y ⟶ Z) :
    ∃ (X : C) (f : X ⟶ Y) (h : Z ⟶ X⟦(1 : ℤ)⟧), Triangle.mk f g h ∈ distTriang C := by
  obtain ⟨X', f', g', mem⟩ := distinguished_cocone_triangle g
  exact ⟨_, _, _, inv_rot_of_dist_triangle _ mem⟩

/-- Any morphism `Z ⟶ X⟦1⟧` is part of a distinguished triangle `X ⟶ Y ⟶ Z ⟶ X⟦1⟧` -/
lemma distinguished_cocone_triangle₂ {Z X : C} (h : Z ⟶ X⟦(1 : ℤ)⟧) :
    ∃ (Y : C) (f : X ⟶ Y) (g : Y ⟶ Z), Triangle.mk f g h ∈ distTriang C := by
  obtain ⟨Y', f', g', mem⟩ := distinguished_cocone_triangle h
  let T' := (Triangle.mk h f' g').invRotate.invRotate
  refine' ⟨T'.obj₂, ((shiftEquiv C (1 : ℤ)).unitIso.app X).hom ≫ T'.mor₁, T'.mor₂,
    isomorphic_distinguished _ (inv_rot_of_dist_triangle _ (inv_rot_of_dist_triangle _ mem)) _ _⟩
  exact Triangle.isoMk _ _ ((shiftEquiv C (1 : ℤ)).unitIso.app X) (Iso.refl _) (Iso.refl _)
    (by aesop_cat) (by aesop_cat)
    (by dsimp; simp only [shift_shiftFunctorCompIsoId_inv_app, id_comp])

/-- A commutative square involving the morphisms `mor₂` of two distinguished triangles
can be extended as morphism of triangles -/
lemma complete_distinguished_triangle_morphism₁ (T₁ T₂ : Triangle C)
    (hT₁ : T₁ ∈ distTriang C) (hT₂ : T₂ ∈ distTriang C) (b : T₁.obj₂ ⟶ T₂.obj₂)
    (c : T₁.obj₃ ⟶ T₂.obj₃) (comm : T₁.mor₂ ≫ c = b ≫ T₂.mor₂) :
    ∃ (a : T₁.obj₁ ⟶ T₂.obj₁), T₁.mor₁ ≫ b = a ≫ T₂.mor₁ ∧
      T₁.mor₃ ≫ a⟦(1 : ℤ)⟧' = c ≫ T₂.mor₃ := by
  obtain ⟨a, ⟨ha₁, ha₂⟩⟩ := complete_distinguished_triangle_morphism _ _
    (rot_of_dist_triangle _ hT₁) (rot_of_dist_triangle _ hT₂) b c comm
  refine' ⟨(shiftFunctor C (1 : ℤ)).preimage a, ⟨_, _⟩⟩
  · apply (shiftFunctor C (1 : ℤ)).map_injective
    dsimp at ha₂
    rw [neg_comp, comp_neg, neg_inj] at ha₂
    simpa only [Functor.map_comp, Functor.image_preimage] using ha₂
  · simpa only [Functor.image_preimage] using ha₁

/-- A commutative square involving the morphisms `mor₃` of two distinguished triangles
can be extended as morphism of triangles -/
lemma complete_distinguished_triangle_morphism₂ (T₁ T₂ : Triangle C)
    (hT₁ : T₁ ∈ distTriang C) (hT₂ : T₂ ∈ distTriang C) (a : T₁.obj₁ ⟶ T₂.obj₁)
    (c : T₁.obj₃ ⟶ T₂.obj₃) (comm : T₁.mor₃ ≫ a⟦(1 : ℤ)⟧' = c ≫ T₂.mor₃) :
    ∃ (b : T₁.obj₂ ⟶ T₂.obj₂), T₁.mor₁ ≫ b = a ≫ T₂.mor₁ ∧ T₁.mor₂ ≫ c = b ≫ T₂.mor₂ := by
  obtain ⟨a, ⟨ha₁, ha₂⟩⟩ := complete_distinguished_triangle_morphism _ _
    (inv_rot_of_dist_triangle _ hT₁) (inv_rot_of_dist_triangle _ hT₂) (c⟦(-1 : ℤ)⟧') a (by
    dsimp
    simp only [neg_comp, comp_neg, ← Functor.map_comp_assoc, ← comm,
      Functor.map_comp, shift_shift_neg', Functor.id_obj, assoc, Iso.inv_hom_id_app, comp_id])
  refine' ⟨a, ⟨ha₁, _⟩⟩
  dsimp only [Triangle.invRotate, Triangle.mk] at ha₂
  rw [← cancel_mono ((shiftEquiv C (1 : ℤ)).counitIso.inv.app T₂.obj₃), assoc, assoc, ← ha₂]
  simp only [shiftEquiv'_counitIso, shift_neg_shift', assoc, Iso.inv_hom_id_app_assoc]

/-- Obvious triangles `0 ⟶ X ⟶ X ⟶ 0⟦1⟧` are distinguished -/
lemma contractible_distinguished₁ (X : C) :
    Triangle.mk (0 : 0 ⟶ X) (𝟙 X) 0 ∈ distTriang C := by
  refine' isomorphic_distinguished _
    (inv_rot_of_dist_triangle _ (contractible_distinguished X)) _ _
  exact Triangle.isoMk _ _ (Functor.mapZeroObject _).symm (Iso.refl _) (Iso.refl _)
    (by aesop_cat) (by aesop_cat) (by aesop_cat)

/-- Obvious triangles `X ⟶ 0 ⟶ X⟦1⟧ ⟶ X⟦1⟧` are distinguished -/
lemma contractible_distinguished₂ (X : C) :
    Triangle.mk (0 : X ⟶ 0) 0 (𝟙 (X⟦1⟧)) ∈ distTriang C := by
  refine' isomorphic_distinguished _
    (inv_rot_of_dist_triangle _ (contractible_distinguished₁ (X⟦(1 : ℤ)⟧))) _ _
  exact Triangle.isoMk _ _ ((shiftEquiv C (1 : ℤ)).unitIso.app X) (Iso.refl _) (Iso.refl _)
    (by aesop_cat) (by aesop_cat)
    (by dsimp; simp only [shift_shiftFunctorCompIsoId_inv_app, id_comp])

namespace Triangle

variable (T : Triangle C) (hT : T ∈ distTriang C)

lemma yoneda_exact₂ {X : C} (f : T.obj₂ ⟶ X) (hf : T.mor₁ ≫ f = 0) :
    ∃ (g : T.obj₃ ⟶ X), f = T.mor₂ ≫ g := by
  obtain ⟨g, ⟨hg₁, _⟩⟩ := complete_distinguished_triangle_morphism T _ hT
    (contractible_distinguished₁ X) 0 f (by aesop_cat)
  exact ⟨g, by simpa using hg₁.symm⟩

lemma yoneda_exact₃ {X : C} (f : T.obj₃ ⟶ X) (hf : T.mor₂ ≫ f = 0) :
    ∃ (g : T.obj₁⟦(1 : ℤ)⟧ ⟶ X), f = T.mor₃ ≫ g :=
  yoneda_exact₂ _ (rot_of_dist_triangle _ hT) f hf

lemma coyoneda_exact₂ {X : C} (f : X ⟶ T.obj₂) (hf : f ≫ T.mor₂ = 0) :
    ∃ (g : X ⟶ T.obj₁), f = g ≫ T.mor₁ := by
  obtain ⟨a, ⟨ha₁, _⟩⟩ := complete_distinguished_triangle_morphism₁ _ T
    (contractible_distinguished X) hT f 0 (by aesop_cat)
  exact ⟨a, by simpa using ha₁⟩

lemma coyoneda_exact₁ {X : C} (f : X ⟶ T.obj₁⟦(1 : ℤ)⟧) (hf : f ≫ T.mor₁⟦1⟧' = 0) :
    ∃ (g : X ⟶ T.obj₃), f = g ≫ T.mor₃ :=
  coyoneda_exact₂ _ (rot_of_dist_triangle _ (rot_of_dist_triangle _ hT)) f (by aesop_cat)

lemma coyoneda_exact₃ {X : C} (f : X ⟶ T.obj₃) (hf : f ≫ T.mor₃ = 0) :
    ∃ (g : X ⟶ T.obj₂), f = g ≫ T.mor₂ :=
  coyoneda_exact₂ _ (rot_of_dist_triangle _ hT) f hf

lemma mor₃_eq_zero_iff_epi₂ : T.mor₃ = 0 ↔ Epi T.mor₂ := by
  constructor
  · intro h
    rw [epi_iff_cancel_zero]
    intro X g hg
    obtain ⟨f, rfl⟩ := yoneda_exact₃ T hT g hg
    rw [h, zero_comp]
  · intro
    rw [← cancel_epi T.mor₂, comp_dist_triangle_mor_zero₂₃ _ hT, comp_zero]

lemma mor₂_eq_zero_iff_epi₁ : T.mor₂ = 0 ↔ Epi T.mor₁ := by
  have h := mor₃_eq_zero_iff_epi₂ _ (inv_rot_of_dist_triangle _ hT)
  dsimp at h
  rw [← h, IsIso.comp_right_eq_zero]

lemma mor₁_eq_zero_iff_epi₃ : T.mor₁ = 0 ↔ Epi T.mor₃ := by
  have h := mor₃_eq_zero_iff_epi₂ _ (rot_of_dist_triangle _ hT)
  dsimp at h
  rw [← h, neg_eq_zero]
  constructor
  · intro h
    simp only [h, Functor.map_zero]
  · intro h
    rw [← (CategoryTheory.shiftFunctor C (1 : ℤ)).map_eq_zero_iff, h]

lemma mor₃_eq_zero_of_epi₂ (h : Epi T.mor₂) : T.mor₃ = 0 := (T.mor₃_eq_zero_iff_epi₂ hT).2 h
lemma mor₂_eq_zero_of_epi₁ (h : Epi T.mor₁) : T.mor₂ = 0 := (T.mor₂_eq_zero_iff_epi₁ hT).2 h
lemma mor₁_eq_zero_of_epi₃ (h : Epi T.mor₃) : T.mor₁ = 0 := (T.mor₁_eq_zero_iff_epi₃ hT).2 h

lemma epi₂ (h : T.mor₃ = 0) : Epi T.mor₂ := (T.mor₃_eq_zero_iff_epi₂ hT).1 h
lemma epi₁ (h : T.mor₂ = 0) : Epi T.mor₁ := (T.mor₂_eq_zero_iff_epi₁ hT).1 h
lemma epi₃ (h : T.mor₁ = 0) : Epi T.mor₃ := (T.mor₁_eq_zero_iff_epi₃ hT).1 h

lemma mor₁_eq_zero_iff_mono₂ : T.mor₁ = 0 ↔ Mono T.mor₂ := by
  constructor
  · intro h
    rw [mono_iff_cancel_zero]
    intro X g hg
    obtain ⟨f, rfl⟩ := coyoneda_exact₂ T hT g hg
    rw [h, comp_zero]
  · intro
    rw [← cancel_mono T.mor₂, comp_dist_triangle_mor_zero₁₂ _ hT, zero_comp]

lemma mor₂_eq_zero_iff_mono₃ : T.mor₂ = 0 ↔ Mono T.mor₃ :=
  mor₁_eq_zero_iff_mono₂ _ (rot_of_dist_triangle _ hT)

lemma mor₃_eq_zero_iff_mono₁ : T.mor₃ = 0 ↔ Mono T.mor₁ := by
  have h := mor₁_eq_zero_iff_mono₂ _ (inv_rot_of_dist_triangle _ hT)
  dsimp at h
  rw [← h, neg_eq_zero, IsIso.comp_right_eq_zero]
  constructor
  · intro h
    simp only [h, Functor.map_zero]
  · intro h
    rw [← (CategoryTheory.shiftFunctor C (-1 : ℤ)).map_eq_zero_iff, h]

lemma mor₁_eq_zero_of_mono₂ (h : Mono T.mor₂) : T.mor₁ = 0 := (T.mor₁_eq_zero_iff_mono₂ hT).2 h
lemma mor₂_eq_zero_of_mono₃ (h : Mono T.mor₃) : T.mor₂ = 0 := (T.mor₂_eq_zero_iff_mono₃ hT).2 h
lemma mor₃_eq_zero_of_mono₁ (h : Mono T.mor₁) : T.mor₃ = 0 := (T.mor₃_eq_zero_iff_mono₁ hT).2 h

lemma mono₂ (h : T.mor₁ = 0) : Mono T.mor₂ := (T.mor₁_eq_zero_iff_mono₂ hT).1 h
lemma mono₃ (h : T.mor₂ = 0) : Mono T.mor₃ := (T.mor₂_eq_zero_iff_mono₃ hT).1 h
lemma mono₁ (h : T.mor₃ = 0) : Mono T.mor₁ := (T.mor₃_eq_zero_iff_mono₁ hT).1 h

lemma isZero₂_iff : IsZero T.obj₂ ↔ (T.mor₁ = 0 ∧ T.mor₂ = 0) := by
  constructor
  · intro h
    exact ⟨h.eq_of_tgt _ _, h.eq_of_src _ _⟩
  · intro ⟨h₁, h₂⟩
    obtain ⟨f, hf⟩ := coyoneda_exact₂ T hT (𝟙 _) (by rw [h₂, comp_zero])
    rw [IsZero.iff_id_eq_zero, hf, h₁, comp_zero]

lemma isZero₁_iff : IsZero T.obj₁ ↔ (T.mor₁ = 0 ∧ T.mor₃ = 0) := by
  refine' (isZero₂_iff _ (inv_rot_of_dist_triangle _ hT)).trans _
  dsimp
  simp [neg_eq_zero, IsIso.comp_right_eq_zero, Functor.map_eq_zero_iff]
  tauto

lemma isZero₃_iff : IsZero T.obj₃ ↔ (T.mor₂ = 0 ∧ T.mor₃ = 0) := by
  refine' (isZero₂_iff _ (rot_of_dist_triangle _ hT)).trans _
  dsimp
  tauto

lemma isZero₁_of_isZero₂₃ (h₂ : IsZero T.obj₂) (h₃ : IsZero T.obj₃) : IsZero T.obj₁ := by
  rw [T.isZero₁_iff hT]
  exact ⟨h₂.eq_of_tgt _ _, h₃.eq_of_src _ _⟩

lemma isZero₂_of_isZero₁₃ (h₁ : IsZero T.obj₁) (h₃ : IsZero T.obj₃) : IsZero T.obj₂ := by
  rw [T.isZero₂_iff hT]
  exact ⟨h₁.eq_of_src _ _, h₃.eq_of_tgt _ _⟩

lemma isZero₃_of_isZero₁₂ (h₁ : IsZero T.obj₁) (h₂ : IsZero T.obj₂) : IsZero T.obj₃ :=
  isZero₂_of_isZero₁₃ _ (rot_of_dist_triangle _ hT) h₂ (by
    dsimp
    simp only [IsZero.iff_id_eq_zero] at h₁ ⊢
    rw [← Functor.map_id, h₁, Functor.map_zero])

lemma isZero₁_iff_isIso₂ :
    IsZero T.obj₁ ↔ IsIso T.mor₂ := by
  rw [T.isZero₁_iff hT]
  constructor
  · intro ⟨h₁, h₃⟩
    have := T.epi₂ hT h₃
    obtain ⟨f, hf⟩ := yoneda_exact₂ T hT (𝟙 _) (by rw [h₁, zero_comp])
    exact ⟨f, hf.symm, by rw [← cancel_epi T.mor₂, comp_id, ← reassoc_of% hf]⟩
  · intro
    rw [T.mor₁_eq_zero_iff_mono₂ hT, T.mor₃_eq_zero_iff_epi₂ hT]
    constructor <;> infer_instance

lemma isZero₂_iff_isIso₃ : IsZero T.obj₂ ↔ IsIso T.mor₃ :=
  isZero₁_iff_isIso₂ _ (rot_of_dist_triangle _ hT)

lemma isZero₃_iff_isIso₁ : IsZero T.obj₃ ↔ IsIso T.mor₁ := by
  refine' Iff.trans _ (Triangle.isZero₁_iff_isIso₂ _ (inv_rot_of_dist_triangle _ hT))
  dsimp
  simp only [IsZero.iff_id_eq_zero, ← Functor.map_id, Functor.map_eq_zero_iff]

lemma isZero₁_of_isIso₂ (h : IsIso T.mor₂) : IsZero T.obj₁ := (T.isZero₁_iff_isIso₂ hT).2 h
lemma isZero₂_of_isIso₃ (h : IsIso T.mor₃) : IsZero T.obj₂ := (T.isZero₂_iff_isIso₃ hT).2 h
lemma isZero₃_of_isIso₁ (h : IsIso T.mor₁) : IsZero T.obj₃ := (T.isZero₃_iff_isIso₁ hT).2 h

end Triangle

instance : SplitEpiCategory C where
  isSplitEpi_of_epi f hf := by
    obtain ⟨Z, g, h, hT⟩ := distinguished_cocone_triangle f
    obtain ⟨r, hr⟩ := Triangle.coyoneda_exact₂ _ hT (𝟙 _)
      (by rw [Triangle.mor₂_eq_zero_of_epi₁ _ hT hf, comp_zero])
    exact ⟨r, hr.symm⟩

instance : SplitMonoCategory C where
  isSplitMono_of_mono f hf := by
    obtain ⟨X, g, h, hT⟩ := distinguished_cocone_triangle₁ f
    obtain ⟨r, hr⟩ := Triangle.yoneda_exact₂ _ hT (𝟙 _) (by
      rw [Triangle.mor₁_eq_zero_of_mono₂ _ hT hf, zero_comp])
    exact ⟨r, hr.symm⟩

/-
TODO: If `C` is pretriangulated with respect to a shift,
then `Cᵒᵖ` is pretriangulated with respect to the inverse shift.
-/

end Pretriangulated

end CategoryTheory
````
