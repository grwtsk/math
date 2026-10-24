# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Shrink.Variantb3f28002c943643c83377660dfe926e6d914e725fbf6cdf0af7f4812ee050731

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6a0d649ec630b1ac7ee3993edfc3d20757187db` · SHA-256 `b3f28002c943643c83377660dfe926e6d914e725fbf6cdf0af7f4812ee050731`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Basic.Countable.Small
public import Mathlib.Data.Fintype.EquivFin

/-!
# Fintype instance for `Shrink`
-/

public section

universe u v
variable {α : Type u} [Fintype α]

noncomputable instance Shrink.instFintype : Fintype (Shrink.{v} α) := .ofEquiv _ (equivShrink _)

instance Shrink.instFinite {α : Type u} [Finite α] : Finite (Shrink.{v} α) :=
  .of_equiv _ (equivShrink _)

@[simp] lemma Fintype.card_shrink [Fintype (Shrink.{v} α)] : card (Shrink.{v} α) = card α :=
  card_congr (equivShrink _).symm
```
