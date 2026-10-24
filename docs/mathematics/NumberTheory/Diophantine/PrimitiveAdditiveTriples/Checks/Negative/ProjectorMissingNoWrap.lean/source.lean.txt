/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open GRWTSK.Analysis.Fourier.FiniteAdditiveProjector

-- q=4 exceeds M=3, but 3+3 wraps to 2. The projector is one, not zero.
example : characterProjector 4 3 3 2 = 0 := by
  have h : characterProjector 4 3 3 2 = 1 := by
    rw [characterProjector_eq_modular_indicator, if_pos (by decide)]
  exact h
