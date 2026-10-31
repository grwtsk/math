/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Ordered trace-free triples and the positive middle value

Scalar algebra for the strain-determinant consumer in Evan Miller,
"A regularity criterion for the Navier-Stokes equation involving only the
middle eigenvalue of the strain tensor", arXiv:1710.05569v4 (2019),
DOI: 10.1007/s00205-019-01419-z.

The variables are real scalars. Identifying them with the ordered spectrum
of a symmetric velocity-gradient matrix, identifying the square sum with
its Frobenius norm, and applying the integrated PDE identity are separate
bridges. No bound on a solution's middle eigenvalue is supplied here.
Compilation, fresh kernel replay, transitive axiom audit and expected
interface: NOT_RUN.
-/

namespace GRWTSK.Algebra.LinearAlgebra.OrderedTraceFreeTriple

/-- Trace zero gives the exact signed cubic remainder, without an ordering
or a positivity assumption on the selected middle coordinate. -/
theorem middle_cubic_remainder {a b c : ℝ} (htrace : a + b + c = 0) :
    -4 * (a * b * c) = 2 * b * (a ^ 2 + b ^ 2 + c ^ 2) - 4 * b ^ 3 := by
  have hc : c = -a - b := by linarith
  rw [hc]
  ring

/-- If an ordered trace-free triple has a nonpositive middle value,
its product is nonnegative. -/
theorem product_nonneg_of_middle_nonpos {a b c : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (htrace : a + b + c = 0)
    (hb : b ≤ 0) : 0 ≤ a * b * c := by
  have ha : a ≤ 0 := le_trans hab hb
  have hc : 0 ≤ c := by linarith
  exact mul_nonneg (mul_nonneg_of_nonpos_of_nonpos ha hb) hc

/-- The negative product is bounded by the positive middle value times
the square sum. This is the scalar spectral inequality consumed by the
signed strain-determinant enstrophy estimate. -/
theorem neg_four_product_le_positive_middle {a b c : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (htrace : a + b + c = 0) :
    -4 * (a * b * c) ≤ 2 * max b 0 * (a ^ 2 + b ^ 2 + c ^ 2) := by
  by_cases hb : b ≤ 0
  · have hp := product_nonneg_of_middle_nonpos hab hbc htrace hb
    rw [max_eq_right hb]
    nlinarith
  · have hb0 : 0 ≤ b := le_of_lt (lt_of_not_ge hb)
    rw [middle_cubic_remainder htrace, max_eq_left hb0]
    have hcube : 0 ≤ b ^ 3 := pow_nonneg hb0 3
    linarith

/-- A supplied upper bound on the positive middle value gives the precise
one-sided square-sum estimate; the upper bound remains an explicit premise. -/
theorem neg_four_product_le_of_positive_middle_le {a b c s : ℝ}
    (hab : a ≤ b) (hbc : b ≤ c) (htrace : a + b + c = 0)
    (hs : max b 0 ≤ s) :
    -4 * (a * b * c) ≤ 2 * s * (a ^ 2 + b ^ 2 + c ^ 2) := by
  have hsum : 0 ≤ a ^ 2 + b ^ 2 + c ^ 2 :=
    add_nonneg (add_nonneg (sq_nonneg a) (sq_nonneg b)) (sq_nonneg c)
  calc
    -4 * (a * b * c) ≤ 2 * max b 0 * (a ^ 2 + b ^ 2 + c ^ 2) :=
      neg_four_product_le_positive_middle hab hbc htrace
    _ ≤ 2 * s * (a ^ 2 + b ^ 2 + c ^ 2) :=
      mul_le_mul_of_nonneg_right (by linarith : 2 * max b 0 ≤ 2 * s) hsum

end GRWTSK.Algebra.LinearAlgebra.OrderedTraceFreeTriple
