import Mathematics.SemiLocalDefect.WP2.All

/-!
# WP3 abstract packet-energy model

The finite core records the algebra required of a later Hilbert–Schmidt
adapter, without importing a trace-class implementation.
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure PacketEnergyModel
    (H : Type*)
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] where
  Test :
    Type*
  energy :
    HilbertEnd H →
    Test →
    ℝ
  projectedNormSq :
    HilbertEnd H →
    Test →
    ℝ
  packetNormSq :
    Test →
    ℝ
  packetNormSq_nonnegative :
    ∀ g,
      0 ≤ packetNormSq g
  projectedNormSq_nonnegative :
    ∀ A g,
      0 ≤ projectedNormSq A g
  energy_zero :
    ∀ g,
      energy 0 g = 0
  energy_sub :
    ∀ A B g,
      energy (A - B) g
      =
      energy A g -
      energy B g
  projection_energy_eq :
    ∀ A g,
      OrthogonalProjectionCertificate A →
      energy A g =
      projectedNormSq A g
  projectedNormSq_le_packetNormSq :
    ∀ A g,
      OrthogonalProjectionCertificate A →
      projectedNormSq A g
      ≤
      packetNormSq g

end Mathematics.SemiLocalDefect.SoninCore
