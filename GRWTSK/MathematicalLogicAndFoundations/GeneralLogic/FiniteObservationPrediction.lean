/- Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors. -/
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.TypedObservationTransport
import Mathlib.Tactic

/-!
# Error-qualified prediction and limits of finite observations

A predicted ordering returns to the actual scalar quantities only when certified
error intervals are disjoint in the required direction. This includes every
omitted source, discretization, rounding and model contribution in the radii;
this module does not construct those radii by assumption.

Finite samples do not determine universal nonnegativity of an arbitrary sequence.
An explicit sequence matches a positive sequence on every sampled index and is
negative at the first unobserved index. This instantiates the existing observation
`Determined` predicate rather than introducing another evidence ontology.

Consumers: exploratory low-mode predictions, selecting a candidate for independent
verification, and preventing finite-window results from being called cofinal.
The theorem does not rule out extrapolation under ADDITIONAL proved structure.
AI-assisted source candidate. Elaboration, kernel, axiom audit and review: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Logic.Observation.Prediction

universe u
variable {ι : Type u}

/-- Strict interval separation certifies the actual order, not merely the estimates. -/
theorem strict_order_of_enclosures {x y px py ex ey : ℝ}
    (hx : |x - px| ≤ ex) (hy : |y - py| ≤ ey)
    (margin : px + ex < py - ey) : x < y := by
  rcases abs_le.mp hx with ⟨hxlo, hxhi⟩
  rcases abs_le.mp hy with ⟨hylo, hyhi⟩
  linarith

/-- This supplies a unique minimum only over the indexed family actually enclosed. -/
theorem unique_minimum_of_enclosures (actual predicted radius : ι → ℝ) (chosen : ι)
    (enclosed : ∀ i, |actual i - predicted i| ≤ radius i)
    (separated : ∀ i, i ≠ chosen →
      predicted chosen + radius chosen < predicted i - radius i) :
    ∀ i, i ≠ chosen → actual chosen < actual i := by
  intro i different
  exact strict_order_of_enclosures (enclosed chosen) (enclosed i)
    (separated i different)

/-- Biases add before threshold testing; a signed missing component is not erased. -/
theorem complete_error_budget {source model computed a b : ℝ}
    (source_error : |source - model| ≤ a)
    (computation_error : |model - computed| ≤ b) :
    |source - computed| ≤ a + b :=
  (abs_sub_le source model computed).trans (add_le_add source_error computation_error)

def prefix (N : ℕ) (x : ℕ → ℝ) : Fin N → ℝ := fun i => x i.val

def hiddenNegative (N : ℕ) (n : ℕ) : ℝ := if n < N then 1 else -1

/-- Exact agreement on the observed prefix, not approximate matching. -/
theorem hiddenNegative_same_prefix (N : ℕ) :
    prefix N (fun _ => (1 : ℝ)) = prefix N (hiddenNegative N) := by
  funext i
  simp [prefix, hiddenNegative, i.isLt]

/-- Arbitrary finite observations do not determine a universal positivity claim. -/
theorem finite_prefix_does_not_determine_nonneg (N : ℕ) :
    ¬ Determined (prefix N) (fun x : ℕ → ℝ => ∀ n, 0 ≤ x n) := by
  intro determined
  have positive : ∀ n : ℕ, 0 ≤ (1 : ℝ) := by intro n; norm_num
  have transported :=
    (determined (fun _ => (1 : ℝ)) (hiddenNegative N)
      (hiddenNegative_same_prefix N)).mp positive
  have impossible := transported N
  norm_num [hiddenNegative] at impossible

/-- Even zero observed discrepancy leaves an unobserved discrepancy of two. -/
theorem finite_prediction_counterexample (N : ℕ) :
    (∀ n < N, hiddenNegative N n = (1 : ℝ)) ∧
    |hiddenNegative N N - (1 : ℝ)| = 2 := by
  constructor
  · intro n hn
    simp [hiddenNegative, hn]
  · norm_num [hiddenNegative]

end GRWTSK.Logic.Observation.Prediction
