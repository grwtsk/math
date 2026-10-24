# Complete source: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variantd9d3f565bbcd021e31609119a664c42d0a0729bf61121402252b4773ab57f913

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e960b4f54ebe6863aa30715e20b8ec94acca59c9` · SHA-256 `d9d3f565bbcd021e31609119a664c42d0a0729bf61121402252b4773ab57f913`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Order.Monoid.Unbundled.WithTop

/-!
# Lemma about the coercion `ℕ → WithBot ℕ`.

An orphaned lemma about casting from `ℕ` to `WithBot ℕ`,
exiled here during the port to minimize imports of `Algebra.Order.Ring.Rat`.
-/

public section

instance : WellFoundedRelation (WithTop ℕ) := WellFoundedLT.toWellFoundedRelation

theorem Nat.cast_withTop (n : ℕ) : Nat.cast n = WithTop.some n :=
  rfl

theorem Nat.cast_withBot (n : ℕ) : Nat.cast n = WithBot.some n :=
  rfl
```
