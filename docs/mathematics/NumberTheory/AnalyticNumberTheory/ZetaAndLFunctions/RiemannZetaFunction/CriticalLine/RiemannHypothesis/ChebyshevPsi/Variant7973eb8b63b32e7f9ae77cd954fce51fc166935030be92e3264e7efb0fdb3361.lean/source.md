# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevPsi.Variant7973eb8b63b32e7f9ae77cd954fce51fc166935030be92e3264e7efb0fdb3361

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d2b98a9ff4872918eb539fc19a55f2bcac5c6cc` · SHA-256 `7973eb8b63b32e7f9ae77cd954fce51fc166935030be92e3264e7efb0fdb3361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert.Engine.ChebyshevPsi

open LeanCert.Engine.ChebyshevPsi

-- Quick test: incremental checker (O(N), fast)
example : allPsiBoundsHold 11723 20 = true := by native_decide

-- Eval the incremental checker result
#eval allPsiBoundsHold 11723 20
```
