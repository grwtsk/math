# Complete source: GRWTSK.Analysis.AtomicSuperlevels.Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `836d73fecf283c4b177d320ae708960790b07d55` · SHA-256 `4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.WeightedLpReserve
import Mathlib.Analysis.SpecialFunctions.Pow.Integral

/-!
# The finite weighted panel moment is its exact superlevel integral

Batch 07's CS01 is connected to Mathlib's qualified layer-cake theorem using
the literal finite weighted atomic measure. The selected weights, their
superlevel mass and the moment are identified explicitly. A profile in [0,1]
has no superlevel mass above one, so the integral truncates to (0,1]. Scaling
the profile retains the exact H^p factor. This is an identity, not a bound on
the actual prime superlevel curve or permission to replace a selected panel.

Human superlevel-profile direction: grwtsk contributors. Local finite measure
adapter and normalization consumer: OpenAI Codex. The underlying layer-cake
theorem and Lebesgue calculus remain Mathlib formal artifacts at their names.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.AtomicSuperlevels

open MeasureTheory
open scoped BigOperators ENNReal
noncomputable section

/-- The atomic measure in this module, with the following exact parameterization.

def atomicMeasure {ι : Type*} [MeasurableSpace ι] (s : Finset ι) (w : ι → ℝ≥0∞) : Measure ι :=
∑ i ∈ s, w i • Measure.dirac i
-/
def atomicMeasure {ι : Type*} [MeasurableSpace ι] (s : Finset ι) (w : ι → ℝ≥0∞) : Measure ι :=
  ∑ i ∈ s, w i • Measure.dirac i
/-- The superlevel mass in this module, with the following exact parameterization.

def superlevelMass {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) (f : ι → ℝ) (t : ℝ) : ℝ≥0∞ := ∑ i
∈ s, if t ≤ f i then w i else 0
-/
def superlevelMass {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) (f : ι → ℝ) (t : ℝ) : ℝ≥0∞ :=
  ∑ i ∈ s, if t ≤ f i then w i else 0

theorem atomic_lintegral {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w : ι → ℝ≥0∞) (g : ι → ℝ≥0∞) :
    (∫⁻ i, g i ∂atomicMeasure s w) = ∑ i ∈ s, w i * g i := by
  simp only [atomicMeasure, lintegral_finsetSum_measure, lintegral_smul_measure,
    lintegral_dirac, smul_eq_mul]

theorem atomic_superlevel_measure {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w : ι → ℝ≥0∞) (f : ι → ℝ) (t : ℝ) :
    atomicMeasure s w {i | t ≤ f i} = superlevelMass s w f t := by
  classical
  rw [atomicMeasure, Measure.finsetSum_apply]
  unfold superlevelMass
  apply Finset.sum_congr rfl
  intro i _
  simp only [Measure.smul_apply, smul_eq_mul, Measure.dirac_apply]
  by_cases h : t ≤ f i <;> simp [Set.indicator, h]

theorem weighted_layercake {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ} (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) {p : ℝ} (hp : 0 < p) :
    (∑ i ∈ s, w i * ENNReal.ofReal ((f i) ^ p)) =
      ENNReal.ofReal p * ∫⁻ t in Set.Ioi (0 : ℝ),
        superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1)) := by
  have h := MeasureTheory.lintegral_rpow_eq_lintegral_meas_le_mul (atomicMeasure s w)
    (Filter.Eventually.of_forall hf0) hf.aemeasurable hp
  rw [atomic_lintegral] at h
  simp_rw [atomic_superlevel_measure] at h
  exact h

theorem superlevel_above_one_zero {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ}
    (hf1 : ∀ i ∈ s, f i ≤ 1) {t : ℝ} (ht : 1 < t) : superlevelMass s w f t = 0 := by
  apply Finset.sum_eq_zero
  intro i hi
  exact if_neg (by linarith [hf1 i hi] : ¬ t ≤ f i)

theorem unit_superlevel_integral {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ}
    (hf1 : ∀ i ∈ s, f i ≤ 1) (p : ℝ) :
    (∫⁻ t in Set.Ioi (0 : ℝ), superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1))) =
      ∫⁻ t in Set.Ioc (0 : ℝ) 1, superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1)) := by
  classical
  rw [← lintegral_indicator measurableSet_Ioi, ← lintegral_indicator measurableSet_Ioc]
  apply lintegral_congr
  intro t
  by_cases ht0 : 0 < t
  · by_cases ht1 : t ≤ 1
    · simp [Set.indicator, ht0, ht1]
    · have hz := superlevel_above_one_zero s w hf1 (lt_of_not_ge ht1)
      simp [Set.indicator, ht0, ht1, hz]
  · simp [Set.indicator, ht0]

theorem unit_panel_moment {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ} (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1) {p : ℝ} (hp : 0 < p) :
    (∑ i ∈ s, w i * ENNReal.ofReal ((f i) ^ p)) =
      ENNReal.ofReal p * ∫⁻ t in Set.Ioc (0 : ℝ) 1,
        superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1)) := by
  rw [weighted_layercake s w hf hf0 hp, unit_superlevel_integral s w hf1]

theorem scaled_panel_moment {ι : Type*} [MeasurableSpace ι] [MeasurableSingletonClass ι]
    (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ} (hf : Measurable f)
    (hf0 : ∀ i, 0 ≤ f i) (hf1 : ∀ i ∈ s, f i ≤ 1) {p H : ℝ}
    (hp : 0 < p) (hH : 0 ≤ H) :
    (∑ i ∈ s, w i * ENNReal.ofReal ((H * f i) ^ p)) =
      ENNReal.ofReal (H ^ p) * (ENNReal.ofReal p * ∫⁻ t in Set.Ioc (0 : ℝ) 1,
        superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1))) := by
  rw [← unit_panel_moment s w hf hf0 hf1 hp, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Real.mul_rpow hH (hf0 i), ENNReal.ofReal_mul (Real.rpow_nonneg hH p)]
  ac_rfl

end
end GRWTSK.RiemannHypothesis.Conversation.AtomicSuperlevels
```
