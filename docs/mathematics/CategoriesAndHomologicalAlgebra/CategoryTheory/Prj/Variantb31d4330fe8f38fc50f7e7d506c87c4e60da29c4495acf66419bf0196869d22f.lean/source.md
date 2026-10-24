# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variantb31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b11eea1253f1d7039e6707174e42abd402ee951` · SHA-256 `b31d4330fe8f38fc50f7e7d506c87c4e60da29c4495acf66419bf0196869d22f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Functor.Multivariate
import Mathlib.Data.QPF.Multivariate.Basic

/-!
Projection functors are QPFs. The `n`-ary projection functors on `i` is an `n`-ary
functor `F` such that `F (α₀..αᵢ₋₁, αᵢ, αᵢ₊₁..αₙ₋₁) = αᵢ`
-/


universe u v

namespace MvQPF

open MvFunctor

variable {n : ℕ} (i : Fin2 n)

/-- The projection `i` functor -/
def Prj (v : TypeVec.{u} n) : Type u := v i

instance Prj.inhabited {v : TypeVec.{u} n} [Inhabited (v i)] : Inhabited (Prj i v) :=
  ⟨(default : v i)⟩

/-- `map` on functor `Prj i` -/
def Prj.map ⦃α β : TypeVec n⦄ (f : α ⟹ β) : Prj i α → Prj i β := f _

instance Prj.mvfunctor : MvFunctor (Prj i) where map := @Prj.map _ i

/-- Polynomial representation of the projection functor -/
def Prj.P : MvPFunctor.{u} n where
  A := PUnit
  B _ j := ULift <| PLift <| i = j

/-- Abstraction function of the `QPF` instance -/
def Prj.abs ⦃α : TypeVec n⦄ : Prj.P i α → Prj i α
  | ⟨_x, f⟩ => f _ ⟨⟨rfl⟩⟩

/-- Representation function of the `QPF` instance -/
def Prj.repr ⦃α : TypeVec n⦄ : Prj i α → Prj.P i α := fun x : α i =>
  ⟨⟨⟩, fun j ⟨⟨h⟩⟩ => (h.rec x : α j)⟩

instance Prj.mvqpf : MvQPF (Prj i) where
  P := Prj.P i
  abs := @Prj.abs _ i
  repr := @Prj.repr _ i
  abs_repr := by intros; rfl
  abs_map := by intros α β f P; cases P; rfl

end MvQPF
```
