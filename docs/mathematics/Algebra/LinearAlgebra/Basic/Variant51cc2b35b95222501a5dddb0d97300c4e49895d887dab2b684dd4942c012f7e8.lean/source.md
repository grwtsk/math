# Complete source: GRWTSK.Algebra.LinearAlgebra.Basic.Variant51cc2b35b95222501a5dddb0d97300c4e49895d887dab2b684dd4942c012f7e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `569d7ff3f597eabbb059c57a3f7fe5072f7ddf1f` · SHA-256 `0b3bd9b902db7f5580483a781b6dcdb4d7f302fa1e67ad8c4f7f5dc7f784496a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ModuleCatIsFG.Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ModuleCatIsFG.Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Category/FGModuleCat/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.Algebra.Category.ModuleCat.Monoidal.Closed
import Mathlib.CategoryTheory.Monoidal.Rigid.Basic
import Mathlib.CategoryTheory.Monoidal.Subcategory
import Mathlib.LinearAlgebra.Coevaluation
import Mathlib.LinearAlgebra.FreeModule.Finite.Matrix
import Mathlib.RingTheory.TensorProduct.Finite

/-!
# The category of finitely generated modules over a ring

This introduces `FGModuleCat R`, the category of finitely generated modules over a ring `R`.
It is implemented as a full subcategory on a subtype of `ModuleCat R`.

When `K` is a field,
`FGModuleCatCat K` is the category of finite dimensional vector spaces over `K`.

We first create the instance as a preadditive category.
When `R` is commutative we then give the structure as an `R`-linear monoidal category.
When `R` is a field we give it the structure of a closed monoidal category
and then as a right-rigid monoidal category.

## Future work

* Show that `FGModuleCat R` is abelian when `R` is (left)-noetherian.

-/



namespace GRWTSK.Algebra.LinearAlgebra.ModuleCatIsFG.Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21

noncomputable section

open CategoryTheory

universe u

section Ring

variable (R : Type u) [Ring R]

/-- Finitely generated modules, as a property of objects of `ModuleCat R`. -/
def ModuleCat.isFG : ObjectProperty (ModuleCat.{u} R) :=
  fun V ↦ Module.Finite R V

variable {R} in
lemma ModuleCat.isFG_iff (V : ModuleCat.{u} R) :
    isFG R V ↔ Module.Finite R V := Iff.rfl

/-- The category of finitely generated modules. -/
abbrev FGModuleCat := (ModuleCat.isFG R).FullSubcategory

variable {R}

/-- A synonym for `M.obj.carrier`, which we can mark with `@[coe]`. -/
def FGModuleCat.carrier (M : FGModuleCat R) : Type u := M.obj.carrier

instance : CoeSort (FGModuleCat R) (Type u) :=
  ⟨FGModuleCat.carrier⟩

attribute [coe] FGModuleCat.carrier

@[simp] lemma FGModuleCat.obj_carrier (M : FGModuleCat R) : M.obj.carrier = M.carrier := rfl

instance (M : FGModuleCat R) : AddCommGroup M := by
  change AddCommGroup M.obj
  infer_instance

instance (M : FGModuleCat R) : Module R M := by
  change Module R M.obj
  infer_instance

end Ring

namespace FGModuleCat

section Ring

variable (R : Type u) [Ring R]

@[simp] lemma hom_comp (A B C : FGModuleCat R) (f : A ⟶ B) (g : B ⟶ C) :
  (f ≫ g).hom = g.hom.comp f.hom := rfl

@[simp] lemma hom_id (A : FGModuleCat R) : (𝟙 A : A ⟶ A).hom = LinearMap.id := rfl

instance finite (V : FGModuleCat R) : Module.Finite R V :=
  V.property

instance : Inhabited (FGModuleCat R) :=
  ⟨⟨ModuleCat.of R R, Module.Finite.self R⟩⟩

/-- Lift an unbundled finitely generated module to `FGModuleCat R`. -/
abbrev of (V : Type u) [AddCommGroup V] [Module R V] [Module.Finite R V] : FGModuleCat R :=
  ⟨ModuleCat.of R V, by change Module.Finite R V; infer_instance⟩

@[simp]
lemma of_carrier (V : Type u) [AddCommGroup V] [Module R V] [Module.Finite R V] :
  of R V = V := rfl

variable {R} in
/-- Lift a linear map between finitely generated modules to `FGModuleCat R`. -/
abbrev ofHom {V W : Type u} [AddCommGroup V] [Module R V] [Module.Finite R V]
    [AddCommGroup W] [Module R W] [Module.Finite R W]
    (f : V →ₗ[R] W) : of R V ⟶ of R W :=
  ModuleCat.ofHom f

variable {R} in
@[ext] lemma hom_ext {V W : FGModuleCat R} {f g : V ⟶ W} (h : f.hom = g.hom) : f = g :=
  ModuleCat.hom_ext h

instance (V : FGModuleCat R) : Module.Finite R V :=
  V.property

instance : (forget₂ (FGModuleCat R) (ModuleCat.{u} R)).Full where
  map_surjective f := ⟨f, rfl⟩

variable {R}

/-- Converts and isomorphism in the category `FGModuleCat R` to
a `LinearEquiv` between the underlying modules. -/
def isoToLinearEquiv {V W : FGModuleCat R} (i : V ≅ W) : V ≃ₗ[R] W :=
  ((forget₂ (FGModuleCat.{u} R) (ModuleCat.{u} R)).mapIso i).toLinearEquiv

/-- Converts a `LinearEquiv` to an isomorphism in the category `FGModuleCat R`. -/
@[simps]
def _root_.GRWTSK.Algebra.LinearAlgebra.ModuleCatIsFG.Variant438aa0af8e34626da26749fecc82fc7e3fae53c8e4d52581659fefae480f1c21.LinearEquiv.toFGModuleCatIso
    {V W : Type u} [AddCommGroup V] [Module R V] [Module.Finite R V]
    [AddCommGroup W] [Module R W] [Module.Finite R W] (e : V ≃ₗ[R] W) :
    FGModuleCat.of R V ≅ FGModuleCat.of R W where
  hom := ModuleCat.ofHom e.toLinearMap
  inv := ModuleCat.ofHom e.symm.toLinearMap
  hom_inv_id := by ext x; exact e.left_inv x
  inv_hom_id := by ext x; exact e.right_inv x

end Ring

section CommRing

variable (R : Type u) [CommRing R]

instance : (ModuleCat.isFG R).IsMonoidal where
  prop_unit := Module.Finite.self R
  prop_tensor X Y (_ : Module.Finite _ _) (_ : Module.Finite _ _) :=
    Module.Finite.tensorProduct R X Y

open MonoidalCategory

@[simp] lemma tensorUnit_obj : (𝟙_ (FGModuleCat R)).obj = 𝟙_ (ModuleCat R) := rfl
@[simp] lemma tensorObj_obj (M N : FGModuleCat.{u} R) : (M ⊗ N).obj = (M.obj ⊗ N.obj) := rfl

instance : (forget₂ (FGModuleCat.{u} R) (ModuleCat.{u} R)).Additive where
instance : (forget₂ (FGModuleCat.{u} R) (ModuleCat.{u} R)).Linear R where

theorem Iso.conj_eq_conj {V W : FGModuleCat R} (i : V ≅ W) (f : End V) :
    Iso.conj i f = FGModuleCat.ofHom (LinearEquiv.conj (isoToLinearEquiv i) f.hom) :=
  rfl

theorem Iso.conj_hom_eq_conj {V W : FGModuleCat R} (i : V ≅ W) (f : End V) :
    (Iso.conj i f).hom = (LinearEquiv.conj (isoToLinearEquiv i) f.hom) :=
  rfl

end CommRing

section Field

variable (K : Type u) [Field K]

instance (V W : FGModuleCat K) : Module.Finite K (V ⟶ W) :=
  (inferInstanceAs <| Module.Finite K (V →ₗ[K] W)).equiv ModuleCat.homLinearEquiv.symm

instance : (ModuleCat.isFG K).IsMonoidalClosed where
  prop_ihom {X Y} (_ : Module.Finite _ _) (_ : Module.Finite _ _) :=
    (inferInstanceAs <| Module.Finite K (X →ₗ[K] Y)).equiv ModuleCat.homLinearEquiv.symm

variable (V W : FGModuleCat K)

@[simp]
theorem ihom_obj : (ihom V).obj W = FGModuleCat.of K (V ⟶ W) :=
  rfl

/-- The dual module is the dual in the rigid monoidal category `FGModuleCat K`. -/
def FGModuleCatDual : FGModuleCat K :=
  ⟨ModuleCat.of K (Module.Dual K V), Subspace.instModuleDualFiniteDimensional⟩

@[simp] lemma FGModuleCatDual_obj : (FGModuleCatDual K V).obj = ModuleCat.of K (Module.Dual K V) :=
  rfl
@[simp] lemma FGModuleCatDual_coe : (FGModuleCatDual K V : Type u) = Module.Dual K V := rfl

open CategoryTheory.MonoidalCategory

/-- The coevaluation map is defined in `LinearAlgebra.coevaluation`. -/
def FGModuleCatCoevaluation : 𝟙_ (FGModuleCat K) ⟶ V ⊗ FGModuleCatDual K V :=
  ModuleCat.ofHom <| coevaluation K V

theorem FGModuleCatCoevaluation_apply_one :
    (FGModuleCatCoevaluation K V).hom (1 : K) =
      ∑ i : Basis.ofVectorSpaceIndex K V,
        (Basis.ofVectorSpace K V) i ⊗ₜ[K] (Basis.ofVectorSpace K V).coord i :=
  coevaluation_apply_one K V

/-- The evaluation morphism is given by the contraction map. -/
def FGModuleCatEvaluation : FGModuleCatDual K V ⊗ V ⟶ 𝟙_ (FGModuleCat K) :=
  ModuleCat.ofHom <| contractLeft K V

theorem FGModuleCatEvaluation_apply (f : FGModuleCatDual K V) (x : V) :
    (FGModuleCatEvaluation K V).hom (f ⊗ₜ x) = f.toFun x :=
  contractLeft_apply f x

/-- `@[simp]`-normal form of `FGModuleCatEvaluation_apply`, where the carriers have been unfolded.
-/
@[simp]
theorem FGModuleCatEvaluation_apply' (f : FGModuleCatDual K V) (x : V) :
    DFunLike.coe
      (F := ((ModuleCat.of K (Module.Dual K V) ⊗ V.obj).carrier →ₗ[K] (𝟙_ (ModuleCat K))))
      (FGModuleCatEvaluation K V).hom (f ⊗ₜ x) = f.toFun x :=
  contractLeft_apply f x

private theorem coevaluation_evaluation :
    letI V' : FGModuleCat K := FGModuleCatDual K V
    V' ◁ FGModuleCatCoevaluation K V ≫ (α_ V' V V').inv ≫ FGModuleCatEvaluation K V ▷ V' =
      (ρ_ V').hom ≫ (λ_ V').inv := by
  ext : 1
  apply contractLeft_assoc_coevaluation K V

private theorem evaluation_coevaluation :
    FGModuleCatCoevaluation K V ▷ V ≫
        (α_ V (FGModuleCatDual K V) V).hom ≫ V ◁ FGModuleCatEvaluation K V =
      (λ_ V).hom ≫ (ρ_ V).inv := by
  ext : 1
  apply contractLeft_assoc_coevaluation' K V

instance exactPairing : ExactPairing V (FGModuleCatDual K V) where
  coevaluation' := FGModuleCatCoevaluation K V
  evaluation' := FGModuleCatEvaluation K V
  coevaluation_evaluation' := coevaluation_evaluation K V
  evaluation_coevaluation' := evaluation_coevaluation K V

instance rightDual : HasRightDual V :=
  ⟨FGModuleCatDual K V⟩

instance rightRigidCategory : RightRigidCategory (FGModuleCat K) where

end Field

end FGModuleCat

/-!
`@[simp]` lemmas for `LinearMap.comp` and categorical identities.
-/

@[simp] theorem LinearMap.comp_id_fgModuleCat
    {R} [Ring R] {G : FGModuleCat.{u} R} {H : Type u} [AddCommGroup H] [Module R H]
    (f : G →ₗ[R] H) : f.comp (ModuleCat.Hom.hom (𝟙 G)) = f :=
  ModuleCat.hom_ext_iff.mp <| Category.id_comp (ModuleCat.ofHom f)

@[simp] theorem LinearMap.id_fgModuleCat_comp
    {R} [Ring R] {G : Type u} [AddCommGroup G] [Module R G] {H : FGModuleCat.{u} R}
    (f : G →ₗ[R] H) : LinearMap.comp (ModuleCat.Hom.hom (𝟙 H)) f = f :=
  ModuleCat.hom_ext_iff.mp <| Category.comp_id (ModuleCat.ofHom f)
```
