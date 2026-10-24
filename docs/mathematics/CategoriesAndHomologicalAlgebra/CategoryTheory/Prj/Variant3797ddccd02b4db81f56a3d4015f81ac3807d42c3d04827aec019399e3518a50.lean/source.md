# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prj.Variant3797ddccd02b4db81f56a3d4015f81ac3807d42c3d04827aec019399e3518a50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a35bacb47d8325b868dc49ad4e2c7fd89e3bfcd2` · SHA-256 `3797ddccd02b4db81f56a3d4015f81ac3807d42c3d04827aec019399e3518a50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
module

public import Mathlib.Control.Functor.Multivariate
public import Mathlib.Data.QPF.Multivariate.Basic

/-!
# Projection functors as QPFs

Projection functors are QPFs. The `n`-ary projection functors on `i` is an `n`-ary
functor `F` such that `F (α₀..αᵢ₋₁, αᵢ, αᵢ₊₁..αₙ₋₁) = αᵢ`
-/

@[expose] public section


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
  abs_map := by intro α β f P; cases P; rfl

end MvQPF
```
