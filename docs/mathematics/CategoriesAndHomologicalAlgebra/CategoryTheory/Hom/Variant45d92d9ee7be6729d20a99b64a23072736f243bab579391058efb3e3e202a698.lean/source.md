# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Hom.Variant45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc51b3c8abcfd7a6529a4832315be60f0bb813a3` · SHA-256 `45d92d9ee7be6729d20a99b64a23072736f243bab579391058efb3e3e202a698`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Logic.Core

namespace Think.Logic

structure HomEquivalence {C D : Category} (F : Functor C D) where
  reverse : {A B : C.Obj} → D.Hom (F.obj A) (F.obj B) → C.Hom A B
  forwardReverse :
    ∀ {A B : C.Obj} (g : D.Hom (F.obj A) (F.obj B)),
      F.map (reverse g) = g
  reverseForward :
    ∀ {A B : C.Obj} (f : C.Hom A B),
      reverse (F.map f) = f

theorem HomEquivalence.injective_on_hom
  {C D : Category} {F : Functor C D}
  (H : HomEquivalence F)
  {A B : C.Obj}
  (f g : C.Hom A B) :
  F.map f = F.map g → f = g :=
by
  intro h
  calc
    f = H.reverse (F.map f) := (H.reverseForward f).symm
    _ = H.reverse (F.map g) := by rw [h]
    _ = g := H.reverseForward g

theorem HomEquivalence.surjective_on_hom
  {C D : Category} {F : Functor C D}
  (H : HomEquivalence F)
  {A B : C.Obj}
  (g : D.Hom (F.obj A) (F.obj B)) :
  ∃ f : C.Hom A B, F.map f = g :=
by
  exact ⟨H.reverse g, H.forwardReverse g⟩

end Think.Logic
```
