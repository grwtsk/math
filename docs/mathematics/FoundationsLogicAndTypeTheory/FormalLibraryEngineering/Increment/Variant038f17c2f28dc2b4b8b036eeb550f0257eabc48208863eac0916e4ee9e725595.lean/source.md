# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Increment.Variant038f17c2f28dc2b4b8b036eeb550f0257eabc48208863eac0916e4ee9e725595

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13c9eaa7850c5d72cb35cbf31a0167e15ffdbe19` · SHA-256 `038f17c2f28dc2b4b8b036eeb550f0257eabc48208863eac0916e4ee9e725595`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP3.Energy.Definition

/-!
# One-prime packet-energy increment primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_increment_eq_normSq
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S)
    (g : W.Test) :
    soninPacketEnergy
      W P (insert p S) g
    -
    soninPacketEnergy
      W P S g
    =
    W.projectedNormSq
      (soninIncrement P S p)
      g := by
  change
    W.energy
      (P.projection (insert p S))
      g
    -
    W.energy
      (P.projection S)
      g
    =
    W.projectedNormSq
      (soninIncrement P S p)
      g
  calc
    W.energy
        (P.projection (insert p S))
        g
      -
      W.energy
        (P.projection S)
        g
      =
      W.energy
        (soninIncrement P S p)
        g := by
          exact
            (W.energy_sub
              (P.projection (insert p S))
              (P.projection S)
              g).symm
    _ =
      W.projectedNormSq
        (soninIncrement P S p)
        g := by
          exact
            W.projection_energy_eq
              (soninIncrement P S p)
              g
              (soninIncrement_isOrthogonalProjection
                cert S p hp)

theorem soninPacketEnergy_increment_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S)
    (g : W.Test) :
    0 ≤
      soninPacketEnergy
        W P (insert p S) g
      -
      soninPacketEnergy
        W P S g := by
  rw [
    soninPacketEnergy_increment_eq_normSq
      W P cert S p hp g
  ]
  exact
    W.projectedNormSq_nonnegative
      (soninIncrement P S p)
      g

end Mathematics.SemiLocalDefect.SoninCore
```
