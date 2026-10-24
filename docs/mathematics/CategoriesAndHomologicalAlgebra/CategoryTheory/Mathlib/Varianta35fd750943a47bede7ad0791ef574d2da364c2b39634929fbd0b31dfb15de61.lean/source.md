# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Mathlib.Varianta35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3aa5395a92b97ee8420d79fa414bf1d0d9cd522d` · SHA-256 `a35fd750943a47bede7ad0791ef574d2da364c2b39634929fbd0b31dfb15de61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.CategoryTheory.Monad.Kleisli
import Think.Logic.Mathlib.FiveLayer

open CategoryTheory

universe u v

namespace Think.Wisdom.Monad

structure WisdomMonadBoundary
    (Site : Type u) [Category.{v} Site]
    (J : GrothendieckTopology Site) where
  targetMonad : CategoryTheory.Monad (Sheaf J (Type u))
  unitReceiptHash : String
  multiplicationReceiptHash : String
  kleisliReceiptHash : String
  lawReceiptHash : String
  claimBearing : Bool

def WisdomMonadBoundary.accepted
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    (W : WisdomMonadBoundary Site J) : Prop :=
  W.claimBearing = false

def WisdomMonadBoundary.has_target_monad
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    (W : WisdomMonadBoundary Site J) :
    CategoryTheory.Monad (Sheaf J (Type u)) :=
by
  exact W.targetMonad

abbrev KleisliChoice
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    (W : WisdomMonadBoundary Site J)
    (A B : Sheaf J (Type u)) : Type _ :=
  (Kleisli.mk W.targetMonad A) ⟶ (Kleisli.mk W.targetMonad B)

def KleisliChoice.underlying
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    {W : WisdomMonadBoundary Site J}
    {A B : Sheaf J (Type u)}
    (choice : KleisliChoice W A B) :
    A ⟶ W.targetMonad.obj B :=
  choice.of

def KleisliChoice.compose
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    {W : WisdomMonadBoundary Site J}
    {A B C : Sheaf J (Type u)}
    (f : KleisliChoice W A B)
    (g : KleisliChoice W B C) :
    KleisliChoice W A C :=
  f ≫ g

/-- Sequential Wisdom choices associate in the Mathlib Kleisli category. -/
theorem KleisliChoice.assoc
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    {W : WisdomMonadBoundary Site J}
    {A B C D : Sheaf J (Type u)}
    (f : KleisliChoice W A B)
    (g : KleisliChoice W B C)
    (h : KleisliChoice W C D) :
    (f ≫ g) ≫ h = f ≫ (g ≫ h) :=
by
  exact Category.assoc f g h

theorem KleisliChoice.compose_assoc
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    {W : WisdomMonadBoundary Site J}
    {A B C D : Sheaf J (Type u)}
    (f : KleisliChoice W A B)
    (g : KleisliChoice W B C)
    (h : KleisliChoice W C D) :
    KleisliChoice.compose (KleisliChoice.compose f g) h =
    KleisliChoice.compose f (KleisliChoice.compose g h) :=
by
  exact Category.assoc f g h

abbrev WisdomKleisli
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    (W : WisdomMonadBoundary Site J) :=
  Kleisli W.targetMonad

theorem WisdomMonadBoundary.not_claim_bearing_if_accepted
    {Site : Type u} [Category.{v} Site]
    {J : GrothendieckTopology Site}
    (W : WisdomMonadBoundary Site J) :
    W.accepted → W.claimBearing = false :=
by
  intro h
  exact h

end Think.Wisdom.Monad
```
