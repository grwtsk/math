# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalLimit.Variantc5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0da05944167336a87d8adc8daf71c3e3e283507b` · SHA-256 `c5a07f18de6d2137aa4fc14e46dc283dadc176d1897851d040cd1ff64bfab2eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Trace.Energy

/-!
# Cofinal packet-energy limits

The finite monotone family is distinguished from its certified cofinal limit.
-/

namespace Mathematics.SemiLocalDefect.Trace

universe uPrime uTest

structure CofinalCutSequence
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  cut : Nat → Finset Prime
  monotone :
    ∀ index,
      cut index ⊆ cut (index + 1)
  cofinal :
    ∀ prime,
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          prime ∈ cut index

structure PacketEnergyCofinalLimit
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {Test : Type uTest}
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (packet : DefectPacket model Test)
    (sequence : CofinalCutSequence Prime) where
  limitEnergy : Test → ℝ
  epsilonConvergence :
    ∀ test epsilon,
      0 < epsilon →
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          |packetEnergy capacity packet
              (sequence.cut index) test -
            limitEnergy test| < epsilon
  nonnegative :
    ∀ test,
      0 ≤ limitEnergy test
  boundedByPacket :
    ∀ test,
      limitEnergy test ≤
        packet.packetNormSq test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.Trace
```
