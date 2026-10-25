# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LocalTactic.Variant5e84a9b27eed24c859c6f8562d14e9886359f7dbed49683c480c788d58009e74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3771fbe3668ac87698071c951a83379466a53a3` · SHA-256 `5e84a9b27eed24c859c6f8562d14e9886359f7dbed49683c480c788d58009e74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (m n : Nat) : m * n = n * m := by
  aesop

example (m n : Nat) : m * n = n * m := by
  aesop (add safe (by rw [Nat.mul_comm]))

example (m n : Nat) : m * n = n * m := by
  aesop (add safe tactic (by rw [Nat.mul_comm m n]))

/--
error: Tactic `aesop` failed, made no progress
-/
#guard_msgs in
example (m n : Nat) : m * n = n * m := by
  aesop (add safe (by rw [Nat.mul_comm m m]))

example (m n : Nat) : m * n = n * m := by
  aesop (add safe (by apply Nat.mul_comm; done))
```
