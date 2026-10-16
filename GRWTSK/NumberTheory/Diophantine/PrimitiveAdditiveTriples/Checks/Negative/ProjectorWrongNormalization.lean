/- Copyright (c) 2026 grwtsk contributors. MIT. Intended type rejection. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.AdditiveCharacterMoments

open scoped BigOperators

-- Without the factor q^{-1}, the zero-phase character sum is q, not one.
example : (∑ k : ZMod 7,
    ZMod.stdAddChar (k * ((1 : ZMod 7) + 1 - 2))) = (1 : ℂ) := by
  have h : (∑ k : ZMod 7,
      ZMod.stdAddChar (k * ((1 : ZMod 7) + 1 - 2))) = (7 : ℂ) := by
    norm_num
  exact h
