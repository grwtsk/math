# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SwapVar.Variant3b86dd6a7b1bd39ab0df07b6f9904b25fd4363f179e3cd80ed4ec2e9c2b1e474

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1222c6fac0d6f7ed0f7cca310cc83e67dc35c3d` · SHA-256 `3b86dd6a7b1bd39ab0df07b6f9904b25fd4363f179e3cd80ed4ec2e9c2b1e474`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Arthur Paulino. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino
-/

import Mathlib.Tactic.Basic
import Mathlib.Tactic.SwapVar

example {P Q : Prop} (q : P) (p : Q) : P ∧ Q := by
  swap_var p ↔ q
  exact ⟨p, q⟩

example {a b : Nat} (h : a = b) : a = b ∧ a = a := by
  swap_var a ↔ b
  guard_hyp h : b = a
  guard_target = b = a ∧ b = b
  exact ⟨h, Eq.refl b⟩

example {a b c d : Nat} (h : a = b ∧ c = d) : a = b ∧ c = d := by
  swap_var a ↔ b, b c
  guard_target = c = a ∧ b = d
  exact h
```
