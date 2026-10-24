# Complete source: GRWTSK.Algebra.UniversalAlgebra.CharPZeroNeCharZero.Variant2503388e2d68cf09677456726719fe5db7f8c21053cf92b1f6748651ea857dca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d03f309bd33abb7e733e97129069b2967ebf68b4` · SHA-256 `2503388e2d68cf09677456726719fe5db7f8c21053cf92b1f6748651ea857dca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa, Eric Wieser
-/
import Mathlib.Algebra.CharP.Lemmas
import Mathlib.Algebra.Ring.PUnit

/-! # `CharP R 0` and `CharZero R` need not coincide for semirings

For rings, the two notions coincide.

In fact, `CharP.ofCharZero` shows that `CharZero R` implies `CharP R 0` for any `CharZero`
`AddMonoid R` with `1`.
The reverse implication holds for any `AddLeftCancelMonoid R` with `1`, by `charP_to_charZero`.

This file shows that there are semirings `R` for which `CharP R 0` holds and `CharZero R` does not.

The example is `{0, 1}` with saturating addition.
-/


namespace Counterexample

@[simp]
theorem add_one_eq_one (x : WithZero Unit) : x + 1 = 1 :=
  WithZero.cases_on x (by rfl) fun h => by rfl

theorem withZero_unit_charP_zero : CharP (WithZero Unit) 0 :=
  ⟨fun x => by cases x <;> simp⟩

theorem withZero_unit_not_charZero : ¬CharZero (WithZero Unit) := fun ⟨h⟩ =>
  h.ne (by simp : 1 + 1 ≠ 0 + 1) (by set_option simprocs false in simp)

end Counterexample
```
