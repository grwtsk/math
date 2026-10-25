# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Definition.Variant1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3170ef87f19ddd6b01a7ab241d9aabaadaeffa03` · SHA-256 `1dfcf6917673d3b3c3b78ce06c493dfcc54b489c17dfae247c03ffc2ff268b3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP3.PacketModel

/-!
# Sonin packet-energy primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def soninPacketEnergy
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (g : W.Test) :
    ℝ :=
  W.energy
    (P.projection S)
    g

end Mathematics.SemiLocalDefect.SoninCore
```
