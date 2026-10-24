# Complete source: GRWTSK.Algebra.UniversalAlgebra.Sum.Variant67f81641780adc9bd100e0029a1a6a8f24e276724b23162cab3242cd54a17aad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de1ff1003673ed408b942caa28d64627f6c77ba0` · SHA-256 `67f81641780adc9bd100e0029a1a6a8f24e276724b23162cab3242cd54a17aad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathematics.SemiLocalDefect.WP3.Energy

/-!
# Packet-increment sum primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

open scoped BigOperators

def packetIncrementSum
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test) :
    ℝ :=
  ∑ i : Fin E.order.length,
    W.projectedNormSq
      (soninIncrement
        P
        (E.prefixCut i.val)
        (E.order.get i))
      g

end Mathematics.SemiLocalDefect.SoninCore
```
