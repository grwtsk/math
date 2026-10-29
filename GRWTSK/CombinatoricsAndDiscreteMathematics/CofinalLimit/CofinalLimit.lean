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
