# Complete source: GRWTSK.Algebra.UniversalAlgebra.Conj.Variant9ca605ab52e670f3e656fe77c58e74bc59c9c932dcb302a33cad7844321f164b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aebc0f8f0e3415f19b3c1cb2772f68319b4af8ca` · SHA-256 `9ca605ab52e670f3e656fe77c58e74bc59c9c932dcb302a33cad7844321f164b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.Algebra.Group.Conj
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# Conjugacy in a group with zero
-/

assert_not_exists Multiset Ring
-- TODO
-- assert_not_exists DenselyOrdered

namespace GroupWithZero

variable {α : Type*} [GroupWithZero α] {a b : α}

@[simp] lemma isConj_iff₀ : IsConj a b ↔ ∃ c : α, c ≠ 0 ∧ c * a * c⁻¹ = b := by
  rw [IsConj, Units.exists_iff_ne_zero (p := (SemiconjBy · a b))]
  congr! 2 with c
  exact and_congr_right (mul_inv_eq_iff_eq_mul₀ · |>.symm)

lemma conj_pow₀ {s : ℕ} {a d : α} (ha : a ≠ 0) : (a⁻¹ * d * a) ^ s = a⁻¹ * d ^ s * a :=
  let u : αˣ := ⟨a, a⁻¹, mul_inv_cancel₀ ha, inv_mul_cancel₀ ha⟩
  Units.conj_pow' u d s

end GroupWithZero
```
