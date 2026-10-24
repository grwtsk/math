# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Defs.Variantf314b2ab05b2cc36a6b22bb31a92f6f6b0cb8b084cab103a76a4b7655d9df54c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f25b1418e9ce8aa68fcf6f721796726abcc2f289` · SHA-256 `f314b2ab05b2cc36a6b22bb31a92f6f6b0cb8b084cab103a76a4b7655d9df54c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/

import Mathlib.RingTheory.TwoSidedIdeal.Lattice
import Mathlib.Order.Atoms

/-! # Simple rings

A ring `R` is **simple** if it has only two two-sided ideals, namely `⊥` and `⊤`.

## Main definitions

- `IsSimpleRing`: a predicate expressing that a ring is simple.

-/


/--
A ring `R` is **simple** if it has only two two-sided ideals, namely `⊥` and `⊤`.
-/
@[mk_iff] class IsSimpleRing (R : Type*) [NonUnitalNonAssocRing R] : Prop where
  simple : IsSimpleOrder (TwoSidedIdeal R)

attribute [instance] IsSimpleRing.simple
```
