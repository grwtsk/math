import GRWTSK.Logic.FiniteCoverage
open GRWTSK.Logic.FiniteCoverage
example (a b : ℝ) (hab : a ≤ b) : ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧ (∀ x ∈ Set.Ici a, P x) :=
  finite_range_does_not_imply_ray a b hab
