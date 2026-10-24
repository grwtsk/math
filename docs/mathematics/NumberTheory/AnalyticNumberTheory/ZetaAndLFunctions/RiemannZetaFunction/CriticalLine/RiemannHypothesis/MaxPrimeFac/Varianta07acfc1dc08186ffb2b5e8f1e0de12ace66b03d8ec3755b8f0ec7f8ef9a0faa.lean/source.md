# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MaxPrimeFac.Varianta07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d364fe2479268e770b8891eaf92148a1e75bf43d` · SHA-256 `a07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

meta import Mathlib.Data.Nat.MaxPrimeFac

#guard Nat.maxPrimeFac 0 = 0
#guard Nat.maxPrimeFac 1 = 1
#guard Nat.maxPrimeFac 12 = 3
#guard Nat.maxPrimeFac 97 = 97
#guard Nat.maxPrimeFac 125 = 5
#guard Nat.maxPrimeFac 360 = 5
```
