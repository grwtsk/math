# Complete source: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.Identities.Variantc0faf756c6074b6b4ad6990e13ec89b8628ce6055aef18ea33535c7b06f94be5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f37716e2703785f9eb4c23fcee0636094a3659` · SHA-256 `c0faf756c6074b6b4ad6990e13ec89b8628ce6055aef18ea33535c7b06f94be5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

import Mathlib.NumberTheory.ModularForms.SlashInvariantForms
import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups

/-!
# Identities of ModularForms and SlashInvariantForms

Collection of useful identities of modular forms.
-/

noncomputable section

open ModularForm UpperHalfPlane Matrix CongruenceSubgroup

namespace SlashInvariantForm

/- TODO: Once we have cusps, do this more generally, same below. -/
theorem vAdd_width_periodic (N : ℕ) (k n : ℤ) (f : SlashInvariantForm (Gamma N) k) (z : ℍ) :
    f (((N * n) : ℝ) +ᵥ z) = f z := by
  norm_cast
  rw [← modular_T_zpow_smul z (N * n)]
  convert slash_action_eqn' f (ModularGroup_T_pow_mem_Gamma N (N * n) (Int.dvd_mul_right N n)) z
  simp only [Fin.isValue, ModularGroup.coe_T_zpow (N * n), of_apply, cons_val', cons_val_zero,
    empty_val', cons_val_fin_one, cons_val_one, head_fin_const, Int.cast_zero, zero_mul, head_cons,
    Int.cast_one, zero_add, one_zpow, one_mul]

theorem T_zpow_width_invariant (N : ℕ) (k n : ℤ) (f : SlashInvariantForm (Gamma N) k) (z : ℍ) :
    f (((ModularGroup.T ^ (N * n))) • z) = f z := by
  rw [modular_T_zpow_smul z (N * n)]
  simpa only [Int.cast_mul, Int.cast_natCast] using vAdd_width_periodic N k n f z

end SlashInvariantForm
```
