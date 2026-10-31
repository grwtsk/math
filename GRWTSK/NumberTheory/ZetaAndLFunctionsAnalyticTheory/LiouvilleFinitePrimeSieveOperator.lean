/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvillePrimeBandNormEquivalence
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvillePrimeBandNormEquivalence

/-!
# Exact finite-prime sieve operator for the Liouville causal waveform

This file records the source-exact iterated prime-delay factorization developed
in the companion review.

For a finite prime set `P`, composing the exact factors
`I + p^(-1/2) D_(log p)` removes every source index divisible by a selected
prime.  Expanding the product gives a finite subset-delay inclusion-exclusion
formula, while the resulting waveform is exactly the original Liouville source
restricted to integers coprime to the selected prime product.

The corresponding norm inverse pays
`prod p in P, (1 - p^(-1/2))^(-2)`.  Unlike the convex averaged-band residual,
this loss may grow with the band and therefore exposes a genuine sieve-versus-
conditioning tradeoff.  The review also records the obstruction to using this
tradeoff to force bounded total prime-factor degree at subexponential cost.

All analytical identities and asymptotic comparisons remain named
propositions pending Lean proof.  No new Liouville cancellation theorem or RH
claim is asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator

/-- A finite set consisting only of primes. -/
structure PrimeBand where
  primes : Finset ℕ
  prime_mem : ∀ p ∈ primes, Nat.Prime p

/-- Product of the selected primes. -/
def primeProduct (B : PrimeBand) : ℕ :=
  ∏ p ∈ B.primes, p

/-- The source index is not divisible by any selected prime. -/
def survives (B : PrimeBand) (n : ℕ) : Prop :=
  ∀ p ∈ B.primes, ¬p ∣ n

/-- Actual Liouville waveform restricted to indices surviving the finite
prime sieve. -/
def siftedWaveform (B : PrimeBand) (u : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 ⌊Real.exp u⌋₊).filter (survives B),
    coefficient n * pickupResponse n u

/-- Energy of the exact sifted waveform. -/
def siftedEnergy (B : PrimeBand) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |siftedWaveform B u| ^ 2

/-- Product of a subset of selected primes. -/
def subsetProduct (S : Finset ℕ) : ℕ :=
  ∏ p ∈ S, p

/-- Complete subset-delay expansion of the iterated sieve operator. -/
def subsetDelayExpansion (B : PrimeBand) (u : ℝ) : ℝ :=
  ∑ S ∈ B.primes.powerset,
    (1 / Real.sqrt (subsetProduct S : ℝ)) *
      waveform (u - Real.log (subsetProduct S : ℝ))

/-- Lower finite-horizon conditioning factor. -/
def lowerSieveFactor (B : PrimeBand) : ℝ :=
  ∏ p ∈ B.primes, (1 - 1 / Real.sqrt (p : ℝ))

/-- Upper finite-horizon conditioning factor. -/
def upperSieveFactor (B : PrimeBand) : ℝ :=
  ∏ p ∈ B.primes, (1 + 1 / Real.sqrt (p : ℝ))

/-- Squared norm-inverse cost of the iterated sieve operator. -/
def inverseSieveCost (B : PrimeBand) : ℝ :=
  1 / (lowerSieveFactor B) ^ 2

/-- Initial prime band containing every prime at most `Y`. -/
def initialPrimeBand (Y : ℕ) : PrimeBand where
  primes := (Finset.range (Y + 1)).filter Nat.Prime
  prime_mem := by
    intro p hp
    exact (Finset.mem_filter.mp hp).2

/-- Exact inclusion-exclusion identity:
the complete subset-delay expansion equals the actual waveform on indices
coprime to every selected prime.

This remains a proposition pending Lean formalization. -/
def FinitePrimeSieveWaveformIdentity : Prop :=
  ∀ (B : PrimeBand) (u : ℝ),
    subsetDelayExpansion B u = siftedWaveform B u

/-- Exact two-sided finite-horizon norm comparison for the iterated sieve.

This remains a proposition pending Lean formalization. -/
def FinitePrimeSieveNormComparison : Prop :=
  FinitePrimeSieveWaveformIdentity →
    ∀ (B : PrimeBand) (T : ℝ), 0 ≤ T →
      (lowerSieveFactor B) ^ 2 * energy T ≤ siftedEnergy B T ∧
        siftedEnergy B T ≤ (upperSieveFactor B) ^ 2 * energy T

/-- A sufficient scale-dependent sieve supplier.  The prime band may depend on
`T`, but the complete squared inverse-conditioning loss must be paid. -/
def ScaleDependentSieveSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        ∃ B : PrimeBand,
          inverseSieveCost B * siftedEnergy B T ≤
            C * Real.exp (ε * T)

/-- Exact transfer from the paid sieve supplier to the unchanged Liouville
all-positive-rate energy target.

This remains a proposition pending Lean formalization. -/
def ScaleDependentSieveSupplierImpliesUniformEnergy : Prop :=
  FinitePrimeSieveNormComparison →
    ScaleDependentSieveSupplier →
      UniformEnergySupplier

/-- Elementary upper bound for the inverse cost of the initial prime band:
`kappa(Y) <= exp ((8 + 4 sqrt 2) sqrt Y)`.

This remains a proposition pending Lean formalization. -/
def InitialBandInverseCostUpperBound : Prop :=
  ∀ Y : ℕ, 1 ≤ Y →
    inverseSieveCost (initialPrimeBand Y) ≤
      Real.exp ((8 + 4 * Real.sqrt 2) * Real.sqrt (Y : ℝ))

/-- If the selected band omits a prime `q`, every power of `q` survives.
This is the exact support obstruction used to show that bounded total
prime-factor degree requires all sufficiently small primes.

This remains a proposition pending Lean formalization. -/
def OmittedPrimePowerSurvives : Prop :=
  ∀ (B : PrimeBand) (q k : ℕ),
    Nat.Prime q →
      q ∉ B.primes →
        survives B (q ^ k)

/-- A prime-power cutoff excludes every surviving `(k+1)`-st power
below `X`.  Any statement that all surviving integers below `X` have total
prime-factor multiplicity at most `k` implies this predicate. -/
def PrimePowerDegreeCutoff (B : PrimeBand) (X k : ℕ) : Prop :=
  ∀ q : ℕ, Nat.Prime q →
    q ^ (k + 1) ≤ X →
      ¬survives B (q ^ (k + 1))

/-- The exact support implication: a prime-power degree cutoff forces the band
to contain every prime whose `(k+1)`-st power is below the cutoff.

The companion review combines this with `X = floor (exp T)` and the classical
prime number theorem to record the resulting superexponential inverse loss.

This remains a proposition pending Lean formalization. -/
def PrimePowerDegreeCutoffForcesInitialBand : Prop :=
  ∀ (B : PrimeBand) (X k : ℕ),
    PrimePowerDegreeCutoff B X k →
      ∀ q : ℕ, Nat.Prime q →
        q ^ (k + 1) ≤ X →
          q ∈ B.primes

theorem prime_mem (B : PrimeBand) {p : ℕ} (hp : p ∈ B.primes) :
    Nat.Prime p :=
  B.prime_mem p hp

theorem initialPrimeBand_prime
    {Y p : ℕ} (hp : p ∈ (initialPrimeBand Y).primes) :
    Nat.Prime p :=
  (initialPrimeBand Y).prime_mem p hp

end GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
