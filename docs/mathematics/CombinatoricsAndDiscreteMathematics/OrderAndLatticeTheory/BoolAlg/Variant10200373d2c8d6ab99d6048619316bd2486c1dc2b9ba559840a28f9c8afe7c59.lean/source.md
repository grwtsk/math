# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolAlg.Variant10200373d2c8d6ab99d6048619316bd2486c1dc2b9ba559840a28f9c8afe7c59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `802256e421552099271e16a321360cca97b4060d` · SHA-256 `ce963a55a5198fcf4a0a1e0deb3f6a89ae84741aa2f4d40496e2d2ed42c7688e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolAlg.Variantc374bdffc05309ff55733913b9f13e7359cd3da49f1a8f21e29c5032f27c0177","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c374bdffc05309ff55733913b9f13e7359cd3da49f1a8f21e29c5032f27c0177","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.BoolAlg.Variantc374bdffc05309ff55733913b9f13e7359cd3da49f1a8f21e29c5032f27c0177","mathematical_subject":"Algebra.OrderTheory","original_sha256":"c374bdffc05309ff55733913b9f13e7359cd3da49f1a8f21e29c5032f27c0177","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Category/BoolAlg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Order.Category.HeytAlg
import Mathlib.Order.Hom.CompleteLattice

/-!
# The category of boolean algebras

This defines `BoolAlg`, the category of boolean algebras.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.BoolAlg.Variantc374bdffc05309ff55733913b9f13e7359cd3da49f1a8f21e29c5032f27c0177

open OrderDual Opposite Set

universe u

open CategoryTheory

/-- The category of boolean algebras. -/
structure BoolAlg where
  /-- The underlying boolean algebra. -/
  carrier : Type*
  [str : BooleanAlgebra carrier]

attribute [instance] BoolAlg.str

initialize_simps_projections BoolAlg (carrier → coe, -str)

namespace BoolAlg

instance : CoeSort BoolAlg (Type _) :=
  ⟨BoolAlg.carrier⟩

attribute [coe] BoolAlg.carrier

/-- Construct a bundled `BoolAlg` from the underlying type and typeclass. -/
abbrev of (X : Type*) [BooleanAlgebra X] : BoolAlg := ⟨X⟩

/-- The type of morphisms in `BoolAlg R`. -/
@[ext]
structure Hom (X Y : BoolAlg.{u}) where
  private mk ::
  /-- The underlying `BoundedLatticeHom`. -/
  hom' : BoundedLatticeHom X Y

instance : Category BoolAlg.{u} where
  Hom X Y := Hom X Y
  id X := ⟨BoundedLatticeHom.id X⟩
  comp f g := ⟨g.hom'.comp f.hom'⟩

instance : ConcreteCategory BoolAlg (BoundedLatticeHom · ·) where
  hom := Hom.hom'
  ofHom := Hom.mk

/-- Turn a morphism in `BoolAlg` back into a `BoundedLatticeHom`. -/
abbrev Hom.hom {X Y : BoolAlg.{u}} (f : Hom X Y) :=
  ConcreteCategory.hom (C := BoolAlg) f

/-- Typecheck a `BoundedLatticeHom` as a morphism in `BoolAlg`. -/
abbrev ofHom {X Y : Type u} [BooleanAlgebra X] [BooleanAlgebra Y] (f : BoundedLatticeHom X Y) :
    of X ⟶ of Y :=
  ConcreteCategory.ofHom (C := BoolAlg) f

variable {R} in
/-- Use the `ConcreteCategory.hom` projection for `@[simps]` lemmas. -/
def Hom.Simps.hom (X Y : BoolAlg.{u}) (f : Hom X Y) :=
  f.hom

initialize_simps_projections Hom (hom' → hom)

/-!
The results below duplicate the `ConcreteCategory` simp lemmas, but we can keep them for `dsimp`.
-/

@[simp]
lemma coe_id {X : BoolAlg} : (𝟙 X : X → X) = id := rfl

@[simp]
lemma coe_comp {X Y Z : BoolAlg} {f : X ⟶ Y} {g : Y ⟶ Z} : (f ≫ g : X → Z) = g ∘ f := rfl

@[simp]
lemma forget_map {X Y : BoolAlg} (f : X ⟶ Y) :
    (forget BoolAlg).map f = f := rfl

@[ext]
lemma ext {X Y : BoolAlg} {f g : X ⟶ Y} (w : ∀ x : X, f x = g x) : f = g :=
  ConcreteCategory.hom_ext _ _ w

-- This is not `simp` to avoid rewriting in types of terms.
theorem coe_of (X : Type u) [BooleanAlgebra X] : (BoolAlg.of X : Type u) = X := rfl

@[simp]
lemma hom_id {X : BoolAlg} : (𝟙 X : X ⟶ X).hom = BoundedLatticeHom.id _ := rfl

/- Provided for rewriting. -/
lemma id_apply (X : BoolAlg) (x : X) :
    (𝟙 X : X ⟶ X) x = x := by simp

@[simp]
lemma hom_comp {X Y Z : BoolAlg} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom = g.hom.comp f.hom := rfl

/- Provided for rewriting. -/
lemma comp_apply {X Y Z : BoolAlg} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) :
    (f ≫ g) x = g (f x) := by simp

@[ext]
lemma hom_ext {X Y : BoolAlg} {f g : X ⟶ Y} (hf : f.hom = g.hom) : f = g :=
  Hom.ext hf

@[simp]
lemma hom_ofHom {X Y : Type u} [BooleanAlgebra X] [BooleanAlgebra Y] (f : BoundedLatticeHom X Y) :
  (ofHom f).hom = f := rfl

@[simp]
lemma ofHom_hom {X Y : BoolAlg} (f : X ⟶ Y) :
    ofHom (Hom.hom f) = f := rfl

@[simp]
lemma ofHom_id {X : Type u} [BooleanAlgebra X] : ofHom (BoundedLatticeHom.id _) = 𝟙 (of X) := rfl

@[simp]
lemma ofHom_comp {X Y Z : Type u} [BooleanAlgebra X] [BooleanAlgebra Y] [BooleanAlgebra Z]
    (f : BoundedLatticeHom X Y) (g : BoundedLatticeHom Y Z) :
    ofHom (g.comp f) = ofHom f ≫ ofHom g :=
  rfl

lemma ofHom_apply {X Y : Type u} [BooleanAlgebra X] [BooleanAlgebra Y]
    (f : BoundedLatticeHom X Y) (x : X) :
    (ofHom f) x = f x := rfl

lemma inv_hom_apply {X Y : BoolAlg} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by
  simp

lemma hom_inv_apply {X Y : BoolAlg} (e : X ≅ Y) (s : Y) : e.hom (e.inv s) = s := by
  simp

instance : Inhabited BoolAlg :=
  ⟨of PUnit⟩

/-- Turn a `BoolAlg` into a `BddDistLat` by forgetting its complement operation. -/
def toBddDistLat (X : BoolAlg) : BddDistLat :=
  .of X

@[simp]
theorem coe_toBddDistLat (X : BoolAlg) : ↥X.toBddDistLat = ↥X :=
  rfl

instance hasForgetToBddDistLat : HasForget₂ BoolAlg BddDistLat where
  forget₂.obj X := .of X
  forget₂.map f := BddDistLat.ofHom f.hom

section

attribute [local instance] BoundedLatticeHomClass.toBiheytingHomClass

@[simps]
instance hasForgetToHeytAlg : HasForget₂ BoolAlg HeytAlg where
  forget₂.obj X := .of X
  forget₂.map {X Y} f := HeytAlg.ofHom f.hom

end

/-- Constructs an equivalence between Boolean algebras from an order isomorphism between them. -/
@[simps]
def Iso.mk {α β : BoolAlg.{u}} (e : α ≃o β) : α ≅ β where
  hom := ofHom e
  inv := ofHom e.symm

/-- `OrderDual` as a functor. -/
@[simps map]
def dual : BoolAlg ⥤ BoolAlg where
  obj X := of Xᵒᵈ
  map f := ofHom f.hom.dual

/-- The equivalence between `BoolAlg` and itself induced by `OrderDual` both ways. -/
@[simps functor inverse]
def dualEquiv : BoolAlg ≌ BoolAlg where
  functor := dual
  inverse := dual
  unitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X
  counitIso := NatIso.ofComponents fun X => Iso.mk <| OrderIso.dualDual X

end BoolAlg

theorem boolAlg_dual_comp_forget_to_bddDistLat :
    BoolAlg.dual ⋙ forget₂ BoolAlg BddDistLat =
    forget₂ BoolAlg BddDistLat ⋙ BddDistLat.dual :=
  rfl

/-- The powerset functor. `Set` as a contravariant functor. -/
@[simps]
def typeToBoolAlgOp : Type u ⥤ BoolAlgᵒᵖ where
  obj X := op <| .of (Set X)
  map {X Y} f := Quiver.Hom.op (BoolAlg.ofHom (CompleteLatticeHom.setPreimage f))
```
