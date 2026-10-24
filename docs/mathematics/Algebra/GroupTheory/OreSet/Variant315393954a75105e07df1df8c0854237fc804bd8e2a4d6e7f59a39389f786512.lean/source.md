# Complete source: GRWTSK.Algebra.GroupTheory.OreSet.Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f720b6f1b88ebe03211c1fcca4482cb70eb0a80c` · SHA-256 `315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer, Kevin Klinge
-/
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.Algebra.Ring.Regular
import Mathlib.GroupTheory.OreLocalization.OreSet

/-!

# (Left) Ore sets and rings

This file contains results on left Ore sets for rings and monoids with zero.

## References

* https://ncatlab.org/nlab/show/Ore+set

-/

assert_not_exists RelIso

namespace OreLocalization

/-- Cancellability in monoids with zeros can act as a replacement for the `ore_right_cancel`
condition of an ore set. -/
def oreSetOfCancelMonoidWithZero {R : Type*} [CancelMonoidWithZero R] {S : Submonoid R}
    (oreNum : R → S → R) (oreDenom : R → S → S)
    (ore_eq : ∀ (r : R) (s : S), oreDenom r s * r = oreNum r s * s) : OreSet S :=
  { ore_right_cancel := fun _ _ s h => ⟨s, mul_eq_mul_left_iff.mpr (mul_eq_mul_right_iff.mp h)⟩
    oreNum
    oreDenom
    ore_eq }

/-- In rings without zero divisors, the first (cancellability) condition is always fulfilled,
it suffices to give a proof for the Ore condition itself. -/
def oreSetOfNoZeroDivisors {R : Type*} [Ring R] [NoZeroDivisors R] {S : Submonoid R}
    (oreNum : R → S → R) (oreDenom : R → S → S)
    (ore_eq : ∀ (r : R) (s : S), oreDenom r s * r = oreNum r s * s) : OreSet S :=
  letI : CancelMonoidWithZero R := NoZeroDivisors.toCancelMonoidWithZero
  oreSetOfCancelMonoidWithZero oreNum oreDenom ore_eq

lemma nonempty_oreSet_iff {R : Type*} [Monoid R] {S : Submonoid R} :
    Nonempty (OreSet S) ↔ (∀ (r₁ r₂ : R) (s : S), r₁ * s = r₂ * s → ∃ s' : S, s' * r₁ = s' * r₂) ∧
      (∀ (r : R) (s : S), ∃ (r' : R) (s' : S), s' * r = r' * s) := by
  constructor
  · exact fun ⟨_⟩ ↦ ⟨ore_right_cancel, fun r s ↦ ⟨oreNum r s, oreDenom r s, ore_eq r s⟩⟩
  · intro ⟨H, H'⟩
    choose r' s' h using H'
    exact ⟨H, r', s', h⟩

lemma nonempty_oreSet_iff_of_noZeroDivisors {R : Type*} [Ring R] [NoZeroDivisors R]
    {S : Submonoid R} :
    Nonempty (OreSet S) ↔ ∀ (r : R) (s : S), ∃ (r' : R) (s' : S), s' * r = r' * s := by
  constructor
  · exact fun ⟨_⟩ ↦ fun r s ↦ ⟨oreNum r s, oreDenom r s, ore_eq r s⟩
  · intro H
    choose r' s' h using H
    exact ⟨oreSetOfNoZeroDivisors r' s' h⟩

end OreLocalization
```
