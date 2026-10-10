import GRWTSK.RiemannHypothesis
-- This deliberately invalid conclusion must be rejected using the actual defect.
example : GRWTSK.RiemannHypothesis.rhDefect 0 = 0 := by
  norm_num [GRWTSK.RiemannHypothesis.rh_defect_eq_square]
