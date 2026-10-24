# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCanonicalF7Identification.Variant5d783305852f9729a2b92efea80f2fd08a7d7ae0440b96277a5afd22bd74f5fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5a075cb64865e63cd47f6a5d638c65fd9d2a202` · SHA-256 `5d783305852f9729a2b92efea80f2fd08a7d7ae0440b96277a5afd22bd74f5fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualF7TailAdapter
import RootActualXiTailPrimitiveAbel

/-!
Identify the independently named actual physical primitive and weight.
All real terminal times are retained, including reverse orientation below seven.
No arithmetic average or signed lower estimate is introduced.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCanonicalF7Identification
open RootActualXiTailPrimitive RootActualXiTailPrimitiveAbel
noncomputable section

/-- The exact full shifted Chebyshev time density is the same source expression. -/
theorem actualF7_time_density_eq (t : ℝ) :
    RH16ActualF7.timeXiDensity t = actualXiTailTimeDensity t := by
  rfl

/-- The physical and time primitives agree at every real terminal time. -/
theorem actualF7_eq_anchored_primitive (t : ℝ) :
    RH16ActualF7.actualF7 t = actualAnchoredXiTailPrimitive t := by
  rw [actualAnchoredXiTailPrimitive_eq_physical]
  rfl

/-- Both versions use the same minus-sign physical correlation weight. -/
theorem actualF7_minus_weight_eq (A t : ℝ) :
    RH16ActualF7.minusCorrelationWeight A t = actualXiTailSourceTest A t := by
  rfl

end
end FormalResearch.RiemannHypothesis.ActualCanonicalF7Identification
```
