# Complete source: GRWTSK.Algebra.GroupTheory.ULift.Variant7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67036af88290e8378f50bdff4c32187dbf77caaf` · SHA-256 `7533b14af8a4ce958ce84d18847af5f2cb248a992642c9e950436fd7e43c44c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Group.ULift
import Mathlib.Algebra.GroupWithZero.InjSurj

/-!
# `ULift` instances for groups and monoids with zero

This file defines instances for group and monoid with zero and related structures on `ULift` types.

(Recall `ULift α` is just a "copy" of a type `α` in a higher universe.)
-/

assert_not_exists Ring

universe u

variable {α : Type u}

namespace ULift

instance mulZeroOneClass [MulZeroOneClass α] : MulZeroOneClass (ULift α) :=
  Equiv.ulift.injective.mulZeroOneClass _ rfl rfl (by intros; rfl)

instance monoidWithZero [MonoidWithZero α] : MonoidWithZero (ULift α) :=
  Equiv.ulift.injective.monoidWithZero _ rfl rfl (fun _ _ => rfl) fun _ _ => rfl

instance commMonoidWithZero [CommMonoidWithZero α] : CommMonoidWithZero (ULift α) :=
  Equiv.ulift.injective.commMonoidWithZero _ rfl rfl (fun _ _ => rfl) fun _ _ => rfl

instance groupWithZero [GroupWithZero α] : GroupWithZero (ULift α) :=
  Equiv.ulift.injective.groupWithZero _ rfl rfl (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

instance commGroupWithZero [CommGroupWithZero α] : CommGroupWithZero (ULift α) :=
  Equiv.ulift.injective.commGroupWithZero _ rfl rfl (fun _ _ => rfl) (fun _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) fun _ _ => rfl

end ULift
```
