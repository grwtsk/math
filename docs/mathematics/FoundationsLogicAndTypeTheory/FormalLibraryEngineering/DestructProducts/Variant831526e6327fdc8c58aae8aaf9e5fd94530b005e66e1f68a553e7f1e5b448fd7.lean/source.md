# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DestructProducts.Variant831526e6327fdc8c58aae8aaf9e5fd94530b005e66e1f68a553e7f1e5b448fd7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94005e6af3cbc2ad106dab6b8f0d903c98a5db1a` · SHA-256 `831526e6327fdc8c58aae8aaf9e5fd94530b005e66e1f68a553e7f1e5b448fd7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- This file tests the builtin rules that destruct hypotheses with product-like
-- types.

import Aesop

set_option aesop.check.all true

@[aesop safe constructors]
inductive Ex (α : Sort u) (β : α → Prop) : Prop
  | intro (fst : α) (snd : β fst)

@[aesop safe constructors]
structure Sig (α : Sort u) (β : α → Sort v) : Sort _ where
  fst : α
  snd : β fst

example (h : α ∧ β) : Sig α (λ _ => β) := by
  aesop

example (h : α × β) : Sig α (λ _ => β) := by
  aesop

example (h : PProd α β) : Sig α (λ _ => β) := by
  aesop

example (h : MProd α β) : Sig α (λ _ => β) := by
  aesop

example {p : α → Prop} (h : ∃ a, p a) : Ex α p := by
  aesop

example {p : α → Prop} (h : { a // p a }) : Sig α p := by
  aesop

example {p : α → Type} (h : Σ a, p a) : Sig α p := by
  aesop

example {p : α → Type} (h : Σ' a, p a) : Sig α p := by
  aesop

-- Test case for a bug reported by Jakob von Raumer.
example (x y : α × α) (h: p ∧ (x = y)) : x = y := by
  aesop (config := { enableSimp := false })
```
