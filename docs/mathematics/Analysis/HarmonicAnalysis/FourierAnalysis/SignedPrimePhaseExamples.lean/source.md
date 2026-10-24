# Complete source: GRWTSK.Analysis.Fourier.SignedPrimePhaseExamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e84231e22c0e7205914efac694eeaa6028002f0c` · SHA-256 `52f525fc4de6207b3bb188776d3d0ec91ec32dad39560719e87a0249ea6d16e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib
import GRWTSK.Analysis.AsymptoticAnalysis.ExponentialEnergyObstruction

/-!
# Exact finite hostile diagnostics

No numerical quadrature or unchecked floating-point assertion occurs here.
The prime-2 weight and mass fixtures are actual arithmetic data.  The Gram
fixture is explicitly an abstract positive-semidefinite correlation model,
not an assertion about the causal pickup or about actual source energies.
-/

noncomputable section

open Filter

namespace PPNCP04.Diagnostics

theorem literal_moebius_prime_sign :
    ArithmeticFunction.moebius 2 = -1 :=
  ArithmeticFunction.moebius_apply_prime Nat.prime_two

theorem literal_moebius_composite_sign :
    ArithmeticFunction.moebius 6 = 1 := by
  change ArithmeticFunction.moebius (2 * 3) = 1
  rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
    (by norm_num : Nat.Coprime 2 3)]
  rw [ArithmeticFunction.moebius_apply_prime Nat.prime_two,
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  norm_num

theorem repeated_prime_moebius_zero :
    ArithmeticFunction.moebius 4 = 0 := by
  change ArithmeticFunction.moebius (2 ^ 2) = 0
  rw [ArithmeticFunction.moebius_apply_prime_pow Nat.prime_two (by norm_num)]
  norm_num

theorem literal_moebius_absolute_replacement_rejected :
    ArithmeticFunction.moebius 2 ≠ |ArithmeticFunction.moebius 2| := by
  rw [literal_moebius_prime_sign]
  norm_num

def primeTwoWeight : ℝ := 1 / Real.sqrt 2

theorem primeTwoWeight_positive : 0 < primeTwoWeight := by
  unfold primeTwoWeight
  positivity

theorem primeTwoWeight_lt_one : primeTwoWeight < 1 := by
  unfold primeTwoWeight
  exact (div_lt_one (by positivity : 0 < Real.sqrt (2 : ℝ))).mpr
    Real.one_lt_sqrt_two

theorem primeTwoWeight_sq : primeTwoWeight ^ 2 = (1 / 2 : ℝ) := by
  unfold primeTwoWeight
  have hs : (Real.sqrt (2 : ℝ)) ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  rw [div_pow, one_pow, hs]

/-- At zero phase the literal signed prime factor contracts. -/
theorem signed_zero_phase_contracts : (1 - primeTwoWeight) ^ 2 < 1 := by
  have hp := primeTwoWeight_positive
  have hlt := primeTwoWeight_lt_one
  nlinarith

/-- Erasing the prime minus sign changes that same test to amplification. -/
theorem unsigned_zero_phase_amplifies : 1 < (1 + primeTwoWeight) ^ 2 := by
  have hp := primeTwoWeight_positive
  nlinarith [sq_nonneg primeTwoWeight]

theorem sign_erasure_changes_factor :
    (1 + primeTwoWeight) ^ 2 - (1 - primeTwoWeight) ^ 2 =
      4 * primeTwoWeight := by ring

/-- At exact anti-phase the *signed* factor equals the amplifying factor. -/
theorem signed_anti_phase_amplifies :
    1 < (1 - primeTwoWeight * (-1)) ^ 2 := by
  simpa using unsigned_zero_phase_amplifies

theorem zero_phase_signed_broad :
    -primeTwoWeight ≤ (1 / 2 : ℝ) * Real.sqrt (1 / 2 : ℝ) := by
  have hp := primeTwoWeight_positive
  have hs : 0 ≤ Real.sqrt (1 / 2 : ℝ) := Real.sqrt_nonneg _
  linarith

/-- An absolute-size version of the broad predicate misclassifies zero
phase, even though the signed multiplier is contractive there. -/
theorem zero_phase_absolute_test_fails :
    ¬ (|primeTwoWeight| ≤ (1 / 2 : ℝ) * Real.sqrt (1 / 2 : ℝ)) := by
  have hp := primeTwoWeight_positive
  have hs : Real.sqrt (1 / 2 : ℝ) = primeTwoWeight := by
    rw [← primeTwoWeight_sq, Real.sqrt_sq hp.le]
  rw [hs, abs_of_pos hp]
  linarith

theorem prime_two_singleton_mass :
    PPNCP04.Obstruction.harmonicMass ({2} : Finset ℕ) = (1 / 2 : ℝ) := by
  norm_num [PPNCP04.Obstruction.harmonicMass]

/-- If a realized block contains prime 2, its harmonic mass is at least
1/2; no upper-only mass cutoff below 1/2 can admit that block. -/
theorem prime_two_block_mass_lower {B : Finset ℕ} (h2 : 2 ∈ B) :
    (1 / 2 : ℝ) ≤ PPNCP04.Obstruction.harmonicMass B := by
  have hsum : (1 / (2 : ℝ)) ≤ ∑ p ∈ B, 1 / (p : ℝ) := by
    apply Finset.single_le_sum (f := fun p : ℕ => 1 / (p : ℝ))
    · intro p hp
      positivity
    · exact h2
  exact hsum

theorem prime_two_small_cutoff_rejected {B : Finset ℕ} {η : ℝ}
    (h2 : 2 ∈ B) (hη : η < 1 / 2) :
    ¬ (PPNCP04.Obstruction.harmonicMass B ≤ η) := by
  have hm := prime_two_block_mass_lower h2
  linarith

/-- Thus a finite block family covering prime 2 cannot satisfy such a
cutoff on every block.  An explicit small-prime exception would alter
these hypotheses and is not silently assumed. -/
theorem covered_prime_two_small_cutoff_rejected
    {J : ℕ} {blocks : Fin J → Finset ℕ} {η : ℝ}
    (hcover : ∃ j, 2 ∈ blocks j) (hη : η < 1 / 2) :
    ¬ (∀ j, PPNCP04.Obstruction.harmonicMass (blocks j) ≤ η) := by
  rintro hall
  obtain ⟨j, hj⟩ := hcover
  exact prime_two_small_cutoff_rejected hj hη (hall j)

/-- Complete ordered finite Gram expansion.  The fixture below keeps
every signed coefficient and every ordered pair. -/
def gramQuadratic (v c : Fin 4 → ℚ) : ℚ :=
  ∑ i, ∑ j, c i * c j * (v i * v j)

theorem gramQuadratic_eq_square (v c : Fin 4 → ℚ) :
    gramQuadratic v c = (∑ i, c i * v i) ^ 2 := by
  unfold gramQuadratic
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j hj
  ring

theorem gramQuadratic_nonnegative (v c : Fin 4 → ℚ) :
    0 ≤ gramQuadratic v c := by
  rw [gramQuadratic_eq_square]
  exact sq_nonneg _

/-- Abstract rank-one PSD note data; these are not actual h_n atoms. -/
def abstractNotes : Fin 4 → ℚ := ![1, 3, 1, 3]

def initialCoefficients : Fin 4 → ℚ := ![1, 0, 0, 0]
def firstPrimeCoefficients : Fin 4 → ℚ := ![1, -1, 0, 0]
def twoPrimeCoefficients : Fin 4 → ℚ := ![1, -1, -1, 1]

theorem abstract_initial_energy :
    gramQuadratic abstractNotes initialCoefficients = 1 := by
  rw [gramQuadratic_eq_square]
  norm_num [abstractNotes, initialCoefficients, Fin.sum_univ_succ]

theorem abstract_intermediate_energy :
    gramQuadratic abstractNotes firstPrimeCoefficients = 4 := by
  rw [gramQuadratic_eq_square]
  norm_num [abstractNotes, firstPrimeCoefficients, Fin.sum_univ_succ]

theorem abstract_completed_energy :
    gramQuadratic abstractNotes twoPrimeCoefficients = 0 := by
  rw [gramQuadratic_eq_square]
  norm_num [abstractNotes, twoPrimeCoefficients, Fin.sum_univ_succ]

theorem abstract_growth_then_cancellation :
    gramQuadratic abstractNotes initialCoefficients <
      gramQuadratic abstractNotes firstPrimeCoefficients ∧
    gramQuadratic abstractNotes twoPrimeCoefficients <
      gramQuadratic abstractNotes firstPrimeCoefficients := by
  rw [abstract_initial_energy, abstract_intermediate_energy, abstract_completed_energy]
  norm_num

theorem nondecreasing_natural_rank_rejected {parent child : ℕ}
    (h : parent ≤ child) : ¬ (child < parent) := by omega

/-- A genuinely narrower width does not by itself decrease an unrelated
declared natural-number rank. -/
theorem narrower_width_same_rank_fixture :
    (1 / 2 : ℚ) < 1 ∧ ¬ ((7 : ℕ) < 7) := by norm_num

theorem geometric_inverse_scale_is_exponential (T : ℝ) :
    1 / Real.exp (-T) = Real.exp T := by
  simp [Real.exp_neg]

/-- The literal geometric loss delta^(-1), delta=exp(-T), fails every
eventual polynomial bound.  This uses a proved asymptotic theorem, not
finite numerical extrapolation. -/
theorem geometric_exponential_loss_not_polynomial (K r : ℝ) :
    ¬ (∀ᶠ T : ℝ in atTop, Real.exp T ≤ K * (1 + T) ^ r) := by
  apply PPNCP04.Obstruction.exponential_input_not_polynomial
    (c := 1) (by norm_num)
  unfold PPNCP04.Obstruction.ExponentialEnergyInput
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with T hT
  have hsq : 1 ≤ (1 + T) ^ 2 := by nlinarith
  have hmul := mul_le_mul_of_nonneg_left hsq (Real.exp_pos T).le
  simpa using hmul

end PPNCP04.Diagnostics

#print axioms PPNCP04.Diagnostics.zero_phase_absolute_test_fails
#print axioms PPNCP04.Diagnostics.literal_moebius_composite_sign
#print axioms PPNCP04.Diagnostics.covered_prime_two_small_cutoff_rejected
#print axioms PPNCP04.Diagnostics.abstract_growth_then_cancellation
#print axioms PPNCP04.Diagnostics.nondecreasing_natural_rank_rejected
#print axioms PPNCP04.Diagnostics.geometric_exponential_loss_not_polynomial
```
