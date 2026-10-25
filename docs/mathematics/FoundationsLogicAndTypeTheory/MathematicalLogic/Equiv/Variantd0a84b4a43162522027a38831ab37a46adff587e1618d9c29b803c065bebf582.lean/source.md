# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Equiv.Variantd0a84b4a43162522027a38831ab37a46adff587e1618d9c29b803c065bebf582

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c4f015cc33eb579e343dfeb4137f768b3f4d8db` · SHA-256 `d0a84b4a43162522027a38831ab37a46adff587e1618d9c29b803c065bebf582`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Wrenna Robson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wrenna Robson
-/

module
public import Mathlib.Data.LawfulXor.Basic
public import Mathlib.Algebra.Group.End

/-!
# LawfulXor equivalences
-/

@[expose] public section

namespace Equiv

open LawfulXor

variable {α : Type*} [XorOp α] [Zero α] [LawfulXor α] {a b : α}

/-- `XorOp.xor` as a permutation. -/
@[simps! apply] protected def xor (a : α) : Perm α where
  toFun := (a ^^^ ·)
  invFun := (a ^^^ ·)
  left_inv := xor_cancel_left a
  right_inv := xor_cancel_left a

@[simp] theorem xor_symm : (Equiv.xor a).symm = Equiv.xor a := rfl

theorem xor_involutive (a : α) : Function.Involutive (Equiv.xor a) := xor_right_involutive a

@[simp] theorem xor_zero : Equiv.xor (0 : α) = 1 := Equiv.ext zero_xor

@[simp] theorem xor_eq_one_iff : Equiv.xor a = 1 ↔ a = 0 :=
  Equiv.coe_inj.symm.trans xor_left_eq_id_iff

theorem isFixedPt_xor : Function.IsFixedPt (Equiv.xor a) b ↔ a = 0 := isFixedPt_xor_left_iff

@[simp] theorem xor_trans_xor : (Equiv.xor b).trans (Equiv.xor a) = Equiv.xor (a ^^^ b) :=
  Equiv.ext <| (.symm <| xor_assoc a b ·)

end Equiv
```
