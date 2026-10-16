/- Copyright (c) 2026 R.A. Jacob Martone. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement

open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

-- Finite frequency expansion supplies no radical-height estimate.
example : ABCConjecture := by
  exact typedPrimitiveWeightedMoment_eq_moebius_frequency_sum 2 5
    (fun _ _ _ => (1 : ℂ)) (by decide)
