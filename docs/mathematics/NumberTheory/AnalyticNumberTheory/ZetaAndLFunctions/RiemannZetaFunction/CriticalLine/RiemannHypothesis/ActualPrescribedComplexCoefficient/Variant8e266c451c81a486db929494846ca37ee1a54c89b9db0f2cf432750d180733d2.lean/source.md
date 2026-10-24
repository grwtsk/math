# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPrescribedComplexCoefficient.Variant8e266c451c81a486db929494846ca37ee1a54c89b9db0f2cf432750d180733d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e8821a745f2840beb67bfe9b0216a8524ba71e1` · SHA-256 `8e266c451c81a486db929494846ca37ee1a54c89b9db0f2cf432750d180733d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualComplexEndpointCoefficient

/-!
A prescribed nonzero complex mode has a strictly negative real ordinary square
of the literal actual endpoint coefficient. This is a source coefficient fact,
not a zero of zeta or an arithmetic covariance counterexample.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualPrescribedComplexCoefficient
open SourceActualComplexEndpointAsymptotic SourceActualComplexEndpointCoefficient
noncomputable section

/-- A prescribed point in the open complex right half-plane. -/
def actualPrescribedComplexMode : ℂ := (1 + Complex.I) / 2

/-- The source coefficient evaluation is genuinely applicable at this mode. -/
theorem actualPrescribedComplexMode_re_pos : 0 < actualPrescribedComplexMode.re := by
  norm_num [actualPrescribedComplexMode, Complex.div_re, Complex.normSq]

/-- Exact evaluation of the independently defined actual improper coefficient. -/
theorem actualLeadingComplexCoefficient_at_prescribed_mode :
    actualLeadingComplexCoefficient actualPrescribedComplexMode = -384 - 1152 * Complex.I := by
  rw [actualLeadingComplexCoefficient_eq actualPrescribedComplexMode_re_pos]
  apply Complex.ext <;>
    norm_num [actualPrescribedComplexMode, pow_succ, Complex.div_re, Complex.div_im,
      Complex.normSq]

/-- The actual ordinary square has a strictly negative real component. -/
theorem actualLeadingComplexCoefficient_prescribed_square_re :
    (actualLeadingComplexCoefficient actualPrescribedComplexMode ^ 2).re = -1179648 := by
  rw [actualLeadingComplexCoefficient_at_prescribed_mode]
  norm_num [pow_two]

/-- This coefficient cannot be replaced by a nonnegative modulus-square expression. -/
theorem actualLeadingComplexCoefficient_prescribed_square_re_neg :
    (actualLeadingComplexCoefficient actualPrescribedComplexMode ^ 2).re < 0 := by
  rw [actualLeadingComplexCoefficient_prescribed_square_re]
  norm_num

end
end FormalResearch.RiemannHypothesis.ActualPrescribedComplexCoefficient
```
