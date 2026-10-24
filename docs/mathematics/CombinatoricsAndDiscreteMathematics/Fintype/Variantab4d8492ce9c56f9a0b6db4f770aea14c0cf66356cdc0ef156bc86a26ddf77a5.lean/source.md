# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variantab4d8492ce9c56f9a0b6db4f770aea14c0cf66356cdc0ef156bc86a26ddf77a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8dfbf05bb417f8e6ad516c1c4c5722b09640460` · SHA-256 `ab4d8492ce9c56f9a0b6db4f770aea14c0cf66356cdc0ef156bc86a26ddf77a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
module

public import Mathlib.Basic.Finite.Prod
public import Mathlib.Data.Fintype.Basic
public import Mathlib.Data.FunLike.Basic

/-!
# Finiteness of `DFunLike` types

We show a type `F` with a `DFunLike F α β` is finite if both `α` and `β` are finite.
This corresponds to the following two pairs of declarations:

* `DFunLike.fintype` is a definition stating all `DFunLike`s are finite if their domain and
  codomain are.
* `DFunLike.finite` is a lemma stating all `DFunLike`s are finite if their domain and
  codomain are.
* `FunLike.fintype` is a non-dependent version of `DFunLike.fintype` and
* `FunLike.finite` is a non-dependent version of `DFunLike.finite`, because dependent instances
  are harder to infer.

You can use these to produce instances for specific `DFunLike` types.
(Although there might be options for `Fintype` instances with better definitional behaviour.)
They can't be instances themselves since they can cause loops.
-/

@[expose] public section

-- `Type` is a reserved word, switched to `Type'`
section Type'

variable (F G : Type*) {α γ : Type*} {β : α → Type*} [DFunLike F α β] [FunLike G α γ]

/-- All `DFunLike`s are finite if their domain and codomain are.

This is not an instance because specific `DFunLike` types might have a better-suited definition.

See also `DFunLike.finite`.
-/
@[instance_reducible]
noncomputable def DFunLike.fintype [DecidableEq α] [Fintype α] [∀ i, Fintype (β i)] : Fintype F :=
  Fintype.ofInjective _ DFunLike.coe_injective

/-- All `FunLike`s are finite if their domain and codomain are.

Non-dependent version of `DFunLike.fintype` that might be easier to infer.
This is not an instance because specific `FunLike` types might have a better-suited definition.
-/
@[instance_reducible]
noncomputable def FunLike.fintype [DecidableEq α] [Fintype α] [Fintype γ] : Fintype G :=
  DFunLike.fintype G

end Type'

-- `Sort` is a reserved word, switched to `Sort'`
section Sort'

variable (F G : Sort*) {α γ : Sort*} {β : α → Sort*} [DFunLike F α β] [FunLike G α γ]

/-- All `DFunLike`s are finite if their domain and codomain are.

Can't be an instance because it can cause infinite loops.
-/
theorem DFunLike.finite [Finite α] [∀ i, Finite (β i)] : Finite F :=
  Finite.of_injective _ DFunLike.coe_injective

/-- All `FunLike`s are finite if their domain and codomain are.

Non-dependent version of `DFunLike.finite` that might be easier to infer.
Can't be an instance because it can cause infinite loops.
-/
theorem FunLike.finite [Finite α] [Finite γ] : Finite G :=
  DFunLike.finite G

end Sort'

-- See note [lower instance priority]
instance (priority := 100) FunLike.toDecidableEq {F α β : Type*}
    [DecidableEq β] [Fintype α] [FunLike F α β] : DecidableEq F :=
  fun a b ↦ decidable_of_iff ((a : α → β) = b) DFunLike.coe_injective.eq_iff
```
