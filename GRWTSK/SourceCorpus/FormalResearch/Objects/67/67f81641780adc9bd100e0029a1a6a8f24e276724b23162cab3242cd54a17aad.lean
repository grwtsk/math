import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathematics.SemiLocalDefect.WP3.Energy

/-!
# Packet-increment sum primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

open scoped BigOperators

def packetIncrementSum
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (W : PacketEnergyModel H.Ambient)
    (P : SoninProjectionProfile H)
    {S : PrimeCut U}
    (E : CutEnumeration U S)
    (g : W.Test) :
    ℝ :=
  ∑ i : Fin E.order.length,
    W.projectedNormSq
      (soninIncrement
        P
        (E.prefixCut i.val)
        (E.order.get i))
      g

end Mathematics.SemiLocalDefect.SoninCore
