# Complete source: GRWTSK.Algebra.Field.Variant4a7f6da3e80529b6f65dcb61e2df165d3a30b79b9bb80753fc05363f948b3291

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ec97dd55362eea8c1e5e71d4261ef9f1953d377` · SHA-256 `4a7f6da3e80529b6f65dcb61e2df165d3a30b79b9bb80753fc05363f948b3291`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Ring.Int.Defs

/-!
# Cast of integers into fields

This file concerns the canonical homomorphism `ℤ → F`, where `F` is a field.

## Main results

* `Int.cast_div`: if `n` divides `m`, then `↑(m / n) = ↑m / ↑n`
-/


namespace Int

open Nat

variable {α : Type*}

/-- Auxiliary lemma for norm_cast to move the cast `-↑n` upwards to `↑-↑n`.

(The restriction to `DivisionRing` is necessary, otherwise this would also apply in the case where
`R = ℤ` and cause nontermination.)
-/
@[norm_cast]
theorem cast_neg_natCast {R} [DivisionRing R] (n : ℕ) : ((-n : ℤ) : R) = -n := by simp

@[simp]
theorem cast_div [DivisionRing α] {m n : ℤ} (n_dvd : n ∣ m) (hn : (n : α) ≠ 0) :
    ((m / n : ℤ) : α) = m / n := by
  rcases n_dvd with ⟨k, rfl⟩
  have : n ≠ 0 := by rintro rfl; simp at hn
  rw [Int.mul_ediv_cancel_left _ this, mul_comm n, Int.cast_mul, mul_div_cancel_right₀ _ hn]

end Int
```
