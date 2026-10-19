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
