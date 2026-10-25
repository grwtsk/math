# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.207.Variantca70d5189e9745bc40328d1efe3d502794f9b7ca15149f2d792fc2c364e78ce7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc013f6d39a87c6cee8fbf4d12f3f281778d12b3` · SHA-256 `ca70d5189e9745bc40328d1efe3d502794f9b7ca15149f2d792fc2c364e78ce7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- Thanks to Jireh Loreaux for reporting this bug.

import Aesop

def Set α := α → Prop

instance : Membership α (Set α) :=
  ⟨λ s a => s a⟩

instance : Singleton α (Set α) :=
  ⟨λ a b => b = a⟩

axiom EqOn : (f₁ f₂ : α → α) → Set α → Prop

@[aesop safe forward]
axiom EqOn.eq_of_mem (h : EqOn f₁ f₂ s) (ha : a ∈ s) : f₁ a = f₂ a

@[simp]
axiom eqOn_singleton : EqOn f₁ f₂ {x} ↔ f₁ x = f₂ x

example (s : Set Nat) (x : Nat) (hx : x ∈ s) (f : Nat → Nat)
    (h_eqOn_x : EqOn f (λ _ => 1) {x}) (this : EqOn f (λ _ => 0) s) :
    False := by
  aesop

example (s : Set Nat) (x : Nat) (hx : x ∈ s) (f : Nat → Nat)
    (this : EqOn f (λ _ => 0) s) (h_eqOn_x : EqOn f (λ _ => 1) {x}) :
    False := by
  aesop
```
