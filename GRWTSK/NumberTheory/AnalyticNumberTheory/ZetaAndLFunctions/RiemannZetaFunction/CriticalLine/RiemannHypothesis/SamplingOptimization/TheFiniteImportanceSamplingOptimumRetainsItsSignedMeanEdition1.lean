import FormalResearch.RiemannHypothesis.Conversation.FiniteObstructions

/-!
# The finite importance-sampling optimum retains its signed mean

Batch 03's exact finite optimum uses the nonzero support of the signed loads.
The probability proportional to absolute load attains the second-moment lower
bound. The corresponding variance subtracts the complete signed mean squared.
This is not a complexity bound for other samplers or a proof that a large
second moment implies a large variance. IID replication is not formalized here.

Human direction: grwtsk contributors. Local finite probability interface and
Lean proofs: OpenAI Codex. The lower bound consumes the checked finite Cauchy law.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.SamplingOptimization

open scoped BigOperators
noncomputable section

def absoluteMass {ι : Type*} (s : Finset ι) (a : ι → ℝ) : ℝ := ∑ i ∈ s, |a i|
def optimalProbability {ι : Type*} (s : Finset ι) (a : ι → ℝ) (i : ι) : ℝ :=
  |a i| / absoluteMass s a
def secondMoment {ι : Type*} (s : Finset ι) (p a : ι → ℝ) : ℝ := ∑ i ∈ s, a i ^ 2 / p i
def variance {ι : Type*} (s : Finset ι) (p a : ι → ℝ) : ℝ :=
  secondMoment s p a - (∑ i ∈ s, a i) ^ 2

theorem optimalProbability_pos {ι : Type*} {s : Finset ι} {a : ι → ℝ}
    (hV : 0 < absoluteMass s a) (hzero : ∀ i ∈ s, a i ≠ 0) (i : ι) (hi : i ∈ s) :
    0 < optimalProbability s a i := div_pos (abs_pos.mpr (hzero i hi)) hV

theorem optimalProbability_sum {ι : Type*} {s : Finset ι} {a : ι → ℝ}
    (hV : 0 < absoluteMass s a) : (∑ i ∈ s, optimalProbability s a i) = 1 := by
  unfold optimalProbability
  rw [← Finset.sum_div]
  exact div_self hV.ne'

theorem optimal_secondMoment {ι : Type*} {s : Finset ι} {a : ι → ℝ}
    (hV : 0 < absoluteMass s a) (hzero : ∀ i ∈ s, a i ≠ 0) :
    secondMoment s (optimalProbability s a) a = (absoluteMass s a) ^ 2 := by
  unfold secondMoment optimalProbability
  calc
    _ = ∑ i ∈ s, |a i| * absoluteMass s a := by
      apply Finset.sum_congr rfl
      intro i hi
      have habs : |a i| ≠ 0 := (abs_pos.mpr (hzero i hi)).ne'
      rw [show a i ^ 2 = |a i| ^ 2 by rw [sq_abs]]
      field_simp
    _ = _ := by rw [← Finset.sum_mul]; unfold absoluteMass; ring

theorem optimal_variance {ι : Type*} {s : Finset ι} {a : ι → ℝ}
    (hV : 0 < absoluteMass s a) (hzero : ∀ i ∈ s, a i ≠ 0) :
    variance s (optimalProbability s a) a =
      (absoluteMass s a) ^ 2 - (∑ i ∈ s, a i) ^ 2 := by
  unfold variance
  rw [optimal_secondMoment hV hzero]

/-- All admissible positive probabilities on this nonzero support have at least this variance. -/
theorem optimal_variance_minimum {ι : Type*} {s : Finset ι} {a p : ι → ℝ}
    (hV : 0 < absoluteMass s a) (hzero : ∀ i ∈ s, a i ≠ 0)
    (hp : ∀ i ∈ s, 0 < p i) (hsum : (∑ i ∈ s, p i) = 1) :
    variance s (optimalProbability s a) a ≤ variance s p a := by
  rw [optimal_variance hV hzero]
  have h := FiniteObstructions.sampling_variation_cost s p a hp hsum
  unfold variance secondMoment absoluteMass
  linarith

/-- The discrete probability readout has the complete signed expectation. -/
theorem expected_readout_eq_signed_sum {ι : Type*} {s : Finset ι} {p a : ι → ℝ}
    (hp : ∀ i ∈ s, 0 < p i) : (∑ i ∈ s, p i * (a i / p i)) = ∑ i ∈ s, a i := by
  apply Finset.sum_congr rfl
  intro i hi
  field_simp [(hp i hi).ne']

end
end GRWTSK.RiemannHypothesis.Conversation.SamplingOptimization
