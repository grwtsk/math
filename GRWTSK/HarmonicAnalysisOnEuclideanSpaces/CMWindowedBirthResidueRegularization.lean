/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMCenteredWaypointPartition
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform
import Mathlib.Analysis.SpecialFunctions.SmoothTransition
import Mathlib.Tactic

/-!
# Birth regularization in EVERY source residue channel, with a paid remainder

Merely multiplying the original pickupResponse by a smooth data window does
NOT remove its derivative kink at t=log n. Here the kink itself is smoothed
by Mathlib's C-infinity `Real.smoothTransition`, using a unilateral boundary
of width epsilon_k=1/(k+2). The causal birth time is unchanged, and the
smoothed response equals the ORIGINAL response after t>=log n+epsilon_k.

The original response and signed source are NEVER redefined. The exact
signed difference from smoothing is returned as `regularizationError`.
The original two parities, nonunits, squareful-zero labels and all d^2
additive residues remain present. All cross terms survive when the complete
coherent waveform is squared. The smoother does NOT automatically solve the
unsupplied Mobius energy, Hodge wave, or CERN measurement transfer problems.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMWindowedBirthResidueRegularization

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMCenteredWaypointPartition
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform
open GRWTSK.NumberTheory.Moebius.DyadicWeightedCorrelationInterface

/-- The literal birth coordinate of the original pickupResponse, not a new
arithmetic source or a modified response definition. -/
def sourceBirthTime (n : ℕ) : ℝ := Real.log (n : ℝ)

/-- The exact C-infinity activation in a forward window following the original
birth. No artificial response is inserted before the original birth time. -/
def smoothActivation (k n : ℕ) (t : ℝ) : ℝ :=
  Real.smoothTransition ((t - sourceBirthTime n) / outerRadius k)

/-- Source-born response with the original amplitude multiplied by a smooth
activation. The response is C-infinity for every fixed positive width. -/
def regularizedResponse (k n : ℕ) (t : ℝ) : ℝ :=
  smoothActivation k n t *
    (2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-t / 2)))

theorem smoothActivation_smooth (k n : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (smoothActivation k n) := by
  unfold smoothActivation
  apply Real.smoothTransition.contDiff.comp
  fun_prop (disch := positivity)

theorem regularizedResponse_smooth (k n : ℕ) :
    ContDiff ℝ (⊤ : ℕ∞) (regularizedResponse k n) := by
  have hcoeff : ContDiff ℝ (⊤ : ℕ∞)
      (fun t : ℝ => 2 * ((Real.sqrt (n : ℝ))⁻¹ - Real.exp (-t / 2))) := by
    fun_prop
  exact (smoothActivation_smooth k n).mul hcoeff

/-- Before or at the true source birth, activation remains exactly zero. -/
theorem smoothActivation_zero_before (k n : ℕ) (t : ℝ)
    (ht : t ≤ sourceBirthTime n) : smoothActivation k n t = 0 := by
  apply Real.smoothTransition.zero_of_nonpos
  apply div_nonpos_of_nonpos_of_nonneg
  · linarith
  · exact (outerRadius_pos k).le

/-- Once the shrinking transition has passed, the new activation is one. -/
theorem smoothActivation_one_after (k n : ℕ) (t : ℝ)
    (ht : sourceBirthTime n + outerRadius k ≤ t) :
    smoothActivation k n t = 1 := by
  unfold smoothActivation
  apply Real.smoothTransition.one_of_one_le
  apply (one_le_div (outerRadius_pos k)).mpr
  linarith

/-- The original causal zero is retained before each source birth. -/
theorem regularizedResponse_zero_before (k n : ℕ) (t : ℝ)
    (ht : t ≤ sourceBirthTime n) : regularizedResponse k n t = 0 := by
  simp [regularizedResponse, smoothActivation_zero_before k n t ht]

/-- After a window of radius epsilon_k following the true birth, the C-infinity
regularization returns EXACTLY to the unchanged pickupResponse. -/
theorem regularizedResponse_eq_source_after (k n : ℕ) (t : ℝ)
    (ht : sourceBirthTime n + outerRadius k ≤ t) :
    regularizedResponse k n t = pickupResponse n t := by
  have hborn : sourceBirthTime n ≤ t := by
    linarith [outerRadius_pos k]
  simp [regularizedResponse, smoothActivation_one_after k n t ht,
        pickupResponse, sourceBirthTime, hborn]

/-- Smoothed literal integer-labelled source: no index is projected through
an additive residue quotient, no sign is replaced by its absolute value. -/
def regularizedFixedWave (k j : ℕ) (t : ℝ) : ℝ :=
  ∑ n ∈ indices j, moebiusReal n * regularizedResponse k n t

/-- All existing parity and residue tests, including nonunits, are preserved. -/
def regularizedClassWave (k j d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (t : ℝ) : ℝ :=
  ∑ n ∈ indices j,
    if n % 2 = r ∧ classCoordinate d n = a then
      moebiusReal n * regularizedResponse k n t else 0

def regularizedCompleteWave (k j d : ℕ) [NeZero d] (t : ℝ) : ℝ :=
  ∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
    regularizedClassWave k j d r a t

/-- Unlike a smooth multiplier of an UNSMOOTH original wave, this actually
regularizes the response at its birth. Every finite signed class is C-infinity
at fixed positive window width; the original signed correction remains. -/
theorem regularizedClassWave_smooth (k j d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) :
    ContDiff ℝ (⊤ : ℕ∞) (regularizedClassWave k j d r a) := by
  unfold regularizedClassWave
  apply ContDiff.sum
  intro n hn
  by_cases h : n % 2 = r ∧ classCoordinate d n = a
  · simp only [if_pos h]
    exact contDiff_const.mul (regularizedResponse_smooth k n)
  · simp only [if_neg h]
    exact contDiff_const

/-- Finite sums over ALL parity and additive residues retain the C-infinity
regularized wave, without making the ORIGINAL source falsely smooth. -/
theorem regularizedCompleteWave_smooth (k j d : ℕ) [NeZero d] :
    ContDiff ℝ (⊤ : ℕ∞) (regularizedCompleteWave k j d) := by
  unfold regularizedCompleteWave
  apply ContDiff.sum
  intro r hr
  apply ContDiff.sum
  intro a ha
  exact regularizedClassWave_smooth k j d r a

/-- The exact originally signed difference is a FIRST-CLASS return, never
absorbed into an unproved derivative or discarded by energy positivity. -/
def classRegularizationError (k j d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (t : ℝ) : ℝ :=
  classWave j d r a t - regularizedClassWave k j d r a t

def regularizationError (k j d : ℕ) [NeZero d] (t : ℝ) : ℝ :=
  completeWave j d t - regularizedCompleteWave k j d t

/-- The signed regularization error is summed over ALL source labels,
not estimated by a fictitious positive arithmetic variance. -/
theorem classRegularizationError_source (k j d r : ℕ) [NeZero d]
    (a : ZMod (d * d)) (t : ℝ) :
    classRegularizationError k j d r a t =
      ∑ n ∈ indices j,
        if n % 2 = r ∧ classCoordinate d n = a then
          moebiusReal n * (pickupResponse n t - regularizedResponse k n t)
        else 0 := by
  unfold classRegularizationError classWave regularizedClassWave
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> ring

/-- All signed residue regularization defects add to exactly the old source
wave minus its smooth finite-inventory variant. -/
theorem complete_regularization_error_eq_class_sum
    (k j d : ℕ) [NeZero d] (t : ℝ) :
    regularizationError k j d t =
      ∑ r ∈ Finset.range 2, ∑ a : ZMod (d * d),
        classRegularizationError k j d r a t := by
  unfold regularizationError completeWave regularizedCompleteWave
    classRegularizationError
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro r hr
  rw [← Finset.sum_sub_distrib]

/-- Original complete SIGNED waveform, not the smoothed proxy. -/
theorem original_wave_eq_regularized_add_error (k j d : ℕ) [NeZero d]
    (t : ℝ) :
    completeWave j d t =
      regularizedCompleteWave k j d t + regularizationError k j d t := by
  unfold regularizationError
  ring

/-- Every original mixed parity/residue term is inside this exact square.
The cross term can have either sign; Pythagoras does not delete it. -/
theorem original_signed_square_return (k j d : ℕ) [NeZero d]
    (t : ℝ) :
    (completeWave j d t) ^ 2 =
      (regularizedCompleteWave k j d t) ^ 2 +
        2 * regularizedCompleteWave k j d t * regularizationError k j d t +
        (regularizationError k j d t) ^ 2 := by
  rw [original_wave_eq_regularized_add_error]
  ring

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMWindowedBirthResidueRegularization
