# Complete source: GRWTSK.Algebra.GroupTheory.Hom.Variant1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `237803a2dfbecc3ae2bd0156ac501cf9a2a04e3e` · SHA-256 `1d551d51f60e8a34774103bb686ad10ed44c5a109b48f8f5f5762b44d42c402f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Amelia Livingston, Yury Kudryashov,
Neil Strickland, Aaron Anderson
-/
import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Algebra.Group.Hom.Defs

/-!
# Mapping divisibility across multiplication-preserving homomorphisms

## Main definitions

* `map_dvd`

## Tags

divisibility, divides
-/

attribute [local simp] mul_assoc mul_comm mul_left_comm

variable {M N : Type*}

theorem map_dvd [Semigroup M] [Semigroup N] {F : Type*} [FunLike F M N] [MulHomClass F M N]
    (f : F) {a b} : a ∣ b → f a ∣ f b
  | ⟨c, h⟩ => ⟨f c, h.symm ▸ map_mul f a c⟩

theorem MulHom.map_dvd [Semigroup M] [Semigroup N] (f : M →ₙ* N) {a b} : a ∣ b → f a ∣ f b :=
  _root_.map_dvd f

theorem MonoidHom.map_dvd [Monoid M] [Monoid N] (f : M →* N) {a b} : a ∣ b → f a ∣ f b :=
  _root_.map_dvd f
```
