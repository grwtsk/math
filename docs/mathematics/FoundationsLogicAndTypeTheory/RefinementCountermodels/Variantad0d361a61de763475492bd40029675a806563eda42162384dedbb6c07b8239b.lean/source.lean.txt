import Mathlib.Data.Real.Basic

/-!
Exact auxiliary countermodels for proposed refinement-to-budget inferences.
These are not trajectories or counterexamples of the arithmetic source.
grwtsk contributors: direction, theorem selection and evaluation.
Codex: formalization and checks.
-/

namespace FormalResearch.QuantumLanglands.RefinementCountermodels

/-- A fixed one-dimensional weight-zero object can carry the scale-dependent
readout A. Weight bounds alone therefore supply no uniform numerical bound. -/
theorem no_uniform_readout_bound :
    ¬ ∃ C : ℝ, ∀ A : ℝ, 1 ≤ A → A ≤ C := by
  rintro ⟨C, hC⟩
  have h := hC (max 1 (C + 1)) (le_max_left _ _)
  have hg : C < max 1 (C + 1) :=
    lt_of_lt_of_le (lt_add_one C) (le_max_right _ _)
  exact (not_le_of_gt hg) h

/-- Every cycle of this two-edge fixture has total cost zero, while its first
edge can have arbitrary positive cost. The complete endpoint budget matters. -/
theorem zero_cycle_unbounded_prefix :
    (∀ A : ℝ, A + (-A) = 0) ∧
      ¬ ∃ C : ℝ, ∀ A : ℝ, 1 ≤ A → A ≤ C := by
  exact ⟨fun _ => add_neg_cancel _, no_uniform_readout_bound⟩

#print axioms no_uniform_readout_bound
#print axioms zero_cycle_unbounded_prefix

end FormalResearch.QuantumLanglands.RefinementCountermodels
