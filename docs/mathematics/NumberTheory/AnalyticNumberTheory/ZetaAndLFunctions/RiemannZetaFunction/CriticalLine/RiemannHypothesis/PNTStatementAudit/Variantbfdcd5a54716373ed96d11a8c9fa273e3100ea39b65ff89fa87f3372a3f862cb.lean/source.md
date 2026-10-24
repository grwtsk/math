# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PNTStatementAudit.Variantbfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d02e2bec232b81cf7dd943b4a4704939064e8da9` · SHA-256 `bfdcd5a54716373ed96d11a8c9fa273e3100ea39b65ff89fa87f3372a3f862cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

open Filter Asymptotics

example : ∃ c > 0,
    (Chebyshev.psi - id) =O[Filter.atTop]
      fun (x : ℝ) ↦ x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10)) :=
  _root_.MediumPNT

#check @MediumPNT
#print axioms MediumPNT
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail
```
