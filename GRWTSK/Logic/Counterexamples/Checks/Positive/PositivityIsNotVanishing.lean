import GRWTSK.NumberTheory.Zeta.Riemann
-- This positive check records that the actual defect does not vanish at zero.
example : GRWTSK.RiemannHypothesis.rhDefect 0 ≠ 0 := by
  norm_num [GRWTSK.RiemannHypothesis.rh_defect_eq_square]
