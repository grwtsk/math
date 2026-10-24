# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TopAdj.Variantd0c287d29a4721a0ae7448fcd461c7d0b5604f0a1d79c5b2544f1bd457be76dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff6b2b3680fce98a410845448f1e256900ef1995` · SHA-256 `5a6cb6c392be5d1479b43429f3626580cc9777601af22bc39824085b6c86814d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToTopHomeo.Variantd1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ToTopHomeo.Variantd1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"d1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/AlgebraicTopology/SimplicialSet/TopAdj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.AlgebraicTopology.SingularSet
public import Mathlib.AlgebraicTopology.SimplicialSet.Monoidal
public import Mathlib.Topology.Category.TopCat.Monoidal

/-!
# Properties of the geometric realization

In this file, we introduce some API in order to study the geometric
realization functor (and its right adjoint the singular simplicial set functor):
* `SimplexCategory.toTopHomeo`: the homeomorphism between the geometric
realization of `Δ[n]` and `stdSimplex ℝ (Fin (n + 1))`;
* `TopCat.toSSetObj₀Equiv : toSSet.obj X _⦋0⦌ ≃ X` for `X : TopCat`;
* `SSet.stdSimplex.toTopObjIsoI : |Δ[1]| ≅ TopCat.I`;
* `SSet.stdSimplex.toSSetObjI : Δ[1] ⟶ TopCat.toSSet.obj TopCat.I`:
the morphism corresponding to `toTopObjIsoI.hom` by adjunction.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToTopHomeo.Variantd1165efd2dcc989c4af609047a7f9e8189ddd00991b86200a1e218aa55e27f70

@[expose] public section

universe u

noncomputable instance : TopCat.toSSet.{u}.Monoidal := .ofChosenFiniteProducts _

open CategoryTheory MonoidalCategory Opposite Convexity

open scoped Simplicial

namespace SimplexCategory

open SSet

/-- The homeomorphism between the topological realization of a standard simplex
in `SSet` and the corresponding topological standard simplex. -/
noncomputable def toTopHomeo (n : SimplexCategory) :
    |stdSimplex.{u}.obj n| ≃ₜ StdSimplex ℝ (Fin (n.len + 1)) :=
  (TopCat.homeoOfIso (toTopSimplex.{u}.app n)).trans Homeomorph.ulift

lemma toTopHomeo_naturality {n m : SimplexCategory} (f : n ⟶ m) :
    toTopHomeo m ∘ SSet.toTop.{u}.map (SSet.stdSimplex.map f) =
    StdSimplex.map f ∘ n.toTopHomeo := by
  ext x : 1
  exact ULift.up_injective (ConcreteCategory.congr_hom ((forget TopCat).congr_map
    (toTopSimplex.hom.naturality f)) x)

lemma toTopHomeo_naturality_apply {n m : SimplexCategory} (f : n ⟶ m)
    (x : |stdSimplex.obj n|) :
    m.toTopHomeo ((SSet.toTop.{u}.map (SSet.stdSimplex.map f) x)) =
      (StdSimplex.map f) (n.toTopHomeo x) :=
  congr_fun (toTopHomeo_naturality f) x

lemma toTopHomeo_symm_naturality {n m : SimplexCategory} (f : n ⟶ m) :
    m.toTopHomeo.symm ∘ StdSimplex.map f =
      (SSet.toTop.{u}.map (SSet.stdSimplex.map f)).hom ∘ n.toTopHomeo.symm := by
  ext x : 1
  exact ConcreteCategory.congr_hom ((forget _).congr_map
    (toTopSimplex.inv.naturality f)) _

lemma toTopHomeo_symm_naturality_apply {n m : SimplexCategory} (f : n ⟶ m)
    (x : StdSimplex ℝ (Fin (n.len + 1))) :
    m.toTopHomeo.symm (StdSimplex.map f x) =
      SSet.toTop.{u}.map (SSet.stdSimplex.map f) (n.toTopHomeo.symm x) :=
  congr_fun (toTopHomeo_symm_naturality f) x

end SimplexCategory

noncomputable instance : Unique (StdSimplex ℝ (Fin (⦋0⦌.len + 1))) :=
  inferInstanceAs (Unique (StdSimplex ℝ (Fin 1)))

noncomputable instance : Unique |(Δ[0] : SSet.{u})| := ⦋0⦌.toTopHomeo.unique

namespace TopCat

/-- Given `X : TopCat`, this is the bijection between `0`-simplices
of the singular simplicial set of `X` and `X`. -/
@[simps! -isSimp apply symm_apply]
noncomputable def toSSetObj₀Equiv {X : TopCat.{u}} :
    toSSet.obj X _⦋0⦌ ≃ X :=
  (toSSetObjEquiv X _).trans
    { toFun f := f.1 (default : _)
      invFun x := ⟨fun _ ↦ x, by fun_prop⟩
      left_inv _ := by
        ext x
        obtain rfl := Subsingleton.elim x default
        rfl
      right_inv _ := rfl }

@[simp]
lemma toSSet_map_const (X : TopCat.{u}) {Y : TopCat.{u}} (y : Y) :
    toSSet.map (TopCat.const (X := X) y) =
      SSet.const (toSSetObj₀Equiv.symm y) :=
  rfl

lemma toSSetObjEquiv_symm_naturality {X : TopCat.{u}} {n m : SimplexCategory} (f : n ⟶ m)
    (g : C((StdSimplex ℝ (Fin (m.len + 1))), X)) :
    (toSSet.obj X).map f.op ((X.toSSetObjEquiv _).symm g) =
      (X.toSSetObjEquiv _).symm (g.comp ⟨StdSimplex.map f, by fun_prop⟩) :=
  rfl

@[simp]
lemma toSSetObjEquiv_naturality_apply {X : TopCat.{u}} {n m : SimplexCategory} (f : n ⟶ m)
    (x : (toSSet.obj X).obj (op m)) (z : StdSimplex ℝ (Fin (n.len + 1))) :
    dsimp% X.toSSetObjEquiv _ ((toSSet.obj X).map f.op x) z =
      X.toSSetObjEquiv _ x (StdSimplex.map f z) :=
  rfl

@[simp]
lemma toSSetObjEquiv_δ_apply {X : TopCat.{u}} {n : ℕ}
    (x : toSSet.obj X _⦋n + 1⦌) (i : Fin (n + 2)) (z : StdSimplex ℝ (Fin (n + 1))) :
    dsimp% X.toSSetObjEquiv _ ((toSSet.obj X).δ i x) z =
      X.toSSetObjEquiv _ x (StdSimplex.map i.succAbove z) :=
  rfl

@[simp]
lemma toSSetObjEquiv_σ_apply {X : TopCat.{u}} {n : ℕ}
    (x : toSSet.obj X _⦋n⦌) (i : Fin (n + 1)) (z : StdSimplex ℝ (Fin (n + 2))) :
    dsimp% X.toSSetObjEquiv _ ((toSSet.obj X).σ i x) z =
      X.toSSetObjEquiv _ x (StdSimplex.map i.predAbove z) :=
  rfl

end TopCat

lemma sSetTopAdj_homEquiv_stdSimplex_zero {X : TopCat.{u}}
    (f : |Δ[0]| ⟶ X) :
    sSetTopAdj.homEquiv Δ[0] X f =
      SSet.const (TopCat.toSSetObj₀Equiv.symm (f default)) := by
  have : sSetTopAdj.unit.app Δ[0] =
      SSet.const (TopCat.toSSetObj₀Equiv.symm default) :=
    SSet.yonedaEquiv.injective (TopCat.toSSetObj₀Equiv.injective (by subsingleton))
  rw [Adjunction.homEquiv_unit, TopCat.toSSetObj₀Equiv_symm_apply, this]
  rfl

/-- The standard topological simplex of dimension `1` is homeomorphic to `TopCat.I`. -/
noncomputable def TopCat.stdSimplexHomeomorphI :
    StdSimplex ℝ (Fin 2) ≃ₜ TopCat.I.{u} :=
  StdSimplex.homeomorphI.trans Homeomorph.ulift.symm

@[simp]
lemma TopCat.stdSimplexHomeomorphI_vertex_zero :
    TopCat.stdSimplexHomeomorphI.{u} (StdSimplex.single 0) = 0 := by
  simp [TopCat.stdSimplexHomeomorphI]
  rfl

@[simp]
lemma TopCat.stdSimplexHomeomorphI_vertex_one :
    TopCat.stdSimplexHomeomorphI.{u} (StdSimplex.single 1) = 1 := by
  simp [TopCat.stdSimplexHomeomorphI]
  rfl

@[simp]
lemma TopCat.stdSimplexHomeomorphI_symm_zero :
    TopCat.stdSimplexHomeomorphI.{u}.symm 0 = StdSimplex.single 0 :=
  TopCat.stdSimplexHomeomorphI.{u}.injective (by simp)

@[simp]
lemma TopCat.stdSimplexHomeomorphI_symm_one :
    TopCat.stdSimplexHomeomorphI.{u}.symm 1 = StdSimplex.single 1 :=
  TopCat.stdSimplexHomeomorphI.{u}.injective (by simp)

namespace SSet.stdSimplex

/-- The geometric realization of `Δ[1]` is isomorphic to `TopCat.I`. -/
noncomputable def toTopObjIsoI :
    |(Δ[1] : SSet.{u})| ≅ TopCat.I.{u} :=
  TopCat.isoOfHomeo ((SimplexCategory.toTopHomeo _).trans TopCat.stdSimplexHomeomorphI)

/-- The canonical morphism `Δ[1] ⟶ TopCat.toSSet.obj TopCat.I`: by adjunction,
it corresponds to the isomorphism `toTopObjIsoI : |Δ[1]| ≅ TopCat.I`. -/
noncomputable def toSSetObjI : Δ[1] ⟶ TopCat.toSSet.obj TopCat.I.{u} :=
  sSetTopAdj.homEquiv _ _ toTopObjIsoI.hom

@[simp]
lemma δ_one_toSSetObjI :
    stdSimplex.δ 1 ≫ toSSetObjI.{u} = SSet.const (TopCat.toSSetObj₀Equiv.symm 0) := by
  dsimp only [toSSetObjI, toTopObjIsoI, TopCat.stdSimplexHomeomorphI]
  rw [← Adjunction.homEquiv_naturality_left, sSetTopAdj_homEquiv_stdSimplex_zero]
  congr 2
  have : StdSimplex.homeomorphI (⦋1⦌.toTopHomeo
      (((toTop.{u}.map (stdSimplex.δ 1)).hom) default)) = 0 := by
    rw [← StdSimplex.homeomorphI_single_zero]
    congr 1
    refine (SimplexCategory.toTopHomeo_naturality_apply _ _).trans ?_
    rw [Subsingleton.elim (⦋0⦌.toTopHomeo default) (StdSimplex.single 0), StdSimplex.map_single]
    rfl
  exact congr_arg ULift.up.{u} this

@[simp]
lemma δ_zero_toSSetObjI :
    dsimp% stdSimplex.δ 0 ≫ toSSetObjI.{u} = SSet.const (TopCat.toSSetObj₀Equiv.symm 1) := by
  dsimp only [toSSetObjI, toTopObjIsoI, TopCat.stdSimplexHomeomorphI]
  rw [← Adjunction.homEquiv_naturality_left, sSetTopAdj_homEquiv_stdSimplex_zero]
  congr 2
  have : StdSimplex.homeomorphI (⦋1⦌.toTopHomeo
      (((toTop.{u}.map (stdSimplex.δ 0)).hom) default)) = 1 := by
    rw [← StdSimplex.homeomorphI_single_one]
    congr 1
    refine (SimplexCategory.toTopHomeo_naturality_apply _ _).trans ?_
    rw [Subsingleton.elim (⦋0⦌.toTopHomeo default) (StdSimplex.single 0), StdSimplex.map_single]
    rfl
  exact congr_arg ULift.up.{u} this

@[simp]
lemma toSSetObj_app_const_zero :
    toSSetObjI.app (op ⦋0⦌) (const _ 0 _) = TopCat.toSSetObj₀Equiv.symm 0 := by
  apply yonedaEquiv.symm.injective
  trans stdSimplex.δ 1 ≫ toSSetObjI
  · simp [← yonedaEquiv_symm_comp, stdSimplex.δ_one_eq_const]
  · simp

@[simp]
lemma toSSetObj_app_const_one :
    toSSetObjI.app (op ⦋0⦌) (const _ 1 _) = TopCat.toSSetObj₀Equiv.symm 1 := by
  apply yonedaEquiv.symm.injective
  trans stdSimplex.δ 0 ≫ toSSetObjI
  · simp [← yonedaEquiv_symm_comp, stdSimplex.δ_zero_eq_const]
  · simp

open Functor.Monoidal in
@[reassoc (attr := simp)]
lemma ι₀_whiskerLeft_toSSetObjI_μ (X : TopCat.{u}) :
    SSet.ι₀ ≫ TopCat.toSSet.obj X ◁ SSet.stdSimplex.toSSetObjI ≫
      Functor.LaxMonoidal.μ TopCat.toSSet X TopCat.I = TopCat.toSSet.map TopCat.ι₀ := by
  rw [← cancel_mono (μIso _ _ _).inv, Category.assoc, Category.assoc, μIso_inv,
    μ_δ, Category.comp_id]
  apply CartesianMonoidalCategory.hom_ext <;> simp [← Functor.map_comp]

open Functor.Monoidal in
@[reassoc (attr := simp)]
lemma ι₁_whiskerLeft_toSSetObjI_μ (X : TopCat.{u}) :
    SSet.ι₁ ≫ TopCat.toSSet.obj X ◁ SSet.stdSimplex.toSSetObjI ≫
      Functor.LaxMonoidal.μ TopCat.toSSet X TopCat.I = TopCat.toSSet.map TopCat.ι₁ := by
  rw [← cancel_mono (μIso _ _ _).inv, Category.assoc, Category.assoc, μIso_inv,
    μ_δ, Category.comp_id]
  apply CartesianMonoidalCategory.hom_ext <;> simp [← Functor.map_comp]

end SSet.stdSimplex
```
