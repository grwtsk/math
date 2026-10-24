# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantcf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6bb9a40b648211d5771b9fcd7a52fc6fef9660b` · SHA-256 `cf7a10a4e51c0dda7873822cd00c7a65ad2a9ca0ae1d1f7f03e0dc0dce5328c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Control.Functor.Multivariate
import Mathlib.Data.QPF.Multivariate.Basic

/-!
# Constant functors are QPFs

Constant functors map every type vectors to the same target type. This
is a useful device for constructing data types from more basic types
that are not actually functorial. For instance `Const n Nat` makes
`Nat` into a functor that can be used in a functor-based data type
specification.
-/


universe u

namespace MvQPF

open MvFunctor

variable (n : ℕ)

/-- Constant multivariate functor -/
@[nolint unusedArguments]
def Const (A : Type*) (_v : TypeVec.{u} n) : Type _ := A

instance Const.inhabited {A α} [Inhabited A] : Inhabited (Const n A α) := ⟨(default : A)⟩

namespace Const

open MvFunctor MvPFunctor

variable {n} {A : Type u} {α β : TypeVec.{u} n} (f : α ⟹ β)

/-- Constructor for constant functor -/
protected def mk (x : A) : Const n A α := x

/-- Destructor for constant functor -/
protected def get (x : Const n A α) : A := x

@[simp]
protected theorem mk_get (x : Const n A α) : Const.mk (Const.get x) = x := rfl

@[simp]
protected theorem get_mk (x : A) : Const.get (Const.mk x : Const n A α) = x := rfl

/-- `map` for constant functor -/
protected def map : Const n A α → Const n A β := fun x => x

instance MvFunctor : MvFunctor (Const n A) where map _f := Const.map

theorem map_mk (x : A) : f <$$> Const.mk x = Const.mk x := rfl

theorem get_map (x : (Const n A) α) : Const.get (f <$$> x) = Const.get x := rfl

instance mvqpf : @MvQPF _ (Const n A) where
  P := MvPFunctor.const n A
  abs x := MvPFunctor.const.get x
  repr x := MvPFunctor.const.mk n x
  abs_repr := fun _ => const.get_mk _
  abs_map := fun _ => const.get_map _

end Const

end MvQPF
```
