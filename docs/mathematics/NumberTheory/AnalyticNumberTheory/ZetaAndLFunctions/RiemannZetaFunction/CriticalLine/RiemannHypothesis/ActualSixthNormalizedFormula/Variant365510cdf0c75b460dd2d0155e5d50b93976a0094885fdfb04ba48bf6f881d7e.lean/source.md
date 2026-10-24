# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualSixthNormalizedFormula.Variant365510cdf0c75b460dd2d0155e5d50b93976a0094885fdfb04ba48bf6f881d7e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9dd25ae5869f6130cbbdba3d76e688fababa61d` · SHA-256 `365510cdf0c75b460dd2d0155e5d50b93976a0094885fdfb04ba48bf6f881d7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualSixthLaplacePrimitive

/-!
# Exact normalized sixth-source formula before its asymptotic consumer

The literal polynomial antiderivative and original 1/4 pole factor give the
unchanged test's sixth moment. Squaring retains A^9, both square roots, the
exact source normalization and the reflected endpoint correction. The
limiting-normalization arithmetic explains the proposed census coefficient;
this file itself does not assert a census limit. Human exact source and
normalization direction: grwtsk contributors. Local algebraic consumer:
OpenAI Codex. Existing source definitions keep their qualified identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSixthNormalizedFormula
open FormalResearch.RiemannHypothesis.SourcePairing
open ActualSourceLaplaceMoment ActualSixthLaplacePrimitive
noncomputable section

/-- The normalized sixth moment in this module, with the following exact parameterization.

def normalizedSixthMoment (A : ℝ) : ℝ := (1 / 6) * (testMoment A (1 / 6)) ^ 2 * (A ^ 9 /
Real.exp (A / 3))
-/
def normalizedSixthMoment (A : ℝ) : ℝ :=
  (1 / 6) * (testMoment A (1 / 6)) ^ 2 * (A ^ 9 / Real.exp (A / 3))

theorem actual_sixth_laplace_closed_formula {A : ℝ} (hA : 1 ≤ A) :
    testMoment A (1 / 6) =
      -663552 * (Real.exp (A / 6) * sixthEndpointCorrection A) /
        (A ^ 4 * Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  have hpos : 0 < A := by linarith
  have hn := source_normalization_pos A (by linarith)
  rw [exact_actual_normalized_laplace_multiplier hA, actual_sixth_bump_moment_closed_formula hA]
  field_simp [(Real.sqrt_pos.mpr hpos).ne', (Real.sqrt_pos.mpr hn).ne']
  ring

theorem actual_sixth_normalized_squared_formula {A : ℝ} (hA : 1 ≤ A) :
    normalizedSixthMoment A =
      (73383542784 / sourceNormalization A) * (sixthEndpointCorrection A) ^ 2 := by
  have hpos : 0 < A := by linarith
  have hn := source_normalization_pos A (by linarith)
  have he : Real.exp (A / 6) ^ 2 = Real.exp (A / 3) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [normalizedSixthMoment, actual_sixth_laplace_closed_formula hA]
  simp only [mul_pow, div_pow, he, Real.sq_sqrt hpos.le, Real.sq_sqrt hn.le]
  field_simp [hpos.ne', hn.ne', Real.exp_ne_zero]
  ring

theorem exact_limiting_normalization_coefficient :
    (73383542784 : ℝ) / (4096 / 109395) = 1959910318080 := by norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthNormalizedFormula
```
