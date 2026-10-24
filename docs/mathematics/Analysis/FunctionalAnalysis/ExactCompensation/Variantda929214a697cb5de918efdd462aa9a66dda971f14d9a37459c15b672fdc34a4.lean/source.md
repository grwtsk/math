# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ExactCompensation.Variantda929214a697cb5de918efdd462aa9a66dda971f14d9a37459c15b672fdc34a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3ad91a1f92d9ac736d03e66b5f46bc4870796b` · SHA-256 `da929214a697cb5de918efdd462aa9a66dda971f14d9a37459c15b672fdc34a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.CompensationBound

/-!
# Exact fixed-Hilbert trace compensation
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

structure ExactTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test) where
  exact :
    ∀ arc,
      cut.safeArc arc = true →
        system.compensationDefect arc = 0

theorem packetEnergy_invariant_of_exactCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      ExactTraceCompensation system)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    system.packetEnergy arc.head test =
      system.packetEnergy arc.tail test := by
  apply sub_eq_zero.mp
  rw [packetEnergy_difference_eq_compensationDefect
    system arc test safe,
    certificate.exact arc safe,
    system.packet.energy_zero]

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```
