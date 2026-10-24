# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceNativeDirichletMomentsIndependentAudit.Variant0d7d1d2b2ff7b5a7354f2647df8926ef03cf1114c9956a5ce6b7cb337925b30a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `175550e8264d89c326bfe910d5060503fe8aa1eb` · SHA-256 `0d7d1d2b2ff7b5a7354f2647df8926ef03cf1114c9956a5ce6b7cb337925b30a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceNativeDirichletMoments

set_option autoImplicit false
set_option linter.hashCommand false

namespace FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments

#check @dirichletMoment
#print dirichletMoment
#print axioms dirichletMoment

#check @dirichletMoment_nonneg
#print dirichletMoment_nonneg
#print axioms dirichletMoment_nonneg

#check @mangoldt_abscissa_le_one
#print mangoldt_abscissa_le_one
#print axioms mangoldt_abscissa_le_one

#check @iterate_logMul_eq
#print iterate_logMul_eq
#print axioms iterate_logMul_eq

#check @dirichletMoment_summable
#print dirichletMoment_summable
#print axioms dirichletMoment_summable

#check @log_moment_series_eq
#print log_moment_series_eq
#print axioms log_moment_series_eq

#check @native_series_hasDerivAt_two
#print native_series_hasDerivAt_two
#print axioms native_series_hasDerivAt_two

#check @native_series_second_derivative_two
#print native_series_second_derivative_two
#print axioms native_series_second_derivative_two

#check @combinedMultiplier_eventually_eq_series
#print combinedMultiplier_eventually_eq_series
#print axioms combinedMultiplier_eventually_eq_series

#check @combinedMultiplier_hasDerivAt_two
#print combinedMultiplier_hasDerivAt_two
#print axioms combinedMultiplier_hasDerivAt_two

#check @combinedMultiplier_second_derivative_two
#print combinedMultiplier_second_derivative_two
#print axioms combinedMultiplier_second_derivative_two

#check @dirichletMoment_zero_eq_majorant
#print dirichletMoment_zero_eq_majorant
#print axioms dirichletMoment_zero_eq_majorant

#check @combinedMultiplier_two_eq_majorant
#print combinedMultiplier_two_eq_majorant
#print axioms combinedMultiplier_two_eq_majorant

#check @dirichletMoment_one_pos
#print dirichletMoment_one_pos
#print axioms dirichletMoment_one_pos

end FormalResearch.RiemannHypothesis.SourceNativeDirichletMoments
```
