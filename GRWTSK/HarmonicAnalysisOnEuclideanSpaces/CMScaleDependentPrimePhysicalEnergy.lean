/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeSparseEnergy
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothPhysicalEnergy
import Mathlib.Tactic

/-!
# True original causal energy, removing an INFINITE sparse-prime family

At time T=dyadicTime (2*j), the pinned original Möbius source is the
unmodified pickupEnergy and originalFixedWave. The genuine moving-bank
prime high source has |H_j(u)|<=4 uniformly by Bertrand, original
response amplitude, and a FINITE 1/2-geometric series.

The exact original low source subtracts those actual original signed
prime atoms and retains every other integer (including n=1, nonunits,
both parities and squareful zeros). Its complete signed mixed square
is NOT deleted, but bounded using (a+b)^2<=2a^2+2b^2.

The physically integrated comparison is therefore:
  H_original(T) <= 2 H_sparseLow(T) + 32*T;
  H_sparseLow(T) <= 2 H_original(T) + 32*T.

This has NO Mertens/RH/GRH hypothesis and no regularization remainder.
The hard all-positive-rate sparse LOW energy is an independent OPEN
arithmetic question; the high part has not produced cancellation.
All source proofs are candidates, native acceptance NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimePhysicalEnergy

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPhysicalEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeSparseEnergy

theorem sparseSignedAtom_continuous (s : ℕ) :
    Continuous (sparseSignedAtom s) := by
  unfold sparseSignedAtom originalSignedAtom
  have hp : 1 ≤ sparsePrime s := by
    have h := chosenPrime_gt (2 * s)
    have hpow : 1 ≤ 2 ^ (2 * s) := by positivity
    dsimp [sparsePrime]
    omega
  exact (pickupResponse_continuous (sparsePrime s) hp).const_mul _

theorem sparsePrimeWave_continuous (j : ℕ) :
    Continuous (sparsePrimeWave j) := by
  induction j with
  | zero =>
      simpa [sparsePrimeWave] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
  | succ j ih =>
      simpa only [sparsePrimeWave, Finset.sum_range_succ] using
        ih.add (sparseSignedAtom_continuous j)

theorem sparseLowWave_continuous (j : ℕ) :
    Continuous (sparseLowWave j) := by
  unfold sparseLowWave
  exact (originalFixedWave_continuous (2 * j)).sub
    (sparsePrimeWave_continuous j)

def sparseLowEnergy (j : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..dyadicTime (2 * j),
    (sparseLowWave j u) ^ 2

/-- Exact originally requested physical pickupEnergy and the complete
source low/high split; no new quadratic surrogate is substituted. -/
theorem pickupEnergy_le_sparseLow_plus_linear (j : ℕ) :
    pickupEnergy (dyadicTime (2 * j)) ≤
      2 * sparseLowEnergy j + 32 * dyadicTime (2 * j) := by
  let T := dyadicTime (2 * j)
  have hT : 0 ≤ T := dyadicTime_nonnegative (2 * j)
  have hF : IntervalIntegrable
      (fun u : ℝ => originalFixedWave (2 * j) u ^ 2) volume 0 T :=
    ((originalFixedWave_continuous (2 * j)).pow 2).intervalIntegrable 0 T
  have hL : IntervalIntegrable
      (fun u : ℝ => sparseLowWave j u ^ 2) volume 0 T :=
    ((sparseLowWave_continuous j).pow 2).intervalIntegrable 0 T
  have h2L : IntervalIntegrable
      (fun u : ℝ => 2 * sparseLowWave j u ^ 2) volume 0 T :=
    hL.const_mul 2
  have hconst : IntervalIntegrable
      (fun _ : ℝ => (32 : ℝ)) volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  have hsum := h2L.add hconst
  have hmono :
      (∫ u in (0 : ℝ)..T,
        originalFixedWave (2 * j) u ^ 2) ≤
      ∫ u in (0 : ℝ)..T,
        2 * sparseLowWave j u ^ 2 + 32 := by
    apply intervalIntegral.integral_mono_on hT hF hsum
    intro u hu
    exact original_even_sq_le_sparseLow j u
  calc
    pickupEnergy (dyadicTime (2 * j)) =
        ∫ u in (0 : ℝ)..T, originalFixedWave (2 * j) u ^ 2 :=
      pickupEnergy_eq_originalFixedWave_dyadic (2 * j)
    _ ≤ ∫ u in (0 : ℝ)..T, 2 * sparseLowWave j u ^ 2 + 32 := hmono
    _ = 2 * sparseLowEnergy j + 32 * dyadicTime (2 * j) := by
      rw [intervalIntegral.integral_add h2L hconst,
        intervalIntegral.integral_const_mul]
      simp [sparseLowEnergy, T]
      ring

/-- Reverse physical transfer. The sparse infinite high correction is
bounded but cannot supply the needed arithmetic cancellation. -/
theorem sparseLowEnergy_le_pickup_plus_linear (j : ℕ) :
    sparseLowEnergy j ≤
      2 * pickupEnergy (dyadicTime (2 * j)) + 32 * dyadicTime (2 * j) := by
  let T := dyadicTime (2 * j)
  have hT : 0 ≤ T := dyadicTime_nonnegative (2 * j)
  have hF : IntervalIntegrable
      (fun u : ℝ => originalFixedWave (2 * j) u ^ 2) volume 0 T :=
    ((originalFixedWave_continuous (2 * j)).pow 2).intervalIntegrable 0 T
  have hL : IntervalIntegrable
      (fun u : ℝ => sparseLowWave j u ^ 2) volume 0 T :=
    ((sparseLowWave_continuous j).pow 2).intervalIntegrable 0 T
  have h2F : IntervalIntegrable
      (fun u : ℝ => 2 * originalFixedWave (2 * j) u ^ 2) volume 0 T :=
    hF.const_mul 2
  have hconst : IntervalIntegrable
      (fun _ : ℝ => (32 : ℝ)) volume 0 T :=
    continuous_const.intervalIntegrable 0 T
  have hsum := h2F.add hconst
  have hmono :
      (∫ u in (0 : ℝ)..T, sparseLowWave j u ^ 2) ≤
      ∫ u in (0 : ℝ)..T,
        2 * originalFixedWave (2 * j) u ^ 2 + 32 := by
    apply intervalIntegral.integral_mono_on hT hL hsum
    intro u hu
    exact sparseLow_sq_le_original_even j u
  calc
    sparseLowEnergy j =
        ∫ u in (0 : ℝ)..T, sparseLowWave j u ^ 2 := rfl
    _ ≤ ∫ u in (0 : ℝ)..T,
        2 * originalFixedWave (2 * j) u ^ 2 + 32 := hmono
    _ = 2 * pickupEnergy (dyadicTime (2 * j)) + 32 * dyadicTime (2 * j) := by
      rw [intervalIntegral.integral_add h2F hconst,
        intervalIntegral.integral_const_mul]
      simp [← pickupEnergy_eq_originalFixedWave_dyadic (2 * j), T]
      ring

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimePhysicalEnergy
