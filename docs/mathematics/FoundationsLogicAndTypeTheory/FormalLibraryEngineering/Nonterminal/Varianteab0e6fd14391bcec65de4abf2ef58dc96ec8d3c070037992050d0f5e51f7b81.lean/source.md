# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nonterminal.Varianteab0e6fd14391bcec65de4abf2ef58dc96ec8d3c070037992050d0f5e51f7b81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3af6cbeba63ea7034647ea91d35291a72465ef16` · SHA-256 `eab0e6fd14391bcec65de4abf2ef58dc96ec8d3c070037992050d0f5e51f7b81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

structure MyTrue₁
structure MyTrue₂

@[aesop safe]
structure MyTrue₃ where
  tt : MyTrue₁

/--
warning: aesop: failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : MyTrue₃ := by
  aesop
  apply MyTrue₁.mk

@[aesop safe]
structure MyFalse where
  falso : False

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : MyFalse := by
  aesop

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : MyFalse := by
  aesop (config := { terminal := true })

/--
error: unsolved goals
⊢ False
-/
#guard_msgs in
example : MyFalse := by
  aesop (config := { warnOnNonterminal := false })

@[aesop safe]
structure MyFalse₂ where
  falso : False
  tt : MyTrue₃

/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
case falso
⊢ False

case tt
⊢ MyTrue₁
-/
#guard_msgs in
example : MyFalse₂ := by
  aesop

/--
error: unsolved goals
⊢ False
-/
#guard_msgs in
set_option aesop.warn.nonterminal false in
example : MyFalse := by
  aesop

/--
error: unsolved goals
⊢ False
-/
#guard_msgs in
set_option aesop.warn.nonterminal true in
example : MyFalse := by
  aesop (config := { warnOnNonterminal := false })
```
