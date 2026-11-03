/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMWindowedBirthResidueRegularization
import Mathlib.Tactic

/-!
# Individually shrinking, nonoverlapping births for the ORIGINAL signed pickup

The source is the literal moebiusReal n * pickupResponse n t. The width is
1/(n+1), not a single k-dependent width. It fits between consecutive
positive logarithmic births, retaining all original labels and signs.

Only elementary local geometry, smoothness, the exact signed sum and mixed
energy identity are claimed as source proof candidates. The global L2
1/12-error estimate is mathematically derived in the adjacent review; its
integral derivation is NOT a kernel-proved declaration in this file.
The arithmetic all-positive-rate energy supplier remains open.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMWindowedBirthResidueRegularization

/-- One actual source-index-dependent width, positive even at index zero. -/
def adaptiveWidth (n : ℕ) : ℝ := 1 / ((n : ℝ) + 1)

theorem adaptiveWidth_pos (n : ℕ) : 0 < adaptiveWidth n := by
  unfold adaptiveWidth
  positivity

/-- The lower bound log(1+1/n) >= 1/(n+1) on every actual positive birth. -/
theorem adaptiveWidth_le_log_gap {n : ℕ} (hn : 1 ≤ n) :
    adaptiveWidth n ≤ sourceBirthTime (n + 1) - sourceBirthTime n := by
  have hpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hnext : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hcast : ((n + 1 : ℕ) : ℝ) = (n : ℝ) + 1 := by
    push_cast
    ring
  have hlog := Real.log_le_sub_one_of_pos (div_pos hpos hnext)
  rw [Real.log_div (ne_of_gt hpos) (ne_of_gt hnext)] at hlog
  have hquot : (n : ℝ) / ((n + 1 : ℕ) : ℝ) - 1 =
      -(1 / ((n + 1 : ℕ) : ℝ)) := by
    rw [hcast]
    field_simp [show (n : ℝ) + 1 ≠ 0 by positivity]
    ring
  rw [hquot, hcast] at hlog
  change 1 / ((n : ℝ) + 1) ≤
    Real.log ((n + 1 : ℕ) : ℝ) - Real.log (n : ℝ)
  rw [hcast]
  linarith

theorem adaptiveWindow_ends_before_next {n : ℕ} (hn : 1 ≤ n) :
    sourceBirthTime n + adaptiveWidth n ≤ sourceBirthTime (n + 1) := by
  linarith [adaptiveWidth_le_log_gap hn]

/-- Different positive integer births have disjoint open transition windows. -/
theorem adaptiveWindow_separated {n m : ℕ} (hn : 1 ≤ n) (hnm : n < m) :
    sourceBirthTime n + adaptiveWidth n ≤ sourceBirthTime m := by
  have hnat : n + 1 ≤ m := by omega
  have hnext : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hreal : ((n + 1 : ℕ) : ℝ) ≤ (m : ℝ) := by exact_mod_cast hnat
  have hlog : Real.log ((n + 1 : ℕ) : ℝ) ≤ Real.log (m : ℝ) :=
    Real.log_le_log hnext hreal
  exact (adaptiveWindow_ends_before_next hn).trans hlog

def adaptiveActivation (n : ℕ) (t : ℝ) : ℝ :=
  Real.smoothTransition ((t - sourceBirthTime n) / adaptiveWidth n)

/-- A C-infinity replacement of the birth kink, not a new arithmetic response. -/
def adaptiveResponse (n : ℕ) (t : ℝ) : ℝ :=
  adaptiveActivation n t *
    (2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-t / 2)))

theorem adaptiveActivation_smooth (n : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (adaptiveActivation n) := by
  unfold adaptiveActivation
  apply Real.smoothTransition.contDiff.comp
  fun_prop (disch := positivity)

theorem adaptiveResponse_smooth (n : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (adaptiveResponse n) := by
  have hc : ContDiff ℝ (⊤ : ℕ∞)
      (fun t : ℝ => 2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-t / 2))) := by
    fun_prop
  exact (adaptiveActivation_smooth n).mul hc

theorem adaptiveActivation_zero_before (n : ℕ) (t : ℝ)
    (ht : t ≤ sourceBirthTime n) : adaptiveActivation n t = 0 := by
  apply Real.smoothTransition.zero_of_nonpos
  apply div_nonpos_of_nonpos_of_nonneg
  · linarith
  · exact (adaptiveWidth_pos n).le

theorem adaptiveActivation_one_after (n : ℕ) (t : ℝ)
    (ht : sourceBirthTime n + adaptiveWidth n ≤ t) :
    adaptiveActivation n t = 1 := by
  unfold adaptiveActivation
  apply Real.smoothTransition.one_of_one_le
  apply (one_le_div (adaptiveWidth_pos n)).mpr
  linarith

theorem adaptiveResponse_zero_before (n : ℕ) (t : ℝ)
    (ht : t ≤ sourceBirthTime n) : adaptiveResponse n t = 0 := by
  simp [adaptiveResponse, adaptiveActivation_zero_before n t ht]

/-- Beyond its own birth window the response is exactly the source response. -/
theorem adaptiveResponse_eq_source_after (n : ℕ) (t : ℝ)
    (ht : sourceBirthTime n + adaptiveWidth n ≤ t) :
    adaptiveResponse n t = pickupResponse n t := by
  have hborn : sourceBirthTime n ≤ t := by
    linarith [adaptiveWidth_pos n]
  simp [adaptiveResponse, adaptiveActivation_one_after n t ht,
    pickupResponse, sourceBirthTime, hborn]

/-- At the next original birth, no preceding atom retains a smoothing defect. -/
theorem source_defect_zero_after_next (n : ℕ) (hn : 1 ≤ n) (t : ℝ)
    (ht : sourceBirthTime (n + 1) ≤ t) :
    pickupResponse n t - adaptiveResponse n t = 0 := by
  rw [adaptiveResponse_eq_source_after n t
    ((adaptiveWindow_ends_before_next hn).trans ht)]
  ring

/-- The literal closed dyadic inventory; the source coefficient is unchanged. -/
def adaptiveSmoothWave (j : ℕ) (t : ℝ) : ℝ :=
  ∑ n ∈ indices j, moebiusReal n * adaptiveResponse n t

theorem adaptiveSmoothWave_smooth (j : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (adaptiveSmoothWave j) := by
  unfold adaptiveSmoothWave
  apply ContDiff.sum
  intro n hn
  exact contDiff_const.mul (adaptiveResponse_smooth n)

/-- The exact ORIGINAL signed difference, not an unsigned surrogate. -/
def adaptiveErrorWave (j : ℕ) (t : ℝ) : ℝ :=
  originalFixedWave j t - adaptiveSmoothWave j t

theorem adaptiveErrorWave_eq_signed_sum (j : ℕ) (t : ℝ) :
    adaptiveErrorWave j t =
      ∑ n ∈ indices j, moebiusReal n *
        (pickupResponse n t - adaptiveResponse n t) := by
  unfold adaptiveErrorWave originalFixedWave adaptiveSmoothWave
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  ring

theorem originalFixedWave_eq_adaptive_add_error (j : ℕ) (t : ℝ) :
    originalFixedWave j t =
      adaptiveSmoothWave j t + adaptiveErrorWave j t := by
  unfold adaptiveErrorWave
  ring

/-- All signed diagonal, parity, residue and mixed terms remain in the square. -/
theorem adaptive_signed_square (j : ℕ) (t : ℝ) :
    (originalFixedWave j t) ^ 2 =
      (adaptiveSmoothWave j t) ^ 2 +
        2 * adaptiveSmoothWave j t * adaptiveErrorWave j t +
          (adaptiveErrorWave j t) ^ 2 := by
  rw [originalFixedWave_eq_adaptive_add_error]
  ring

def adaptiveSmoothEnergy (j : ℕ) : ℝ :=
  ∫ t in (0 : ℝ)..dyadicTime j, (adaptiveSmoothWave j t) ^ 2

def adaptiveErrorEnergy (j : ℕ) : ℝ :=
  ∫ t in (0 : ℝ)..dyadicTime j, (adaptiveErrorWave j t) ^ 2

/-- Identity with the ACTUAL pickupEnergy, retaining the complete mixed term. -/
theorem original_energy_adaptive_signed_return (j : ℕ) :
    pickupEnergy (dyadicTime j) =
      ∫ t in (0 : ℝ)..dyadicTime j,
        ((adaptiveSmoothWave j t) ^ 2 +
          2 * adaptiveSmoothWave j t * adaptiveErrorWave j t +
            (adaptiveErrorWave j t) ^ 2) := by
  rw [← completeResidueEnergy_eq_pickupEnergy j 1]
  unfold completeResidueEnergy
  apply intervalIntegral.integral_congr
  intro t _
  rw [completeWave_eq_originalFixedWave j 1 t]
  exact adaptive_signed_square j t

/-- This precise global L2 arithmetic-free integral budget is STILL an open
Lean verification target, not an axiom or asserted theorem. -/
def AdaptiveErrorBudget : Prop :=
  ∀ j : ℕ, adaptiveErrorEnergy j ≤ (1 : ℝ) / 12

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMAdaptiveDisjointBirth
