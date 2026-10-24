# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Variantcd3a15ac300676cfe485cce176bacc739d7b3a197e36b444ab92e290e36e4d24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd14554024d42e5a4e3887a7b4a18bb926bbb053` · SHA-256 `cd3a15ac300676cfe485cce176bacc739d7b3a197e36b444ab92e290e36e4d24`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalRemovedPrimeWork

/-! Actual private scope guards; these are excluded from the ten candidate declarations.
AI attribution: developed with OpenAI Codex. -/
set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures
open SourceCriticalRemovedPrimeWork SourceCriticalDecayWork SourcePairedPrimeAverages
open SourcePairedTailQuadrature SourcePairedTailTest SourceDiagonalMainTerm
open WeightedPrimeAbel

/-- The actual endpoint compensation cannot be silently dropped. -/
theorem endpoint_one_required {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A ≠ pairedErrorContrast A-diagonalMainCoefficient A*A-
      criticalDecayNegativeMean A := by
  rw [criticalRemovedPairedWork_eq hA]
  linarith

/-- The complete source drift precedes the new independent scalar compensation. -/
theorem complete_drift_required {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A ≠ primeLogSum (2*A) (pairedTailTest A)-
      diagonalMainCoefficient A*A+1-criticalDecayNegativeMean A := by
  rw [criticalRemovedPairedWork_eq_prime_quadrature hA]
  have hd := pairedTailTest_drift_pos hA
  linarith

/-- The actual error minus decay still has a negative oriented difference before the first prime. -/
theorem actual_removed_error_negative_difference :
    (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) < 0 := by
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have he := Real.add_one_le_exp (-(Real.log 2/2)/2)
  rw [show (primeLogError (Real.log 2/2)-criticalDecay (Real.log 2/2))-
      (primeLogError 0-criticalDecay 0) =
      (primeLogError (Real.log 2/2)-primeLogError 0)+
        (criticalDecay 0-criticalDecay (Real.log 2/2)) by ring,
    primeError_difference_before_first (by linarith) (by linarith)]
  simp only [criticalDecay, neg_zero, zero_div, Real.exp_zero]
  linarith

end FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures

open FormalResearch.RiemannHypothesis.SourceCriticalRemovedScopeFixtures
#check endpoint_one_required
#print axioms endpoint_one_required
#check complete_drift_required
#print axioms complete_drift_required
#check actual_removed_error_negative_difference
#print axioms actual_removed_error_negative_difference
```
