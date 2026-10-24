# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6945462926ac0ce32d0a57d0ab2c22861d7aa445aa4a9f7e90b23efe68b9f80d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7af8934071ad3b5dcba8143edbfc7f938cbf47af` · SHA-256 `06995a799fddaf1b4c4cf287ada1b1f70a5062bac3807c6fb278f1ebb7afa9da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleCatToMatrixModCat.Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleCatToMatrixModCat.Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"db3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Morita/Matrix.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yunzhou Xie, Jujian Zhang
-/
module

public import Mathlib.LinearAlgebra.Matrix.Module
public import Mathlib.RingTheory.Morita.Basic
/-!
# Morita Equivalence between `R` and `Mₙ(R)`

## Main definitions
- `ModuleCat.toMatrixModCat`: The functor from `Mod-R` to `Mod-Mₙ(R)` induced by
  `LinearMap.mapMatrixModule` and `Matrix.Module.matrixModule`.
- `MatrixModCat.toModuleCat`: The functor from `Mod-Mₙ(R)` to `Mod-R` induced by sending `M` to
  the image of `Eᵢᵢ • ·` where `Eᵢᵢ` is the elementary matrix.
- `ModuleCat.matrixEquivalence`: An equivalence of categories composed by
  `ModuleCat.toMatrixModCat R ι`.
  and `MatrixModCat.toModuleCat R i`.
- `moritaEquivalentToMatrix`: `moritaEquivalentToMatrix` is a `MoritaEquivalence`.

## Main results
- `IsMoritaEquivalent.matrix`: `R` and `Mₙ(R)` are Morita equivalent.

-/


namespace GRWTSK.Algebra.LinearAlgebra.ModuleCatToMatrixModCat.Variantdb3d90ea181ebbeff30a98171840552266a3858b3cd905712c5430cd047bd06e

set_option backward.defeqAttrib.useBackward true

@[expose] public section

universe u v

variable (R : Type u) (ι : Type v) [Ring R] [Fintype ι] [DecidableEq ι]

open CategoryTheory Matrix.Module

/-- The functor from `Mod-R` to `Mod-Mₙ(R)` induced by `LinearMap.mapModule` and
  `Matrix.matrixModule`. -/
@[simps]
def ModuleCat.toMatrixModCat : ModuleCat R ⥤ ModuleCat (Matrix ι ι R) where
  obj M := ↧(ι → M)
  map f := ModuleCat.ofHom <| f.hom.mapMatrixModule ι
  map_id _ := ModuleCat.hom_ext <| LinearMap.mapMatrixModule_id
  map_comp f g := ModuleCat.hom_ext (LinearMap.mapMatrixModule_comp f.hom g.hom)

variable {ι}

namespace MatrixModCat

open Matrix

variable {M : Type*} [AddCommGroup M] [Module (Matrix ι ι R) M] [Module R M]
  [IsScalarTower R (Matrix ι ι R) M]

set_option backward.defeqAttrib.useBackward true in
variable (M) in
/-- The image of `Eᵢᵢ` (the elementary matrix) acting on all elements in `M`. -/
def toModuleCatObj (i : ι) : Submodule R M :=
  LinearMap.range (τ₁₂ := .id _) <|
    { __ := DistribSMul.toAddMonoidHom M (single i i 1 : Matrix ι ι R)
      map_smul' r x := by
        dsimp
        have : Commute (diagonal fun x : ι ↦ r) (single i i 1) := by
          ext; simp [Matrix.single]
        rw [← smul_assoc r, smul_eq_diagonal_mul, this.eq, mul_smul, ← smul_one_eq_diagonal]
        nth_rw 1 [← one_smul (Matrix ι ι R) x]
        rw [smul_assoc] }

variable {R} in
@[simp]
lemma mem_toModuleCatObj (i : ι) {x : M} :
    x ∈ toModuleCatObj R M i ↔ ∃ y : M, single i i (1 : R) • y = x :=
  Iff.rfl

variable {R} in
/-- An `R`-linear map between `Eᵢᵢ • M` and `Eᵢᵢ • N` induced by an `Mₙ(R)`-linear map
  from `M` to `N`. -/
@[simps!]
def fromMatrixLinear {N : Type*} [AddCommGroup N] [Module (Matrix ι ι R) N] (i : ι)
    [Module R N] [IsScalarTower R (Matrix ι ι R) N] (f : M →ₗ[Matrix ι ι R] N) :
    toModuleCatObj R M i →ₗ[R] toModuleCatObj R N i :=
  f.restrictScalars R |>.restrict fun x hx => by
    obtain ⟨y, rfl⟩ := mem_toModuleCatObj i |>.1 hx
    exact ⟨f y, map_smul _ _ _ |>.symm⟩

end MatrixModCat

universe w

lemma MatrixModCat.isScalarTower_toModuleCat (M : ModuleCat (Matrix ι ι R)) :
    letI := Module.compHom M (Matrix.scalar (α := R) ι)
    IsScalarTower R (Matrix ι ι R) M :=
  letI := Module.compHom M (Matrix.scalar (α := R) ι)
  { smul_assoc r m x := show _ = Matrix.scalar ι r • (m • x) by
      rw [← mul_smul, Matrix.scalar_apply, Matrix.smul_eq_diagonal_mul] }

/-- The functor from the category of modules over `Mₙ(R)` to the category of modules over `R`
  induced by sending `M` to the image of `Eᵢᵢ • ·` where `Eᵢᵢ` is the elementary matrix. -/
@[simps]
def MatrixModCat.toModuleCat (i : ι) : ModuleCat (Matrix ι ι R) ⥤ ModuleCat R :=
  letI (M : ModuleCat (Matrix ι ι R)) := Module.compHom M (Matrix.scalar (α := R) ι)
  haveI := MatrixModCat.isScalarTower_toModuleCat
  { obj M := ↧(MatrixModCat.toModuleCatObj R M i)
    map f := ModuleCat.ofHom <| fromMatrixLinear i f.hom
    map_id _ := rfl
    map_comp _ _ := rfl }

open MatrixModCat Matrix

/-- The linear equiv induced by the equality `toModuleCat (toMatrixModCat M) = Eᵢᵢ • Mⁿ`. -/
def fromModuleCatToModuleCatLinearEquivtoModuleCatObj
    (M : Type*) [AddCommGroup M] [Module R M] (i : ι) :
    (ModuleCat.toMatrixModCat R ι ⋙ MatrixModCat.toModuleCat R i).obj ↧M ≃ₗ[R]
    MatrixModCat.toModuleCatObj R (ι → M) i where
  __ := AddEquiv.refl _
  map_smul' _ _ := Subtype.ext <| scalar_smul _ _

/-- Auxiliary isomorphism showing that compose two functors gives `id` on objects. -/
@[simps]
def fromModuleCatToModuleCatLinearEquiv (M : Type*) [AddCommGroup M] [Module R M] (i : ι) :
    MatrixModCat.toModuleCatObj R (ι → M) i ≃ₗ[R] M where
  toFun x := ∑ i : ι, x.1 i
  map_add' := by simp [Finset.sum_add_distrib]
  map_smul' r := fun ⟨x, hx⟩ ↦ by simp [Finset.smul_sum]
  invFun x := ⟨Pi.single i x, Function.const ι x, by simp⟩
  left_inv := fun ⟨x, hx⟩ ↦ by
    obtain ⟨y, hy⟩ := mem_toModuleCatObj i |>.1 hx
    rw [single_smul] at hy
    simp [← hy]
  right_inv x := by simp

set_option backward.isDefEq.respectTransparency false in
/-- The natural isomorphism showing that `toModuleCat` is the left inverse of `toMatrixModCat`. -/
def MatrixModCat.unitIso (i : ι) :
    ModuleCat.toMatrixModCat R ι ⋙ MatrixModCat.toModuleCat R i ≅ 𝟭 (ModuleCat R) :=
  NatIso.ofComponents (fun X ↦ (fromModuleCatToModuleCatLinearEquivtoModuleCatObj R X i ≪≫ₗ
    (fromModuleCatToModuleCatLinearEquiv R X i)).toModuleIso) <| by
    intros
    ext
    simp [fromModuleCatToModuleCatLinearEquivtoModuleCatObj]

/-- The linear equiv induced by the equality `toMatrixModCat (toModuleCat M) = Mⁿ` -/
def toModuleCatFromModuleCatLinearEquiv (M : ModuleCat (Matrix ι ι R)) (j : ι) :
    letI := Module.compHom M (Matrix.scalar (α := R) ι)
    haveI := MatrixModCat.isScalarTower_toModuleCat
    M ≃ₗ[Matrix ι ι R] (ι → MatrixModCat.toModuleCatObj R M j) where
  toFun m i := ⟨single j i (1 : R) • m, single j i (1 : R) • m, by
    simp [← mul_smul]⟩
  map_add' _ _ := by ext; simp
  map_smul' x m := funext fun i ↦ Subtype.ext <| by
    let := Module.compHom M (Matrix.scalar (α := R) ι)
    have := MatrixModCat.isScalarTower_toModuleCat R M
    simp only [← mul_smul, RingHom.id_apply, Module.smul_apply,
      AddSubmonoidClass.coe_finsetSum, SetLike.val_smul, ← smul_assoc, ← Finset.sum_smul]
    congr
    ext i1 j1
    simp only [mul_apply, smul_single, smul_eq_mul, mul_one, sum_apply]
    rw [Finset.sum_eq_single_of_mem (a := i) (by simp) (fun b _ hb ↦ by simp [single, Ne.symm hb])]
    simp only [single_apply, and_true, ite_mul, one_mul, zero_mul]
    split_ifs with h <;> simp [h]
  invFun m := ∑ i, single i j (1 : R) • m i
  left_inv m := by simp [← mul_smul, ← Finset.sum_smul, sum_single_one]
  right_inv v := by
    dsimp
    ext i
    simp only [Finset.smul_sum]
    rw [Finset.sum_eq_single i (fun b _ hb ↦ by
      simp [← mul_smul, single_mul_single_of_ne _ _ _ _ hb.symm]) (by simp)]
    obtain ⟨y, hy⟩ := by simpa [-SetLike.coe_mem] using (v i).2
    simp [← mul_smul, ← hy]

set_option backward.isDefEq.respectTransparency false in
/-- The natural isomorphism showing that `toMatrixModCat` is the right inverse of `toModuleCat`. -/
def MatrixModCat.counitIso (i : ι) :
    MatrixModCat.toModuleCat R i ⋙ ModuleCat.toMatrixModCat R ι ≅ 𝟭 (ModuleCat (Matrix ι ι R)) :=
  NatIso.ofComponents (fun X ↦ ((toModuleCatFromModuleCatLinearEquiv R X i).symm).toModuleIso) <| by
    intros
    ext
    simp [toModuleCatFromModuleCatLinearEquiv]

set_option backward.isDefEq.respectTransparency false in
-- This declaration has been on the tipping point of timeout ever since nightly-2026-02-23.
/-- `ModuleCat.toMatrixModCat R ι` and `MatrixModCat.toModuleCat R i` together form
  an equivalence of categories. -/
@[simps, stacks 074D "(1)"]
def ModuleCat.matrixEquivalence (i : ι) : ModuleCat R ≌ ModuleCat (Matrix ι ι R) where
  functor := ModuleCat.toMatrixModCat R ι
  inverse := MatrixModCat.toModuleCat R i
  unitIso := MatrixModCat.unitIso R i |>.symm
  counitIso := MatrixModCat.counitIso R i
  functor_unitIso_comp X := by
    ext1
    suffices (toModuleCatFromModuleCatLinearEquiv R ((ModuleCat.toMatrixModCat R ι).obj X)
      i).symm.toLinearMap ∘ₗ LinearMap.mapMatrixModule ι (ModuleCat.Hom.hom
      ((unitIso R i).inv.app X)) = LinearMap.id by simpa using! this
    ext x
    simp [unitIso, toModuleCatFromModuleCatLinearEquiv, fromModuleCatToModuleCatLinearEquiv,
      fromModuleCatToModuleCatLinearEquivtoModuleCatObj, Finset.univ_sum_single]

set_option backward.isDefEq.respectTransparency false in
open ModuleCat.Algebra in
/-- Moreover `ModuleCat.matrixEquivalence` is a `MoritaEquivalence`. -/
@[simps]
def moritaEquivalenceMatrix (R₀ : Type*) [CommRing R₀] [Algebra R₀ R] (i : ι) :
    MoritaEquivalence R₀ R (Matrix ι ι R) where
  eqv := ModuleCat.matrixEquivalence R i
  linear.map_smul {X Y} f r := by
    ext (v : ι → X)
    simp only [ModuleCat.matrixEquivalence_functor, ModuleCat.toMatrixModCat_obj_carrier,
      ModuleCat.toMatrixModCat_map, ModuleCat.hom_smul, ModuleCat.hom_ofHom, LinearMap.smul_apply]
    ext i
    simp only [LinearMap.mapMatrixModule_apply, LinearMap.compLeft_apply, Function.comp_apply,
      LinearMap.smul_apply]
    change _ = ((algebraMap R₀ (Matrix ι ι R) r) • ((ModuleCat.Hom.hom f).mapMatrixModule ι v)) i
    simp [Matrix.algebraMap_matrix_apply]

theorem IsMoritaEquivalent.matrix (R₀ : Type*) [CommRing R₀] [Algebra R₀ R] [Nonempty ι] :
    IsMoritaEquivalent R₀ R (Matrix ι ι R) :=
  ⟨Nonempty.map (moritaEquivalenceMatrix R R₀) inferInstance⟩
```
