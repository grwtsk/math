/-
Copyright (c) 2026 grwtsk contributors. Local port under Apache 2.0.
OpenAI retains upstream authorship and licensing.
Source: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a
lean/OAI/Combinatorics/ProgressionColoring/TernarySign.lean (blob d866ad8fefc95c41b08e3969c9e77f1fe7050d70).
Only module imports and the enclosing namespace are adapted.
-/
import Mathlib.Basic.Real.Basic
import Mathlib.Data.Fin.Basic

namespace GRWTSK.Combinatorics.ProgressionColoring

/-! Ternary real comparisons, shared independently of arrangement counting. -/

noncomputable section

namespace QuantitativeVanDerWaerden

/-- Literal signs: `0` is negative, `1` is zero, and `2` is positive. -/
def ternarySign (x : ℝ) : Fin 3 :=
  if x < 0 then 0 else if 0 < x then 2 else 1

@[simp] theorem ternarySign_eq_zero (x : ℝ) : ternarySign x = 0 ↔ x < 0 := by
  rcases lt_trichotomy x 0 with hx | hx | hx
  · simp [ternarySign, hx]
  · simp [hx, ternarySign]
  · simp [ternarySign, hx, not_lt.mpr hx.le]

@[simp] theorem ternarySign_eq_one (x : ℝ) : ternarySign x = 1 ↔ x = 0 := by
  rcases lt_trichotomy x 0 with hx | hx | hx
  · simp [ternarySign, hx, ne_of_lt hx]
  · simp [hx, ternarySign]
  · simp [ternarySign, hx, not_lt.mpr hx.le, ne_of_gt hx]

@[simp] theorem ternarySign_eq_two (x : ℝ) : ternarySign x = 2 ↔ 0 < x := by
  rcases lt_trichotomy x 0 with hx | hx | hx
  · simp [ternarySign, hx, not_lt.mpr hx.le]
  · simp [hx, ternarySign]
  · simp [ternarySign, hx, not_lt.mpr hx.le]

end QuantitativeVanDerWaerden

end

end GRWTSK.Combinatorics.ProgressionColoring
