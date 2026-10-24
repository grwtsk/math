# Complete source: GRWTSK.Algebra.PrimeField.Variant7d7d17b3e0313bb4c0c30cadc281af12d2c4334fb7402e764ed5b9e4239e46d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc96709fcd01e56bc3643bb75ebc12b062739f81` · SHA-256 `7d7d17b3e0313bb4c0c30cadc281af12d2c4334fb7402e764ed5b9e4239e46d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot, Kenny Lau
-/
module

public import Mathlib.Algebra.Algebra.Rat
public import Mathlib.Algebra.Field.ZMod
public import Mathlib.Algebra.Field.Subfield.Basic
public import Mathlib.Tactic.NormNum.Inv
public import Mathlib.Tactic.NormNum.Pow

/-!
# Prime fields

A prime field is a field that does not contain any nontrivial subfield. Prime fields are `ℚ` in
characteristic `0` and `ZMod p` in characteristic `p` with `p` a prime number. Any field `K`
contains a unique prime field: it is the smallest field contained in `K`.

## Results

* The fields `ℚ` and `ZMod p` are prime fields. These are stated as the instances that says that
  the corresponding `Subfield` type is a `Subsingleton`.
* `Subfield.bot_eq_of_charZero` : the smallest subfield of a field of characteristic `0` is (the
  image of) `ℚ`.
* `Subfield.bot_eq_of_zMod_algebra`: the smallest subfield of a field of characteristic `p` is (the
  image of) `ZMod p`.

-/

public section

instance : Subsingleton (Subfield ℚ) :=
  subsingleton_of_top_le_bot fun x _ ↦ by simpa using SubfieldClass.ratCast_mem (⊥ : Subfield ℚ) x

instance (p : ℕ) [hp : Fact (Nat.Prime p)] : Subsingleton (Subfield (ZMod p)) :=
  subsingleton_of_top_le_bot fun x _ ↦ by simpa using natCast_mem (⊥ : Subfield (ZMod p)) x.val

/--
The smallest subfield of a field of characteristic `0` is (the image of) `ℚ`.
-/
theorem Subfield.bot_eq_of_charZero {K : Type*} [Field K] [CharZero K] :
    (⊥ : Subfield K) = (algebraMap ℚ K).fieldRange := by
  rw [eq_comm, eq_bot_iff, ← Subfield.map_bot (algebraMap ℚ K),
    subsingleton_iff_bot_eq_top.mpr inferInstance, ← RingHom.fieldRange_eq_map]

/--
The smallest subfield of a field of characteristic `p` is (the image of) `ZMod p`.
Note that the fact that the field `K` is of characteristic `p` is stated by the fact that it is
`ZMod p`-algebra.
-/
theorem Subfield.bot_eq_of_zMod_algebra {K : Type*} (p : ℕ) [hp : Fact (Nat.Prime p)]
    [Field K] [Algebra (ZMod p) K] :
    (⊥ : Subfield K) = (algebraMap (ZMod p) K).fieldRange := by
  rw [eq_comm, eq_bot_iff, ← Subfield.map_bot (algebraMap (ZMod p) K),
    subsingleton_iff_bot_eq_top.mpr inferInstance, ← RingHom.fieldRange_eq_map]
```
