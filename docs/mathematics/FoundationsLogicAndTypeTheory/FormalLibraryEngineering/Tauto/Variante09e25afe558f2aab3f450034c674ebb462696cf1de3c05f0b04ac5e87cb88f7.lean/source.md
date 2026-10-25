# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tauto.Variante09e25afe558f2aab3f450034c674ebb462696cf1de3c05f0b04ac5e87cb88f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b32cb5738b28c4835859eedfc87deebfd86de4e` · SHA-256 `e09e25afe558f2aab3f450034c674ebb462696cf1de3c05f0b04ac5e87cb88f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Renshaw, Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

-- This is an example which is currently challenging for Lean 4 `tauto`.
example {α : Type} [LE α] (a b c : α) (x₀ x₁ x₂ : Prop)
 (this1 : x₀ → x₁ → a ≤ c)
 (this2 : x₁ → x₂ → b ≤ a)
 (this3 : x₂ → x₀ → c ≤ b) :
    ((x₀ ∧ ¬b ≤ a) ∧ x₁ ∧ ¬c ≤ b ∨
         (x₁ ∧ ¬c ≤ b) ∧ x₂ ∧ ¬a ≤ c ∨ (x₂ ∧ ¬a ≤ c) ∧ x₀ ∧ ¬b ≤ a ↔
       (x₀ ∧ x₁ ∨ x₁ ∧ x₂ ∨ x₂ ∧ x₀) ∧
         ¬(c ≤ b ∧ b ≤ a ∨ b ≤ a ∧ a ≤ c ∨ a ≤ c ∧ c ≤ b)) :=
by aesop
```
