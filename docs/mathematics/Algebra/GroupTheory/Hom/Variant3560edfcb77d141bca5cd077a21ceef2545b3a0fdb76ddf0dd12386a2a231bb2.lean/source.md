# Complete source: GRWTSK.Algebra.GroupTheory.Hom.Variant3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fb97a5525dc39bb6474d40d4ee45730d206847e` · SHA-256 `3560edfcb77d141bca5cd077a21ceef2545b3a0fdb76ddf0dd12386a2a231bb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Kevin Buzzard, Kim Morrison, Johan Commelin, Chris Hughes,
  Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Commute.Defs
import Mathlib.Algebra.Group.Hom.Defs

/-!
# Multiplicative homomorphisms respect semiconjugation and commutation.
-/

assert_not_exists MonoidWithZero DenselyOrdered

section Commute

variable {F M N : Type*} [Mul M] [Mul N] {a x y : M} [FunLike F M N]

@[to_additive (attr := simp)]
protected theorem SemiconjBy.map [MulHomClass F M N] (h : SemiconjBy a x y) (f : F) :
    SemiconjBy (f a) (f x) (f y) := by simpa only [SemiconjBy, map_mul] using congr_arg f h

@[to_additive (attr := simp)]
protected theorem Commute.map [MulHomClass F M N] (h : Commute x y) (f : F) : Commute (f x) (f y) :=
  SemiconjBy.map h f

@[to_additive (attr := simp)]
protected theorem SemiconjBy.of_map [MulHomClass F M N] (f : F) (hf : Function.Injective f)
    (h : SemiconjBy (f a) (f x) (f y)) : SemiconjBy a x y :=
  hf (by simpa only [SemiconjBy, map_mul] using h)

@[to_additive (attr := simp)]
theorem Commute.of_map [MulHomClass F M N] {f : F} (hf : Function.Injective f)
    (h : Commute (f x) (f y)) : Commute x y :=
  hf (by simpa only [map_mul] using h.eq)

end Commute
```
