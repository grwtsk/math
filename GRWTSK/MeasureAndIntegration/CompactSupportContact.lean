/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.Tactic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Correlation contact for a closed compact profile

The support-touching product need not vanish pointwise at its
single contact point. Its Lebesgue integral nevertheless vanishes. Positive
continuous traces at both ends give a full short-overlap linear lower bound,
with explicit integrability. These generic lemmas identify no particular source,
kernel, native operator or arithmetic budget.
-/

namespace GRWTSK.Analysis.Convolution.CompactSupportContact

open MeasureTheory Set Filter
open scoped Topology

noncomputable section

def closedProfile (a b : ℝ) (p : ℝ → ℝ) : ℝ → ℝ := (Icc a b).indicator p

/-- Closed support can meet at one point, which has zero Lebesgue measure. -/
theorem correlation_zero_of_shift_ge_width (a b t : ℝ) (p : ℝ → ℝ)
    (beyond : b - a ≤ t) :
    (∫ x : ℝ, closedProfile a b p x * closedProfile a b p (x - t)) = 0 := by
  apply integral_eq_zero_of_ae
  filter_upwards [(volume : Measure ℝ).ae_ne b] with x different
  change closedProfile a b p x * closedProfile a b p (x - t) = (0 : ℝ)
  unfold closedProfile
  by_cases right : x ∈ Icc a b
  · by_cases left : x - t ∈ Icc a b
    · exfalso
      apply different
      linarith [right.2, left.1]
    · rw [indicator_of_notMem left, mul_zero]
  · rw [indicator_of_notMem right, zero_mul]

/-- On a short overlap, both retained factors have the prescribed positive height. -/
theorem short_overlap_product_nonneg {a b h c : ℝ} {p : ℝ → ℝ}
    (heightNonneg : 0 ≤ c)
    (rightHeight : ∀ x : ℝ, b - h ≤ x → x ≤ b → c ≤ p x)
    (leftHeight : ∀ y : ℝ, a ≤ y → y ≤ a + h → c ≤ p y) :
    ∀ x : ℝ, 0 ≤ closedProfile a b p x *
      closedProfile a b p (x - (b - a - h)) := by
  intro x
  unfold closedProfile
  by_cases right : x ∈ Icc a b
  · by_cases left : x - (b - a - h) ∈ Icc a b
    · rw [indicator_of_mem right, indicator_of_mem left]
      exact mul_nonneg
        (heightNonneg.trans (rightHeight x (by linarith [left.1]) right.2))
        (heightNonneg.trans (leftHeight _ left.1 (by linarith [right.2])))
    · rw [indicator_of_notMem left, mul_zero]
  · rw [indicator_of_notMem right, zero_mul]

/-- Restrict the full genuine integrable product only to obtain a lower bound. -/
theorem overlap_product_lower_bound {a b h c : ℝ} {p : ℝ → ℝ}
    (shiftPositive : 0 < h) (short : h < b - a) (heightNonneg : 0 ≤ c)
    (rightHeight : ∀ x : ℝ, b - h ≤ x → x ≤ b → c ≤ p x)
    (leftHeight : ∀ y : ℝ, a ≤ y → y ≤ a + h → c ≤ p y)
    (productIntegrable : Integrable (fun x : ℝ ↦ closedProfile a b p x *
      closedProfile a b p (x - (b - a - h)))) :
    c ^ 2 * h ≤ ∫ x : ℝ, closedProfile a b p x *
      closedProfile a b p (x - (b - a - h)) := by
  have pointwise : ∀ x ∈ Ioo (b - h) b, c ^ 2 ≤ closedProfile a b p x *
      closedProfile a b p (x - (b - a - h)) := by
    intro x retained
    have right : x ∈ Icc a b := ⟨by linarith [retained.1], retained.2.le⟩
    have left : x - (b - a - h) ∈ Icc a b :=
      ⟨by linarith [retained.1], by linarith [retained.2]⟩
    unfold closedProfile
    rw [indicator_of_mem right, indicator_of_mem left]
    have first := rightHeight x retained.1.le retained.2.le
    have second := leftHeight _ left.1 (by linarith [retained.2])
    simpa only [pow_two] using mul_le_mul first second heightNonneg
      (heightNonneg.trans first)
  have restricted := setIntegral_ge_of_const_le_real
    (c := c ^ 2) measurableSet_Ioo
    (by rw [Real.volume_Ioo]; exact ENNReal.ofReal_ne_top)
    pointwise productIntegrable.integrableOn
  have length : volume.real (Ioo (b - h) b) = h := by
    change (volume (Ioo (b - h) b)).toReal = h
    rw [Real.volume_Ioo]
    have width : b - (b - h) = h := by ring
    rw [width, ENNReal.toReal_ofReal shiftPositive.le]
  rw [length] at restricted
  exact restricted.trans (setIntegral_le_integral productIntegrable
    (Eventually.of_forall (short_overlap_product_nonneg heightNonneg rightHeight leftHeight)))

/-- Two positive continuous traces supply a uniform lower contact coefficient. -/
theorem positive_traces_eventual_overlap_lower_bound {a b : ℝ} {p : ℝ → ℝ}
    (intervalPositive : a < b) (continuousLeft : ContinuousAt p a)
    (continuousRight : ContinuousAt p b) (traceLeft : 0 < p a) (traceRight : 0 < p b)
    (productIntegrable : ∀ t : ℝ, Integrable (fun x : ℝ ↦ closedProfile a b p x *
      closedProfile a b p (x - t))) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε →
      (min (p a) (p b) / 2) ^ 2 * h ≤ ∫ x : ℝ, closedProfile a b p x *
        closedProfile a b p (x - (b - a - h)) := by
  let c := min (p a) (p b) / 2
  have heightPositive : 0 < c := div_pos (lt_min traceLeft traceRight) (by norm_num)
  have leftStrict : c < p a := by
    have bound := min_le_left (p a) (p b)
    dsimp [c]
    linarith
  have rightStrict : c < p b := by
    have bound := min_le_right (p a) (p b)
    dsimp [c]
    linarith
  obtain ⟨δa, positiveδa, leftNear⟩ := Metric.eventually_nhds_iff.mp
    (continuousLeft.eventually (Ioi_mem_nhds leftStrict))
  obtain ⟨δb, positiveδb, rightNear⟩ := Metric.eventually_nhds_iff.mp
    (continuousRight.eventually (Ioi_mem_nhds rightStrict))
  refine ⟨min (min δa δb) (b - a),
    lt_min (lt_min positiveδa positiveδb) (by linarith), ?_⟩
  intro h shiftPositive short
  have hδa : h < δa := ((lt_min_iff.mp short).1.trans_le (min_le_left _ _))
  have hδb : h < δb := ((lt_min_iff.mp short).1.trans_le (min_le_right _ _))
  have hInterval : h < b - a := (lt_min_iff.mp short).2
  apply overlap_product_lower_bound shiftPositive hInterval heightPositive.le
    ?_ ?_ (productIntegrable _)
  · intro x lower upper
    have distance : dist x b < δb := by
      rw [Real.dist_eq, abs_of_nonpos (by linarith : x - b ≤ 0)]
      linarith
    exact (rightNear distance).le
  · intro y lower upper
    have distance : dist y a < δa := by
      rw [Real.dist_eq, abs_of_nonneg (by linarith : 0 ≤ y - a)]
      linarith
    exact (leftNear distance).le

end

end GRWTSK.Analysis.Convolution.CompactSupportContact
