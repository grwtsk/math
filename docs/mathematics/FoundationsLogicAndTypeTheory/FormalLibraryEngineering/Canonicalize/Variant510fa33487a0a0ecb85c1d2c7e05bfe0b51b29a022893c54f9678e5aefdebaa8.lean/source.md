# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonicalize.Variant510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a46459f44f40776d1cec162b75cd4554da3cb6c` · SHA-256 `510fa33487a0a0ecb85c1d2c7e05bfe0b51b29a022893c54f9678e5aefdebaa8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Init.Data.BitVec.Lemmas
public import Std.Tactic.BVDecide.Syntax
public import Init.Data.BitVec.Bootstrap
import Init.PropLemmas

@[expose] public section

/-!
This contains theorems responsible for turning both `Bool` and `BitVec` goals into the
`x = true` normal form (where `x` consists of only `Bool` and `BitVec`) expected by `bv_decide`.
-/

namespace Std.Tactic.BVDecide
namespace Normalize

@[bv_normalize]
theorem BitVec.eq_to_beq (a b : BitVec w) : (a = b) = ((a == b) = true) := by
  simp

@[bv_normalize]
theorem BitVec.ne_to_beq (a b : BitVec w) : (a ≠ b) = ((!(a == b)) = true) := by
  simp

theorem Bool.eq_to_beq (a b : Bool) : (a = b) = ((a == b) = true) := by simp

@[bv_normalize]
theorem BitVec.bne_to_beq (a b : BitVec w) : (a != b) = (!(a == b)) := by
  simp [bne]

@[bv_normalize]
theorem Bool.bne_to_beq (a b : Bool) : (a != b) = (!(a == b)) := by
  simp [bne]

@[bv_normalize]
theorem Bool.neg_to_not (a : Bool) : (¬a) = ((!a) = true) := by
  simp

@[bv_normalize]
theorem Bool.ne_to_beq (a b : Bool) : (a ≠ b) = ((!(a == b)) = true) := by
  simp

@[bv_normalize]
theorem Bool.imp_to_or (a b : Bool) : ((a = true) → (b = true)) = (((!a) || b) = true) := by
  revert a b
  decide

@[bv_normalize]
theorem Bool.or_to_or (a b : Bool) : ((a = true) ∨ (b = true)) = ((a || b) = true) := by
  simp

@[bv_normalize]
theorem Bool.and_to_and (a b : Bool) : ((a = true) ∧ (b = true)) = ((a && b) = true) := by
  simp

@[bv_normalize]
theorem Bool.iff_to_beq :
    ∀ (a b : Bool), ((a = true) ↔ (b = true)) = ((a == b) = true) := by
  decide

@[bv_normalize]
theorem Bool.eq_false (a : Bool) : ((a = true) = False) = ((!a) = true) := by
  simp

@[bv_normalize]
theorem Bool.decide_eq_true (a : Bool) : (decide (a = true)) = a := by
  simp

attribute [bv_normalize] BitVec.getLsbD_cast
attribute [bv_normalize] BitVec.testBit_toNat

@[bv_normalize]
theorem BitVec.lt_ult (x y : BitVec w) : (x < y) = (BitVec.ult x y = true) := by
  rw [BitVec.ult]
  simp only [(· < ·)]
  simp

theorem Bool.or_elim : ∀ (a b : Bool), (a || b) = !(!a && !b) := by decide

theorem BitVec.or_elim (x y : BitVec w) : x ||| y = ~~~(~~~x &&& ~~~y) := by
  ext
  simp

attribute [bv_normalize] BitVec.natCast_eq_ofNat
attribute [bv_normalize] BitVec.append_eq
attribute [bv_normalize] BitVec.and_eq
attribute [bv_normalize] BitVec.or_eq
attribute [bv_normalize] BitVec.xor_eq
attribute [bv_normalize] BitVec.not_eq
attribute [bv_normalize] BitVec.shiftLeft_eq
attribute [bv_normalize] BitVec.ushiftRight_eq
attribute [bv_normalize] BitVec.add_eq
attribute [bv_normalize] BitVec.sub_eq
attribute [bv_normalize] BitVec.neg_eq
attribute [bv_normalize] BitVec.mul_eq
attribute [bv_normalize] BitVec.udiv_eq
attribute [bv_normalize] BitVec.umod_eq
attribute [bv_normalize ←] BitVec.shiftLeft_eq'
attribute [bv_normalize ←] BitVec.sshiftRight_eq'
attribute [bv_normalize ←] BitVec.ushiftRight_eq'

end Normalize
end Std.Tactic.BVDecide
```
