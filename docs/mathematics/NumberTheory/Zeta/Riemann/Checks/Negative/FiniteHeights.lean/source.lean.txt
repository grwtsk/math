import GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion
open GRWTSK.NumberTheory.Zeta.Riemann
-- One bounded enclosure is not the all-natural-height premise.
example (N : ℕ) (h : RHThrough N) : _root_.RiemannHypothesis :=
  riemannHypothesis_iff_all_heights.mpr h
