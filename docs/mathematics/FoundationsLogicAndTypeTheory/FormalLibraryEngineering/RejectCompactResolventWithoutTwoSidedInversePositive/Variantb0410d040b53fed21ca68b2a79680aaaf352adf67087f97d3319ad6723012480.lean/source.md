# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCompactResolventWithoutTwoSidedInversePositive.Variantb0410d040b53fed21ca68b2a79680aaaf352adf67087f97d3319ad6723012480

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce890d89004a480e8bb54b782ce1b9098fceb72a` · SHA-256 `b0410d040b53fed21ca68b2a79680aaaf352adf67087f97d3319ad6723012480`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
example {D : UnboundedOperator ℂ H} {z : ℂ}
    (R : CompactResolventWitness D z) : CompactResolventWitness D z where
  inverse := R.inverse
  mapsDomain := R.mapsDomain
  compact := R.compact
  rightInverse := R.rightInverse
  leftInverse := R.leftInverse
```
