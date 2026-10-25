# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.205.Variant6b80c98c27eb3646db48c354b6dd8a4c22b6720f66cf467cc6d72c37d9612d55

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `247e3890d2073541e0244b6b4fde5b69ca0de9b3` · SHA-256 `6b80c98c27eb3646db48c354b6dd8a4c22b6720f66cf467cc6d72c37d9612d55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

-- Thanks to Bruno Dutertre for reporting this bug.

import Aesop

axiom R {α} : α → α → Prop

@[aesop safe forward] axiom sym : R x y → R y x
@[aesop safe forward] axiom tran : R x y → R y z → R x z

/--
info: Try this:

  [apply]     have fwd : R a x := sym h₂
    have fwd_1 : R b y := sym h₃
    have fwd_2 : R a a := tran fwd h₂
    have fwd_3 : R x x := tran h₂ fwd
    have fwd_4 : R b b := tran fwd_1 h₃
    have fwd_5 : R y y := tran h₃ fwd_1
    sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (α : Type u_1) (x y a b : α) (h₂ : R x a) (h₃ : R y b) : False := by
  aesop? (rule_sets := [-builtin]) (config := { warnOnNonterminal := false })
  sorry
```
