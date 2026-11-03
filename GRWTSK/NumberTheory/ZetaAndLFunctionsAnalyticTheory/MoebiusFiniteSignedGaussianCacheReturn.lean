/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianLogHeatSource
import Mathlib.Tactic

/-!
# Finite signed Gaussian heat cache interface on the REAL arithmetic source

Existing historical grwtsk/math organized-cache sources
  SignedFiniteTimeHeatOfTheActualCompensatedSource.lean
  SourceSignedHeat.lean
  ExactFiniteHeatRemainderAndItsAbsoluteMassBoundary.lean
  SourceHeatBoundaries.lean
consider a signed Gaussian filter k*exp(-s*k^2) and insist on the
exact signed remainder. Their FormalResearch source imports and native
acceptance status have NOT been resolved on the pinned current Mathlib.
This independent finite leaf extracts only the underlying finite-sum
identity and its exact source-specific specialization; it does NOT claim
the historical compensatedFourierSymbol equals the original pickup
coefficient or that its signed-tail theorem supplies RH.

A mode i has real frequency x_i and signed amplitude a_i. The finite
signed observation is sum_i a_i exp(-s*x_i²). Its retained remainder is
sum_i a_i(1-exp(-s*x_i²)). Their sum equals the ORIGINAL full sum for
all real s. Reversing signs reverses the output; no absolute-valued
replacement or source index deletion occurs.

The specialization has x_n=log(n) and a_n=μ(n)*pickupResponse(n,u)
for every original integer n in endpointIndex(T). Thus the actual
original signed causal waveform is exactly reconstructed on [0,T].
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.FiniteSignedGaussianCacheReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
open GRWTSK.NumberTheory.Moebius.FiniteTorsionResolutionReturn
open GRWTSK.NumberTheory.Moebius.FinitePhaseDecoderBudget
open GRWTSK.NumberTheory.Moebius.WeightedDecoderEnergyTransfer
open GRWTSK.NumberTheory.Moebius.GaussianLogHeatSource

universe u

/-- Signed finite Gaussian filter, without a probabilistic
unit-mass or coefficient-cancellation assumption. -/
def finiteSignedHeat {α : Type u} (S : Finset α)
    (frequency amplitude : α → ℝ) (s : ℝ) : ℝ :=
  ∑ i ∈ S, amplitude i * Real.exp (-s * frequency i ^ 2)

/-- The exact signed additive difference between the ORIGINAL source
and the finite Gaussian observation. -/
def finiteSignedHeatRemainder {α : Type u} (S : Finset α)
    (frequency amplitude : α → ℝ) (s : ℝ) : ℝ :=
  ∑ i ∈ S, amplitude i * (1 - Real.exp (-s * frequency i ^ 2))

/-- The historical odd heat integrand k^3 exp(-s*k²) has a finite
source analogue when amplitude=k; here arbitrary amplitudes remain
attached to the original source instead of being silently replaced. -/
def finiteHeatGenerator {α : Type u} (S : Finset α)
    (frequency amplitude : α → ℝ) (s : ℝ) : ℝ :=
  ∑ i ∈ S, amplitude i * frequency i ^ 2 *
    Real.exp (-s * frequency i ^ 2)

theorem finiteSignedHeat_zero {α : Type u} (S : Finset α)
    (frequency amplitude : α → ℝ) :
    finiteSignedHeat S frequency amplitude 0 = ∑ i ∈ S, amplitude i := by
  simp [finiteSignedHeat]

/-- This is exact finite source reconciliation, not a growth estimate
for the signed remainder. -/
theorem original_eq_signed_heat_add_remainder {α : Type u}
    (S : Finset α) (frequency amplitude : α → ℝ) (s : ℝ) :
    (∑ i ∈ S, amplitude i) =
      finiteSignedHeat S frequency amplitude s +
        finiteSignedHeatRemainder S frequency amplitude s := by
  unfold finiteSignedHeat finiteSignedHeatRemainder
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  ring

/-- The original sign orientation survives the finite heat filter. -/
theorem finiteSignedHeat_neg {α : Type u}
    (S : Finset α) (frequency amplitude : α → ℝ) (s : ℝ) :
    finiteSignedHeat S frequency (fun i => -amplitude i) s =
      -finiteSignedHeat S frequency amplitude s := by
  unfold finiteSignedHeat
  calc
    (∑ i ∈ S, (-amplitude i) * Real.exp (-s * frequency i ^ 2)) =
        ∑ i ∈ S, -(amplitude i * Real.exp (-s * frequency i ^ 2)) := by
          apply Finset.sum_congr rfl
          intro i hi
          ring
    _ = _ := by rw [Finset.sum_neg_distrib]

theorem finiteSignedHeatRemainder_neg {α : Type u}
    (S : Finset α) (frequency amplitude : α → ℝ) (s : ℝ) :
    finiteSignedHeatRemainder S frequency (fun i => -amplitude i) s =
      -finiteSignedHeatRemainder S frequency amplitude s := by
  unfold finiteSignedHeatRemainder
  calc
    (∑ i ∈ S,
      (-amplitude i) * (1 - Real.exp (-s * frequency i ^ 2))) =
        ∑ i ∈ S,
          -(amplitude i * (1 - Real.exp (-s * frequency i ^ 2))) := by
          apply Finset.sum_congr rfl
          intro i hi
          ring
    _ = _ := by rw [Finset.sum_neg_distrib]

/-- The ORIGINAL Mobius-labelled causal waveform is a specialization
of the finite signed heat filter with literal log-integer frequency. -/
theorem finiteSignedHeat_eq_actualHeatWave (s T u : ℝ) :
    finiteSignedHeat (endpointIndex T) logFrequency
      (fun n => moebiusReal n * pickupResponse n u) s =
        sourceHeatWave s T u := by
  unfold finiteSignedHeat sourceHeatWave observedWave
  apply Finset.sum_congr rfl
  intro n hn
  change
    (moebiusReal n * pickupResponse n u) * logHeatMultiplier s n =
      sourceHeatCoeff s (sourceIndex (encode n)) *
        pickupResponse n u
  rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]
  unfold sourceHeatCoeff
  ring

/-- The finite signed cache-remainder is exactly the original
source-minus-decoded heat coefficient wave, not merely an upper bound. -/
theorem finiteSignedHeatRemainder_eq_actualErrorWave (s T u : ℝ) :
    finiteSignedHeatRemainder (endpointIndex T) logFrequency
      (fun n => moebiusReal n * pickupResponse n u) s =
        sourceHeatErrorWave s T u := by
  unfold finiteSignedHeatRemainder sourceHeatErrorWave errorWave
  apply Finset.sum_congr rfl
  intro n hn
  change
    (moebiusReal n * pickupResponse n u) *
        (1 - logHeatMultiplier s n) =
      coefficientError sourceHeatPhase (sourceHeatCoeff s) n *
        pickupResponse n u
  rw [sourceHeatCoeff_error s n (Finset.mem_Icc.mp hn).1]
  ring

/-- The complete original physical pickup is the signed heat
observation plus the full historical-style signed remainder on every
nonnegative physical time in the original endpoint inventory. -/
theorem wholePickup_eq_signedHeatCache_add_remainder
    (s : ℝ) {T u : ℝ} (hu : 0 ≤ u) (huT : u ≤ T) :
    wholePickup u =
      finiteSignedHeat (endpointIndex T) logFrequency
        (fun n => moebiusReal n * pickupResponse n u) s +
      finiteSignedHeatRemainder (endpointIndex T) logFrequency
        (fun n => moebiusReal n * pickupResponse n u) s := by
  rw [finiteSignedHeat_eq_actualHeatWave,
      finiteSignedHeatRemainder_eq_actualErrorWave]
  exact wholePickup_eq_heat_add_exact_error s hu huT

end GRWTSK.NumberTheory.Moebius.FiniteSignedGaussianCacheReturn
