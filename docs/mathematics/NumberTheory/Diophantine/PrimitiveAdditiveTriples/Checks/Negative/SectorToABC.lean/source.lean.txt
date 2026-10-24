/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- Exact finite sector reindexing supplies no uniform radical-height bound.
example : ABCConjecture := by
  exact typedPrimitiveWeightedMoment_eq_moebius_scaled_sum 5 (fun _ _ _ => (1 : ℤ))
