# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.205.Variant519f484cf2da0d37fed0ddf2f0248711b32df69e80861d03c4d35d4ed2309df3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bfc06d7a0453d0d5deddc502afdf54575b7e79a` · SHA-256 `519f484cf2da0d37fed0ddf2f0248711b32df69e80861d03c4d35d4ed2309df3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
    have fwd_3 : R y y := tran h₃ fwd_1
    have fwd_4 : R b b := tran fwd_1 h₃
    have fwd_5 : R x x := tran h₂ fwd
    sorry
---
warning: declaration uses `sorry`
-/
#guard_msgs in
example (α : Type u_1) (x y a b : α) (h₂ : R x a) (h₃ : R y b) : False := by
  aesop? (rule_sets := [-builtin]) (config := { warnOnNonterminal := false })
  sorry
```
