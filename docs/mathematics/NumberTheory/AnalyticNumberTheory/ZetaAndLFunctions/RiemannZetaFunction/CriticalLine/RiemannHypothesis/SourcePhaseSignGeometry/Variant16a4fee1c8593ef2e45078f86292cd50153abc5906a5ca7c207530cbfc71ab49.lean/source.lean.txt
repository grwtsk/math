import FormalResearch.RiemannHypothesis.SourcePairedTailTest
import FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature
import FormalResearch.RiemannHypothesis.SourcePairedTailPrimeBlock

/-!
# Literal paired-tail phase prefixes and scalar sign geometry

Maintained review-branch candidate promoted from seven independently checked private
proofs. Focused kernel checks are recorded separately; complete, hosted-CI and
accepted-main integration remain separate. No measure coupling, arithmetic lower
witness or positive prime atom is asserted.
The denominator is the derivative mass `negativeMass A = positiveMass A + 1`,
not the arithmetic upper cutoff `floor(exp(2*A))`.

AI attribution: developed with OpenAI Codex; Lean checks proof terms.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePhaseSignGeometry

open MeasureTheory Set
open SourcePairedTailTest SourcePairedTailQuadrature SourcePairedTailPrimeBlock
open SourcePairedPrimeWork SourcePairedPrimeAverages

/-- The CDF convention is balanced negative mass minus positive mass. -/
theorem pairedTailTest_eq_balanced_phase_prefix {A u : ℝ} (hA : 1 ≤ A)
    (hu : u ∈ Icc 0 (2 * A)) :
    pairedTailTest A u =
      (positiveMass A / negativeMass A) * (∫ t in 0..u, negativeSlope A t) -
        (∫ t in 0..u, positiveSlope A t) := by
  have hA0 : 0 < A := by linarith
  have hp : IntervalIntegrable (positiveSlope A) volume 0 u :=
    (positiveSlope_continuous hA0).intervalIntegrable 0 u
  have hn : IntervalIntegrable (negativeSlope A) volume 0 u :=
    (negativeSlope_continuous hA0).intervalIntegrable 0 u
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hu.1
    (pairedTailTest_continuous hA).continuousOn
    (fun t _ => pairedTailTest_hasDerivAt hA t)
    (hp.neg.add (hn.const_mul (positiveMass A / negativeMass A)))
  rw [intervalIntegral.integral_add
      (f := fun t : ℝ => -positiveSlope A t)
      (g := fun t : ℝ => (positiveMass A / negativeMass A) * negativeSlope A t)
      hp.neg (hn.const_mul (positiveMass A / negativeMass A)),
    intervalIntegral.integral_neg, intervalIntegral.integral_const_mul,
    pairedTailTest_at_zero hA, sub_zero] at h
  linarith

/-- Positive total drift forces an actual interior real point of positive sign. -/
theorem exists_pairedTailTest_pos {A : ℝ} (hA : 1 ≤ A) :
    ∃ u ∈ Ioo 0 (2 * A), 0 < pairedTailTest A u := by
  by_contra h
  push Not at h
  have hnonpos : ∀ u ∈ Icc 0 (2 * A), pairedTailTest A u ≤ 0 := by
    intro u hu
    by_cases hz : u = 0
    · simpa only [hz, pairedTailTest_at_zero hA] using (le_refl (0 : ℝ))
    by_cases hL : u = 2 * A
    · simpa only [hL, pairedTailTest_at_upper hA] using (le_refl (0 : ℝ))
    exact h u ⟨lt_of_le_of_ne hu.1 (Ne.symm hz), lt_of_le_of_ne hu.2 hL⟩
  have hi := intervalIntegral.integral_nonneg (μ := volume)
    (show 0 ≤ 2 * A by linarith)
    (fun u hu => neg_nonneg.mpr (hnonpos u hu))
  rw [intervalIntegral.integral_neg] at hi
  have hpositive : 0 < ∫ u in 0..2 * A, pairedTailTest A u := by
    rw [pairedTailTest_integral_eq hA]
    exact pairedTailTest_drift_pos hA
  linarith

/-- The checked negative band includes this strict interior point. -/
theorem pairedTailTest_early_point_neg {A : ℝ} (hA : 160 ≤ A) :
    pairedTailTest A (A / 80) < 0 := by
  have h := earlyTailTest_le hA (u := A / 80) le_rfl (by linarith)
  nlinarith [Real.exp_pos (A / 160)]

/-- Negative sign is witnessed at a real point; no prime atom is inferred. -/
theorem exists_pairedTailTest_neg {A : ℝ} (hA : 160 ≤ A) :
    ∃ u ∈ Ioo 0 (2 * A), pairedTailTest A u < 0 := by
  refine ⟨A / 80, ⟨by linarith, by linarith⟩, pairedTailTest_early_point_neg hA⟩

/-- Both signs occur on the admitted finite source interval. -/
theorem pairedTailTest_has_both_signs {A : ℝ} (hA : 160 ≤ A) :
    (∃ u ∈ Ioo 0 (2 * A), pairedTailTest A u < 0) ∧
      (∃ v ∈ Ioo 0 (2 * A), 0 < pairedTailTest A v) :=
  ⟨exists_pairedTailTest_neg hA, exists_pairedTailTest_pos (by linarith)⟩

/-- No global nonnegative ordering even holds on this finite source interval. -/
theorem pairedTailTest_not_nonneg_on {A : ℝ} (hA : 160 ≤ A) :
    ¬ ∀ u ∈ Icc 0 (2 * A), 0 ≤ pairedTailTest A u := by
  intro h
  obtain ⟨u, hu, hneg⟩ := exists_pairedTailTest_neg hA
  have hnonneg := h u ⟨hu.1.le, hu.2.le⟩
  linarith

/-- Positive drift prevents global nonpositive ordering on the source interval. -/
theorem pairedTailTest_not_nonpos_on {A : ℝ} (hA : 1 ≤ A) :
    ¬ ∀ u ∈ Icc 0 (2 * A), pairedTailTest A u ≤ 0 := by
  intro h
  obtain ⟨u, hu, hpos⟩ := exists_pairedTailTest_pos hA
  have hnonpos := h u ⟨hu.1.le, hu.2.le⟩
  linarith

end FormalResearch.RiemannHypothesis.SourcePhaseSignGeometry
