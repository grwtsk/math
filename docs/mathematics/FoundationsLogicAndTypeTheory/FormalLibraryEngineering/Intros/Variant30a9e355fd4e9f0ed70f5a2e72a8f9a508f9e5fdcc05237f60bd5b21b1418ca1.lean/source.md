# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Intros.Variant30a9e355fd4e9f0ed70f5a2e72a8f9a508f9e5fdcc05237f60bd5b21b1418ca1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d1d1ca908d9e69463e689ff80f9332f1809d29d` · SHA-256 `30a9e355fd4e9f0ed70f5a2e72a8f9a508f9e5fdcc05237f60bd5b21b1418ca1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

def Injective₁ (f : α → β) := ∀ x y, f x = f y → x = y

abbrev Injective₂ (f : α → β) := ∀ x y, f x = f y → x = y

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Injective₁ (@id Nat) := by
  aesop (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Injective₁ (@id Nat) := by
  aesop (config := { introsTransparency? := some .reducible, terminal := true })

example : Injective₁ (@id Nat) := by
  aesop (config := { introsTransparency? := some .default })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Injective₂ (@id Nat) := by
  aesop (config := { terminal := true })

example : Injective₂ (@id Nat) := by
  aesop (config := { introsTransparency? := some .reducible })

example : Injective₂ (@id Nat) := by
  aesop (config := { introsTransparency? := some .default })
```
