# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Set.Variant18a070cecd8fbdcf6d828a1c7bc4fc14531f2caa60cb4b5ac71f4c02ba9aa5c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ad4196c468f8aabdc25b47f4b6f74662e66164f` · SHA-256 `18a070cecd8fbdcf6d828a1c7bc4fc14531f2caa60cb4b5ac71f4c02ba9aa5c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Ian Benway. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ian Benway.
-/

import Mathlib.Tactic.Set
import Mathlib.Tactic.Basic
import Mathlib.Util.SleepHeartbeats
import Qq

example (x : Nat) (h : x = x) : x = x := by
  set! p := h
  set q : x = x := p
  apply q

example (x : Nat) (h : x + x - x = 3) : x + x - x = 3 := by
  set! y := x with ← h2
  set w := x
  guard_hyp y := x
  guard_hyp w := x
  guard_hyp h : w + w - w = 3
  guard_hyp h2 : w = y
  set z := w with _h3
  set a := 3
  guard_target = z + z - z = a
  set i'm_the_goal : Prop := z + z - z = a
  guard_target = i'm_the_goal
  apply h

example (x : Nat) (h : x - x = 0) : x = x := by
  set y : Nat := x
  set! z := y + 1 with ← _eq1
  set! p : x - x = 0 := h with _eq2
  rfl

example : True := by
  set g : Nat → Int := (fun ε => ε) with h
  trivial

-- simulate a slow to elaborate term
open Qq in
elab "test" : term => do
  sleepAtLeastHeartbeats (1000 * 1000)
  return q((1 : Nat))

-- this will timeout if test is elaborated multiple times
set_option maxHeartbeats 3000 in
example {a b c d e f g h : Nat} : 1 = 1 := by
  set a : Nat := test with h
  trivial
```
