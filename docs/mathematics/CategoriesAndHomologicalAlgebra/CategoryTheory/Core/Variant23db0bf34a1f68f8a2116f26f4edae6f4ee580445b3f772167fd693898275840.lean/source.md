# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Core.Variant23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c106b2aca4630f77bb8436d408bf2564eb3da96e` · SHA-256 `23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Think.Logic

/-! Core lightweight category and bijection predicates for Think logic receipts. -/

structure Category where
  Obj : Type
  Hom : Obj → Obj → Type
  id : (A : Obj) → Hom A A
  comp : {A B C : Obj} → Hom A B → Hom B C → Hom A C
  id_left : ∀ {A B : Obj} (f : Hom A B), comp (id A) f = f
  id_right : ∀ {A B : Obj} (f : Hom A B), comp f (id B) = f
  assoc :
    ∀ {A B C D : Obj}
      (f : Hom A B) (g : Hom B C) (h : Hom C D),
      comp (comp f g) h = comp f (comp g h)

structure Functor (C D : Category) where
  obj : C.Obj → D.Obj
  map : {A B : C.Obj} → C.Hom A B → D.Hom (obj A) (obj B)
  map_id : ∀ A : C.Obj, map (C.id A) = D.id (obj A)
  map_comp :
    ∀ {A B C' : C.Obj} (f : C.Hom A B) (g : C.Hom B C'),
      map (C.comp f g) = D.comp (map f) (map g)

def Injective {A B : Type} (f : A → B) : Prop :=
  ∀ {x y : A}, f x = f y → x = y

def Surjective {A B : Type} (f : A → B) : Prop :=
  ∀ y : B, ∃ x : A, f x = y

def Bijective {A B : Type} (f : A → B) : Prop :=
  Injective f ∧ Surjective f

end Think.Logic
```
