# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EraseSimp.Variant3c7a78d2e305c9b1db4ff673fb7d78e1d86c503d23a7a2bcb96eeee95152496b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1ec902246aaa99ae9be05e2692560f6411c19a0` · SHA-256 `3c7a78d2e305c9b1db4ff673fb7d78e1d86c503d23a7a2bcb96eeee95152496b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

example (n : Nat) : n + m = m + n := by
  aesop (add simp Nat.add_comm)

attribute [local simp] Nat.add_comm

example (n : Nat) : n + m = m + n := by
  aesop

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (n : Nat) : n + m = m + n := by
  aesop (erase Nat.add_comm) (config := { warnOnNonterminal := false })

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (n : Nat) : n + m = m + n := by
  aesop (erase norm simp Nat.add_comm) (config := { warnOnNonterminal := false })

/--
error: aesop: 'Nat.add_comm' is not registered (with the given features) in any rule set.
-/
#guard_msgs in
example (n : Nat) : n + m = m + n := by
  aesop (erase apply Nat.add_comm)
```
