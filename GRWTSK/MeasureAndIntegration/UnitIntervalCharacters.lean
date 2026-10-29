/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Fourier.AddCircle
import Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Integer characters on the unit interval

This module fixes one normalization for the continuous additive characters used
by the Goldbach circle integral. It reuses Mathlib's Fourier monomials on
`AddCircle 1`, and derives the unit-interval orthogonality relation from
`fourierCoeff_fourier` and `fourierCoeff_eq_intervalIntegral`.

No prime-distribution estimate is present.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters

open scoped BigOperators Real
open AddCircle MeasureTheory

noncomputable section

local instance unitPeriodPositive : Fact (0 < (1 : ℝ)) := ⟨zero_lt_one⟩

/-- The integer character `x ↦ exp(2 * π * I * m * x)` on the unit interval,
using Mathlib's canonical additive-circle Fourier normalization. -/
def unitCharacter (m : ℤ) (x : ℝ) : ℂ :=
  fourier (T := (1 : ℝ)) m (x : AddCircle (1 : ℝ))

@[simp]
theorem unitCharacter_zero (x : ℝ) : unitCharacter 0 x = 1 := by
  simp [unitCharacter, fourier_zero]

/-- Character addition is literal frequency addition. -/
theorem unitCharacter_add (m n : ℤ) (x : ℝ) :
    unitCharacter (m + n) x = unitCharacter m x * unitCharacter n x := by
  simpa [unitCharacter] using
    (fourier_add (T := (1 : ℝ)) (m := m) (n := n)
      (x := (x : AddCircle (1 : ℝ))))

@[continuity, fun_prop]
theorem continuous_unitCharacter (m : ℤ) : Continuous (unitCharacter m) := by
  unfold unitCharacter
  exact (map_continuous (fourier m)).comp (AddCircle.continuous_mk' (1 : ℝ))

/-- Every integer character is interval integrable on the unit interval. -/
theorem intervalIntegrable_unitCharacter (m : ℤ) :
    IntervalIntegrable (unitCharacter m) volume 0 1 :=
  (continuous_unitCharacter m).intervalIntegrable 0 1

/-- The integral is the zero-frequency coordinate of Mathlib's Fourier
orthonormality theorem. -/
theorem integral_unitCharacter_eq_single (m : ℤ) :
    (∫ x : ℝ in 0..1, unitCharacter m x) = (Pi.single m (1 : ℂ) : ℤ → ℂ) 0 := by
  have h := congrFun (fourierCoeff_fourier (T := (1 : ℝ)) m) 0
  rw [fourierCoeff_eq_intervalIntegral
    (fourier (T := (1 : ℝ)) m) 0 0] at h
  simpa [unitCharacter] using h

/-- Exact unit-interval character orthogonality. -/
theorem integral_unitCharacter (m : ℤ) :
    (∫ x : ℝ in 0..1, unitCharacter m x) =
      if m = 0 then 1 else 0 := by
  rw [integral_unitCharacter_eq_single]
  by_cases hm : m = 0
  · subst m
    simp
  · simp [hm]

/-- Nonzero integer frequencies integrate to zero. -/
theorem integral_unitCharacter_eq_zero {m : ℤ} (hm : m ≠ 0) :
    (∫ x : ℝ in 0..1, unitCharacter m x) = 0 := by
  rw [integral_unitCharacter, if_neg hm]

/-- The Goldbach pair frequency vanishes exactly at the literal natural
equation `p + q = N`; there is no modular wraparound in this statement. -/
theorem pairFrequency_zero_iff (p q N : ℕ) :
    (p : ℤ) + (q : ℤ) + -(N : ℤ) = 0 ↔ p + q = N := by
  rw [← sub_eq_add_neg, sub_eq_zero]
  norm_cast

end
end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
