import FormalResearch.RiemannHypothesis.Conversation.WeightedHodge

/-!
# Exact capacities, thresholds and hostile finite controls

Finite claims selected from audited RH conversation Batches 01–03 and 19–24.
Numerical inequalities here are consequences of the stated parameters, not
proofs that an arithmetic gain is attained. Positive-semidefinite and trace
controls deliberately retain the failed inference as a negative result.

Direction and source selection: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.FiniteObstructions

open scoped BigOperators

noncomputable section

/-- The native source Gram determinant is strictly positive. -/
theorem native_gram_determinant :
    (65536 / 109395 : ℚ) * (196608 / 5005) - (-131072 / 45045) ^ 2 =
      4294967296 / 285073425 := by norm_num

theorem native_gram_determinant_positive :
    0 < (65536 / 109395 : ℚ) * (196608 / 5005) - (-131072 / 45045) ^ 2 := by
  rw [native_gram_determinant]
  norm_num

/-- The row capacity in this module, with the following exact parameterization.

def rowCapacity (x : ℝ) : ℝ := 8 * x * (1 - x) / (27 - 17 * x)
-/
def rowCapacity (x : ℝ) : ℝ := 8 * x * (1 - x) / (27 - 17 * x)

/-- This identity controls the entire admissible interval, rather than a numeric grid. -/
theorem capacity_defect (x : ℝ) (h : 27 - 17 * x ≠ 0) :
    (4 / 37 : ℝ) - rowCapacity x =
      4 * (1 - 2 * x) * (27 - 37 * x) / (37 * (27 - 17 * x)) := by
  unfold rowCapacity
  generalize hd : 27 - 17 * x = d at *
  field_simp [h]
  nlinarith

theorem capacity_upper {x : ℝ} (_hx0 : 0 ≤ x) (hx : x ≤ 1 / 2) :
    rowCapacity x ≤ 4 / 37 := by
  have hd : 0 < 27 - 17 * x := by linarith
  have h₁ : 0 ≤ 1 - 2 * x := by linarith
  have h₂ : 0 ≤ 27 - 37 * x := by linarith
  have h := capacity_defect x hd.ne'
  have hp : 0 ≤ 4 * (1 - 2 * x) * (27 - 37 * x) / (37 * (27 - 17 * x)) :=
    div_nonneg (by positivity) (by positivity)
  linarith

theorem capacity_attained : rowCapacity (1 / 2) = 4 / 37 := by norm_num [rowCapacity]

/-- Conditional threshold transport keeps the size of the required gain explicit. -/
theorem small_gain_bottleneck {η : ℝ} (hη : 49 / 27540 ≤ η) :
    (7 / 8 : ℝ) - η / 16 ≤ 385511 / 440640 := by linarith

theorem exceptional_gain_bottleneck {δ : ℝ} (hδ : 49 / 4590 ≤ δ) :
    (7 / 8 : ℝ) - δ / 96 ≤ 385511 / 440640 := by linarith

theorem high_gain_full_exception_removal {η : ℝ} (hη : 4541 / 440640 ≤ η) :
    (385511 / 440640 : ℝ) - η ≤ 83 / 96 := by linarith

/-- Positive semidefiniteness does not make every nonprincipal minor nonnegative. -/
theorem positive_quadratic_negative_off_diagonal (x y : ℝ) :
    0 ≤ x ^ 2 - x * y + y ^ 2 ∧ (-1 / 2 : ℝ) < 0 := by
  constructor
  · nlinarith [sq_nonneg (x - y / 2), sq_nonneg y]
  · norm_num

/-- A separated absolute budget can grow while the signed joined readout stays zero. -/
theorem joined_zero_unbounded_separated (R : ℝ) (hR : 0 ≤ R) :
    R + (-R) = 0 ∧ |R| + |-R| = 2 * R := by
  constructor
  · ring
  · rw [abs_of_nonneg hR, abs_neg, abs_of_nonneg hR]
    ring

/-- Sampling's second moment pays total variation even if the signed sum cancels. -/
theorem sampling_variation_cost {ι : Type*} (s : Finset ι) (p a : ι → ℝ)
    (hp : ∀ i ∈ s, 0 < p i) (hprob : ∑ i ∈ s, p i = 1) :
    (∑ i ∈ s, |a i|) ^ 2 ≤ ∑ i ∈ s, a i ^ 2 / p i := by
  have h := WeightedHodge.finite_refinement_mono s p (fun i => |a i|) hp
    (by rw [hprob]; norm_num)
  simpa only [hprob, div_one, sq_abs] using h

/-- The strict dense-divisor display requires an endpoint guard when `Y = 1`. -/
theorem strict_dense_divisor_endpoint_counterexample :
    ¬ ∃ d : ℝ, (1 : ℝ) / 1 < d ∧ d ≤ 1 := by
  rintro ⟨d, hd, hD⟩
  norm_num at hd
  linarith

theorem retained_sector_count : 1 + 1 + 5 + 483 + 483 + 2415 = (3388 : ℕ) := by norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.FiniteObstructions
