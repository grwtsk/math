# Complete source: GRWTSK.Algebra.UniversalAlgebra.Shrink.Variant915606c456258ae523f9c2c18c744f1d35cce0ca807b0738c7cf72bc12452406

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f63ef98b50d4ffa33b5ed28faa08a36e3aaba7d0` · SHA-256 `915606c456258ae523f9c2c18c744f1d35cce0ca807b0738c7cf72bc12452406`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Group.Shrink
public import Mathlib.Algebra.GroupWithZero.Action.TransferInstance
public import Mathlib.Algebra.GroupWithZero.TransferInstance

/-!
# Transfer group with zero structures from `α` to `Shrink α`
-/

public section

noncomputable section

universe v
variable {M α : Type*} [Small.{v} α]

instance [SemigroupWithZero α] : SemigroupWithZero (Shrink α) :=
  (equivShrink _).symm.semigroupWithZero
instance [MulZeroClass α] : MulZeroClass (Shrink α) := (equivShrink _).symm.mulZeroClass
instance [MulZeroOneClass α] : MulZeroOneClass (Shrink α) := (equivShrink _).symm.mulZeroOneClass

instance [Monoid M] [AddCommMonoid α] [DistribMulAction M α] : DistribMulAction M (Shrink.{v} α) :=
  Shrink.addEquiv.distribMulAction M
```
