# Complete source: GRWTSK.Algebra.UniversalAlgebra.Commute.Variant66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7d7d1b7bd5a0b3128a7f44c2547d2c544103012` · SHA-256 `66e5bab21e57a0df33fc954d4e856eb8038259920469bb6f8d0bf121e2fc0ec2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Kevin Buzzard, Scott Morrison, Johan Commelin, Chris Hughes,
  Johannes Hölzl, Yury Kudryashov
-/
import Mathlib.Algebra.Hom.Group
import Mathlib.Algebra.Group.Commute

#align_import algebra.hom.commute from "leanprover-community/mathlib"@"6eb334bd8f3433d5b08ba156b8ec3e6af47e1904"

/-!
# Multiplicative homomorphisms respect semiconjugation and commutation.
-/


section Commute

variable {F M N : Type*} [Mul M] [Mul N] {a x y : M}

@[to_additive (attr := simp)]
protected theorem SemiconjBy.map [MulHomClass F M N] (h : SemiconjBy a x y) (f : F) :
    SemiconjBy (f a) (f x) (f y) := by simpa only [SemiconjBy, map_mul] using congr_arg f h
#align semiconj_by.map SemiconjBy.map
#align add_semiconj_by.map AddSemiconjBy.map

@[to_additive (attr := simp)]
protected theorem Commute.map [MulHomClass F M N] (h : Commute x y) (f : F) : Commute (f x) (f y) :=
  SemiconjBy.map h f
#align commute.map Commute.map
#align add_commute.map AddCommute.map

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
