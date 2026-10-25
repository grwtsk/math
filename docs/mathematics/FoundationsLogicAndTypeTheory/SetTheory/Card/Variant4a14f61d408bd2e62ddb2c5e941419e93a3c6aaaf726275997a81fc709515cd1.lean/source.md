# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Card.Variant4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10fa659c1455becf24137ab15727bf3507233dd6` · SHA-256 `4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Pointwise.Set.Scalar
import Mathlib.Algebra.GroupWithZero.Action.Basic
import Mathlib.SetTheory.Cardinal.Finite

/-!
# Cardinality of sets under pointwise group with zero operations
-/

assert_not_exists Field

open scoped Cardinal Pointwise

variable {G₀ M₀ : Type*}

namespace Set
variable [GroupWithZero G₀] [Zero M₀] [MulActionWithZero G₀ M₀] {a : G₀}

lemma _root_.Cardinal.mk_smul_set₀ (ha : a ≠ 0) (s : Set M₀) : #↥(a • s) = #s :=
  Cardinal.mk_image_eq_of_injOn _ _ (MulAction.injective₀ ha).injOn

lemma natCard_smul_set₀ (ha : a ≠ 0) (s : Set M₀) : Nat.card ↥(a • s) = Nat.card s :=
  Nat.card_image_of_injective (MulAction.injective₀ ha) _

end Set
```
