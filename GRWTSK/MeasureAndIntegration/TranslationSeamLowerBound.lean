/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic

/-!
# Squared translation energy across a support seam

The full nonnegative squared difference dominates its genuine open support
seam. A positive continuous interior trace provides a fixed one-sided strip
bound. These generic lemmas do not identify an actual source or correlation,
and do not assert a C5 obstruction or an arithmetic estimate.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.TranslationSeamLowerBound

open MeasureTheory Set Filter
open scoped Topology

noncomputable section

/-- Retain the full squared difference and restrict only for a lower bound. -/
theorem right_seam_lower_bound {g : ℝ → ℝ} {b h c : ℝ}
    (shiftPositive : 0 < h) (heightNonneg : 0 ≤ c)
    (outside : ∀ x : ℝ, b < x → g x = 0)
    (inside : ∀ y : ℝ, b - h < y → y < b → c ≤ |g y|)
    (energyIntegrable : Integrable (fun x : ℝ ↦ (g x - g (x - h)) ^ 2)) :
    c ^ 2 * h ≤ ∫ x : ℝ, (g x - g (x - h)) ^ 2 := by
  have pointwise : ∀ x ∈ Ioo b (b + h), c ^ 2 ≤ (g x - g (x - h)) ^ 2 := by
    intro x hx
    have height := inside (x - h) (by linarith [hx.1]) (by linarith [hx.2])
    have square : c ^ 2 ≤ |g (x - h)| ^ 2 :=
      (sq_le_sq₀ heightNonneg (abs_nonneg _)).mpr height
    have difference : (g x - g (x - h)) ^ 2 = g (x - h) ^ 2 := by
      rw [outside x hx.1]
      ring
    rw [difference]
    simpa only [sq_abs] using square
  have restricted := setIntegral_ge_of_const_le_real
    (c := c ^ 2) measurableSet_Ioo
    (by rw [Real.volume_Ioo]; exact ENNReal.ofReal_ne_top)
    pointwise energyIntegrable.integrableOn
  have intervalLength : volume.real (Ioo b (b + h)) = h := by
    change (volume (Ioo b (b + h))).toReal = h
    rw [Real.volume_Ioo, add_sub_cancel_left, ENNReal.toReal_ofReal shiftPositive.le]
  rw [intervalLength] at restricted
  exact restricted.trans (setIntegral_le_integral energyIntegrable
    (Filter.Eventually.of_forall (fun x ↦ sq_nonneg _)))

/-- A genuine positive trace on the interior supplies a uniform short seam. -/
theorem positive_trace_eventual_seam_lower_bound {g p : ℝ → ℝ} {a b : ℝ}
    (intervalPositive : a < b) (interiorContinuous : ContinuousAt p b)
    (tracePositive : 0 < p b)
    (interior : ∀ y : ℝ, a < y → y < b → g y = p y)
    (outside : ∀ x : ℝ, b < x → g x = 0)
    (energyIntegrable : ∀ h : ℝ,
      Integrable (fun x : ℝ ↦ (g x - g (x - h)) ^ 2)) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε →
      (p b / 2) ^ 2 * h ≤ ∫ x : ℝ, (g x - g (x - h)) ^ 2 := by
  have nearTrace : ∀ᶠ y in 𝓝 b, p b / 2 < p y :=
    interiorContinuous.eventually (Ioi_mem_nhds (by linarith : p b / 2 < p b))
  obtain ⟨δ, positiveδ, near⟩ := Metric.eventually_nhds_iff.mp nearTrace
  refine ⟨min δ (b - a), lt_min positiveδ (by linarith), ?_⟩
  intro h shiftPositive short
  have hδ : h < δ := (lt_min_iff.mp short).1
  have hInterval : h < b - a := (lt_min_iff.mp short).2
  apply right_seam_lower_bound shiftPositive (by linarith : 0 ≤ p b / 2)
    outside ?_ (energyIntegrable h)
  intro y lower upper
  have distance : dist y b < δ := by
    rw [Real.dist_eq, abs_of_neg (by linarith : y - b < 0)]
    linarith
  have trace := near distance
  rw [interior y (by linarith) upper]
  exact trace.le.trans (le_abs_self _)

end

end GRWTSK.Analysis.RealAnalysis.Integration.TranslationSeamLowerBound
