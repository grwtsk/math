/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector

-- q=8 exceeds 2*M=6 for M=3, but d=2 is not cancellable modulo q=8.
-- The unscaled phase is four; the scaled phase is eight and wraps to zero.
example : characterProjector 8 (2 * 3) (2 * 3) (2 * 2) =
    characterProjector 8 3 3 2 := by
  have h : characterProjector 8 (2 * 3) (2 * 3) (2 * 2) = 1 := by
    rw [characterProjector_eq_modular_indicator, if_pos (by decide)]
  exact h
