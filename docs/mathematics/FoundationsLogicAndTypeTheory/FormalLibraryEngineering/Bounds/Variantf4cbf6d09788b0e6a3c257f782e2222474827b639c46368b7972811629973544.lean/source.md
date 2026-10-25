# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bounds.Variantf4cbf6d09788b0e6a3c257f782e2222474827b639c46368b7972811629973544

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf2529be008fe6ad07eb74e3eb5558ea2df7f63f` · SHA-256 `f4cbf6d09788b0e6a3c257f782e2222474827b639c46368b7972811629973544`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP3.Energy.Definition

/-!
# Packet-energy bound primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (g : W.Test) :
    0 ≤ soninPacketEnergy W P S g := by
  unfold soninPacketEnergy
  rw [
    W.projection_energy_eq
      (P.projection S)
      g
      (P.projection_isProjection S)
  ]
  exact
    W.projectedNormSq_nonnegative
      (P.projection S)
      g

theorem soninPacketEnergy_le_packetNormSq
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (g : W.Test) :
    soninPacketEnergy W P S g
    ≤
    W.packetNormSq g := by
  unfold soninPacketEnergy
  rw [
    W.projection_energy_eq
      (P.projection S)
      g
      (P.projection_isProjection S)
  ]
  exact
    W.projectedNormSq_le_packetNormSq
      (P.projection S)
      g
      (P.projection_isProjection S)

end Mathematics.SemiLocalDefect.SoninCore
```
