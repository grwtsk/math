/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMOriginalHighSmoothGeometricSummation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib.Tactic

/-!
# Direct original unsmoothed low-sector physical-time energy

The source is the unchanged wholePickup with its true original finite
integer inventory. The original signed high/low mixed term remains.
No adaptive smoothing, periodic Fourier restriction, or Born-error
payment is involved in this source-facing route.

The all-rate original-low arithmetic supplier and the pure scalar
high-envelope are explicit independent premises, NOT proved here.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPhysicalEnergy

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge
open GRWTSK.NumberTheory.Moebius.CausalMertensSquareEnergyIntegration
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveHighSmoothAllShell
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothDirectEnergy
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothGeometricSummation

/-- Exact original closed-inventory source reindex. -/
theorem originalFixedWave_eq_finitePickup (j : ℕ) (u : ℝ) :
    originalFixedWave j u = finitePickup (2 ^ j) u := by
  simpa only [originalFixedWave, indices] using
    (finitePickup_eq_original_closed_inventory (2 ^ j) u).symm

theorem originalFixedWave_continuous (j : ℕ) :
    Continuous (originalFixedWave j) := by
  have heq : originalFixedWave j = finitePickup (2 ^ j) := by
    funext u
    exact originalFixedWave_eq_finitePickup j u
  rw [heq]
  exact finitePickup_continuous (2 ^ j)

/-- Source index positivity is the only prerequisite to original atom
continuity. No smooth replacement is used. -/
private theorem continuous_signed_source_sum :
    ∀ S : Finset ℕ, (∀ n ∈ S, 1 ≤ n) →
      Continuous (fun u : ℝ => ∑ n ∈ S, originalSignedAtom n u) := by
  classical
  intro S
  induction S using Finset.induction_on with
  | empty =>
      intro _
      simpa using (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
  | @insert n S hn ih =>
      intro hS
      have hp : 1 ≤ n := hS n (Finset.mem_insert_self n S)
      have hS' : ∀ m ∈ S, 1 ≤ m := by
        intro m hm
        exact hS m (Finset.mem_insert_of_mem hm)
      have hc : Continuous (originalSignedAtom n) := by
        unfold originalSignedAtom
        exact (pickupResponse_continuous n hp).const_mul _
      simpa only [Finset.sum_insert hn] using hc.add (ih hS')

theorem originalHighShellWave_continuous (B : PrimeBand) (s : ℕ) :
    Continuous (originalHighShellWave B s) := by
  unfold originalHighShellWave
  exact continuous_signed_source_sum (highShell B s) (by
    intro n hn
    have h := highShell_gt_lower B s n hn
    have hpow : 1 ≤ 2 ^ s := by positivity
    omega)

theorem originalHighWave_continuous (B : PrimeBand) (j : ℕ) :
    Continuous (originalHighWave B j) := by
  induction j with
  | zero =>
      simpa [originalHighWave] using
        (continuous_const : Continuous (fun _ : ℝ => (0 : ℝ)))
  | succ j ih =>
      simpa only [originalHighWave, Finset.sum_range_succ] using
        ih.add (originalHighShellWave_continuous B j)

theorem originalLowWave_continuous (B : PrimeBand) (j : ℕ) :
    Continuous (originalLowWave B j) := by
  unfold originalLowWave
  exact (originalFixedWave_continuous j).sub
    (originalHighWave_continuous B j)

/-- The ORIGINAL pickupEnergy, identified with its true physical-time
integral and not an independently redefined positivity functional. -/
theorem pickupEnergy_eq_originalFixedWave_dyadic (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ u in (0 : ℝ)..dyadicTime j, originalFixedWave j u ^ 2 := by
  rw [pickupEnergy_eq_integral_finitePickup
    (dyadicTime j) (dyadicTime_nonnegative j), dyadic_cutoff]
  apply intervalIntegral.integral_congr
  intro u hu
  rw [originalFixedWave_eq_finitePickup]

def originalLowEnergy (B : PrimeBand) (j : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..dyadicTime j, originalLowWave B j u ^ 2

/-- Integrated ORIGINAL energy has only a linear high-sector allowance,
not an adaptive regularization term. -/
theorem pickupEnergy_le_two_low_plus_high
    (B : PrimeBand) (j : ℕ) (K : ℝ)
    (hK : ∀ u : ℝ, |originalHighWave B j u| ≤ K) :
    pickupEnergy (dyadicTime j) ≤
      2 * originalLowEnergy B j + 2 * K ^ 2 * dyadicTime j := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hfi : IntervalIntegrable (fun u : ℝ => originalFixedWave j u ^ 2)
      volume 0 T := ((originalFixedWave_continuous j).pow 2).intervalIntegrable 0 T
  have hli : IntervalIntegrable (fun u : ℝ => originalLowWave B j u ^ 2)
      volume 0 T := ((originalLowWave_continuous B j).pow 2).intervalIntegrable 0 T
  have htwo : IntervalIntegrable (fun u : ℝ =>
      2 * originalLowWave B j u ^ 2) volume 0 T := hli.const_mul 2
  have hconst : IntervalIntegrable (fun _ : ℝ => 2 * K ^ 2)
      volume 0 T := continuous_const.intervalIntegrable 0 T
  have hsum : IntervalIntegrable (fun u : ℝ =>
      2 * originalLowWave B j u ^ 2 + 2 * K ^ 2) volume 0 T :=
    htwo.add hconst
  have hmono :
      (∫ u in (0 : ℝ)..T, originalFixedWave j u ^ 2) ≤
      ∫ u in (0 : ℝ)..T,
        2 * originalLowWave B j u ^ 2 + 2 * K ^ 2 := by
    apply intervalIntegral.integral_mono_on hT hfi hsum
    intro u hu
    exact original_sq_le_low_of_high_bound B j u K (hK u)
  calc
    pickupEnergy (dyadicTime j) =
        ∫ u in (0 : ℝ)..T, originalFixedWave j u ^ 2 :=
      pickupEnergy_eq_originalFixedWave_dyadic j
    _ ≤ ∫ u in (0 : ℝ)..T,
        2 * originalLowWave B j u ^ 2 + 2 * K ^ 2 := hmono
    _ = 2 * originalLowEnergy B j + 2 * K ^ 2 * dyadicTime j := by
      rw [intervalIntegral.integral_add htwo hconst,
        intervalIntegral.integral_const_mul]
      simp [originalLowEnergy, T]
      ring

/-- Reverse comparison: low is no more difficult than original coherent
energy plus a uniform finite-bank source allowance. -/
theorem originalLowEnergy_le_two_pickup_plus_high
    (B : PrimeBand) (j : ℕ) (K : ℝ)
    (hK : ∀ u : ℝ, |originalHighWave B j u| ≤ K) :
    originalLowEnergy B j ≤
      2 * pickupEnergy (dyadicTime j) + 2 * K ^ 2 * dyadicTime j := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hfi : IntervalIntegrable (fun u : ℝ => originalFixedWave j u ^ 2)
      volume 0 T := ((originalFixedWave_continuous j).pow 2).intervalIntegrable 0 T
  have hli : IntervalIntegrable (fun u : ℝ => originalLowWave B j u ^ 2)
      volume 0 T := ((originalLowWave_continuous B j).pow 2).intervalIntegrable 0 T
  have htwo : IntervalIntegrable (fun u : ℝ =>
      2 * originalFixedWave j u ^ 2) volume 0 T := hfi.const_mul 2
  have hconst : IntervalIntegrable (fun _ : ℝ => 2 * K ^ 2)
      volume 0 T := continuous_const.intervalIntegrable 0 T
  have hsum : IntervalIntegrable (fun u : ℝ =>
      2 * originalFixedWave j u ^ 2 + 2 * K ^ 2) volume 0 T :=
    htwo.add hconst
  have hmono :
      (∫ u in (0 : ℝ)..T, originalLowWave B j u ^ 2) ≤
      ∫ u in (0 : ℝ)..T,
        2 * originalFixedWave j u ^ 2 + 2 * K ^ 2 := by
    apply intervalIntegral.integral_mono_on hT hli hsum
    intro u hu
    exact original_low_sq_le_full_of_high_bound B j u K (hK u)
  calc
    originalLowEnergy B j =
        ∫ u in (0 : ℝ)..T, originalLowWave B j u ^ 2 := rfl
    _ ≤ ∫ u in (0 : ℝ)..T,
        2 * originalFixedWave j u ^ 2 + 2 * K ^ 2 := hmono
    _ = 2 * pickupEnergy (dyadicTime j) + 2 * K ^ 2 * dyadicTime j := by
      rw [intervalIntegral.integral_add htwo hconst,
        intervalIntegral.integral_const_mul]
      simp [← pickupEnergy_eq_originalFixedWave_dyadic j, T]
      ring

/-- Independent RH-strength arithmetic premise: the same literal
original signed source after subtracting only the counted high shells. -/
def OriginalLowAllRate (B : PrimeBand) : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      originalLowEnergy B j ≤ C * Real.exp (ε * dyadicTime j)

/-- Conditional only. This consumer does NOT prove OriginalLowAllRate,
GlobalHighEnvelope, or RH unconditionally. -/
theorem riemannHypothesis_of_originalLowAllRate
    (B : PrimeBand) (hhigh : GlobalHighEnvelope)
    (hlow : OriginalLowAllRate B) :
    _root_.RiemannHypothesis := by
  obtain ⟨K, hK, hhighK⟩ :=
    originalHighWave_uniform_of_global_envelope B hhigh
  have hlinear : SubexponentialUpper (fun T : ℝ => 2 * K ^ 2 * T) := by
    apply subexponentialUpper_of_polynomial
      (C := 2 * K ^ 2) (q := 1) (by positivity)
    intro T hT
    rw [Real.rpow_one]
    nlinarith [sq_nonneg K]
  have hgrid : AllGridUpper pickupEnergy (Real.log 2) := by
    intro ε hε
    obtain ⟨C, hC, hc⟩ := hlow ε hε
    obtain ⟨D, hD, hd⟩ := hlinear ε hε
    refine ⟨2 * C + D, by positivity, ?_⟩
    intro j
    have horig := pickupEnergy_le_two_low_plus_high B j K (hhighK j)
    calc
      pickupEnergy (dyadicTime j) ≤
          2 * originalLowEnergy B j + 2 * K ^ 2 * dyadicTime j := horig
      _ ≤ 2 * (C * Real.exp (ε * dyadicTime j)) +
          D * Real.exp (ε * dyadicTime j) := by
        apply add_le_add
        · exact mul_le_mul_of_nonneg_left (hc j) (by norm_num)
        · exact hd (dyadicTime j) (dyadicTime_nonnegative j)
      _ = (2 * C + D) * Real.exp (ε * dyadicTime j) := by ring
  exact riemannHypothesis_of_energy_good_scales dyadic_coverage
    ((allGridUpper_iff_subexponentialOn log_two_positive).mp hgrid)

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMOriginalHighSmoothPhysicalEnergy
