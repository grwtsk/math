/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleReciprocalPrimeMassObstruction
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleReciprocalPrimeMassObstruction

/-!
# Exact growing-prime-band identity for the actual Liouville waveform

This file records the finite-band identity that must precede norm estimates.
The actual Liouville coefficient, the original causal response, every selected
prime, every repeated-prime multiple, every unsifted integer, and the full
physical-time delayed covariance are retained.

The three central identities remain named propositions pending Lean proof.  The
companion review gives their complete finite reindexing derivation and an exact
Cauchy--Schwarz transfer from a nonnegative covariance plus normalized residual
energy to the unchanged all-positive-rate target.
-/

namespace GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity

/-- Total weight of the selected finite prime band. -/
def bandMass (P : Finset ℕ) (w : ℕ → ℝ) : ℝ :=
  ∑ p ∈ P, w p

/-- Weight of selected primes dividing the source index. -/
def selectedDivisorWeight (P : Finset ℕ) (w : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ p ∈ P.filter (fun p => p ∣ n), w p

/-- The part of the actual Liouville waveform carried by multiples of `p`. -/
def primeDivisorWaveform (p : ℕ) (u : ℝ) : ℝ :=
  ∑ n ∈ (Finset.Icc 1 ⌊Real.exp u⌋₊).filter (fun n => p ∣ n),
    coefficient n * pickupResponse n u

/-- The actual Liouville waveform weighted by selected primes not dividing the
source index. -/
def uncoveredWaveform (P : Finset ℕ) (w : ℕ → ℝ) (u : ℝ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊,
    coefficient n * pickupResponse n u * uncoveredWeight P w n

/-- Physical-time covariance with the exact delay `log p`.  The waveform is
already zero before the shifted source is born. -/
def delayedCovariance (p : ℕ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, waveform u * waveform (u - Real.log p)

/-- Weighted complete covariance for a finite prime band. -/
def weightedDelayedCovariance
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∑ p ∈ P,
    (w p / Real.sqrt (p : ℝ)) * delayedCovariance p T

/-- Energy of the complete uncovered signed waveform. -/
def uncoveredEnergy
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, |uncoveredWaveform P w u| ^ 2

/-- Exact one-prime divisor-waveform identity:
`sum_{p | n} λ(n) r_n(u) = -p^(-1/2) F(u-log p)`.

Repeated powers of `p` are included automatically by complete
multiplicativity.  This is a proposition pending Lean formalization. -/
def PrimeDivisorWaveformIdentity : Prop :=
  ∀ (p : ℕ) (u : ℝ), Nat.Prime p →
    primeDivisorWaveform p u =
      -(1 / Real.sqrt (p : ℝ)) * waveform (u - Real.log p)

/-- Exact finite-band waveform identity:
`W F + sum_p w_p p^(-1/2) F(.-log p) = R_P`.

The right side is the complete signed uncovered waveform, not an absolute-value
remainder. -/
def GrowingPrimeBandWaveformIdentity : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ) (u : ℝ),
    (∀ p ∈ P, Nat.Prime p) →
    bandMass P w * waveform u +
        ∑ p ∈ P,
          (w p / Real.sqrt (p : ℝ)) *
            waveform (u - Real.log p) =
      uncoveredWaveform P w u

/-- Integrated exact energy/covariance identity:
`W H + C_P = integral F R_P`.

All signed covariance terms remain on the left and the original causal energy
is unchanged. -/
def GrowingPrimeBandEnergyIdentity : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ),
    (∀ p ∈ P, Nat.Prime p) →
    bandMass P w * energy T +
        weightedDelayedCovariance P w T =
      ∫ u in (0 : ℝ)..T, waveform u * uncoveredWaveform P w u

/-- A concrete noncircular supplier interface.  At every positive target rate,
one finite prime band has positive total weight, nonnegative complete delayed
covariance, and uncovered-waveform energy bounded by its squared band mass
times the target exponential. -/
def PrimeBandResidualCovarianceSupplier : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ (P : Finset ℕ) (w : ℕ → ℝ) (C : ℝ),
      (∀ p ∈ P, Nat.Prime p) ∧
      (∀ p ∈ P, 0 ≤ w p) ∧
      0 < bandMass P w ∧
      0 ≤ C ∧
      ∀ T : ℝ, 0 ≤ T →
        0 ≤ weightedDelayedCovariance P w T ∧
        uncoveredEnergy P w T ≤
          (bandMass P w) ^ 2 * C * Real.exp (ε * T)

/-- Exact transfer proved in the review:
the prime-band supplier and the integrated identity imply the unchanged
Liouville all-positive-rate causal-energy target.

This remains a proposition pending Lean formalization. -/
def PrimeBandSupplierImpliesUniformEnergy : Prop :=
  GrowingPrimeBandEnergyIdentity →
    PrimeBandResidualCovarianceSupplier →
      UniformEnergySupplier

theorem bandMass_nonneg
    {P : Finset ℕ} {w : ℕ → ℝ}
    (hw : ∀ p ∈ P, 0 ≤ w p) :
    0 ≤ bandMass P w := by
  unfold bandMass
  exact Finset.sum_nonneg fun p hp => hw p hp

end GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity
