import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
-- An intended type rejection: the literal product cannot substitute for its radical.
example (ε : ℝ) (h : ∃ K : ℝ, 0 < K ∧ ∀ t : PrimitiveAdditiveTriple,
    (t.c : ℝ) ≤ K * Real.rpow ((t.a * t.b * t.c : ℕ) : ℝ) (1 + ε)) :
    ABCBound ε := by exact h
