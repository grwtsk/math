# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Indent.Variant6bbe8fa9a55f6d3cb38a90a7c89e654f27dd933b2826e1c2fef683682ef5815b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d493fe3197ba249c8ba1ab217b4d501d63ff18d` · SHA-256 `6bbe8fa9a55f6d3cb38a90a7c89e654f27dd933b2826e1c2fef683682ef5815b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Alex Best. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alex Best, Jannis Limperg
-/

import Aesop

/-! Test case for clause indentation. We require Aesop tactic clauses to be on
the same line or indented, to prevent Aesop from mistaking the following
tactics for clauses. -/

example : ∃ n : Nat, n ^ 2 = 4 ∧ ∃ n : Nat, n ^ 2 = 9 ∧ True := by
  aesop
    (config := { maxRuleApplications := 1, warnOnNonterminal := false })
  (exists 2)
  (exists 3)

example : ∃ n : Nat, n ^ 2 = 4 ∧ ∃ n : Nat, n ^ 2 = 9 ∧ True := by
  aesop (config := { maxRuleApplications := 1, warnOnNonterminal := false })
  (exists 2)
  (exists 3)
```
