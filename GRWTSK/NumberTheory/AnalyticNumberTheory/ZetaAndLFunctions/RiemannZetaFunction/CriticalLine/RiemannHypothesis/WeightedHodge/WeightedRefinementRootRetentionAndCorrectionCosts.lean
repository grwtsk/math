import Mathlib

/-!
# Weighted refinement, root retention, and correction costs

Finite algebra from audited RH conversation Batches 01, 06, 08, 16 and 18.
Positive widths are hypotheses, not inferred from the partition's name. The root
is retained: zero detail does not bound the signed source readout.

Human framework, target selection and corrections: grwtsk contributors.
Lean implementation: OpenAI Codex. Standard algebra is supplied by Mathlib;
these local results are the explicit interfaces needed by the source programme.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.WeightedHodge

open scoped BigOperators

/-- A binary weighted refinement has exactly one nonnegative defect. -/
theorem binary_refinement_identity {r₁ r₂ : ℝ} (h₁ : 0 < r₁) (h₂ : 0 < r₂)
    (v₁ v₂ : ℝ) :
    v₁ ^ 2 / r₁ + v₂ ^ 2 / r₂ - (v₁ + v₂) ^ 2 / (r₁ + r₂) =
      (r₂ * v₁ - r₁ * v₂) ^ 2 / (r₁ * r₂ * (r₁ + r₂)) := by
  field_simp [h₁.ne', h₂.ne', (add_pos h₁ h₂).ne']
  ring

/-- Refinement cannot decrease this positive energy. -/
theorem binary_refinement_mono {r₁ r₂ : ℝ} (h₁ : 0 < r₁) (h₂ : 0 < r₂)
    (v₁ v₂ : ℝ) :
    (v₁ + v₂) ^ 2 / (r₁ + r₂) ≤ v₁ ^ 2 / r₁ + v₂ ^ 2 / r₂ := by
  have h := binary_refinement_identity h₁ h₂ v₁ v₂
  have hpos : 0 ≤ (r₂ * v₁ - r₁ * v₂) ^ 2 / (r₁ * r₂ * (r₁ + r₂)) :=
    div_nonneg (sq_nonneg _) (by positivity)
  linarith

theorem weighted_square_expand {w : ℝ} (hw : w ≠ 0) (v m : ℝ) :
    (v - w * m) ^ 2 / w = v ^ 2 / w - 2 * m * v + m ^ 2 * w := by
  field_simp
  ring

/-- Arbitrary finite refinement retains the root plus all centered child defects. -/
theorem finite_refinement_identity {ι : Type*} (s : Finset ι) (w v : ι → ℝ)
    (hw : ∀ i ∈ s, w i ≠ 0) (hW : (∑ i ∈ s, w i) ≠ 0) :
    (∑ i ∈ s, v i ^ 2 / w i) =
      (∑ i ∈ s, v i) ^ 2 / (∑ i ∈ s, w i) +
        ∑ i ∈ s, (v i - w i * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j))) ^ 2 / w i := by
  have heq : (∑ i ∈ s,
      (v i - w i * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j))) ^ 2 / w i) =
      (∑ i ∈ s, v i ^ 2 / w i) -
        2 * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) * (∑ i ∈ s, v i) +
        ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) ^ 2 * (∑ i ∈ s, w i) := by
    calc
      _ = ∑ i ∈ s, (v i ^ 2 / w i -
          2 * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) * v i +
          ((∑ j ∈ s, v j) / (∑ j ∈ s, w j)) ^ 2 * w i) := by
        apply Finset.sum_congr rfl
        intro i hi
        exact weighted_square_expand (hw i hi) _ _
      _ = _ := by rw [Finset.sum_add_distrib, Finset.sum_sub_distrib,
        ← Finset.mul_sum, ← Finset.mul_sum]
  rw [heq]
  field_simp
  ring

/-- Nonnegative details give the root-energy lower bound for every finite family. -/
theorem finite_refinement_mono {ι : Type*} (s : Finset ι) (w v : ι → ℝ)
    (hw : ∀ i ∈ s, 0 < w i) (hW : (∑ i ∈ s, w i) ≠ 0) :
    (∑ i ∈ s, v i) ^ 2 / (∑ i ∈ s, w i) ≤ ∑ i ∈ s, v i ^ 2 / w i := by
  rw [finite_refinement_identity s w v (fun i hi => (hw i hi).ne') hW]
  have h := Finset.sum_nonneg (s := s) (f := fun i =>
    (v i - w i * ((∑ j ∈ s, v j) / (∑ j ∈ s, w j))) ^ 2 / w i)
    (fun i hi => div_nonneg (sq_nonneg _) (hw i hi).le)
  linarith

/-- A constant density kills the detail at every size of the retained root. -/
theorem arbitrary_root_zero_detail (r₁ r₂ c : ℝ) :
    r₂ * (r₁ * c) - r₁ * (r₂ * c) = 0 := by ring

/-- Cancellation coarsening exposes the positive price of separating opposite signs. -/
theorem signed_cycle_coarsening {P M : ℝ} (hP : 0 < P) (hM : 0 < M) (D C : ℝ) :
    D ^ 2 / P + C ^ 2 / M =
      (D - C) ^ 2 / (P + M) + (M * D + P * C) ^ 2 / (P * M * (P + M)) := by
  have h := binary_refinement_identity hP hM D (-C)
  simp only [neg_sq, mul_neg, sub_neg_eq_add] at h
  have heq : D + -C = D - C := by ring
  rw [heq] at h
  linarith

/-- Least-cost allocation keeps the exact cost of its mismatch. -/
theorem allocation_identity {qI qR : ℝ} (hI : 0 < qI) (hR : 0 < qR) (κ : ℝ) :
    qI * κ ^ 2 + qR * (1 - κ) ^ 2 = qI * qR / (qI + qR) +
      (qI + qR) * (κ - qR / (qI + qR)) ^ 2 := by
  field_simp [(add_pos hI hR).ne']
  ring

theorem allocation_minimum {qI qR : ℝ} (hI : 0 < qI) (hR : 0 < qR) (κ : ℝ) :
    qI * qR / (qI + qR) ≤ qI * κ ^ 2 + qR * (1 - κ) ^ 2 := by
  rw [allocation_identity hI hR]
  have h : 0 ≤ (qI + qR) * (κ - qR / (qI + qR)) ^ 2 := by positivity
  linarith

end GRWTSK.RiemannHypothesis.Conversation.WeightedHodge
