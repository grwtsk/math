# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RiemannHypothesis.Variantedbb9e4dcbc4d262d0a4ad04ac42fc6ddc0b3461e2cd6fac62abc686721c5ff3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `324928d304a54453c03c548ac7362beafb7f20a7` · SHA-256 `edbb9e4dcbc4d262d0a4ad04ac42fc6ddc0b3461e2cd6fac62abc686721c5ff3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.RiemannHypothesis.Defect
import FormalResearch.RiemannHypothesis.Definitions

/-! Compatibility names for the canonical GRWTSK implementation. No theorem body is duplicated. -/

namespace FormalResearch.RiemannHypothesis

export GRWTSK.RiemannHypothesis (
  rh_defect_eq_norm_sq
  rh_defect_nonneg
  rh_defect_eq_square
  rh_defect_eq_zero_iff
  riemann_hypothesis_iff_defect_zero
  defect_nonnegative_does_not_force_universal_vanishing)

end FormalResearch.RiemannHypothesis
```
