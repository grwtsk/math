# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant8c5557279e209c41a6583a2509b94ef718629899157c09a693258b5fda1632fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `411c31fecbf3bc3d24ea318eaa0497586c23868d` · SHA-256 `746ccd741687317cca7da5669bd7c626a2888f26abe8ff85594242dcb7c09816`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LaxMonoidalFunctor.Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LaxMonoidalFunctor.Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Monoidal/Functor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Michael Jendrusch. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Jendrusch, Scott Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Monoidal.Category
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Products.Basic


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LaxMonoidalFunctor.Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7

#align_import category_theory.monoidal.functor from "leanprover-community/mathlib"@"3d7987cda72abc473c7cdbbb075170e9ac620042"

/-!
# (Lax) monoidal functors

A lax monoidal functor `F` between monoidal categories `C` and `D`
is a functor between the underlying categories equipped with morphisms
* `ε : 𝟙_ D ⟶ F.obj (𝟙_ C)` (called the unit morphism)
* `μ X Y : (F.obj X) ⊗ (F.obj Y) ⟶ F.obj (X ⊗ Y)` (called the tensorator, or strength).
satisfying various axioms.

A monoidal functor is a lax monoidal functor for which `ε` and `μ` are isomorphisms.

We show that the composition of (lax) monoidal functors gives a (lax) monoidal functor.

See also `CategoryTheory.Monoidal.Functorial` for a typeclass decorating an object-level
function with the additional data of a monoidal functor.
This is useful when stating that a pre-existing functor is monoidal.

See `CategoryTheory.Monoidal.NaturalTransformation` for monoidal natural transformations.

We show in `CategoryTheory.Monoidal.Mon_` that lax monoidal functors take monoid objects
to monoid objects.

## Future work
* Oplax monoidal functors.

## References

See <https://stacks.math.columbia.edu/tag/0FFL>.
-/


open CategoryTheory

universe v₁ v₂ v₃ u₁ u₂ u₃

open CategoryTheory.Category

open CategoryTheory.Functor

namespace CategoryTheory

section

open MonoidalCategory

variable (C : Type u₁) [Category.{v₁} C] [MonoidalCategory.{v₁} C] (D : Type u₂) [Category.{v₂} D]
  [MonoidalCategory.{v₂} D]

-- The direction of `left_unitality` and `right_unitality` as simp lemmas may look strange:
-- remember the rule of thumb that component indices of natural transformations
-- "weigh more" than structural maps.
-- (However by this argument `associativity` is currently stated backwards!)
/-- A lax monoidal functor is a functor `F : C ⥤ D` between monoidal categories,
equipped with morphisms `ε : 𝟙 _D ⟶ F.obj (𝟙_ C)` and `μ X Y : F.obj X ⊗ F.obj Y ⟶ F.obj (X ⊗ Y)`,
satisfying the appropriate coherences. -/
structure LaxMonoidalFunctor extends C ⥤ D where
  /-- unit morphism -/
  ε : 𝟙_ D ⟶ obj (𝟙_ C)
  /-- tensorator -/
  μ : ∀ X Y : C, obj X ⊗ obj Y ⟶ obj (X ⊗ Y)
  μ_natural :
    ∀ {X Y X' Y' : C} (f : X ⟶ Y) (g : X' ⟶ Y'),
      (map f ⊗ map g) ≫ μ Y Y' = μ X X' ≫ map (f ⊗ g) := by
    aesop_cat
  /-- associativity of the tensorator -/
  associativity :
    ∀ X Y Z : C,
      (μ X Y ⊗ 𝟙 (obj Z)) ≫ μ (X ⊗ Y) Z ≫ map (α_ X Y Z).hom =
        (α_ (obj X) (obj Y) (obj Z)).hom ≫ (𝟙 (obj X) ⊗ μ Y Z) ≫ μ X (Y ⊗ Z) := by
    aesop_cat
  -- unitality
  left_unitality : ∀ X : C, (λ_ (obj X)).hom = (ε ⊗ 𝟙 (obj X)) ≫ μ (𝟙_ C) X ≫ map (λ_ X).hom :=
    by aesop_cat
  right_unitality : ∀ X : C, (ρ_ (obj X)).hom = (𝟙 (obj X) ⊗ ε) ≫ μ X (𝟙_ C) ≫ map (ρ_ X).hom :=
    by aesop_cat
#align category_theory.lax_monoidal_functor CategoryTheory.LaxMonoidalFunctor

-- Porting note: todo: remove this configuration and use the default configuration.
-- We keep this to be consistent with Lean 3.
-- See also `initialize_simps_projections MonoidalFunctor` below.
-- This may require waiting on https://github.com/leanprover-community/mathlib4/pull/2936
initialize_simps_projections LaxMonoidalFunctor (+toFunctor, -obj, -map)

--Porting note: was `[simp, reassoc.1]`
attribute [reassoc (attr := simp)] LaxMonoidalFunctor.μ_natural

attribute [simp] LaxMonoidalFunctor.left_unitality

attribute [simp] LaxMonoidalFunctor.right_unitality

--Porting note: was `[simp, reassoc.1]`
attribute [reassoc (attr := simp)] LaxMonoidalFunctor.associativity

-- When `rewrite_search` lands, add @[search] attributes to
-- LaxMonoidalFunctor.μ_natural LaxMonoidalFunctor.left_unitality
-- LaxMonoidalFunctor.right_unitality LaxMonoidalFunctor.associativity
section

variable {C D}

--Porting note: was `[simp, reassoc.1]`
@[reassoc (attr := simp)]
theorem LaxMonoidalFunctor.left_unitality_inv (F : LaxMonoidalFunctor C D) (X : C) :
    (λ_ (F.obj X)).inv ≫ (F.ε ⊗ 𝟙 (F.obj X)) ≫ F.μ (𝟙_ C) X = F.map (λ_ X).inv := by
  rw [Iso.inv_comp_eq, F.left_unitality, Category.assoc, Category.assoc, ← F.toFunctor.map_comp,
    Iso.hom_inv_id, F.toFunctor.map_id, comp_id]
#align category_theory.lax_monoidal_functor.left_unitality_inv CategoryTheory.LaxMonoidalFunctor.left_unitality_inv

--Porting note: was `[simp, reassoc.1]`
@[reassoc (attr := simp)]
theorem LaxMonoidalFunctor.right_unitality_inv (F : LaxMonoidalFunctor C D) (X : C) :
    (ρ_ (F.obj X)).inv ≫ (𝟙 (F.obj X) ⊗ F.ε) ≫ F.μ X (𝟙_ C) = F.map (ρ_ X).inv := by
  rw [Iso.inv_comp_eq, F.right_unitality, Category.assoc, Category.assoc, ← F.toFunctor.map_comp,
    Iso.hom_inv_id, F.toFunctor.map_id, comp_id]
#align category_theory.lax_monoidal_functor.right_unitality_inv CategoryTheory.LaxMonoidalFunctor.right_unitality_inv

--Porting note: was `[simp, reassoc.1]`
@[reassoc (attr := simp)]
theorem LaxMonoidalFunctor.associativity_inv (F : LaxMonoidalFunctor C D) (X Y Z : C) :
    (𝟙 (F.obj X) ⊗ F.μ Y Z) ≫ F.μ X (Y ⊗ Z) ≫ F.map (α_ X Y Z).inv =
      (α_ (F.obj X) (F.obj Y) (F.obj Z)).inv ≫ (F.μ X Y ⊗ 𝟙 (F.obj Z)) ≫ F.μ (X ⊗ Y) Z := by
  rw [Iso.eq_inv_comp, ← F.associativity_assoc, ← F.toFunctor.map_comp, Iso.hom_inv_id,
    F.toFunctor.map_id, comp_id]
#align category_theory.lax_monoidal_functor.associativity_inv CategoryTheory.LaxMonoidalFunctor.associativity_inv

end

/--
A monoidal functor is a lax monoidal functor for which the tensorator and unitor as isomorphisms.

See <https://stacks.math.columbia.edu/tag/0FFL>.
-/
structure MonoidalFunctor extends LaxMonoidalFunctor.{v₁, v₂} C D where
  ε_isIso : IsIso ε := by infer_instance
  μ_isIso : ∀ X Y : C, IsIso (μ X Y) := by infer_instance
#align category_theory.monoidal_functor CategoryTheory.MonoidalFunctor

-- See porting note on `initialize_simps_projections LaxMonoidalFunctor`
initialize_simps_projections MonoidalFunctor (+toLaxMonoidalFunctor, -obj, -map, -ε, -μ)

attribute [instance] MonoidalFunctor.ε_isIso MonoidalFunctor.μ_isIso

variable {C D}

/-- The unit morphism of a (strong) monoidal functor as an isomorphism.
-/
noncomputable def MonoidalFunctor.εIso (F : MonoidalFunctor.{v₁, v₂} C D) :
    tensorUnit D ≅ F.obj (tensorUnit C) :=
  asIso F.ε
#align category_theory.monoidal_functor.ε_iso CategoryTheory.MonoidalFunctor.εIso

/-- The tensorator of a (strong) monoidal functor as an isomorphism.
-/
noncomputable def MonoidalFunctor.μIso (F : MonoidalFunctor.{v₁, v₂} C D) (X Y : C) :
    F.obj X ⊗ F.obj Y ≅ F.obj (X ⊗ Y) :=
  asIso (F.μ X Y)
#align category_theory.monoidal_functor.μ_iso CategoryTheory.MonoidalFunctor.μIso

end

open MonoidalCategory

namespace LaxMonoidalFunctor

variable (C : Type u₁) [Category.{v₁} C] [MonoidalCategory.{v₁} C]

/-- The identity lax monoidal functor. -/
@[simps]
def id : LaxMonoidalFunctor.{v₁, v₁} C C :=
  { 𝟭 C with
    ε := 𝟙 _
    μ := fun X Y => 𝟙 _ }
#align category_theory.lax_monoidal_functor.id CategoryTheory.LaxMonoidalFunctor.id

instance : Inhabited (LaxMonoidalFunctor C C) :=
  ⟨id C⟩

end LaxMonoidalFunctor

namespace MonoidalFunctor

section

variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory.{v₁} C]

variable {D : Type u₂} [Category.{v₂} D] [MonoidalCategory.{v₂} D]

variable (F : MonoidalFunctor.{v₁, v₂} C D)

theorem map_tensor {X Y X' Y' : C} (f : X ⟶ Y) (g : X' ⟶ Y') :
    F.map (f ⊗ g) = inv (F.μ X X') ≫ (F.map f ⊗ F.map g) ≫ F.μ Y Y' := by simp
#align category_theory.monoidal_functor.map_tensor CategoryTheory.MonoidalFunctor.map_tensor

theorem map_leftUnitor (X : C) :
    F.map (λ_ X).hom = inv (F.μ (𝟙_ C) X) ≫ (inv F.ε ⊗ 𝟙 (F.obj X)) ≫ (λ_ (F.obj X)).hom := by
  simp only [LaxMonoidalFunctor.left_unitality]
  slice_rhs 2 3 =>
    rw [← comp_tensor_id]
    simp
  simp
#align category_theory.monoidal_functor.map_left_unitor CategoryTheory.MonoidalFunctor.map_leftUnitor

theorem map_rightUnitor (X : C) :
    F.map (ρ_ X).hom = inv (F.μ X (𝟙_ C)) ≫ (𝟙 (F.obj X) ⊗ inv F.ε) ≫ (ρ_ (F.obj X)).hom := by
  simp only [LaxMonoidalFunctor.right_unitality]
  slice_rhs 2 3 =>
    rw [← id_tensor_comp]
    simp
  simp
#align category_theory.monoidal_functor.map_right_unitor CategoryTheory.MonoidalFunctor.map_rightUnitor

/-- The tensorator as a natural isomorphism. -/
noncomputable def μNatIso :
    Functor.prod F.toFunctor F.toFunctor ⋙ tensor D ≅ tensor C ⋙ F.toFunctor :=
  NatIso.ofComponents
    (by
      intros
      apply F.μIso)
    (by
      intros
      apply F.toLaxMonoidalFunctor.μ_natural)
#align category_theory.monoidal_functor.μ_nat_iso CategoryTheory.MonoidalFunctor.μNatIso

@[simp]
theorem μIso_hom (X Y : C) : (F.μIso X Y).hom = F.μ X Y :=
  rfl
#align category_theory.monoidal_functor.μ_iso_hom CategoryTheory.MonoidalFunctor.μIso_hom

--Porting note: was `[simp, reassoc.1]`
@[reassoc (attr := simp)]
theorem μ_inv_hom_id (X Y : C) : (F.μIso X Y).inv ≫ F.μ X Y = 𝟙 _ :=
  (F.μIso X Y).inv_hom_id
#align category_theory.monoidal_functor.μ_inv_hom_id CategoryTheory.MonoidalFunctor.μ_inv_hom_id

@[simp]
theorem μ_hom_inv_id (X Y : C) : F.μ X Y ≫ (F.μIso X Y).inv = 𝟙 _ :=
  (F.μIso X Y).hom_inv_id
#align category_theory.monoidal_functor.μ_hom_inv_id CategoryTheory.MonoidalFunctor.μ_hom_inv_id

@[simp]
theorem εIso_hom : F.εIso.hom = F.ε :=
  rfl
#align category_theory.monoidal_functor.ε_iso_hom CategoryTheory.MonoidalFunctor.εIso_hom

--Porting note: was `[simp, reassoc.1]`
@[reassoc (attr := simp)]
theorem ε_inv_hom_id : F.εIso.inv ≫ F.ε = 𝟙 _ :=
  F.εIso.inv_hom_id
#align category_theory.monoidal_functor.ε_inv_hom_id CategoryTheory.MonoidalFunctor.ε_inv_hom_id

@[simp]
theorem ε_hom_inv_id : F.ε ≫ F.εIso.inv = 𝟙 _ :=
  F.εIso.hom_inv_id
#align category_theory.monoidal_functor.ε_hom_inv_id CategoryTheory.MonoidalFunctor.ε_hom_inv_id

/-- Monoidal functors commute with left tensoring up to isomorphism -/
@[simps!]
noncomputable def commTensorLeft (X : C) :
    F.toFunctor ⋙ tensorLeft (F.toFunctor.obj X) ≅ tensorLeft X ⋙ F.toFunctor :=
  NatIso.ofComponents (fun Y => F.μIso X Y) @fun Y Z f => by
    convert F.μ_natural (𝟙 X) f using 2
    simp
#align category_theory.monoidal_functor.comm_tensor_left CategoryTheory.MonoidalFunctor.commTensorLeft

/-- Monoidal functors commute with right tensoring up to isomorphism -/
@[simps!]
noncomputable def commTensorRight (X : C) :
    F.toFunctor ⋙ tensorRight (F.toFunctor.obj X) ≅ tensorRight X ⋙ F.toFunctor :=
  NatIso.ofComponents (fun Y => F.μIso Y X) @fun Y Z f => by
    convert F.μ_natural f (𝟙 X) using 2
    simp
#align category_theory.monoidal_functor.comm_tensor_right CategoryTheory.MonoidalFunctor.commTensorRight

end

section

variable (C : Type u₁) [Category.{v₁} C] [MonoidalCategory.{v₁} C]

/-- The identity monoidal functor. -/
@[simps]
def id : MonoidalFunctor.{v₁, v₁} C C :=
  { 𝟭 C with
    ε := 𝟙 _
    μ := fun X Y => 𝟙 _ }
#align category_theory.monoidal_functor.id CategoryTheory.MonoidalFunctor.id

instance : Inhabited (MonoidalFunctor C C) :=
  ⟨id C⟩

end

end MonoidalFunctor

variable {C : Type u₁} [Category.{v₁} C] [MonoidalCategory.{v₁} C]

variable {D : Type u₂} [Category.{v₂} D] [MonoidalCategory.{v₂} D]

variable {E : Type u₃} [Category.{v₃} E] [MonoidalCategory.{v₃} E]

namespace LaxMonoidalFunctor

variable (F : LaxMonoidalFunctor.{v₁, v₂} C D) (G : LaxMonoidalFunctor.{v₂, v₃} D E)

-- The proofs here are horrendous; rewrite_search helps a lot.
/-- The composition of two lax monoidal functors is again lax monoidal. -/
@[simps]
def comp : LaxMonoidalFunctor.{v₁, v₃} C E :=
  { F.toFunctor ⋙ G.toFunctor with
    ε := G.ε ≫ G.map F.ε
    μ := fun X Y => G.μ (F.obj X) (F.obj Y) ≫ G.map (F.μ X Y)
    μ_natural := @fun _ _ _ _ f g => by
      simp only [Functor.comp_map, assoc]
      rw [← Category.assoc, LaxMonoidalFunctor.μ_natural, Category.assoc, ← map_comp, ← map_comp,
        ← LaxMonoidalFunctor.μ_natural]
    associativity := fun X Y Z => by
      dsimp
      rw [id_tensor_comp]
      slice_rhs 3 4 => rw [← G.toFunctor.map_id, G.μ_natural]
      slice_rhs 1 3 => rw [← G.associativity]
      rw [comp_tensor_id]
      slice_lhs 2 3 => rw [← G.toFunctor.map_id, G.μ_natural]
      rw [Category.assoc, Category.assoc, Category.assoc, Category.assoc, Category.assoc, ←
        G.toFunctor.map_comp, ← G.toFunctor.map_comp, ← G.toFunctor.map_comp, ←
        G.toFunctor.map_comp, F.associativity]
    left_unitality := fun X => by
      dsimp
      rw [G.left_unitality, comp_tensor_id, Category.assoc, Category.assoc]
      apply congr_arg
      rw [F.left_unitality, map_comp, ← NatTrans.id_app, ← Category.assoc, ←
        LaxMonoidalFunctor.μ_natural, NatTrans.id_app, map_id, ← Category.assoc, map_comp]
    right_unitality := fun X => by
      dsimp
      rw [G.right_unitality, id_tensor_comp, Category.assoc, Category.assoc]
      apply congr_arg
      rw [F.right_unitality, map_comp, ← NatTrans.id_app, ← Category.assoc, ←
        LaxMonoidalFunctor.μ_natural, NatTrans.id_app, map_id, ← Category.assoc, map_comp] }
#align category_theory.lax_monoidal_functor.comp CategoryTheory.LaxMonoidalFunctor.comp

@[inherit_doc]
infixr:80 " ⊗⋙ " => comp

end LaxMonoidalFunctor

namespace LaxMonoidalFunctor

universe v₀ u₀

variable {B : Type u₀} [Category.{v₀} B] [MonoidalCategory.{v₀} B]

variable (F : LaxMonoidalFunctor.{v₀, v₁} B C) (G : LaxMonoidalFunctor.{v₂, v₃} D E)

attribute [local simp] μ_natural associativity left_unitality right_unitality

/-- The cartesian product of two lax monoidal functors is lax monoidal. -/
@[simps]
def prod : LaxMonoidalFunctor (B × D) (C × E) :=
  { F.toFunctor.prod G.toFunctor with
    ε := (ε F, ε G)
    μ := fun X Y => (μ F X.1 Y.1, μ G X.2 Y.2) }
#align category_theory.lax_monoidal_functor.prod CategoryTheory.LaxMonoidalFunctor.prod

end LaxMonoidalFunctor

namespace MonoidalFunctor

variable (C)

/-- The diagonal functor as a monoidal functor. -/
@[simps]
def diag : MonoidalFunctor C (C × C) :=
  { Functor.diag C with
    ε := 𝟙 _
    μ := fun X Y => 𝟙 _ }
#align category_theory.monoidal_functor.diag CategoryTheory.MonoidalFunctor.diag

end MonoidalFunctor

namespace LaxMonoidalFunctor

variable (F : LaxMonoidalFunctor.{v₁, v₂} C D) (G : LaxMonoidalFunctor.{v₁, v₃} C E)

/-- The cartesian product of two lax monoidal functors starting from the same monoidal category `C`
    is lax monoidal. -/
def prod' : LaxMonoidalFunctor C (D × E) :=
  (MonoidalFunctor.diag C).toLaxMonoidalFunctor ⊗⋙ F.prod G
#align category_theory.lax_monoidal_functor.prod' CategoryTheory.LaxMonoidalFunctor.prod'

@[simp]
theorem prod'_toFunctor : (F.prod' G).toFunctor = F.toFunctor.prod' G.toFunctor :=
  rfl
#align category_theory.lax_monoidal_functor.prod'_to_functor CategoryTheory.LaxMonoidalFunctor.prod'_toFunctor

@[simp]
theorem prod'_ε : (F.prod' G).ε = (F.ε, G.ε) := by
  dsimp [prod']
  simp
#align category_theory.lax_monoidal_functor.prod'_ε CategoryTheory.LaxMonoidalFunctor.prod'_ε

@[simp]
theorem prod'_μ (X Y : C) : (F.prod' G).μ X Y = (F.μ X Y, G.μ X Y) := by
  dsimp [prod']
  simp
#align category_theory.lax_monoidal_functor.prod'_μ CategoryTheory.LaxMonoidalFunctor.prod'_μ

end LaxMonoidalFunctor

namespace MonoidalFunctor

variable (F : MonoidalFunctor.{v₁, v₂} C D) (G : MonoidalFunctor.{v₂, v₃} D E)

/-- The composition of two monoidal functors is again monoidal. -/
@[simps]
def comp : MonoidalFunctor.{v₁, v₃} C E :=
  {
    F.toLaxMonoidalFunctor.comp
      G.toLaxMonoidalFunctor with
    ε_isIso := by
      dsimp
      infer_instance
    μ_isIso := by
      dsimp
      infer_instance }
#align category_theory.monoidal_functor.comp CategoryTheory.MonoidalFunctor.comp

@[inherit_doc]
infixr:80
  " ⊗⋙ " =>-- We overload notation; potentially dangerous, but it seems to work.
  comp

end MonoidalFunctor

namespace MonoidalFunctor

universe v₀ u₀

variable {B : Type u₀} [Category.{v₀} B] [MonoidalCategory.{v₀} B]

variable (F : MonoidalFunctor.{v₀, v₁} B C) (G : MonoidalFunctor.{v₂, v₃} D E)

/-- The cartesian product of two monoidal functors is monoidal. -/
@[simps]
def prod : MonoidalFunctor (B × D) (C × E) :=
  {
    F.toLaxMonoidalFunctor.prod
      G.toLaxMonoidalFunctor with
    ε_isIso := (isIso_prod_iff C E).mpr ⟨ε_isIso F, ε_isIso G⟩
    μ_isIso := fun X Y => (isIso_prod_iff C E).mpr ⟨μ_isIso F X.1 Y.1, μ_isIso G X.2 Y.2⟩ }
#align category_theory.monoidal_functor.prod CategoryTheory.MonoidalFunctor.prod

end MonoidalFunctor

namespace MonoidalFunctor

variable (F : MonoidalFunctor.{v₁, v₂} C D) (G : MonoidalFunctor.{v₁, v₃} C E)

/-- The cartesian product of two monoidal functors starting from the same monoidal category `C`
    is monoidal. -/
def prod' : MonoidalFunctor C (D × E) :=
  diag C ⊗⋙ F.prod G
#align category_theory.monoidal_functor.prod' CategoryTheory.MonoidalFunctor.prod'

@[simp]
theorem prod'_toLaxMonoidalFunctor :
    (F.prod' G).toLaxMonoidalFunctor = F.toLaxMonoidalFunctor.prod' G.toLaxMonoidalFunctor :=
  rfl
#align category_theory.monoidal_functor.prod'_to_lax_monoidal_functor CategoryTheory.MonoidalFunctor.prod'_toLaxMonoidalFunctor

end MonoidalFunctor

/-- If we have a right adjoint functor `G` to a monoidal functor `F`, then `G` has a lax monoidal
structure as well.
-/
@[simps]
noncomputable def monoidalAdjoint (F : MonoidalFunctor C D) {G : D ⥤ C} (h : F.toFunctor ⊣ G) :
    LaxMonoidalFunctor D C where
  toFunctor := G
  ε := h.homEquiv _ _ (inv F.ε)
  μ X Y := h.homEquiv _ (X ⊗ Y) (inv (F.μ (G.obj X) (G.obj Y)) ≫ (h.counit.app X ⊗ h.counit.app Y))
  μ_natural := @fun X Y X' Y' f g => by
    rw [← h.homEquiv_naturality_left, ← h.homEquiv_naturality_right, Equiv.apply_eq_iff_eq, assoc,
      IsIso.eq_inv_comp, ← F.toLaxMonoidalFunctor.μ_natural_assoc, IsIso.hom_inv_id_assoc, ←
      tensor_comp, Adjunction.counit_naturality, Adjunction.counit_naturality, tensor_comp]
  associativity X Y Z := by
    dsimp only
    rw [← h.homEquiv_naturality_right, ← h.homEquiv_naturality_left, ←
      h.homEquiv_naturality_left, ← h.homEquiv_naturality_left, Equiv.apply_eq_iff_eq, ←
      cancel_epi (F.toLaxMonoidalFunctor.μ (G.obj X ⊗ G.obj Y) (G.obj Z)), ←
      cancel_epi (F.toLaxMonoidalFunctor.μ (G.obj X) (G.obj Y) ⊗ 𝟙 (F.obj (G.obj Z))),
      F.toLaxMonoidalFunctor.associativity_assoc (G.obj X) (G.obj Y) (G.obj Z), ←
      F.toLaxMonoidalFunctor.μ_natural_assoc, assoc, IsIso.hom_inv_id_assoc, ←
      F.toLaxMonoidalFunctor.μ_natural_assoc, IsIso.hom_inv_id_assoc, ← tensor_comp, ←
      tensor_comp, id_comp, Functor.map_id, Functor.map_id, id_comp, ← tensor_comp_assoc, ←
      tensor_comp_assoc, id_comp, id_comp, h.homEquiv_unit, h.homEquiv_unit, Functor.map_comp,
      assoc, assoc, h.counit_naturality, h.left_triangle_components_assoc, Functor.map_comp,
      assoc, h.counit_naturality, h.left_triangle_components_assoc]
    simp
  left_unitality X := by
    rw [← h.homEquiv_naturality_right, ← h.homEquiv_naturality_left, ← Equiv.symm_apply_eq,
      h.homEquiv_counit, F.map_leftUnitor, h.homEquiv_unit, assoc, assoc, assoc, F.map_tensor,
      assoc, assoc, IsIso.hom_inv_id_assoc, ← tensor_comp_assoc, Functor.map_id, id_comp,
      Functor.map_comp, assoc, h.counit_naturality, h.left_triangle_components_assoc, ←
      leftUnitor_naturality, ← tensor_comp_assoc, id_comp, comp_id]
    simp
  right_unitality X := by
    rw [← h.homEquiv_naturality_right, ← h.homEquiv_naturality_left, ← Equiv.symm_apply_eq,
      h.homEquiv_counit, F.map_rightUnitor, assoc, assoc, ← rightUnitor_naturality, ←
      tensor_comp_assoc, comp_id, id_comp, h.homEquiv_unit, F.map_tensor, assoc, assoc, assoc,
      IsIso.hom_inv_id_assoc, Functor.map_comp, Functor.map_id, ← tensor_comp_assoc, assoc,
      h.counit_naturality, h.left_triangle_components_assoc, id_comp]
    simp
#align category_theory.monoidal_adjoint CategoryTheory.monoidalAdjoint

/-- If a monoidal functor `F` is an equivalence of categories then its inverse is also monoidal. -/
@[simps]
noncomputable def monoidalInverse (F : MonoidalFunctor C D) [IsEquivalence F.toFunctor] :
    MonoidalFunctor D C
    where
  toLaxMonoidalFunctor := monoidalAdjoint F (asEquivalence _).toAdjunction
  ε_isIso := by
    dsimp [Equivalence.toAdjunction]
    infer_instance
  μ_isIso X Y := by
    dsimp [Equivalence.toAdjunction]
    infer_instance
#align category_theory.monoidal_inverse CategoryTheory.monoidalInverse

end CategoryTheory
```
