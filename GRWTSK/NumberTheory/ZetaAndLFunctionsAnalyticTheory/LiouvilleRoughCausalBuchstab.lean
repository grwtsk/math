/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleFinitePrimeSieveOperator
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator

/-!
# Rough Liouville causal Buchstab identity and proportional-cutoff obstruction

This source records two exact interfaces developed in the companion review.

First, least-prime-factor partitioning gives a signed causal Buchstab identity
for the actual Liouville waveform.  The descendants retain repeated prime
powers, all surviving rough integers, the original causal response, and zero
birth collars.

Second, the review proves analytically that the initial-prime cutoff
`Y(T) = floor (exp (2 T / 5))` does not produce a small rough waveform.
On the terminal physical-time interval its actual Liouville prefix has a
negative prime-versus-semiprime main term, yielding rough causal energy
`≫ exp T / T^2`.

The analytical identities, prime-number-theorem input, and energy lower bound
remain named propositions pending Lean formalization.  No new cancellation
estimate for the original Liouville energy and no Riemann Hypothesis claim is
asserted.
-/

namespace GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab

/-- Every prime divisor of `n` is strictly larger than `Y`. -/
def roughAbove (Y n : ℕ) : Prop :=
  ∀ p : ℕ, Nat.Prime p → p ∣ n → Y < p

/-- Every prime divisor of `n` is at least `p`.  This closed condition is the
correct descendant condition after extracting the least prime factor `p`;
repeated powers of `p` remain included. -/
def roughAtLeast (p n : ℕ) : Prop :=
  ∀ q : ℕ, Nat.Prime q → q ∣ n → p ≤ q

/-- Actual Liouville prefix on integers with no prime divisor at most `Y`. -/
def roughPrefixAbove (Y N : ℕ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 N).filter (roughAbove Y), coefficient n

/-- Actual causal Liouville waveform on integers with no prime divisor at most
`Y`. -/
def roughWaveformAbove (Y : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 ⌊Real.exp u⌋₊).filter (roughAbove Y),
    coefficient n * pickupResponse n u

/-- Causal energy of the rough Liouville waveform. -/
def roughEnergyAbove (Y : ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |roughWaveformAbove Y u| ^ 2

/-- Closed rough descendant waveform after extracting least prime `p`. -/
def roughWaveformAtLeast (p : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 ⌊Real.exp u⌋₊).filter (roughAtLeast p),
    coefficient n * pickupResponse n u

/-- Primes in the half-open arithmetic cutoff interval `(Y, Z]`. -/
def primeCutoffInterval (Y Z : ℕ) : Finset ℕ :=
  (Finset.Ioc Y Z).filter Nat.Prime

/-- The exact least-prime-factor causal Buchstab identity.

For each source index removed when the cutoff grows from `Y` to `Z`, extract
its least prime `p ∈ (Y,Z]`.  Complete multiplicativity contributes the minus
sign, response scaling contributes `p^(-1/2)` and the descendant keeps every
prime factor at least `p`.

This remains a proposition pending Lean formalization. -/
def CausalBuchstabWaveformIdentity : Prop :=
  ∀ (Y Z : ℕ) (u : ℝ), Y ≤ Z →
    roughWaveformAbove Y u =
      roughWaveformAbove Z u -
        ∑ p ∈ primeCutoffInterval Y Z,
          (1 / Real.sqrt (p : ℝ)) *
            roughWaveformAtLeast p (u - Real.log p)

/-- Terminal Buchstab identity.  Taking the upper cutoff beyond every active
source index leaves only the unit response.

This remains a proposition pending Lean formalization. -/
def TerminalCausalBuchstabIdentity : Prop :=
  ∀ (Y : ℕ) (u : ℝ),
    roughWaveformAbove Y u =
      pickupResponse 1 u -
        ∑ p ∈ primeCutoffInterval Y ⌊Real.exp u⌋₊,
          (1 / Real.sqrt (p : ℝ)) *
            roughWaveformAtLeast p (u - Real.log p)

/-- Complete signed least-prime-factor covariance.  The prime sum is formed
before any positive-part or norm inequality. -/
def buchstabCovariance (Y : ℕ) (T : ℝ) : ℝ :=
  ∑ p ∈ primeCutoffInterval Y ⌊Real.exp T⌋₊,
    (1 / Real.sqrt (p : ℝ)) *
      ∫ u in (0 : ℝ)..T,
        roughWaveformAbove Y u *
          roughWaveformAtLeast p (u - Real.log p)

/-- Energy of the harmless unit response. -/
def unitResponseEnergy (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |pickupResponse 1 u| ^ 2

/-- Integrated signed Buchstab identity:
`E_Y = <F_Y,r_1> - C_Y`.

This remains a proposition pending Lean formalization. -/
def CausalBuchstabEnergyIdentity : Prop :=
  TerminalCausalBuchstabIdentity →
    ∀ (Y : ℕ) (T : ℝ), 0 ≤ T →
      roughEnergyAbove Y T =
        (∫ u in (0 : ℝ)..T,
          roughWaveformAbove Y u * pickupResponse 1 u) -
        buchstabCovariance Y T

/-- Exact one-sided transfer from the negative part of the complete Buchstab
covariance.  Young's inequality gives
`E_Y ≤ unitResponseEnergy + 2 * max (-C_Y) 0`.

This remains a proposition pending Lean formalization. -/
def BuchstabNegativeCovarianceTransfer : Prop :=
  CausalBuchstabEnergyIdentity →
    ∀ (Y : ℕ) (T : ℝ), 0 ≤ T →
      roughEnergyAbove Y T ≤
        unitResponseEnergy T + 2 * max (-buchstabCovariance Y T) 0

/-- Equality between the rough waveform and the previously published exact
initial-prime sieve source. -/
def RoughWaveformEqualsInitialSieve : Prop :=
  ∀ (Y : ℕ) (u : ℝ),
    roughWaveformAbove Y u =
      siftedWaveform (initialPrimeBand Y) u

/-- A paid signed-Buchstab supplier.  The complete inverse conditioning cost is
retained, while only the negative part of the complete signed least-prime
covariance must be controlled. -/
def PaidBuchstabCovarianceSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        ∃ Y : ℕ,
          inverseSieveCost (initialPrimeBand Y) *
            (unitResponseEnergy T +
              2 * max (-buchstabCovariance Y T) 0) ≤
            C * Real.exp (ε * T)

/-- Exact transfer from the source identity, paid conditioning and one-sided
signed covariance supplier to the unchanged Liouville energy target.

This remains a proposition pending Lean formalization. -/
def PaidBuchstabSupplierImpliesUniformEnergy : Prop :=
  RoughWaveformEqualsInitialSieve →
    FinitePrimeSieveNormComparison →
      BuchstabNegativeCovarianceTransfer →
        PaidBuchstabCovarianceSupplier →
          UniformEnergySupplier

/-- Horizon-dependent proportional cutoff used in the unconditional
obstruction. -/
def proportionalCutoff (T : ℝ) : ℕ :=
  ⌊Real.exp ((2 / 5 : ℝ) * T)⌋₊

/-- Exact initial prime band for the proportional cutoff. -/
def proportionalBand (T : ℝ) : PrimeBand :=
  initialPrimeBand (proportionalCutoff T)

/-- Rough energy at the same horizon that selects the proportional cutoff. -/
def proportionalRoughEnergy (T : ℝ) : ℝ :=
  siftedEnergy (proportionalBand T) T

/-- Unconditional programme-specific obstruction proved in the companion
review from the prime number theorem and the exact causal Abel identity.

There are absolute positive constants `c,T₀` such that
`T^2 E_rough(T) ≥ c exp T` for all `T ≥ T₀`, where the cutoff is
`exp (2T/5)`.  Thus proportional roughness retains positive exponential
energy even before inverse conditioning is paid.

This remains a proposition pending Lean formalization. -/
def ProportionalRoughEnergyLowerBound : Prop :=
  ∃ c T₀ : ℝ, 0 < c ∧ 0 ≤ T₀ ∧
    ∀ T : ℝ, T₀ ≤ T →
      c * Real.exp T ≤ T ^ 2 * proportionalRoughEnergy T

end GRWTSK.NumberTheory.LiouvilleRoughCausalBuchstab
