# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpLetHypotheses.Variant3e664ff6c3c8105a2fbc299dd80b33b9329473562f26f63a942e0be619dd6815

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31c31ffc1793bfae6e56c691b5f0e808bdd4a4b7` · SHA-256 `3e664ff6c3c8105a2fbc299dd80b33b9329473562f26f63a942e0be619dd6815`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

-- Aesop `simp` substitutes `let` hypotheses even when `zetaDelta` is disabled
-- (which is the default).

/--
error: unsolved goals
P : Nat → Type
h : P 0
x : Nat := 0
⊢ P 0
-/
#guard_msgs in
example (P : Nat → Type) (h : P 0) : let x := 0; P x := by
  intro x
  aesop (rule_sets := [-builtin,-default])
    (config := { warnOnNonterminal := false })

/--
error: unsolved goals
P : Nat → Type
h : P 0
x : Nat := 0
⊢ P 0
-/
#guard_msgs in
example (P : Nat → Type) (h : P 0) : let x := 0; P x := by
  intro x
  aesop (rule_sets := [-builtin,-default])
    (config := { useSimpAll := false, warnOnNonterminal := false })
```
