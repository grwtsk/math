/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleGrowingPrimeBandIdentity
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity

/-!
# Uniform norm equivalence for nonnegative Liouville prime bands

This file records the exact source interfaces for the finite-horizon norm
equivalence proved in the companion review.

For any finite prime band with nonnegative weights and positive total mass, the
normalized uncovered waveform is the original Liouville waveform plus a
positive weighted average of delayed waveforms.  Every delay is an `L²`
contraction on `[0,T]`, and its coefficient is at most `1 / sqrt 2`.
Consequently the normalized residual energy is uniformly comparable with the
original causal energy.

The substantive consequence is negative: allowing the prime band and weights
to depend on `T` does not create a weaker norm-only arithmetic supplier.  The
scale-dependent normalized residual-energy bound is equivalent, up to absolute
constants, to the unchanged all-positive-rate Liouville energy target.

The analytic identities and equivalence declarations below remain named
propositions pending Lean proof.  No new Liouville cancellation estimate and no
Riemann Hypothesis claim is asserted.
-/

namespace GRWTSK.NumberTheory.LiouvillePrimeBandNormEquivalence

/-- A finite prime band with nonnegative weights and positive total mass. -/
structure AdmissibleBand where
  primes : Finset ℕ
  weight : ℕ → ℝ
  prime_mem : ∀ p ∈ primes, Nat.Prime p
  weight_nonneg : ∀ p ∈ primes, 0 ≤ weight p
  mass_pos : 0 < bandMass primes weight

/-- Total mass of an admissible band. -/
def mass (B : AdmissibleBand) : ℝ :=
  bandMass B.primes B.weight

/-- The normalized total coefficient of the delayed-waveform average. -/
def normalizedShiftMass (B : AdmissibleBand) : ℝ :=
  (∑ p ∈ B.primes, B.weight p / Real.sqrt (p : ℝ)) / mass B

/-- The normalized average of the exact delayed Liouville waveforms. -/
def delayedAverageWaveform (B : AdmissibleBand) (u : ℝ) : ℝ :=
  ∑ p ∈ B.primes,
    (B.weight p / (mass B * Real.sqrt (p : ℝ))) *
      waveform (u - Real.log p)

/-- The normalized uncovered signed waveform. -/
def normalizedResidualWaveform (B : AdmissibleBand) (u : ℝ) : ℝ :=
  uncoveredWaveform B.primes B.weight u / mass B

/-- Energy of the normalized uncovered signed waveform. -/
def normalizedResidualEnergy (B : AdmissibleBand) (T : ℝ) : ℝ :=
  uncoveredEnergy B.primes B.weight T / (mass B) ^ 2

/-- Normalized complete delayed covariance. -/
def normalizedDelayedCovariance (B : AdmissibleBand) (T : ℝ) : ℝ :=
  weightedDelayedCovariance B.primes B.weight T / mass B

/-- Energy of the normalized delayed-waveform average. -/
def delayedAverageEnergy (B : AdmissibleBand) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |delayedAverageWaveform B u| ^ 2

/-- A scale-dependent residual-energy supplier: at each physical height `T`,
the finite prime band and weights may be chosen afresh. -/
def ScaleDependentResidualSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        ∃ B : AdmissibleBand,
          normalizedResidualEnergy B T ≤ C * Real.exp (ε * T)

/-- Exact normalized source identity
`R_B / W_B = F + A_B F`, inherited from the complete prime-band identity.

This remains a proposition pending Lean formalization. -/
def NormalizedWaveformIdentity : Prop :=
  GrowingPrimeBandWaveformIdentity →
    ∀ (B : AdmissibleBand) (u : ℝ),
      normalizedResidualWaveform B u =
        waveform u + delayedAverageWaveform B u

/-- Every normalized delayed average is an `L²(0,T)` contraction with operator
bound `normalizedShiftMass B`.

This remains a proposition pending Lean formalization. -/
def FiniteHorizonShiftContraction : Prop :=
  ∀ (B : AdmissibleBand) (T : ℝ), 0 ≤ T →
    delayedAverageEnergy B T ≤
      (normalizedShiftMass B) ^ 2 * energy T

/-- Exact band-dependent two-sided norm comparison.

This remains a proposition pending Lean formalization. -/
def PrimeBandNormEquivalence : Prop :=
  NormalizedWaveformIdentity →
    FiniteHorizonShiftContraction →
      ∀ (B : AdmissibleBand) (T : ℝ), 0 ≤ T →
        (1 - normalizedShiftMass B) ^ 2 * energy T ≤
            normalizedResidualEnergy B T ∧
          normalizedResidualEnergy B T ≤
            (1 + normalizedShiftMass B) ^ 2 * energy T

/-- Uniform comparison over every finite nonnegative prime band:
`3/2 - sqrt 2` and `3/2 + sqrt 2` are the squared constants obtained from
`normalizedShiftMass B ≤ 1 / sqrt 2`.

This remains a proposition pending Lean formalization. -/
def UniformPrimeBandNormEquivalence : Prop :=
  ∀ (B : AdmissibleBand) (T : ℝ), 0 ≤ T →
    (3 / 2 - Real.sqrt 2) * energy T ≤
        normalizedResidualEnergy B T ∧
      normalizedResidualEnergy B T ≤
        (3 / 2 + Real.sqrt 2) * energy T

/-- The scale-dependent residual supplier is equivalent, up to absolute
constants, to the original all-positive-rate Liouville energy target.

This remains a proposition pending Lean formalization. -/
def ScaleDependentResidualSupplierIffUniformEnergy : Prop :=
  UniformPrimeBandNormEquivalence →
    (ScaleDependentResidualSupplier ↔ UniformEnergySupplier)

/-- Paying the full negative part of the normalized delayed covariance restores
the original energy plus nonnegative terms:
`E_B + 2 (-C_B)_+ = H + Q_B + 2 (C_B)_+`.

This identity exposes why a compensated negative-covariance budget is not a
weaker norm-only target.

This remains a proposition pending Lean formalization. -/
def NegativeCovarianceCompensationIdentity : Prop :=
  NormalizedWaveformIdentity →
    ∀ (B : AdmissibleBand) (T : ℝ), 0 ≤ T →
      normalizedResidualEnergy B T +
          2 * max (-normalizedDelayedCovariance B T) 0 =
        energy T + delayedAverageEnergy B T +
          2 * max (normalizedDelayedCovariance B T) 0

theorem mass_pos (B : AdmissibleBand) : 0 < mass B :=
  B.mass_pos

theorem mass_nonneg (B : AdmissibleBand) : 0 ≤ mass B :=
  (mass_pos B).le

theorem mass_ne_zero (B : AdmissibleBand) : mass B ≠ 0 :=
  ne_of_gt (mass_pos B)

theorem prime_mem (B : AdmissibleBand) {p : ℕ} (hp : p ∈ B.primes) :
    Nat.Prime p :=
  B.prime_mem p hp

theorem weight_nonneg (B : AdmissibleBand) {p : ℕ} (hp : p ∈ B.primes) :
    0 ≤ B.weight p :=
  B.weight_nonneg p hp

end GRWTSK.NumberTheory.LiouvillePrimeBandNormEquivalence
