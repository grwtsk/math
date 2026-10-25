# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Subst.Varianta6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24c927079a426310af864689650ea41c007bceb8` · SHA-256 `a6c0d504f01e4c99afa8212b8da7abcc560f8ecb4835ae16159ca9a4ae310946`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

-- These test cases test the builtin subst tactic.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h₁ : x = 5) (h₂ : y = 5) : x = y := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example (h₁ : x = 5) (h₂ : y = 5) : x = y := by
  aesop (config := { useSimpAll := false })

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {x y z : α} (h₁ : x = y) (h₂ : y = z) : x = z := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example {x y z : α} (h₁ : x = y) (h₂ : y = z) : x = z := by
  aesop (config := { useSimpAll := false })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {x y : α }(P : ∀ x y, x = y → Prop) (h₁ : x = y) (h₂ : P x y h₁) :
    x = y := by
  aesop
    (erase Aesop.BuiltinRules.subst, Aesop.BuiltinRules.assumption,
           Aesop.BuiltinRules.applyHyps)
    (config := { useSimpAll := false, terminal := true })

example {x y : α }(P : ∀ x y, x = y → Prop) (h₁ : x = y) (h₂ : P x y h₁) :
    x = y := by
  aesop
    (erase Aesop.BuiltinRules.assumption,
           Aesop.BuiltinRules.applyHyps)
    (config := { useSimpAll := false })

-- Subst also works for bi-implications.

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h₁ : P ↔ Q) (h₂ : Q ↔ R) (h₃ : P) : R  := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example (h₁ : P ↔ Q) (h₂ : Q ↔ R) (h₃ : P) : R  := by
  aesop (config := { useSimpAll := false })

-- Subst also works for morally-homogeneous heterogeneous equalities (using a
-- builtin simp rule which turns these into actual homogeneous equalities).

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example {P : α → Prop} {x y z : α} (h₁ : x ≍ y) (h₂ : y ≍ z) (h₃ : P x) :
    P z  := by
  aesop (erase Aesop.BuiltinRules.subst)
    (config := { useSimpAll := false, terminal := true })

example {P : α → Prop} {x y z : α} (h₁ : x ≍ y) (h₂ : y ≍ z) (h₃ : P x) :
    P z  := by
  aesop (config := { useSimpAll := false })
```
