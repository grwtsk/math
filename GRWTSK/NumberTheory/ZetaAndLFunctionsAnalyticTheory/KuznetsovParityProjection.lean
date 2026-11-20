/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# Matched-test parity projections for the Kuznetsov interface

The finite identities below partition actual weighted sums by a Boolean parity.
The source-return identities then consume the two specified trace identities;
they do not prove an automorphic spectral expansion, Bessel transform,
convergence statement, or Kuznetsov trace formula.

Intended analytic consumer: Humphries--Khan, arXiv:2208.05613v3 (25 June 2025),
Theorem 2.1, equations (2.2)--(2.6), with the SAME spectral test for both signs.
The level-one continuous contribution is shared and cancels only in the odd
projection. A separate theorem displays the error if the continuous terms differ.
No relation to arithmetic GRH or a Selberg eigenvalue bound is asserted.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.KuznetsovParityProjection

variable {ι : Type*}

/-- The Boolean `true` marks the odd sector. -/
def evenSum (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ) : ℂ :=
  ∑ u ∈ s, if odd u then 0 else w u

def oddSum (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ) : ℂ :=
  ∑ u ∈ s, if odd u then w u else 0

/-- The plus orientation does not insert a parity sign. -/
def plusSum (s : Finset ι) (w : ι → ℂ) : ℂ := ∑ u ∈ s, w u

/-- The minus orientation inserts the parity sign and is not a pure odd sum. -/
def minusSum (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ) : ℂ :=
  ∑ u ∈ s, if odd u then -w u else w u

theorem plusSum_eq_even_add_odd (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ) :
    plusSum s w = evenSum s odd w + oddSum s odd w := by
  simp only [plusSum, evenSum, oddSum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro u hu
  cases odd u <;> simp

theorem minusSum_eq_even_sub_odd (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ) :
    minusSum s odd w = evenSum s odd w - oddSum s odd w := by
  simp only [minusSum, evenSum, oddSum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro u hu
  cases odd u <;> simp

theorem evenSum_projection (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ) :
    evenSum s odd w = (plusSum s w + minusSum s odd w) / 2 := by
  rw [plusSum_eq_even_add_odd, minusSum_eq_even_sub_odd]
  ring

theorem oddSum_projection (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ) :
    oddSum s odd w = (plusSum s w - minusSum s odd w) / 2 := by
  rw [plusSum_eq_even_add_odd, minusSum_eq_even_sub_odd]
  ring

/-- Shared continuous spectrum remains in the even projection and cancels from odd. -/
theorem matched_trace_projections (even odd continuous geometricPlus geometricMinus : ℂ)
    (hplus : even + odd + continuous = geometricPlus)
    (hminus : even - odd + continuous = geometricMinus) :
    even + continuous = (geometricPlus + geometricMinus) / 2 ∧
      odd = (geometricPlus - geometricMinus) / 2 := by
  rw [← hplus, ← hminus]
  constructor <;> ring

/-- Finite parity sums can be consumed without assuming their sector decomposition. -/
theorem finite_matched_trace_projections (s : Finset ι) (odd : ι → Bool) (w : ι → ℂ)
    (continuous geometricPlus geometricMinus : ℂ)
    (hplus : plusSum s w + continuous = geometricPlus)
    (hminus : minusSum s odd w + continuous = geometricMinus) :
    evenSum s odd w + continuous = (geometricPlus + geometricMinus) / 2 ∧
      oddSum s odd w = (geometricPlus - geometricMinus) / 2 := by
  apply matched_trace_projections
  · simpa only [plusSum_eq_even_add_odd s odd w] using hplus
  · simpa only [minusSum_eq_even_sub_odd] using hminus

/-- Unequal continuous terms leave a correction; unmatched tests cannot be cancelled. -/
theorem unmatched_continuous_correction
    (even odd continuousPlus continuousMinus geometricPlus geometricMinus : ℂ)
    (hplus : even + odd + continuousPlus = geometricPlus)
    (hminus : even - odd + continuousMinus = geometricMinus) :
    (geometricPlus - geometricMinus) / 2 = odd + (continuousPlus - continuousMinus) / 2 := by
  rw [← hplus, ← hminus]
  ring

/-- Half the sum of certified complex errors bounds the error in the odd projection. -/
theorem odd_projection_error
    (geometricPlus geometricMinus approxPlus approxMinus : ℂ) (errorPlus errorMinus : ℝ)
    (hplus : ‖approxPlus - geometricPlus‖ ≤ errorPlus)
    (hminus : ‖approxMinus - geometricMinus‖ ≤ errorMinus) :
    ‖(approxPlus - approxMinus) / 2 - (geometricPlus - geometricMinus) / 2‖ ≤
      (errorPlus + errorMinus) / 2 := by
  have heq : (approxPlus - approxMinus) / 2 - (geometricPlus - geometricMinus) / 2 =
      ((approxPlus - geometricPlus) - (approxMinus - geometricMinus)) / 2 := by ring
  rw [heq, norm_div]
  norm_num
  have h := norm_sub_le (approxPlus - geometricPlus) (approxMinus - geometricMinus)
  linarith

end GRWTSK.NumberTheory.KuznetsovParityProjection
