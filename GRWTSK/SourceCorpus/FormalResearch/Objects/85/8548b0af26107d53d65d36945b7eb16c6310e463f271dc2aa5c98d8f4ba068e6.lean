import Mathematics.SemiLocalDefect.WP3.Energy.Definition

/-!
# Packet-energy monotonicity primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninPacketEnergy_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    (cert : SoninCapacityCertificate P)
    {S T : PrimeCut U}
    (hST : S ⊆ T)
    (g : W.Test) :
    soninPacketEnergy W P S g
    ≤
    soninPacketEnergy W P T g := by
  change
    W.energy (P.projection S) g
    ≤
    W.energy (P.projection T) g
  have hProjection :
      OrthogonalProjectionCertificate
        (projectionDifference P S T) :=
    cert.difference_isProjection hST
  have hDifferenceNonnegative :
      0 ≤
      W.energy
        (projectionDifference P S T)
        g := by
    rw [
      W.projection_energy_eq
        (projectionDifference P S T)
        g
        hProjection
    ]
    exact
      W.projectedNormSq_nonnegative
        (projectionDifference P S T)
        g
  have hSub :
      W.energy
        (projectionDifference P S T)
        g
      =
      W.energy (P.projection T) g
      -
      W.energy (P.projection S) g := by
    exact
      W.energy_sub
        (P.projection T)
        (P.projection S)
        g
  rw [hSub] at hDifferenceNonnegative
  exact sub_nonneg.mp hDifferenceNonnegative

end Mathematics.SemiLocalDefect.SoninCore
