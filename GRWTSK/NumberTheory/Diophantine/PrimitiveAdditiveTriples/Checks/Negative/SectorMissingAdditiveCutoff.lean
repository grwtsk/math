/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DivisorSectorReindexing

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
open scoped BigOperators

-- The quotient square has four pairs; the required additive region has one.
example : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) =
    ∑ _p ∈ (Finset.Icc 1 (5 / 2)).product (Finset.Icc 1 (5 / 2)), (1 : ℤ) := by
  have h : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) = 1 := by
    decide
  exact h
