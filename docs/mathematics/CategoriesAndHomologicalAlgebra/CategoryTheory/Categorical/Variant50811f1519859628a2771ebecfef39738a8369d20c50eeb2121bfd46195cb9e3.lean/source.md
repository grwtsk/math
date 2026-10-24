# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Categorical.Variant50811f1519859628a2771ebecfef39738a8369d20c50eeb2121bfd46195cb9e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff5714b0d5de453d0bd8952a7a757b9a6aa62902` · SHA-256 `50811f1519859628a2771ebecfef39738a8369d20c50eeb2121bfd46195cb9e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
A minimal category/functor layer implemented with Lean core only.

The project intentionally avoids a Mathlib dependency.  These structures are
sufficient to type the realization categories and to state comparison
equivalences as full, faithful, and essentially surjective functors.
-/

universe uObj uHom vObj vHom

namespace FCRS

/-- A small category-like structure with explicit identity and composition laws. -/
structure CategoryLike where
  Obj : Type uObj
  Hom : Obj → Obj → Type uHom
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  id_comp :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp (id X) f = f
  comp_id :
    ∀ {X Y : Obj} (f : Hom X Y),
      comp f (id Y) = f
  assoc :
    ∀ {W X Y Z : Obj}
      (f : Hom W X) (g : Hom X Y) (h : Hom Y Z),
      comp (comp f g) h = comp f (comp g h)

/-- A covariant functor between `CategoryLike` structures. -/
structure FunctorLike
    (C : CategoryLike.{uObj, uHom})
    (D : CategoryLike.{vObj, vHom}) where
  obj : C.Obj → D.Obj
  map : {X Y : C.Obj} → C.Hom X Y → D.Hom (obj X) (obj Y)
  map_id :
    ∀ X : C.Obj,
      map (C.id X) = D.id (obj X)
  map_comp :
    ∀ {X Y Z : C.Obj}
      (f : C.Hom X Y) (g : C.Hom Y Z),
      map (C.comp f g) = D.comp (map f) (map g)

/-- An isomorphism internal to a `CategoryLike`. -/
structure IsoLike
    (C : CategoryLike.{uObj, uHom})
    (X Y : C.Obj) where
  hom : C.Hom X Y
  inv : C.Hom Y X
  hom_inv : C.comp hom inv = C.id X
  inv_hom : C.comp inv hom = C.id Y

/-- Surjectivity of a functor on every hom-set. -/
def Full
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∀ {X Y : C.Obj} (g : D.Hom (F.obj X) (F.obj Y)),
    ∃ f : C.Hom X Y, F.map f = g

/-- Injectivity of a functor on every hom-set. -/
def Faithful
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∀ {X Y : C.Obj} (f g : C.Hom X Y),
    F.map f = F.map g → f = g

/-- Every target object is isomorphic to an object in the image. -/
def EssentiallySurjective
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop :=
  ∀ Y : D.Obj,
    ∃ X : C.Obj, Nonempty (IsoLike D (F.obj X) Y)

/--
The exact comparison evidence used by this project.

This avoids identifying equivalent realization objects: the functor remains a
typed map between distinct categories, with explicit categorical properties.
-/
structure EquivalenceWitness
    {C : CategoryLike.{uObj, uHom}}
    {D : CategoryLike.{vObj, vHom}}
    (F : FunctorLike C D) : Prop where
  full : Full F
  faithful : Faithful F
  essentiallySurjective : EssentiallySurjective F

/-- All realization categories, retained as distinct sorts. -/
structure RealizationCategories where
  Alg : CategoryLike.{uObj, uHom}
  Berk : CategoryLike.{uObj, uHom}
  Adic : CategoryLike.{uObj, uHom}
  Rig : CategoryLike.{uObj, uHom}
  FormRaw : CategoryLike.{uObj, uHom}
  FormLoc : CategoryLike.{uObj, uHom}
  Hen : CategoryLike.{uObj, uHom}
  PrismTA : CategoryLike.{uObj, uHom}
  Global : CategoryLike.{uObj, uHom}
  Arch : CategoryLike.{uObj, uHom}

/-- Typed realization functors. -/
structure RealizationFunctors
    (C : RealizationCategories.{uObj, uHom}) where
  An : FunctorLike C.Alg C.Berk
  RB : FunctorLike C.Rig C.Berk
  BA : FunctorLike C.Berk C.Adic
  Q : FunctorLike C.FormRaw C.FormLoc
  RigEta : FunctorLike C.FormLoc C.Rig
  HenChart : FunctorLike C.FormRaw C.Hen
  FormDelta : FunctorLike C.PrismTA C.FormRaw
  GlobalFinite : FunctorLike C.Global C.Alg
  GlobalInfinite : FunctorLike C.Global C.Arch

/-- The typed categorical carrier of the formalization. -/
structure FunctorialCarrier where
  categories : RealizationCategories.{uObj, uHom}
  functors : RealizationFunctors categories

end FCRS
```
