# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardUnknownFVar.Variant39cc6f76bbf1c1f086f0a27d6c3a71f28d5976c9ccad885164d8ee875af072c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13d7d6e537f040ca56a8be6f9cae860b1dca26a4` · SHA-256 `39cc6f76bbf1c1f086f0a27d6c3a71f28d5976c9ccad885164d8ee875af072c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, Jannis Limperg
-/

import Aesop

attribute [aesop safe forward 1] Nat.le_trans
attribute [-aesop] Aesop.BuiltinRules.applyHyps

variable (a b c d e f : Nat)

/-- error: Tactic `aesop` failed, failed to prove the goal after exhaustive search. -/
#guard_msgs in
set_option aesop.smallErrorMessages true in
example (h₃ : c ≤ d) (h₄ : d ≤ e) (h₅ : e ≤ f) (h : a = f) : False := by
  aesop (config := { terminal := true })
```
