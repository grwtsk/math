import SourceCriticalDecayWork

/-! Private semantic guards, excluded from the eight-declaration work unit. -/
set_option autoImplicit false
set_option linter.hashCommand false
namespace FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
open SourceCriticalDecayWork SourcePrimeSquareTailWork SourceDiagonalMainTerm

/-- The actual endpoint contribution cannot be erased from the signed decay work. -/
theorem endpoint_minus_one_required {A : ℝ} (hA : 1 ≤ A) :
    criticalDecayWork A ≠ diagonalMainCoefficient A*A := by
  rw [criticalDecayWork_eq_main hA]
  linarith

/-- The actual square tail is flat below its first atom while the independent decay decreases. -/
theorem actual_square_tail_not_decay : squareTail ≠ criticalDecay := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num : (1 : ℝ) < 2)
  have hq : squareTail (Real.log 2) = squarePrefixBaseline :=
    squareTail_below_first_square (by linarith)
  have hh : criticalDecay (Real.log 2) < criticalDecay 0 := by
    simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
    rw [Real.exp_lt_one_iff]
    linarith
  intro he
  have h0 := congrFun he 0
  have hlog := congrFun he (Real.log 2)
  rw [squareTail_at_zero] at h0
  rw [hq] at hlog
  linarith

#check endpoint_minus_one_required
#print axioms endpoint_minus_one_required
#check actual_square_tail_not_decay
#print axioms actual_square_tail_not_decay
end FormalResearch.RiemannHypothesis.SourceCriticalDecayScopeFixtures
