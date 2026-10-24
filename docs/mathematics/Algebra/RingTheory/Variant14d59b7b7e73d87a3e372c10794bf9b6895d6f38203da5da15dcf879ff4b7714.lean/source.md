# Complete source: GRWTSK.Algebra.Ring.Variant14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64234e93efe84d4848b1efbaaafc7cdbd808474a` · SHA-256 `14d59b7b7e73d87a3e372c10794bf9b6895d6f38203da5da15dcf879ff4b7714`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Small.Defs
import Mathlib.Algebra.Equiv.TransferInstance

/-!
# Transfer ring structures from `α` to `Shrink α`.
-/

noncomputable section

variable {α : Type*}

instance [NonUnitalNonAssocSemiring α] [Small α] : NonUnitalNonAssocSemiring (Shrink α) :=
  (equivShrink _).symm.nonUnitalNonAssocSemiring

instance [NonUnitalSemiring α] [Small α] : NonUnitalSemiring (Shrink α) :=
  (equivShrink _).symm.nonUnitalSemiring

instance [AddMonoidWithOne α] [Small α] : AddMonoidWithOne (Shrink α) :=
  (equivShrink _).symm.addMonoidWithOne

instance [AddGroupWithOne α] [Small α] : AddGroupWithOne (Shrink α) :=
  (equivShrink _).symm.addGroupWithOne

instance [NonAssocSemiring α] [Small α] : NonAssocSemiring (Shrink α) :=
  (equivShrink _).symm.nonAssocSemiring

instance [Semiring α] [Small α] : Semiring (Shrink α) :=
  (equivShrink _).symm.semiring

instance [NonUnitalCommSemiring α] [Small α] : NonUnitalCommSemiring (Shrink α) :=
  (equivShrink _).symm.nonUnitalCommSemiring

instance [CommSemiring α] [Small α] : CommSemiring (Shrink α) :=
  (equivShrink _).symm.commSemiring

instance [NonUnitalNonAssocRing α] [Small α] : NonUnitalNonAssocRing (Shrink α) :=
  (equivShrink _).symm.nonUnitalNonAssocRing

instance [NonUnitalRing α] [Small α] : NonUnitalRing (Shrink α) :=
  (equivShrink _).symm.nonUnitalRing

instance [Ring α] [Small α] : Ring (Shrink α) :=
  (equivShrink _).symm.ring

instance [NonUnitalCommRing α] [Small α] : NonUnitalCommRing (Shrink α) :=
  (equivShrink _).symm.nonUnitalCommRing

instance [CommRing α] [Small α] : CommRing (Shrink α) :=
  (equivShrink _).symm.commRing

instance [Nontrivial α] [Small α] : Nontrivial (Shrink α) :=
  (equivShrink _).symm.nontrivial

instance [DivisionRing α] [Small α] : DivisionRing (Shrink α) :=
  (equivShrink _).symm.divisionRing

instance [Field α] [Small α] : Field (Shrink α) :=
  (equivShrink _).symm.field
```
