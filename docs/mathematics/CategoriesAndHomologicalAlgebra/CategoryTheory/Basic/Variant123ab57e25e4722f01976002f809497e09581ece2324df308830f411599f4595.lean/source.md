# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant123ab57e25e4722f01976002f809497e09581ece2324df308830f411599f4595

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fb0c40163da3d722ede0dd4a026fe19ae6465a9` · SHA-256 `5fa0661b682c8f66582649ff1da1143c571b0139bdae2def72309d82ed7d307e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BialgCat.Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.BialgCat.Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/BialgCat/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amelia Livingston. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Amelia Livingston
-/
module

public import Mathlib.Algebra.Category.CoalgCat.Basic
public import Mathlib.Algebra.Category.AlgCat.Basic
public import Mathlib.RingTheory.Bialgebra.Equiv

/-!
# The category of bialgebras over a commutative ring

We introduce the bundled category `BialgCat` of bialgebras over a fixed commutative ring `R`
along with the forgetful functors to `CoalgCat` and `AlgCat`.

This file mimics `Mathlib/LinearAlgebra/QuadraticForm/QuadraticModuleCat.lean`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BialgCat.Variant8cc0c7712f02979441ab3e2d355d76b4edfdfdc5eae3a2809355deb701f2fc7a

@[expose] public section

open CategoryTheory

universe v u

variable (R : Type u) [CommRing R]

/-- The category of `R`-bialgebras. -/
structure BialgCat where
  /-- The underlying type. -/
  carrier : Type v
  [instRing : Ring carrier]
  [instBialgebra : Bialgebra R carrier]

initialize_simps_projections BialgCat (-instRing, -instBialgebra)
attribute [instance] BialgCat.instBialgebra BialgCat.instRing

variable {R}

namespace BialgCat

open Bialgebra

instance : CoeSort (BialgCat.{v} R) (Type v) :=
  ⟨(·.carrier)⟩

variable (R) in
/-- The object in the category of `R`-bialgebras associated to an `R`-bialgebra. -/
@[simps]
def of (X : Type v) [Ring X] [Bialgebra R X] :
    BialgCat R where
  carrier := X

open Lean.PrettyPrinter.Delaborator in
/-- This prints `BialgCat.of R X` as `↧X`. -/
@[app_delab BialgCat.of]
meta def delabOf : Delab := CategoryTheory.delabOf

set_option backward.isDefEq.respectTransparency false in
@[simp]
lemma of_comul {X : Type v} [Ring X] [Bialgebra R X] :
    Coalgebra.comul (A := of R X) = Coalgebra.comul (R := R) (A := X) := rfl

set_option backward.isDefEq.respectTransparency false in
@[simp]
lemma of_counit {X : Type v} [Ring X] [Bialgebra R X] :
    Coalgebra.counit (A := of R X) = Coalgebra.counit (R := R) (A := X) := rfl

/-- A type alias for `BialgHom` to avoid confusion between the categorical and
algebraic spellings of composition. -/
@[ext]
structure Hom (V W : BialgCat.{v} R) where
  /-- The underlying `BialgHom` -/
  toBialgHom' : V →ₐc[R] W

instance category : Category (BialgCat.{v} R) where
  Hom X Y := Hom X Y
  id X := ⟨BialgHom.id R X⟩
  comp f g := ⟨BialgHom.comp g.toBialgHom' f.toBialgHom'⟩

instance concreteCategory : ConcreteCategory (BialgCat.{v} R) (· →ₐc[R] ·) where
  hom f := f.toBialgHom'
  ofHom f := ⟨f⟩

/-- Turn a morphism in `BialgCat` back into a `BialgHom`. -/
abbrev Hom.toBialgHom {X Y : BialgCat R} (f : Hom X Y) :=
  ConcreteCategory.hom (C := BialgCat R) f

/-- Typecheck a `BialgHom` as a morphism in `BialgCat R`. -/
abbrev ofHom {X Y : Type v} [Ring X] [Ring Y]
    [Bialgebra R X] [Bialgebra R Y] (f : X →ₐc[R] Y) :
    of R X ⟶ of R Y :=
  ConcreteCategory.ofHom f

lemma Hom.toBialgHom_injective (V W : BialgCat.{v} R) :
    Function.Injective (Hom.toBialgHom : Hom V W → _) :=
  fun ⟨f⟩ ⟨g⟩ _ => by congr

-- TODO: if `Quiver.Hom` and the instance above were `reducible`, this wouldn't be needed.
@[ext]
lemma hom_ext {X Y : BialgCat.{v} R} (f g : X ⟶ Y) (h : f.toBialgHom = g.toBialgHom) :
    f = g :=
  Hom.ext h

@[simp] theorem toBialgHom_comp {X Y Z : BialgCat.{v} R} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).toBialgHom = g.toBialgHom.comp f.toBialgHom :=
  rfl

@[simp] theorem toBialgHom_id {M : BialgCat.{v} R} :
    Hom.toBialgHom (𝟙 M) = BialgHom.id _ _ :=
  rfl

instance hasForgetToAlgebra : HasForget₂ (BialgCat R) (AlgCat R) where
  forget₂ :=
    { obj := fun X => ↧X
      map := fun {X Y} f => AlgCat.ofHom f.toBialgHom }

@[simp]
theorem forget₂_algebra_obj (X : BialgCat R) :
    (forget₂ (BialgCat R) (AlgCat R)).obj X = ↧X :=
  rfl

@[simp]
theorem forget₂_algebra_map (X Y : BialgCat R) (f : X ⟶ Y) :
    (forget₂ (BialgCat R) (AlgCat R)).map f = AlgCat.ofHom f.toBialgHom :=
  rfl

instance hasForgetToCoalgebra : HasForget₂ (BialgCat R) (CoalgCat R) where
  forget₂ :=
    { obj := fun X => ↧X
      map := fun {_ _} f => CoalgCat.ofHom f.toBialgHom }

@[simp]
theorem forget₂_coalgebra_obj (X : BialgCat R) :
    (forget₂ (BialgCat R) (CoalgCat R)).obj X = ↧X :=
  rfl

@[simp]
theorem forget₂_coalgebra_map (X Y : BialgCat R) (f : X ⟶ Y) :
    (forget₂ (BialgCat R) (CoalgCat R)).map f = CoalgCat.ofHom f.toBialgHom :=
  rfl

end BialgCat

namespace BialgEquiv

open BialgCat

variable {X Y Z : Type v}
variable [Ring X] [Ring Y] [Ring Z]
variable [Bialgebra R X] [Bialgebra R Y] [Bialgebra R Z]

/-- Build an isomorphism in the category `BialgCat R` from a
`BialgEquiv`. -/
@[simps]
def toBialgIso (e : X ≃ₐc[R] Y) : BialgCat.of R X ≅ BialgCat.of R Y where
  hom := BialgCat.ofHom e
  inv := BialgCat.ofHom e.symm
  hom_inv_id := Hom.ext <| DFunLike.ext _ _ e.left_inv
  inv_hom_id := Hom.ext <| DFunLike.ext _ _ e.right_inv

@[simp] theorem toBialgIso_refl : toBialgIso (BialgEquiv.refl R X) = .refl _ :=
  rfl

@[simp] theorem toBialgIso_symm (e : X ≃ₐc[R] Y) :
    toBialgIso e.symm = (toBialgIso e).symm :=
  rfl

@[simp] theorem toBialgIso_trans (e : X ≃ₐc[R] Y) (f : Y ≃ₐc[R] Z) :
    toBialgIso (e.trans f) = toBialgIso e ≪≫ toBialgIso f :=
  rfl

end BialgEquiv

namespace CategoryTheory.Iso

open Bialgebra

variable {X Y Z : BialgCat.{v} R}

/-- Build a `BialgEquiv` from an isomorphism in the category
`BialgCat R`. -/
def toBialgEquiv (i : X ≅ Y) : X ≃ₐc[R] Y :=
  { i.hom.toBialgHom with
    invFun := i.inv.toBialgHom
    left_inv := fun x => BialgHom.congr_fun (congr_arg BialgCat.Hom.toBialgHom i.3) x
    right_inv := fun x => BialgHom.congr_fun (congr_arg BialgCat.Hom.toBialgHom i.4) x }

@[simp] theorem toBialgEquiv_toBialgHom (i : X ≅ Y) :
    (i.toBialgEquiv : X →ₐc[R] Y) = i.hom.1 := rfl

@[simp] theorem toBialgEquiv_refl : toBialgEquiv (.refl X) = .refl _ _ :=
  rfl

@[simp] theorem toBialgEquiv_symm (e : X ≅ Y) :
    toBialgEquiv e.symm = (toBialgEquiv e).symm :=
  rfl

@[simp] theorem toBialgEquiv_trans (e : X ≅ Y) (f : Y ≅ Z) :
    toBialgEquiv (e ≪≫ f) = e.toBialgEquiv.trans f.toBialgEquiv :=
  rfl

end CategoryTheory.Iso

instance BialgCat.forget_reflects_isos :
    (forget (BialgCat.{v} R)).ReflectsIsomorphisms where
  reflects {X Y} f _ := by
    let i := asIso ((forget (BialgCat.{v} R)).map f)
    let e : X ≃ₐc[R] Y := { f.toBialgHom, i.toEquiv with }
    exact ⟨e.toBialgIso.isIso_hom.1⟩
```
