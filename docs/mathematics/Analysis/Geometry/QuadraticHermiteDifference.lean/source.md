# Complete source: GRWTSK.Analysis.Geometry.QuadraticHermiteDifference

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13ed87b7d1e06ac4556bdd171e44f0b5f7e3a7f6` · SHA-256 `2ab6e213fc8ea219646e12c38eab0a77148fa95774091a9ffd031e9019a7766d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact quadratic Hermite symmetric-difference identity (candidate)

This is the finite algebraic stage of #113, not a four-symbol Hermite code,
full decoder, or source-zero reconstruction. The normalized difference is
exact for a quadratic polynomial when h ≠ 0, while its measurement error
is amplified by the inverse separation. The global arithmetic screw source
may have one-sided derivative jumps at prime-power log times; the finite
polynomial result alone does not furnish its differentiability.

Lean/Lake/kernel replay NOT_RUN under the current F06 hold.
-/

namespace GRWTSK.Analysis.Geometry.QuadraticHermiteDifference

/-- Polynomial source coefficients in the monomial basis. -/
abbrev Coefficients := Fin 3 → ℂ

/-- The ordinary quadratic represented by three source coefficients. -/
def eval (x : Coefficients) (z : ℂ) : ℂ :=
  x 0 + x 1 * z + x 2 * z ^ 2

/-- Its exact first derivative. -/
def firstJet (x : Coefficients) (z : ℂ) : ℂ :=
  x 1 + 2 * x 2 * z

/-- The difference identity requires no limit and no small-h assumption. -/
theorem symmetric_difference_identity (x : Coefficients) (s h : ℂ) :
    eval x (s + h) - eval x (s - h) = 2 * h * firstJet x s := by
  dsimp [eval, firstJet]
  ring

/-- Two distinct ordinary evaluations recover the central first jet exactly
by a normalized symmetric difference for a quadratic source. -/
theorem normalized_symmetric_difference (x : Coefficients) (s h : ℂ)
    (hh : h ≠ 0) :
    (eval x (s + h) - eval x (s - h)) / (2 * h) = firstJet x s := by
  have hden : (2 : ℂ) * h ≠ 0 := mul_ne_zero (by norm_num) hh
  apply (div_eq_iff hden).2
  calc
    eval x (s + h) - eval x (s - h) = 2 * h * firstJet x s :=
      symmetric_difference_identity x s h
    _ = firstJet x s * (2 * h) := by ring

/-- Reversing the sampling order reverses the first-jet orientation. -/
theorem reversed_symmetric_difference (x : Coefficients) (s h : ℂ)
    (hh : h ≠ 0) :
    (eval x (s - h) - eval x (s + h)) / (2 * h) = -firstJet x s := by
  have hden : (2 : ℂ) * h ≠ 0 := mul_ne_zero (by norm_num) hh
  apply (div_eq_iff hden).2
  dsimp [eval, firstJet]
  ring

/-- Source-independent observation-error amplification through the normalized
Hermite seam. The inverse separation 1/(2*norm h) must stay in the budget. -/
theorem normalized_difference_error_bound (h : ℂ) (hh : h ≠ 0)
    (errorPlus errorMinus : ℂ) :
    ‖(errorPlus - errorMinus) / (2 * h)‖ ≤
      (‖errorPlus‖ + ‖errorMinus‖) / (2 * ‖h‖) := by
  have hnorm : ‖(2 : ℂ) * h‖ = 2 * ‖h‖ := by
    simp [norm_mul]
  rw [norm_div, hnorm]
  apply div_le_div_of_nonneg_right (norm_sub_le errorPlus errorMinus)
  positivity

end GRWTSK.Analysis.Geometry.QuadraticHermiteDifference
```
