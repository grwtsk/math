# Complete source: GRWTSK.Algebra.Alg.Variant86a5acdf0a0230cc7d491cd46bb64cabc040a264c22cd92dd578124691ecba31

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c9bea14c7de2a9c66ffcd3238111cdedb44a87f` · SHA-256 `86a5acdf0a0230cc7d491cd46bb64cabc040a264c22cd92dd578124691ecba31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

universe v u

open CategoryTheory AlgCat

set_option maxHeartbeats 10000
set_option synthInstance.maxHeartbeats 2000

variable (R : Type u) [CommRing R]

/- We test if all the coercions and `map_add` lemmas trigger correctly. -/

example (X : Type u) [Ring X] [Algebra R X] : ⇑(𝟙 (of R X)) = id := by simp

example {X Y : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] (f : X →ₐ[R] Y) :
    ⇑(ofHom f) = ⇑f := by simp

example {X Y : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] (f : X →ₐ[R] Y)
    (x : X) : (ofHom f) x = f x := by simp

example {X Y Z : AlgCat R} (f : X ⟶ Y) (g : Y ⟶ Z) : ⇑(f ≫ g) = ⇑g ∘ ⇑f := by simp

example {X Y Z : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] [Ring Z]
    [Algebra R Z] (f : X →ₐ[R] Y) (g : Y →ₐ[R] Z) :
    ⇑(ofHom f ≫ ofHom g) = g ∘ f := by simp

example {X Y : Type v} [Ring X] [Algebra R X] [Ring Y] [Algebra R Y] {Z : AlgCat R}
    (f : X →ₐ[R] Y) (g : of R Y ⟶ Z) :
    ⇑(ofHom f ≫ g) = g ∘ f := by simp

example {X Y : AlgCat R} {Z : Type v} [Ring Z] [Algebra R Z] (f : X ⟶ Y) (g : Y ⟶ of R Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {Y Z : AlgCat R} {X : Type v} [Ring X] [Algebra R X] (f : of R X ⟶ Y) (g : Y ⟶ Z) :
    ⇑(f ≫ g) = g ∘ f := by simp

example {X Y Z : AlgCat R} (f : X ⟶ Y) (g : Y ⟶ Z) (x : X) : (f ≫ g) x = g (f x) := by simp

example {X Y : AlgCat R} (e : X ≅ Y) (x : X) : e.inv (e.hom x) = x := by simp

example {X Y : AlgCat R} (e : X ≅ Y) (y : Y) : e.hom (e.inv y) = y := by simp

example (X : AlgCat R) : ⇑(𝟙 X) = id := by simp

example {M N : AlgCat.{v} R} (f : M ⟶ N) (x y : M) : f (x + y) = f x + f y := by
  simp

example {M N : AlgCat.{v} R} (f : M ⟶ N) : f 0 = 0 := by
  simp

example {M N : AlgCat.{v} R} (f : M ⟶ N) (r : R) (m : M) : f (r • m) = r • f m := by
  simp
```
