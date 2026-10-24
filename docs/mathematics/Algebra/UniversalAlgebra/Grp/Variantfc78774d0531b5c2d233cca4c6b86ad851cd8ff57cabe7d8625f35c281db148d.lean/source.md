# Complete source: GRWTSK.Algebra.UniversalAlgebra.Grp.Variantfc78774d0531b5c2d233cca4c6b86ad851cd8ff57cabe7d8625f35c281db148d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccdb7fef7905b5af3ea51c5925695982ab571145` · SHA-256 `fc78774d0531b5c2d233cca4c6b86ad851cd8ff57cabe7d8625f35c281db148d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Category.Grp.Basic

universe v u

open CategoryTheory Grp

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type u) [Group X] : ⇑(𝟙 (of X)) = id := by simp

example {X Y : Type u} [Group X] [Group Y] (f : X →* Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type u} [Group X] [Group Y] (f : X →* Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : Grp} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type u} [Group X] [Group Y] [Group Z]
    (f : X →* Y) (g : Y →* Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type u} [Group X] [Group Y] {Z : Grp}
    (f : X →* Y) (g : of Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : Grp} {Z : Type u} [Group Z] (f : X ⟶ Y) (g : Y ⟶ of Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : Grp} {X : Type u} [Group X] (f : of X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : Grp} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : Grp} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : Grp} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : Grp) : ⇑(𝟙 X) = id := by simp

example {X : Type*} [Group X] : ⇑(MonoidHom.id X) = id := by simp

example {M N : Grp} (f : M ⟶ N) (x y : M) : f (x * y) = f x * f y := by
  simp

example {M N : Grp} (f : M ⟶ N) : f 1 = 1 := by
  simp
```
