# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AuxDecl.Variant895fadc40613228923bd2d0ce1d0fa14b2ee73f121aa3829f05d6a90e4f5004b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e174ac326cfb86ccd844523ec98f61405593f14c` · SHA-256 `895fadc40613228923bd2d0ce1d0fa14b2ee73f121aa3829f05d6a90e4f5004b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop
import Std.Tactic.BVDecide

/-
This test case checks whether tactics that make use of auxiliary declarations,
such as `omega` and `bv_decide`, work with Aesop. Auxiliary declarations are
problematic because we can't allows tactics on different branches of the search
tree to add auxiliary declarations with the same name.
-/

theorem foo (m n : Nat) : n + m = m + n ∧ m + n = n + m := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe (by omega))

local instance [Add α] [Add β] : Add (α × β) :=
  ⟨λ (a, b) (a', b') => (a + a', b + b')⟩

theorem bar
    (fst snd fst_1 snd_1 fst_2 snd_2 w w_1 w_2 w_3 : BitVec 128)
    (left : w_1.uaddOverflow w_3 = true)
    (left_1 : w.uaddOverflow w_2 = true)
    (right : (w_1 + w_3).uaddOverflow 1#128 = true) :
    (fst_2, snd_2) = (fst, snd) + (fst_1, snd_1) := by
  aesop (add safe (by bv_decide))

theorem baz (a b : BitVec 1) : (a = 0 ∨ a = 1) ∧ (b = 0 ∨ b = 1) := by
  aesop (add safe 1000 (by bv_decide))
```
