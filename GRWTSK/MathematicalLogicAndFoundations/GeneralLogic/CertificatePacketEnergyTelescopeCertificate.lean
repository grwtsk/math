import Mathematics.SemiLocalDefect.WP3.Telescope.Sum

/-!
# Packet-energy telescope certificate primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure PacketEnergyTelescopeCertificate
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (_capacity : SoninCapacityCertificate P)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test) :
    Prop where
  every_step_fresh :
    ∀ i : Fin E.order.length,
      E.order.get i ∉
        E.prefixCut i.val
  energy_eq_base_add_sum :
    soninPacketEnergy W P S g
    =
    soninPacketEnergy
      W P (∅ : PrimeCut U) g
    +
    packetIncrementSum
      W P E g
  incrementSum_eq_difference :
    packetIncrementSum
      W P E g
    =
    soninPacketEnergy W P S g
    -
    soninPacketEnergy
      W P (∅ : PrimeCut U) g

end Mathematics.SemiLocalDefect.SoninCore
