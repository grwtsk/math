# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteSimp.Variantc6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63c911a7113c6c0cca62a3a24132487c0b316e6d` · SHA-256 `c6feb3bb4b07ce7a5a4e668f5f016a5c1f22832545438b0142c9d9b055489b10`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/

import Mathlib.Init.Data.Bool.Basic
import Mathlib.Init.Data.Bool.Lemmas

#align_import init.ite_simp from "leanprover-community/lean"@"4a03bdeb31b3688c31d02d7ff8e0ff2e5d6174db"

/-!
# Simplification lemmas for ite.

We don't prove them at logic.lean because it is easier to prove them using
the tactic framework.
-/


@[simp]
theorem if_true_right_eq_or (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then q else True) = (¬p ∨ q) := by by_cases p <;> simp [h]
#align if_true_right_eq_or if_true_right_eq_or

@[simp]
theorem if_true_left_eq_or (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then True else q) = (p ∨ q) := by by_cases p <;> simp [h]
#align if_true_left_eq_or if_true_left_eq_or

@[simp]
theorem if_false_right_eq_and (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then q else False) = (p ∧ q) := by by_cases p <;> simp [h]
#align if_false_right_eq_and if_false_right_eq_and

@[simp]
theorem if_false_left_eq_and (p : Prop) [h : Decidable p] (q : Prop) :
    (if p then False else q) = (¬p ∧ q) := by by_cases p <;> simp [h]
#align if_false_left_eq_and if_false_left_eq_and
```
