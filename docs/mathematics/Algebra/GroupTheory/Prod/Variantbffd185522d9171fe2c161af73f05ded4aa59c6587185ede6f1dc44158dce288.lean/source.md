# Complete source: GRWTSK.Algebra.GroupTheory.Prod.Variantbffd185522d9171fe2c161af73f05ded4aa59c6587185ede6f1dc44158dce288

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f38821eeb1df6165d4deaeddc278890bcf03f22` · SHA-256 `bffd185522d9171fe2c161af73f05ded4aa59c6587185ede6f1dc44158dce288`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Prod

/-!
# The product of two `AddMonoidWithOne`s.
-/

assert_not_exists MonoidWithZero

variable {α β : Type*}

namespace Prod

variable [AddMonoidWithOne α] [AddMonoidWithOne β]

instance instAddMonoidWithOne : AddMonoidWithOne (α × β) :=
  { Prod.instAddMonoid, @Prod.instOne α β _ _ with
    natCast := fun n => (n, n)
    natCast_zero := congr_arg₂ Prod.mk Nat.cast_zero Nat.cast_zero
    natCast_succ := fun _ => congr_arg₂ Prod.mk (Nat.cast_succ _) (Nat.cast_succ _) }

@[simp]
theorem fst_natCast (n : ℕ) : (n : α × β).fst = n := by induction n <;> simp [*]

@[simp]
theorem fst_ofNat (n : ℕ) [n.AtLeastTwo] :
    (ofNat(n) : α × β).1 = (ofNat(n) : α) :=
  rfl

@[simp]
theorem snd_natCast (n : ℕ) : (n : α × β).snd = n := by induction n <;> simp [*]

@[simp]
theorem snd_ofNat (n : ℕ) [n.AtLeastTwo] :
    (ofNat(n) : α × β).2 = (ofNat(n) : β) :=
  rfl

end Prod
```
