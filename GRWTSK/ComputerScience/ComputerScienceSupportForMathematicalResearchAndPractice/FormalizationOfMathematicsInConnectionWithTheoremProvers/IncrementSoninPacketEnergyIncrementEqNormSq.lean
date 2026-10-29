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
