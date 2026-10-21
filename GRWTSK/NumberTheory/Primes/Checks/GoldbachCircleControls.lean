/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Continuous Goldbach circle controls

These source controls preserve the zero-frequency normalization, the negative
target phase, actual prime support, and the distinction between an exact
coefficient identity and an analytic lower bound. They have not been executed
in Lean.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachCircleControls

open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral

/-- The zero frequency has unit mass. -/
theorem zero_frequency_integral :
    (∫ x : ℝ in 0..1, unitCharacter 0 x) = 1 := by
  simp [integral_unitCharacter]

/-- A nonzero positive frequency integrates to zero. -/
theorem positive_frequency_integral :
    (∫ x : ℝ in 0..1, unitCharacter 1 x) = 0 := by
  norm_num [integral_unitCharacter]

/-- A nonzero negative frequency also integrates to zero. -/
theorem negative_frequency_integral :
    (∫ x : ℝ in 0..1, unitCharacter (-1) x) = 0 := by
  norm_num [integral_unitCharacter]

/-- Omitting the negative target phase loses the `2 + 2 = 4` coefficient:
frequency four integrates to zero, while the corrected frequency is zero. -/
theorem missing_negative_phase_control :
    (∫ x : ℝ in 0..1, unitCharacter ((2 : ℤ) + 2) x) = 0 ∧
    (∫ x : ℝ in 0..1,
      unitCharacter ((2 : ℤ) + 2 + -(4 : ℤ)) x) = 1 := by
  constructor <;> norm_num [integral_unitCharacter]

/-- The continuous identity specializes to the first admissible even input. -/
theorem four_circle_identity :
    (∫ x : ℝ in 0..1,
      goldbachExponentialSum 4 x * goldbachExponentialSum 4 x *
        unitCharacter (-(4 : ℤ)) x) =
      (goldbachLogMass 4 : ℂ) :=
  goldbachCircleIntegral_eq_logMass 4

/-- Character orthogonality alone does not create prime support: one is
composite and receives zero prime-log weight. -/
theorem frequency_match_without_prime_weight :
    (1 : ℕ) + 3 = 4 ∧ primeLogWeight 1 = 0 := by
  norm_num [primeLogWeight]

end GRWTSK.NumberTheory.Primes.Checks.GoldbachCircleControls
