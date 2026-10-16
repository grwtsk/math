import GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

open GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

-- Removing the square weights changes the exact evaluation.
example : weighted 2 0 1 = -(1 : ℝ) / 10 := by
  exact weighted_eq 2 (by decide) 0 1
