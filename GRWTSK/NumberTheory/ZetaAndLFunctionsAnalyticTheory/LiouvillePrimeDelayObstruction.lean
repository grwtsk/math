/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalEnergyTarget
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC

/-!
# Prime-delay obstruction for the original Liouville causal response

This file preserves the exact causal response and the signed coefficient
identities needed to state the finite-prime, prime-two, and sparse-prime
obstructions. It proves the concrete prime-two coefficient algebra and records
the stronger sparse-prime countermodel as an explicit open proposition.

No estimate for the actual Liouville waveform is asserted. In particular,
`InfiniteSparsePrimeDelayObstruction` and `PrimeTwoCausalEnergyLowerBound` are
named propositions, not theorems or axioms. Their complete paper derivations,
constants, boundary costs, and literature comparison are recorded in the
companion review.
-/

namespace GRWTSK.NumberTheory.LiouvillePrimeDelayObstruction

/-- The original causal waveform with an arbitrary real coefficient source. -/
def causalWaveform (a : ℕ → ℝ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, a n * pickupResponse n u

/-- The original cumulative causal energy with an arbitrary source. -/
def causalEnergy (a : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |causalWaveform a u| ^ 2

/-- Exact negative multiplicative delay at one prime. -/
def ExactPrimeDelayAt (a : ℕ → ℝ) (p : ℕ) : Prop :=
  ∀ n : ℕ, n ≠ 0 → a (p * n) = -a n

/-- Exact negative delay at every prime in the selected set. -/
def ExactPrimeDelaysOn (a : ℕ → ℝ) (S : Set ℕ) : Prop :=
  ∀ p ∈ S, ExactPrimeDelayAt a p

/-- Every member of the selected set is prime. -/
def IsPrimeSet (S : Set ℕ) : Prop :=
  ∀ p ∈ S, Nat.Prime p

/-- The selected prime set is infinite and summable at exponent `ρ`.
This is deliberately stronger than reciprocal-prime summability. -/
def SparsePrimeSetAt (S : Set ℕ) (ρ : ℝ) : Prop :=
  S.Infinite ∧ IsPrimeSet S ∧
    Summable (fun p : S => 1 / ((p.1 : ℝ) ^ ρ))

/-- Positive linear mean with an explicit power-error envelope. -/
def PositiveMeanWithPowerError (a : ℕ → ℝ) (ρ : ℝ) : Prop :=
  ∃ c B : ℝ, 0 < c ∧ 0 ≤ B ∧
    ∀ x : ℕ, 1 ≤ x →
      |(∑ n ∈ Finset.Icc 1 x, a n) - c * (x : ℝ)| ≤
        2 * B * (x : ℝ) ^ ρ

/-- A positive exponential lower bound for the unchanged causal energy. -/
def ExponentialCausalEnergyLowerBound (a : ℕ → ℝ) : Prop :=
  ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
    ∀ T : ℝ, T₀ ≤ T →
      c ^ 2 * (Real.exp T - Real.exp T₀) ≤ causalEnergy a T

/-- A package for the infinite sparse-prime obstruction. -/
structure SparsePrimeDelayCountermodel (ρ : ℝ) where
  primes : Set ℕ
  coefficient : ℕ → ℝ
  sparse : SparsePrimeSetAt primes ρ
  exactDelays : ExactPrimeDelaysOn coefficient primes
  positiveMean : PositiveMeanWithPowerError coefficient ρ
  exponentialEnergy : ExponentialCausalEnergyLowerBound coefficient

/-- Exact formal target of the stronger obstruction proved in the review.
It is intentionally a proposition, not an assumed or proved declaration. -/
def InfiniteSparsePrimeDelayObstruction : Prop :=
  ∃ ρ : ℝ, 0 < ρ ∧ ρ < (1 / 2 : ℝ) ∧
    Nonempty (SparsePrimeDelayCountermodel ρ)

/-- Completely multiplicative sign supported only on the two-adic valuation. -/
def primeTwoSign (n : ℕ) : ℝ :=
  (-1 : ℝ) ^ padicValNat 2 n

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- The prime-two sign is completely multiplicative away from zero. -/
theorem primeTwoSign_mul (m n : ℕ) (hm : m ≠ 0) (hn : n ≠ 0) :
    primeTwoSign (m * n) = primeTwoSign m * primeTwoSign n := by
  unfold primeTwoSign
  rw [padicValNat.mul hm hn, pow_add]

@[simp]
theorem primeTwoSign_two : primeTwoSign 2 = -1 := by
  simp [primeTwoSign, padicValNat_self]

/-- Every doubling edge carries exact negative sign. -/
theorem primeTwoSign_double (n : ℕ) (hn : n ≠ 0) :
    primeTwoSign (2 * n) = -primeTwoSign n := by
  rw [primeTwoSign_mul 2 n (by norm_num) hn, primeTwoSign_two]
  simp

/-- Every prime-two coefficient is a sign. -/
theorem primeTwoSign_eq_one_or_neg_one (n : ℕ) :
    primeTwoSign n = 1 ∨ primeTwoSign n = -1 := by
  unfold primeTwoSign
  exact neg_one_pow_eq_or ℝ (padicValNat 2 n)

/-- The square of every prime-two coefficient is one. -/
theorem primeTwoSign_sq (n : ℕ) : primeTwoSign n ^ 2 = 1 := by
  rcases primeTwoSign_eq_one_or_neg_one n with h | h <;> rw [h] <;> norm_num

/-- Perfect coefficient anticorrelation on every doubling edge. -/
theorem primeTwo_doubling_product (n : ℕ) (hn : n ≠ 0) :
    primeTwoSign n * primeTwoSign (2 * n) = -1 := by
  rw [primeTwoSign_double n hn]
  calc
    primeTwoSign n * -primeTwoSign n = -(primeTwoSign n ^ 2) := by ring
    _ = -1 := by rw [primeTwoSign_sq]

/-- The prime-two source satisfies the exact delay interface. -/
theorem primeTwoSign_exactDelay : ExactPrimeDelayAt primeTwoSign 2 := by
  intro n hn
  exact primeTwoSign_double n hn

/-- The exact lower bound established on paper for the prime-two source:
for every `T ≥ log 8`, the unchanged causal energy is at least
`((sqrt 2 - 1)^2 / 16) * (exp T - 8)`.
This proposition remains unproved by Lean in this source candidate. -/
def PrimeTwoCausalEnergyLowerBound : Prop :=
  ∀ T : ℝ, Real.log 8 ≤ T →
    ((Real.sqrt 2 - 1) ^ 2 / 16) * (Real.exp T - 8) ≤
      causalEnergy primeTwoSign T

end GRWTSK.NumberTheory.LiouvillePrimeDelayObstruction
