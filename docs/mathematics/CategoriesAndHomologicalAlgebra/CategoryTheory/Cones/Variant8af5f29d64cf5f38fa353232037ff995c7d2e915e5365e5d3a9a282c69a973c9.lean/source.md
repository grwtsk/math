# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cones.Variant8af5f29d64cf5f38fa353232037ff995c7d2e915e5365e5d3a9a282c69a973c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d182de4914d4364a5abeb889c5adcca21ec3155d` · SHA-256 `13638d74bf286d8b5169b304ee727f86555e2b341ad6f94c27e57d3edeb928d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cone.Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Cone.Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"c4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Cones.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stephen Morgan, Scott Morrison, Floris van Doorn
-/
import Mathlib.CategoryTheory.Functor.Const
import Mathlib.CategoryTheory.DiscreteCategory
import Mathlib.CategoryTheory.Yoneda
import Mathlib.CategoryTheory.Functor.ReflectsIso


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cone.Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8

#align_import category_theory.limits.cones from "leanprover-community/mathlib"@"740acc0e6f9adf4423f92a485d0456fc271482da"

/-!
# Cones and cocones

We define `Cone F`, a cone over a functor `F`,
and `F.cones : Cᵒᵖ ⥤ Type`, the functor associating to `X` the cones over `F` with cone point `X`.

A cone `c` is defined by specifying its cone point `c.pt` and a natural transformation `c.π`
from the constant `c.pt` valued functor to `F`.

We provide `c.w f : c.π.app j ≫ F.map f = c.π.app j'` for any `f : j ⟶ j'`
as a wrapper for `c.π.naturality f` avoiding unneeded identity morphisms.

We define `c.extend f`, where `c : cone F` and `f : Y ⟶ c.pt` for some other `Y`,
which replaces the cone point by `Y` and inserts `f` into each of the components of the cone.
Similarly we have `c.whisker F` producing a `Cone (E ⋙ F)`

We define morphisms of cones, and the category of cones.

We define `Cone.postcompose α : cone F ⥤ cone G` for `α` a natural transformation `F ⟶ G`.

And, of course, we dualise all this to cocones as well.

For more results about the category of cones, see `cone_category.lean`.
-/


-- morphism levels before object levels. See note [CategoryTheory universes].
universe v₁ v₂ v₃ v₄ u₁ u₂ u₃ u₄

open CategoryTheory

variable {J : Type u₁} [Category.{v₁} J]

variable {K : Type u₂} [Category.{v₂} K]

variable {C : Type u₃} [Category.{v₃} C]

variable {D : Type u₄} [Category.{v₄} D]

open CategoryTheory

open CategoryTheory.Category

open CategoryTheory.Functor

open Opposite

namespace CategoryTheory

namespace Functor

variable (F : J ⥤ C)

/-- If `F : J ⥤ C` then `F.cones` is the functor assigning to an object `X : C` the
type of natural transformations from the constant functor with value `X` to `F`.
An object representing this functor is a limit of `F`.
-/
@[simps!]
def cones : Cᵒᵖ ⥤ Type max u₁ v₃ :=
  (const J).op ⋙ yoneda.obj F
#align category_theory.functor.cones CategoryTheory.Functor.cones

/-- If `F : J ⥤ C` then `F.cocones` is the functor assigning to an object `(X : C)`
the type of natural transformations from `F` to the constant functor with value `X`.
An object corepresenting this functor is a colimit of `F`.
-/
@[simps!]
def cocones : C ⥤ Type max u₁ v₃ :=
  const J ⋙ coyoneda.obj (op F)
#align category_theory.functor.cocones CategoryTheory.Functor.cocones

end Functor

section

variable (J C)

/-- Functorially associated to each functor `J ⥤ C`, we have the `C`-presheaf consisting of
cones with a given cone point.
-/
@[simps!]
def cones : (J ⥤ C) ⥤ Cᵒᵖ ⥤ Type max u₁ v₃ where
  obj := Functor.cones
  map f := whiskerLeft (const J).op (yoneda.map f)
#align category_theory.cones CategoryTheory.cones

/-- Contravariantly associated to each functor `J ⥤ C`, we have the `C`-copresheaf consisting of
cocones with a given cocone point.
-/
@[simps!]
def cocones : (J ⥤ C)ᵒᵖ ⥤ C ⥤ Type max u₁ v₃ where
  obj F := Functor.cocones (unop F)
  map f := whiskerLeft (const J) (coyoneda.map f)
#align category_theory.cocones CategoryTheory.cocones

end

namespace Limits

section

/-- A `c : Cone F` is:
* an object `c.pt` and
* a natural transformation `c.π : c.pt ⟶ F` from the constant `c.pt` functor to `F`.

Example: if `J` is a category coming from a poset then the data required to make
a term of type `Cone F` is morphisms `πⱼ : c.pt ⟶ F j` for all `j : J` and,
for all `i ≤ j` in `J`, morphisms `πᵢⱼ : F i ⟶ F j` such that `πᵢ ≫ πᵢⱼ = πᵢ`.

`Cone F` is equivalent, via `cone.equiv` below, to `Σ X, F.cones.obj X`.
-/
structure Cone (F : J ⥤ C) where
  /-- An object of `C` -/
  pt : C
  /-- A natural transformation from the constant functor at `X` to `F` -/
  π : (const J).obj pt ⟶ F
#align category_theory.limits.cone CategoryTheory.Limits.Cone
set_option linter.uppercaseLean3 false in
#align category_theory.limits.cone.X CategoryTheory.Limits.Cone.pt

instance inhabitedCone (F : Discrete PUnit ⥤ C) : Inhabited (Cone F) :=
  ⟨{  pt := F.obj ⟨⟨⟩⟩
      π := { app := fun ⟨⟨⟩⟩ => 𝟙 _
             naturality := by
              intro X Y f
              match X, Y, f with
              | .mk A, .mk B, .up g =>
                aesop_cat
           }
  }⟩
#align category_theory.limits.inhabited_cone CategoryTheory.Limits.inhabitedCone

@[reassoc (attr := simp)]
theorem Cone.w {F : J ⥤ C} (c : Cone F) {j j' : J} (f : j ⟶ j') :
    c.π.app j ≫ F.map f = c.π.app j' := by
  rw [← c.π.naturality f]
  apply id_comp
#align category_theory.limits.cone.w CategoryTheory.Limits.Cone.w

/-- A `c : Cocone F` is
* an object `c.pt` and
* a natural transformation `c.ι : F ⟶ c.pt` from `F` to the constant `c.pt` functor.

For example, if the source `J` of `F` is a partially ordered set, then to give
`c : Cocone F` is to give a collection of morphisms `ιⱼ : F j ⟶ c.pt` and, for
all `j ≤ k` in `J`, morphisms `ιⱼₖ : F j ⟶ F k` such that `Fⱼₖ ≫ Fₖ = Fⱼ` for all `j ≤ k`.

`Cocone F` is equivalent, via `Cone.equiv` below, to `Σ X, F.cocones.obj X`.
-/
structure Cocone (F : J ⥤ C) where
  /-- An object of `C` -/
  pt : C
  /-- A natural transformation from `F` to the constant functor at `pt` -/
  ι : F ⟶ (const J).obj pt
#align category_theory.limits.cocone CategoryTheory.Limits.Cocone
set_option linter.uppercaseLean3 false in
#align category_theory.limits.cocone.X CategoryTheory.Limits.Cocone.pt

instance inhabitedCocone (F : Discrete PUnit ⥤ C) : Inhabited (Cocone F) :=
  ⟨{  pt := F.obj ⟨⟨⟩⟩
      ι := { app := fun ⟨⟨⟩⟩ => 𝟙 _
             naturality := by
              intro X Y f
              match X, Y, f with
              | .mk A, .mk B, .up g =>
                aesop_cat
           }
  }⟩
#align category_theory.limits.inhabited_cocone CategoryTheory.Limits.inhabitedCocone

@[reassoc] -- @[simp] -- Porting note: simp can prove this
theorem Cocone.w {F : J ⥤ C} (c : Cocone F) {j j' : J} (f : j ⟶ j') :
    F.map f ≫ c.ι.app j' = c.ι.app j := by
  rw [c.ι.naturality f]
  apply comp_id
#align category_theory.limits.cocone.w CategoryTheory.Limits.Cocone.w

attribute [simp 1001] Cocone.w_assoc

end

variable {F : J ⥤ C}

namespace Cone

/-- The isomorphism between a cone on `F` and an element of the functor `F.cones`. -/
@[simps!]
def equiv (F : J ⥤ C) : Cone F ≅ ΣX, F.cones.obj X where
  hom c := ⟨op c.pt, c.π⟩
  inv c :=
    { pt := c.1.unop
      π := c.2 }
  hom_inv_id := by
    funext X
    cases X
    rfl
  inv_hom_id := by
    funext X
    cases X
    rfl
#align category_theory.limits.cone.equiv CategoryTheory.Limits.Cone.equiv

/-- A map to the vertex of a cone naturally induces a cone by composition. -/
@[simps]
def extensions (c : Cone F) : yoneda.obj c.pt ⋙ uliftFunctor.{u₁} ⟶ F.cones where
  app X f := (const J).map f.down ≫ c.π
#align category_theory.limits.cone.extensions CategoryTheory.Limits.Cone.extensions

/-- A map to the vertex of a cone induces a cone by composition. -/
@[simps]
def extend (c : Cone F) {X : C} (f : X ⟶ c.pt) : Cone F :=
  { pt := X
    π := c.extensions.app (op X) ⟨f⟩ }
#align category_theory.limits.cone.extend CategoryTheory.Limits.Cone.extend

/-- Whisker a cone by precomposition of a functor. -/
@[simps]
def whisker (E : K ⥤ J) (c : Cone F) : Cone (E ⋙ F) where
  pt := c.pt
  π := whiskerLeft E c.π
#align category_theory.limits.cone.whisker CategoryTheory.Limits.Cone.whisker

end Cone

namespace Cocone

/-- The isomorphism between a cocone on `F` and an element of the functor `F.cocones`. -/
def equiv (F : J ⥤ C) : Cocone F ≅ ΣX, F.cocones.obj X where
  hom c := ⟨c.pt, c.ι⟩
  inv c :=
    { pt := c.1
      ι := c.2 }
  hom_inv_id := by
    funext X
    cases X
    rfl
  inv_hom_id := by
    funext X
    cases X
    rfl
#align category_theory.limits.cocone.equiv CategoryTheory.Limits.Cocone.equiv

/-- A map from the vertex of a cocone naturally induces a cocone by composition. -/
@[simps]
def extensions (c : Cocone F) : coyoneda.obj (op c.pt) ⋙ uliftFunctor.{u₁} ⟶ F.cocones where
  app X f := c.ι ≫ (const J).map f.down
#align category_theory.limits.cocone.extensions CategoryTheory.Limits.Cocone.extensions

/-- A map from the vertex of a cocone induces a cocone by composition. -/
@[simps]
def extend (c : Cocone F) {Y : C} (f : c.pt ⟶ Y) : Cocone F where
  pt := Y
  ι := c.extensions.app Y ⟨f⟩
#align category_theory.limits.cocone.extend CategoryTheory.Limits.Cocone.extend

/-- Whisker a cocone by precomposition of a functor. See `whiskering` for a functorial
version.
-/
@[simps]
def whisker (E : K ⥤ J) (c : Cocone F) : Cocone (E ⋙ F) where
  pt := c.pt
  ι := whiskerLeft E c.ι
#align category_theory.limits.cocone.whisker CategoryTheory.Limits.Cocone.whisker

end Cocone

/-- A cone morphism between two cones for the same diagram is a morphism of the cone points which
commutes with the cone legs. -/
structure ConeMorphism (A B : Cone F) where
  /-- A morphism between the two vertex objects of the cones -/
  Hom : A.pt ⟶ B.pt
  /-- The triangle consisting of the two natural transformations and `Hom` commutes -/
  w : ∀ j : J, Hom ≫ B.π.app j = A.π.app j := by aesop_cat
#align category_theory.limits.cone_morphism CategoryTheory.Limits.ConeMorphism
#align category_theory.limits.cone_morphism.w' CategoryTheory.Limits.ConeMorphism.w

attribute [reassoc (attr := simp)] ConeMorphism.w

instance inhabitedConeMorphism (A : Cone F) : Inhabited (ConeMorphism A A) :=
  ⟨{ Hom := 𝟙 _ }⟩
#align category_theory.limits.inhabited_cone_morphism CategoryTheory.Limits.inhabitedConeMorphism

/-- The category of cones on a given diagram. -/
@[simps]
instance Cone.category : Category (Cone F) where
  Hom A B := ConeMorphism A B
  comp f g := { Hom := f.Hom ≫ g.Hom }
  id B := { Hom := 𝟙 B.pt }
#align category_theory.limits.cone.category CategoryTheory.Limits.Cone.category

-- Porting note: if we do not have `simps` automatically generate the lemma for simplifying
-- the Hom field of a category, we need to write the `ext` lemma in terms of the categorical
-- morphism, rather than the underlying structure.
@[ext]
theorem ConeMorphism.ext {c c' : Cone F} (f g : c ⟶ c') (w : f.Hom = g.Hom) : f = g := by
  cases f
  cases g
  congr

namespace Cones

/-- To give an isomorphism between cones, it suffices to give an
  isomorphism between their vertices which commutes with the cone
  maps. -/
-- Porting note: `@[ext]` used to accept lemmas like this. Now we add an aesop rule
@[aesop apply safe (rule_sets [CategoryTheory]), simps]
def ext {c c' : Cone F} (φ : c.pt ≅ c'.pt)
    (w : ∀ j, c.π.app j = φ.hom ≫ c'.π.app j := by aesop_cat) : c ≅ c' where
  hom := { Hom := φ.hom }
  inv :=
    { Hom := φ.inv
      w := fun j => φ.inv_comp_eq.mpr (w j) }
#align category_theory.limits.cones.ext CategoryTheory.Limits.Cones.ext

/-- Eta rule for cones. -/
@[simps!]
def eta (c : Cone F) : c ≅ ⟨c.pt, c.π⟩ :=
  Cones.ext (Iso.refl _)
#align category_theory.limits.cones.eta CategoryTheory.Limits.Cones.eta

/-- Given a cone morphism whose object part is an isomorphism, produce an
isomorphism of cones.
-/
theorem cone_iso_of_hom_iso {K : J ⥤ C} {c d : Cone K} (f : c ⟶ d) [i : IsIso f.Hom] : IsIso f :=
  ⟨⟨{   Hom := inv f.Hom
        w := fun j => (asIso f.Hom).inv_comp_eq.2 (f.w j).symm }, by aesop_cat⟩⟩
#align category_theory.limits.cones.cone_iso_of_hom_iso CategoryTheory.Limits.Cones.cone_iso_of_hom_iso

/--
Functorially postcompose a cone for `F` by a natural transformation `F ⟶ G` to give a cone for `G`.
-/
@[simps]
def postcompose {G : J ⥤ C} (α : F ⟶ G) : Cone F ⥤ Cone G where
  obj c :=
    { pt := c.pt
      π := c.π ≫ α }
  map f := { Hom := f.Hom }
#align category_theory.limits.cones.postcompose CategoryTheory.Limits.Cones.postcompose

/-- Postcomposing a cone by the composite natural transformation `α ≫ β` is the same as
postcomposing by `α` and then by `β`. -/
@[simps!]
def postcomposeComp {G H : J ⥤ C} (α : F ⟶ G) (β : G ⟶ H) :
    postcompose (α ≫ β) ≅ postcompose α ⋙ postcompose β :=
  NatIso.ofComponents fun s => Cones.ext (Iso.refl _)
#align category_theory.limits.cones.postcompose_comp CategoryTheory.Limits.Cones.postcomposeComp

/-- Postcomposing by the identity does not change the cone up to isomorphism. -/
@[simps!]
def postcomposeId : postcompose (𝟙 F) ≅ 𝟭 (Cone F) :=
  NatIso.ofComponents fun s => Cones.ext (Iso.refl _)
#align category_theory.limits.cones.postcompose_id CategoryTheory.Limits.Cones.postcomposeId

/-- If `F` and `G` are naturally isomorphic functors, then they have equivalent categories of
cones.
-/
@[simps]
def postcomposeEquivalence {G : J ⥤ C} (α : F ≅ G) : Cone F ≌ Cone G where
  functor := postcompose α.hom
  inverse := postcompose α.inv
  unitIso := NatIso.ofComponents fun s => Cones.ext (Iso.refl _)
  counitIso := NatIso.ofComponents fun s => Cones.ext (Iso.refl _)
#align category_theory.limits.cones.postcompose_equivalence CategoryTheory.Limits.Cones.postcomposeEquivalence

/-- Whiskering on the left by `E : K ⥤ J` gives a functor from `Cone F` to `Cone (E ⋙ F)`.
-/
@[simps]
def whiskering (E : K ⥤ J) : Cone F ⥤ Cone (E ⋙ F) where
  obj c := c.whisker E
  map f := { Hom := f.Hom }
#align category_theory.limits.cones.whiskering CategoryTheory.Limits.Cones.whiskering

/-- Whiskering by an equivalence gives an equivalence between categories of cones.
-/
@[simps]
def whiskeringEquivalence (e : K ≌ J) : Cone F ≌ Cone (e.functor ⋙ F) where
  functor := whiskering e.functor
  inverse := whiskering e.inverse ⋙ postcompose (e.invFunIdAssoc F).hom
  unitIso := NatIso.ofComponents fun s => Cones.ext (Iso.refl _)
  counitIso :=
    NatIso.ofComponents
      fun s =>
        Cones.ext (Iso.refl _)
          (by
            intro k
            simpa [e.counit_app_functor] using s.w (e.unitInv.app k))
#align category_theory.limits.cones.whiskering_equivalence CategoryTheory.Limits.Cones.whiskeringEquivalence

/-- The categories of cones over `F` and `G` are equivalent if `F` and `G` are naturally isomorphic
(possibly after changing the indexing category by an equivalence).
-/
@[simps! functor inverse unitIso counitIso]
def equivalenceOfReindexing {G : K ⥤ C} (e : K ≌ J) (α : e.functor ⋙ F ≅ G) : Cone F ≌ Cone G :=
  (whiskeringEquivalence e).trans (postcomposeEquivalence α)
#align category_theory.limits.cones.equivalence_of_reindexing CategoryTheory.Limits.Cones.equivalenceOfReindexing

section

variable (F)

/-- Forget the cone structure and obtain just the cone point. -/
@[simps]
def forget : Cone F ⥤ C where
  obj t := t.pt
  map f := f.Hom
#align category_theory.limits.cones.forget CategoryTheory.Limits.Cones.forget

variable (G : C ⥤ D)

/-- A functor `G : C ⥤ D` sends cones over `F` to cones over `F ⋙ G` functorially. -/
@[simps]
def functoriality : Cone F ⥤ Cone (F ⋙ G) where
  obj A :=
    { pt := G.obj A.pt
      π :=
        { app := fun j => G.map (A.π.app j)
          naturality := by intros; erw [← G.map_comp]; aesop_cat } }
  map f :=
    { Hom := G.map f.Hom
      w := fun j => by simp [-ConeMorphism.w, ← f.w j] }
#align category_theory.limits.cones.functoriality CategoryTheory.Limits.Cones.functoriality

instance functorialityFull [Full G] [Faithful G] : Full (functoriality F G) where
  preimage t :=
    { Hom := G.preimage t.Hom
      w := fun j => G.map_injective (by simpa using t.w j) }
#align category_theory.limits.cones.functoriality_full CategoryTheory.Limits.Cones.functorialityFull

instance functorialityFaithful [Faithful G] : Faithful (Cones.functoriality F G) where
  map_injective {c} {c'} f g e := by
    apply ConeMorphism.ext f g
    let f := ConeMorphism.mk.inj e
    apply G.map_injective f
#align category_theory.limits.cones.functoriality_faithful CategoryTheory.Limits.Cones.functorialityFaithful

/-- If `e : C ≌ D` is an equivalence of categories, then `functoriality F e.functor` induces an
equivalence between cones over `F` and cones over `F ⋙ e.functor`.
-/
@[simps]
def functorialityEquivalence (e : C ≌ D) : Cone F ≌ Cone (F ⋙ e.functor) :=
  let f : (F ⋙ e.functor) ⋙ e.inverse ≅ F :=
    Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ e.unitIso.symm ≪≫ Functor.rightUnitor _
  { functor := functoriality F e.functor
    inverse := functoriality (F ⋙ e.functor) e.inverse ⋙ (postcomposeEquivalence f).functor
    unitIso := NatIso.ofComponents fun c => Cones.ext (e.unitIso.app _)
    counitIso := NatIso.ofComponents fun c => Cones.ext (e.counitIso.app _)
  }
#align category_theory.limits.cones.functoriality_equivalence CategoryTheory.Limits.Cones.functorialityEquivalence

/-- If `F` reflects isomorphisms, then `Cones.functoriality F` reflects isomorphisms
as well.
-/
instance reflects_cone_isomorphism (F : C ⥤ D) [ReflectsIsomorphisms F] (K : J ⥤ C) :
    ReflectsIsomorphisms (Cones.functoriality K F) := by
  constructor
  intro A B f _
  haveI : IsIso (F.map f.Hom) :=
    (Cones.forget (K ⋙ F)).map_isIso ((Cones.functoriality K F).map f)
  haveI := ReflectsIsomorphisms.reflects F f.Hom
  apply cone_iso_of_hom_iso
#align category_theory.limits.cones.reflects_cone_isomorphism CategoryTheory.Limits.Cones.reflects_cone_isomorphism

end

end Cones

/-- A cocone morphism between two cocones for the same diagram is a morphism of the cocone points
which commutes with the cocone legs. -/
structure CoconeMorphism (A B : Cocone F) where
  /-- A morphism between the (co)vertex objects in `C` -/
  Hom : A.pt ⟶ B.pt
  /-- The triangle made from the two natural transformations and `Hom` commutes -/
  w : ∀ j : J, A.ι.app j ≫ Hom = B.ι.app j := by aesop_cat
#align category_theory.limits.cocone_morphism CategoryTheory.Limits.CoconeMorphism
#align category_theory.limits.cocone_morphism.w' CategoryTheory.Limits.CoconeMorphism.w

instance inhabitedCoconeMorphism (A : Cocone F) : Inhabited (CoconeMorphism A A) :=
  ⟨{ Hom := 𝟙 _ }⟩
#align category_theory.limits.inhabited_cocone_morphism CategoryTheory.Limits.inhabitedCoconeMorphism

attribute [reassoc (attr := simp)] CoconeMorphism.w

@[simps]
instance Cocone.category : Category (Cocone F) where
  Hom A B := CoconeMorphism A B
  comp f g := { Hom := f.Hom ≫ g.Hom }
  id B := { Hom := 𝟙 B.pt }
#align category_theory.limits.cocone.category CategoryTheory.Limits.Cocone.category

-- Porting note: if we do not have `simps` automatically generate the lemma for simplifying
-- the Hom field of a category, we need to write the `ext` lemma in terms of the categorical
-- morphism, rather than the underlying structure.
@[ext]
theorem CoconeMorphism.ext {c c' : Cocone F} (f g : c ⟶ c') (w : f.Hom = g.Hom) : f = g := by
  cases f
  cases g
  congr

namespace Cocones

/-- To give an isomorphism between cocones, it suffices to give an
  isomorphism between their vertices which commutes with the cocone
  maps. -/
-- Porting note: `@[ext]` used to accept lemmas like this. Now we add an aesop rule
@[aesop apply safe (rule_sets [CategoryTheory]), simps]
def ext {c c' : Cocone F} (φ : c.pt ≅ c'.pt)
    (w : ∀ j, c.ι.app j ≫ φ.hom = c'.ι.app j := by aesop_cat) : c ≅ c' where
  hom := { Hom := φ.hom }
  inv :=
    { Hom := φ.inv
      w := fun j => φ.comp_inv_eq.mpr (w j).symm }
#align category_theory.limits.cocones.ext CategoryTheory.Limits.Cocones.ext

/-- Eta rule for cocones. -/
@[simps!]
def eta (c : Cocone F) : c ≅ ⟨c.pt, c.ι⟩ :=
  Cocones.ext (Iso.refl _)
#align category_theory.limits.cocones.eta CategoryTheory.Limits.Cocones.eta

/-- Given a cocone morphism whose object part is an isomorphism, produce an
isomorphism of cocones.
-/
theorem cocone_iso_of_hom_iso {K : J ⥤ C} {c d : Cocone K} (f : c ⟶ d) [i : IsIso f.Hom] :
    IsIso f :=
  ⟨⟨{ Hom := inv f.Hom
      w := fun j => (asIso f.Hom).comp_inv_eq.2 (f.w j).symm }, by aesop_cat⟩⟩
#align category_theory.limits.cocones.cocone_iso_of_hom_iso CategoryTheory.Limits.Cocones.cocone_iso_of_hom_iso

/-- Functorially precompose a cocone for `F` by a natural transformation `G ⟶ F` to give a cocone
for `G`. -/
@[simps]
def precompose {G : J ⥤ C} (α : G ⟶ F) : Cocone F ⥤ Cocone G where
  obj c :=
    { pt := c.pt
      ι := α ≫ c.ι }
  map f := { Hom := f.Hom }
#align category_theory.limits.cocones.precompose CategoryTheory.Limits.Cocones.precompose

/-- Precomposing a cocone by the composite natural transformation `α ≫ β` is the same as
precomposing by `β` and then by `α`. -/
def precomposeComp {G H : J ⥤ C} (α : F ⟶ G) (β : G ⟶ H) :
    precompose (α ≫ β) ≅ precompose β ⋙ precompose α :=
  NatIso.ofComponents fun s => Cocones.ext (Iso.refl _)
#align category_theory.limits.cocones.precompose_comp CategoryTheory.Limits.Cocones.precomposeComp

/-- Precomposing by the identity does not change the cocone up to isomorphism. -/
def precomposeId : precompose (𝟙 F) ≅ 𝟭 (Cocone F) :=
  NatIso.ofComponents fun s => Cocones.ext (Iso.refl _)
#align category_theory.limits.cocones.precompose_id CategoryTheory.Limits.Cocones.precomposeId

/-- If `F` and `G` are naturally isomorphic functors, then they have equivalent categories of
cocones.
-/
@[simps]
def precomposeEquivalence {G : J ⥤ C} (α : G ≅ F) : Cocone F ≌ Cocone G where
  functor := precompose α.hom
  inverse := precompose α.inv
  unitIso := NatIso.ofComponents fun s => Cocones.ext (Iso.refl _)
  counitIso := NatIso.ofComponents fun s => Cocones.ext (Iso.refl _)
#align category_theory.limits.cocones.precompose_equivalence CategoryTheory.Limits.Cocones.precomposeEquivalence

/-- Whiskering on the left by `E : K ⥤ J` gives a functor from `Cocone F` to `Cocone (E ⋙ F)`.
-/
@[simps]
def whiskering (E : K ⥤ J) : Cocone F ⥤ Cocone (E ⋙ F) where
  obj c := c.whisker E
  map f := { Hom := f.Hom }
#align category_theory.limits.cocones.whiskering CategoryTheory.Limits.Cocones.whiskering

/-- Whiskering by an equivalence gives an equivalence between categories of cones.
-/
@[simps]
def whiskeringEquivalence (e : K ≌ J) : Cocone F ≌ Cocone (e.functor ⋙ F) where
  functor := whiskering e.functor
  inverse :=
    whiskering e.inverse ⋙
      precompose
        ((Functor.leftUnitor F).inv ≫
          whiskerRight e.counitIso.inv F ≫ (Functor.associator _ _ _).inv)
  unitIso := NatIso.ofComponents fun s => Cocones.ext (Iso.refl _)
  counitIso := NatIso.ofComponents fun s =>
    Cocones.ext (Iso.refl _) fun k => by simpa [e.counitInv_app_functor k] using s.w (e.unit.app k)
#align category_theory.limits.cocones.whiskering_equivalence CategoryTheory.Limits.Cocones.whiskeringEquivalence

/--
The categories of cocones over `F` and `G` are equivalent if `F` and `G` are naturally isomorphic
(possibly after changing the indexing category by an equivalence).
-/
@[simps! functor_obj]
def equivalenceOfReindexing {G : K ⥤ C} (e : K ≌ J) (α : e.functor ⋙ F ≅ G) : Cocone F ≌ Cocone G :=
  (whiskeringEquivalence e).trans (precomposeEquivalence α.symm)
#align category_theory.limits.cocones.equivalence_of_reindexing CategoryTheory.Limits.Cocones.equivalenceOfReindexing

section

variable (F)

/-- Forget the cocone structure and obtain just the cocone point. -/
@[simps]
def forget : Cocone F ⥤ C where
  obj t := t.pt
  map f := f.Hom
#align category_theory.limits.cocones.forget CategoryTheory.Limits.Cocones.forget

variable (G : C ⥤ D)

/-- A functor `G : C ⥤ D` sends cocones over `F` to cocones over `F ⋙ G` functorially. -/
@[simps]
def functoriality : Cocone F ⥤ Cocone (F ⋙ G) where
  obj A :=
    { pt := G.obj A.pt
      ι :=
        { app := fun j => G.map (A.ι.app j)
          naturality := by intros; erw [← G.map_comp]; aesop_cat } }
  map f :=
    { Hom := G.map f.Hom
      w := by intros; rw [← Functor.map_comp, CoconeMorphism.w] }
#align category_theory.limits.cocones.functoriality CategoryTheory.Limits.Cocones.functoriality

instance functorialityFull [Full G] [Faithful G] : Full (functoriality F G) where
  preimage t :=
    { Hom := G.preimage t.Hom
      w := fun j => G.map_injective (by simpa using t.w j) }
#align category_theory.limits.cocones.functoriality_full CategoryTheory.Limits.Cocones.functorialityFull

instance functoriality_faithful [Faithful G] : Faithful (functoriality F G) where
  map_injective {X} {Y} f g e := by
    apply CoconeMorphism.ext
    let h := CoconeMorphism.mk.inj e
    apply G.map_injective h
#align category_theory.limits.cocones.functoriality_faithful CategoryTheory.Limits.Cocones.functoriality_faithful

/-- If `e : C ≌ D` is an equivalence of categories, then `functoriality F e.functor` induces an
equivalence between cocones over `F` and cocones over `F ⋙ e.functor`.
-/
@[simps]
def functorialityEquivalence (e : C ≌ D) : Cocone F ≌ Cocone (F ⋙ e.functor) :=
  let f : (F ⋙ e.functor) ⋙ e.inverse ≅ F :=
    Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ e.unitIso.symm ≪≫ Functor.rightUnitor _
  { functor := functoriality F e.functor
    inverse := functoriality (F ⋙ e.functor) e.inverse ⋙ (precomposeEquivalence f.symm).functor
    unitIso := NatIso.ofComponents fun c => Cocones.ext (e.unitIso.app _)
    counitIso :=
      NatIso.ofComponents fun c => Cocones.ext (e.counitIso.app _)
        (fun j =>
          -- Unfortunately this doesn't work by `aesop_cat`.
          -- In this configuration `simp` reaches a dead-end and needs help.
          by simp [← Equivalence.counitInv_app_functor]) }
#align category_theory.limits.cocones.functoriality_equivalence CategoryTheory.Limits.Cocones.functorialityEquivalence

/-- If `F` reflects isomorphisms, then `cocones.functoriality F` reflects isomorphisms
as well.
-/
instance reflects_cocone_isomorphism (F : C ⥤ D) [ReflectsIsomorphisms F] (K : J ⥤ C) :
    ReflectsIsomorphisms (Cocones.functoriality K F) := by
  constructor
  intro A B f _
  haveI : IsIso (F.map f.Hom) :=
    (Cocones.forget (K ⋙ F)).map_isIso ((Cocones.functoriality K F).map f)
  haveI := ReflectsIsomorphisms.reflects F f.Hom
  apply cocone_iso_of_hom_iso
#align category_theory.limits.cocones.reflects_cocone_isomorphism CategoryTheory.Limits.Cocones.reflects_cocone_isomorphism

end

end Cocones

end Limits

namespace Functor

variable (H : C ⥤ D) {F : J ⥤ C} {G : J ⥤ C}

open CategoryTheory.Limits

/-- The image of a cone in C under a functor G : C ⥤ D is a cone in D. -/
@[simps!, pp_dot]
def mapCone (c : Cone F) : Cone (F ⋙ H) :=
  (Cones.functoriality F H).obj c
#align category_theory.functor.map_cone CategoryTheory.Functor.mapCone

/-- The image of a cocone in C under a functor G : C ⥤ D is a cocone in D. -/
@[simps!, pp_dot]
def mapCocone (c : Cocone F) : Cocone (F ⋙ H) :=
  (Cocones.functoriality F H).obj c
#align category_theory.functor.map_cocone CategoryTheory.Functor.mapCocone

/-- Given a cone morphism `c ⟶ c'`, construct a cone morphism on the mapped cones functorially.  -/
def mapConeMorphism {c c' : Cone F} (f : c ⟶ c') : H.mapCone c ⟶ H.mapCone c' :=
  (Cones.functoriality F H).map f
#align category_theory.functor.map_cone_morphism CategoryTheory.Functor.mapConeMorphism

/-- Given a cocone morphism `c ⟶ c'`, construct a cocone morphism on the mapped cocones
functorially. -/
def mapCoconeMorphism {c c' : Cocone F} (f : c ⟶ c') : H.mapCocone c ⟶ H.mapCocone c' :=
  (Cocones.functoriality F H).map f
#align category_theory.functor.map_cocone_morphism CategoryTheory.Functor.mapCoconeMorphism

/-- If `H` is an equivalence, we invert `H.mapCone` and get a cone for `F` from a cone
for `F ⋙ H`.-/
def mapConeInv [IsEquivalence H] (c : Cone (F ⋙ H)) : Cone F :=
  (Limits.Cones.functorialityEquivalence F (asEquivalence H)).inverse.obj c
#align category_theory.functor.map_cone_inv CategoryTheory.Functor.mapConeInv

/-- `mapCone` is the left inverse to `mapConeInv`. -/
def mapConeMapConeInv {F : J ⥤ D} (H : D ⥤ C) [IsEquivalence H] (c : Cone (F ⋙ H)) :
    mapCone H (mapConeInv H c) ≅ c :=
  (Limits.Cones.functorialityEquivalence F (asEquivalence H)).counitIso.app c
#align category_theory.functor.map_cone_map_cone_inv CategoryTheory.Functor.mapConeMapConeInv

/-- `MapCone` is the right inverse to `mapConeInv`. -/
def mapConeInvMapCone {F : J ⥤ D} (H : D ⥤ C) [IsEquivalence H] (c : Cone F) :
    mapConeInv H (mapCone H c) ≅ c :=
  (Limits.Cones.functorialityEquivalence F (asEquivalence H)).unitIso.symm.app c
#align category_theory.functor.map_cone_inv_map_cone CategoryTheory.Functor.mapConeInvMapCone

/-- If `H` is an equivalence, we invert `H.mapCone` and get a cone for `F` from a cone
for `F ⋙ H`.-/
def mapCoconeInv [IsEquivalence H] (c : Cocone (F ⋙ H)) : Cocone F :=
  (Limits.Cocones.functorialityEquivalence F (asEquivalence H)).inverse.obj c
#align category_theory.functor.map_cocone_inv CategoryTheory.Functor.mapCoconeInv

/-- `mapCocone` is the left inverse to `mapCoconeInv`. -/
def mapCoconeMapCoconeInv {F : J ⥤ D} (H : D ⥤ C) [IsEquivalence H] (c : Cocone (F ⋙ H)) :
    mapCocone H (mapCoconeInv H c) ≅ c :=
  (Limits.Cocones.functorialityEquivalence F (asEquivalence H)).counitIso.app c
#align category_theory.functor.map_cocone_map_cocone_inv CategoryTheory.Functor.mapCoconeMapCoconeInv

/-- `mapCocone` is the right inverse to `mapCoconeInv`. -/
def mapCoconeInvMapCocone {F : J ⥤ D} (H : D ⥤ C) [IsEquivalence H] (c : Cocone F) :
    mapCoconeInv H (mapCocone H c) ≅ c :=
  (Limits.Cocones.functorialityEquivalence F (asEquivalence H)).unitIso.symm.app c
#align category_theory.functor.map_cocone_inv_map_cocone CategoryTheory.Functor.mapCoconeInvMapCocone

/-- `functoriality F _ ⋙ postcompose (whisker_left F _)` simplifies to `functoriality F _`. -/
@[simps!]
def functorialityCompPostcompose {H H' : C ⥤ D} (α : H ≅ H') :
    Cones.functoriality F H ⋙ Cones.postcompose (whiskerLeft F α.hom) ≅ Cones.functoriality F H' :=
  NatIso.ofComponents fun c => Cones.ext (α.app _)
#align category_theory.functor.functoriality_comp_postcompose CategoryTheory.Functor.functorialityCompPostcompose

/-- For `F : J ⥤ C`, given a cone `c : Cone F`, and a natural isomorphism `α : H ≅ H'` for functors
`H H' : C ⥤ D`, the postcomposition of the cone `H.mapCone` using the isomorphism `α` is
isomorphic to the cone `H'.mapCone`.
-/
@[simps!]
def postcomposeWhiskerLeftMapCone {H H' : C ⥤ D} (α : H ≅ H') (c : Cone F) :
    (Cones.postcompose (whiskerLeft F α.hom : _)).obj (mapCone H c) ≅ mapCone H' c :=
  (functorialityCompPostcompose α).app c
#align category_theory.functor.postcompose_whisker_left_map_cone CategoryTheory.Functor.postcomposeWhiskerLeftMapCone

/--
`mapCone` commutes with `postcompose`. In particular, for `F : J ⥤ C`, given a cone `c : Cone F`, a
natural transformation `α : F ⟶ G` and a functor `H : C ⥤ D`, we have two obvious ways of producing
a cone over `G ⋙ H`, and they are both isomorphic.
-/
@[simps!]
def mapConePostcompose {α : F ⟶ G} {c} :
    mapCone H ((Cones.postcompose α).obj c) ≅
      (Cones.postcompose (whiskerRight α H : _)).obj (mapCone H c) :=
  Cones.ext (Iso.refl _)
#align category_theory.functor.map_cone_postcompose CategoryTheory.Functor.mapConePostcompose

/-- `mapCone` commutes with `postcomposeEquivalence`
-/
@[simps!]
def mapConePostcomposeEquivalenceFunctor {α : F ≅ G} {c} :
    mapCone H ((Cones.postcomposeEquivalence α).functor.obj c) ≅
      (Cones.postcomposeEquivalence (isoWhiskerRight α H : _)).functor.obj (mapCone H c) :=
  Cones.ext (Iso.refl _)
#align category_theory.functor.map_cone_postcompose_equivalence_functor CategoryTheory.Functor.mapConePostcomposeEquivalenceFunctor

/-- `functoriality F _ ⋙ precompose (whiskerLeft F _)` simplifies to `functoriality F _`. -/
@[simps!]
def functorialityCompPrecompose {H H' : C ⥤ D} (α : H ≅ H') :
    Cocones.functoriality F H ⋙ Cocones.precompose (whiskerLeft F α.inv) ≅
      Cocones.functoriality F H' :=
  NatIso.ofComponents fun c => Cocones.ext (α.app _)
#align category_theory.functor.functoriality_comp_precompose CategoryTheory.Functor.functorialityCompPrecompose

/--
For `F : J ⥤ C`, given a cocone `c : Cocone F`, and a natural isomorphism `α : H ≅ H'` for functors
`H H' : C ⥤ D`, the precomposition of the cocone `H.mapCocone` using the isomorphism `α` is
isomorphic to the cocone `H'.mapCocone`.
-/
@[simps!]
def precomposeWhiskerLeftMapCocone {H H' : C ⥤ D} (α : H ≅ H') (c : Cocone F) :
    (Cocones.precompose (whiskerLeft F α.inv : _)).obj (mapCocone H c) ≅ mapCocone H' c :=
  (functorialityCompPrecompose α).app c
#align category_theory.functor.precompose_whisker_left_map_cocone CategoryTheory.Functor.precomposeWhiskerLeftMapCocone

/-- `map_cocone` commutes with `precompose`. In particular, for `F : J ⥤ C`, given a cocone
`c : Cocone F`, a natural transformation `α : F ⟶ G` and a functor `H : C ⥤ D`, we have two obvious
ways of producing a cocone over `G ⋙ H`, and they are both isomorphic.
-/
@[simps!]
def mapCoconePrecompose {α : F ⟶ G} {c} :
    mapCocone H ((Cocones.precompose α).obj c) ≅
      (Cocones.precompose (whiskerRight α H : _)).obj (mapCocone H c) :=
  Cocones.ext (Iso.refl _)
#align category_theory.functor.map_cocone_precompose CategoryTheory.Functor.mapCoconePrecompose

/-- `mapCocone` commutes with `precomposeEquivalence`
-/
@[simps!]
def mapCoconePrecomposeEquivalenceFunctor {α : F ≅ G} {c} :
    mapCocone H ((Cocones.precomposeEquivalence α).functor.obj c) ≅
      (Cocones.precomposeEquivalence (isoWhiskerRight α H : _)).functor.obj (mapCocone H c) :=
  Cocones.ext (Iso.refl _)
#align category_theory.functor.map_cocone_precompose_equivalence_functor CategoryTheory.Functor.mapCoconePrecomposeEquivalenceFunctor

/-- `mapCone` commutes with `whisker`
-/
@[simps!]
def mapConeWhisker {E : K ⥤ J} {c : Cone F} : mapCone H (c.whisker E) ≅ (mapCone H c).whisker E :=
  Cones.ext (Iso.refl _)
#align category_theory.functor.map_cone_whisker CategoryTheory.Functor.mapConeWhisker

/-- `mapCocone` commutes with `whisker`
-/
@[simps!]
def mapCoconeWhisker {E : K ⥤ J} {c : Cocone F} :
    mapCocone H (c.whisker E) ≅ (mapCocone H c).whisker E :=
  Cocones.ext (Iso.refl _)
#align category_theory.functor.map_cocone_whisker CategoryTheory.Functor.mapCoconeWhisker

end Functor

end CategoryTheory

namespace CategoryTheory.Limits

section

variable {F : J ⥤ C}

/-- Change a `Cocone F` into a `Cone F.op`. -/
@[simps]
def Cocone.op (c : Cocone F) : Cone F.op where
  pt := Opposite.op c.pt
  π := NatTrans.op c.ι
#align category_theory.limits.cocone.op CategoryTheory.Limits.Cocone.op

/-- Change a `Cone F` into a `Cocone F.op`. -/
@[simps]
def Cone.op (c : Cone F) : Cocone F.op where
  pt := Opposite.op c.pt
  ι := NatTrans.op c.π
#align category_theory.limits.cone.op CategoryTheory.Limits.Cone.op

/-- Change a `Cocone F.op` into a `Cone F`. -/
@[simps]
def Cocone.unop (c : Cocone F.op) : Cone F where
  pt := Opposite.unop c.pt
  π := NatTrans.removeOp c.ι
#align category_theory.limits.cocone.unop CategoryTheory.Limits.Cocone.unop

/-- Change a `Cone F.op` into a `Cocone F`. -/
@[simps]
def Cone.unop (c : Cone F.op) : Cocone F where
  pt := Opposite.unop c.pt
  ι := NatTrans.removeOp c.π
#align category_theory.limits.cone.unop CategoryTheory.Limits.Cone.unop

variable (F)

/-- The category of cocones on `F`
is equivalent to the opposite category of
the category of cones on the opposite of `F`.
-/
def coconeEquivalenceOpConeOp : Cocone F ≌ (Cone F.op)ᵒᵖ where
  functor :=
    { obj := fun c => op (Cocone.op c)
      map := fun {X} {Y} f =>
        Quiver.Hom.op
          { Hom := f.Hom.op
            w := fun j => by
              apply Quiver.Hom.unop_inj
              dsimp
              apply CoconeMorphism.w } }
  inverse :=
    { obj := fun c => Cone.unop (unop c)
      map := fun {X} {Y} f =>
        { Hom := f.unop.Hom.unop
          w := fun j => by
            apply Quiver.Hom.op_inj
            dsimp
            apply ConeMorphism.w } }
  unitIso := NatIso.ofComponents (fun c => Cocones.ext (Iso.refl _))
  counitIso :=
    NatIso.ofComponents
      (fun c => by
        induction c
        apply Iso.op
        exact Cones.ext (Iso.refl _))
      fun {X} {Y} f =>
      Quiver.Hom.unop_inj (ConeMorphism.ext _ _ (by simp))
  functor_unitIso_comp c := by
    apply Quiver.Hom.unop_inj
    apply ConeMorphism.ext
    dsimp
    apply comp_id
#align category_theory.limits.cocone_equivalence_op_cone_op CategoryTheory.Limits.coconeEquivalenceOpConeOp

attribute [simps] coconeEquivalenceOpConeOp

end

section

variable {F : J ⥤ Cᵒᵖ}

/-- Change a cocone on `F.leftOp : Jᵒᵖ ⥤ C` to a cocone on `F : J ⥤ Cᵒᵖ`. -/
@[simps!]
def coneOfCoconeLeftOp (c : Cocone F.leftOp) : Cone F where
  pt := op c.pt
  π := NatTrans.removeLeftOp c.ι
#align category_theory.limits.cone_of_cocone_left_op CategoryTheory.Limits.coneOfCoconeLeftOp

/-- Change a cone on `F : J ⥤ Cᵒᵖ` to a cocone on `F.leftOp : Jᵒᵖ ⥤ C`. -/
@[simps!]
def coconeLeftOpOfCone (c : Cone F) : Cocone F.leftOp where
  pt := unop c.pt
  ι := NatTrans.leftOp c.π
#align category_theory.limits.cocone_left_op_of_cone CategoryTheory.Limits.coconeLeftOpOfCone

/- When trying use `@[simps]` to generate the `ι_app` field of this definition, `@[simps]` tries to
  reduce the RHS using `expr.dsimp` and `expr.simp`, but for some reason the expression is not
  being simplified properly. -/
/-- Change a cone on `F.leftOp : Jᵒᵖ ⥤ C` to a cocone on `F : J ⥤ Cᵒᵖ`. -/
@[simps pt]
def coconeOfConeLeftOp (c : Cone F.leftOp) : Cocone F where
  pt := op c.pt
  ι := NatTrans.removeLeftOp c.π
#align category_theory.limits.cocone_of_cone_left_op CategoryTheory.Limits.coconeOfConeLeftOp

@[simp]
theorem coconeOfConeLeftOp_ι_app (c : Cone F.leftOp) (j) :
    (coconeOfConeLeftOp c).ι.app j = (c.π.app (op j)).op := by
  dsimp only [coconeOfConeLeftOp]
  simp
#align category_theory.limits.cocone_of_cone_left_op_ι_app CategoryTheory.Limits.coconeOfConeLeftOp_ι_app

/-- Change a cocone on `F : J ⥤ Cᵒᵖ` to a cone on `F.leftOp : Jᵒᵖ ⥤ C`. -/
@[simps!]
def coneLeftOpOfCocone (c : Cocone F) : Cone F.leftOp where
  pt := unop c.pt
  π := NatTrans.leftOp c.ι
#align category_theory.limits.cone_left_op_of_cocone CategoryTheory.Limits.coneLeftOpOfCocone

end

section

variable {F : Jᵒᵖ ⥤ C}

/-- Change a cocone on `F.rightOp : J ⥤ Cᵒᵖ` to a cone on `F : Jᵒᵖ ⥤ C`. -/
@[simps]
def coneOfCoconeRightOp (c : Cocone F.rightOp) : Cone F where
  pt := unop c.pt
  π := NatTrans.removeRightOp c.ι
#align category_theory.limits.cone_of_cocone_right_op CategoryTheory.Limits.coneOfCoconeRightOp

/-- Change a cone on `F : Jᵒᵖ ⥤ C` to a cocone on `F.rightOp : Jᵒᵖ ⥤ C`. -/
@[simps]
def coconeRightOpOfCone (c : Cone F) : Cocone F.rightOp where
  pt := op c.pt
  ι := NatTrans.rightOp c.π
#align category_theory.limits.cocone_right_op_of_cone CategoryTheory.Limits.coconeRightOpOfCone

/-- Change a cone on `F.rightOp : J ⥤ Cᵒᵖ` to a cocone on `F : Jᵒᵖ ⥤ C`. -/
@[simps]
def coconeOfConeRightOp (c : Cone F.rightOp) : Cocone F where
  pt := unop c.pt
  ι := NatTrans.removeRightOp c.π
#align category_theory.limits.cocone_of_cone_right_op CategoryTheory.Limits.coconeOfConeRightOp

/-- Change a cocone on `F : Jᵒᵖ ⥤ C` to a cone on `F.rightOp : J ⥤ Cᵒᵖ`. -/
@[simps]
def coneRightOpOfCocone (c : Cocone F) : Cone F.rightOp where
  pt := op c.pt
  π := NatTrans.rightOp c.ι
#align category_theory.limits.cone_right_op_of_cocone CategoryTheory.Limits.coneRightOpOfCocone

end

section

variable {F : Jᵒᵖ ⥤ Cᵒᵖ}

/-- Change a cocone on `F.unop : J ⥤ C` into a cone on `F : Jᵒᵖ ⥤ Cᵒᵖ`. -/
@[simps]
def coneOfCoconeUnop (c : Cocone F.unop) : Cone F where
  pt := op c.pt
  π := NatTrans.removeUnop c.ι
#align category_theory.limits.cone_of_cocone_unop CategoryTheory.Limits.coneOfCoconeUnop

/-- Change a cone on `F : Jᵒᵖ ⥤ Cᵒᵖ` into a cocone on `F.unop : J ⥤ C`. -/
@[simps]
def coconeUnopOfCone (c : Cone F) : Cocone F.unop where
  pt := unop c.pt
  ι := NatTrans.unop c.π
#align category_theory.limits.cocone_unop_of_cone CategoryTheory.Limits.coconeUnopOfCone

/-- Change a cone on `F.unop : J ⥤ C` into a cocone on `F : Jᵒᵖ ⥤ Cᵒᵖ`. -/
@[simps]
def coconeOfConeUnop (c : Cone F.unop) : Cocone F where
  pt := op c.pt
  ι := NatTrans.removeUnop c.π
#align category_theory.limits.cocone_of_cone_unop CategoryTheory.Limits.coconeOfConeUnop

/-- Change a cocone on `F : Jᵒᵖ ⥤ Cᵒᵖ` into a cone on `F.unop : J ⥤ C`. -/
@[simps]
def coneUnopOfCocone (c : Cocone F) : Cone F.unop where
  pt := unop c.pt
  π := NatTrans.unop c.ι
#align category_theory.limits.cone_unop_of_cocone CategoryTheory.Limits.coneUnopOfCocone

end

end CategoryTheory.Limits

namespace CategoryTheory.Functor

open CategoryTheory.Limits

variable {F : J ⥤ C}

section

variable (G : C ⥤ D)

/-- The opposite cocone of the image of a cone is the image of the opposite cocone. -/
-- Porting note: removed @[simps (config := { rhsMd := semireducible })] and replaced with
@[simps!]
def mapConeOp (t : Cone F) : (mapCone G t).op ≅ mapCocone G.op t.op :=
  Cocones.ext (Iso.refl _)
#align category_theory.functor.map_cone_op CategoryTheory.Functor.mapConeOp

/-- The opposite cone of the image of a cocone is the image of the opposite cone. -/
-- Porting note: removed @[simps (config := { rhsMd := semireducible })] and replaced with
@[simps!]
def mapCoconeOp {t : Cocone F} : (mapCocone G t).op ≅ mapCone G.op t.op :=
  Cones.ext (Iso.refl _)
#align category_theory.functor.map_cocone_op CategoryTheory.Functor.mapCoconeOp

end

end CategoryTheory.Functor
```
