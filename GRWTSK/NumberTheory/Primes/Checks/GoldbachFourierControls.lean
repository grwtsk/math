/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachFiniteFourier
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Goldbach weighted/Fourier scope controls

These are small source-level controls. They have not been executed in Lean.
No native evaluator is used.
-/

namespace GRWTSK.NumberTheory.Primes.Checks.GoldbachFourierControls

open GRWTSK.Analysis.Fourier.FiniteAdditiveProjector
open GRWTSK.NumberTheory.Primes.ConfigurationCounts
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachFiniteFourier

/-- Four has the literal ordered representation `2 + 2`. -/
theorem four_mass_positive : 0 < goldbachLogMass 4 := by
  rw [goldbachLogMass_pos_iff]
  exact ⟨2, 2, Nat.prime_two, Nat.prime_two, rfl⟩

/-- The odd input eleven has no two-prime representation. -/
theorem eleven_mass_zero : goldbachLogMass 11 = 0 := by
  have hcount : goldbachCount 11 = 0 := by decide
  have hnonneg := goldbachLogMass_nonneg 11
  have hnot : ¬ 0 < goldbachLogMass 11 := by
    intro hpos
    have : 0 < goldbachCount 11 :=
      (goldbachLogMass_pos_iff_count_pos 11).mp hpos
    omega
  apply le_antisymm
  · exact le_of_not_gt hnot
  · exact hnonneg

/-- A composite receives zero prime-log weight. -/
theorem composite_weight_zero : primeLogWeight 9 = 0 := by
  norm_num [primeLogWeight]

/-- The no-wrap finite projector reconstructs the exact mass at one concrete
modulus and cutoff. -/
theorem four_projector_exact :
    goldbachProjectorMass 11 4 = (goldbachLogMass 4 : ℂ) := by
  exact goldbachProjectorMass_eq_logMass (by norm_num)

/-- Without a no-wrap hypothesis the projector detects a congruence: `2 + 3`
is zero modulo five although it is not zero as a natural sum. -/
theorem modular_wrap_control :
    characterProjector 5 2 3 0 = 1 ∧ 2 + 3 ≠ 0 := by
  constructor
  · rw [characterProjector_eq_modular_indicator, if_pos (by decide)]
  · norm_num

/-- A shift-six prime pair is not silently accepted as a shift-two or
Goldbach representation. -/
theorem wrong_additive_target_control :
    Nat.Prime 7 ∧ Nat.Prime 13 ∧ 7 + 13 ≠ 18 := by norm_num

end GRWTSK.NumberTheory.Primes.Checks.GoldbachFourierControls
