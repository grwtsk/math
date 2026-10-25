# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Pairwise.Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebf8a8f6c48539338568c8cdfd8843fceed994b8` · SHA-256 `0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Joseph Myers. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joseph Myers
-/
import Mathlib.Data.FunLike.Equiv
import Mathlib.Logic.Pairwise

/-!
# Interaction of equivalences with `Pairwise`
-/

open scoped Function -- required for scoped `on` notation

lemma EmbeddingLike.pairwise_comp {X : Type*} {Y : Type*} {F} [FunLike F Y X] [EmbeddingLike F Y X]
    (f : F) {p : X → X → Prop} (h : Pairwise p) : Pairwise (p on f) :=
  h.comp_of_injective <| EmbeddingLike.injective f

lemma EquivLike.pairwise_comp_iff {X : Type*} {Y : Type*} {F} [EquivLike F Y X]
    (f : F) (p : X → X → Prop) : Pairwise (p on f) ↔ Pairwise p :=
  (EquivLike.bijective f).pairwise_comp_iff
```
