# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RiemannHypothesis.Varianta86dfe0f99a39a4c2842e92b1cdfc04be6203cdc3d03594e8606fd04885f86d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f424d030992665bfdcb466cd09721ab4635db0d` · SHA-256 `a86dfe0f99a39a4c2842e92b1cdfc04be6203cdc3d03594e8606fd04885f86d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.RiemannHypothesis.ZeroSymmetry
import FormalResearch.RiemannHypothesis.Definitions

/-! Compatibility names for the canonical GRWTSK implementation. No theorem body is duplicated. -/

namespace FormalResearch.RiemannHypothesis

export GRWTSK.RiemannHypothesis (
  zero_conjugate_involutive
  zero_reflect_involutive
  zero_conjugate_reflect_commute
  critical_reflection_eq_composite
  critical_reflection_involutive
  NontrivialZetaZero.ne_zero
  NontrivialZetaZero.gamma_real_ne_zero
  NontrivialZetaZero.conjugate
  NontrivialZetaZero.reflect
  NontrivialZetaZero.critical_reflection
  NontrivialZetaZero.mem_critical_strip
  nontrivial_zero_conjugate_iff
  nontrivial_zero_reflect_iff
  nontrivial_zero_critical_reflection_iff)

end FormalResearch.RiemannHypothesis
```
