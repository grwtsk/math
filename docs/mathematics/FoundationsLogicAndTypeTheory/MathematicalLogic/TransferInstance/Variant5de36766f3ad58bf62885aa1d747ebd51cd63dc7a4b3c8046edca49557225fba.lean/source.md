# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TransferInstance.Variant5de36766f3ad58bf62885aa1d747ebd51cd63dc7a4b3c8046edca49557225fba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d65e36d2e96b3eb170b7cf4b8a27624460f8761f` · SHA-256 `5de36766f3ad58bf62885aa1d747ebd51cd63dc7a4b3c8046edca49557225fba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Action.TransferInstance
public import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Transfer algebraic structures across `Equiv`s or `AddEquiv`s

This continues the pattern set in `Mathlib/Algebra/Group/TransferInstance.lean`.
-/

public section

assert_not_exists Ring

variable {M M₀ A B : Type*}

namespace Equiv

variable (M) in
/-- Transfer `SMulZeroClass` across an `Equiv` -/
protected abbrev smulZeroClass (e : A ≃ B) [Zero A] [Zero B] [SMulZeroClass M B]
    (map_zero : e 0 = 0) : SMulZeroClass M A where
  __ := e.smul M
  smul_zero := by simp [smul_def, symm_apply_eq, map_zero]

variable (M₀) in
/-- Transfer `SMulWithZero` across an `Equiv` -/
protected abbrev smulWithZero (e : A ≃ B) [Zero M₀] [Zero A] [Zero B] [SMulWithZero M₀ B]
    (map_zero : e 0 = 0) : SMulWithZero M₀ A where
  __ := e.smulZeroClass M₀ map_zero
  zero_smul := by simp [smul_def, symm_apply_eq, map_zero]

variable (M₀) in
/-- Transfer `MulActionWithZero` across an `Equiv` -/
protected abbrev mulActionWithZero (e : A ≃ B) [MonoidWithZero M₀] [Zero A] [Zero B]
    [MulActionWithZero M₀ B] (map_zero : e 0 = 0) : MulActionWithZero M₀ A where
  __ := e.smulWithZero M₀ map_zero
  __ := e.mulAction M₀

end Equiv

namespace AddEquiv

variable (M) in
/-- Transfer `DistribSMul` across an `AddEquiv` -/
protected abbrev distribSMul [AddZeroClass A] [AddZeroClass B] [DistribSMul M B] (e : A ≃+ B) :
    DistribSMul M A where
  __ := e.smulZeroClass M e.map_zero
  smul_add := by simp [e.smul_def, smul_add]

variable (M) in
/-- Transfer `DistribMulAction` across an `AddEquiv` -/
protected abbrev distribMulAction [Monoid M] [AddMonoid A] [AddMonoid B] [DistribMulAction M B]
    (e : A ≃+ B) : DistribMulAction M A where
  __ := e.distribSMul M
  __ := e.mulAction M

end AddEquiv

@[deprecated (since := "2026-07-30")] alias Equiv.distribSMul := AddEquiv.distribSMul
@[deprecated (since := "2026-07-30")] alias Equiv.distribMulAction := AddEquiv.distribMulAction
```
