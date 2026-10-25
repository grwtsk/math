import Mathematics.SemiLocalDefect.WP2.ProjectionProfile

/-!
# Projection-increment primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def projectionDifference
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S T : PrimeCut U) :
    HilbertEnd H.Ambient :=
  P.projection T -
  P.projection S

def soninIncrement
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (p : U.Prime) :
    HilbertEnd H.Ambient :=
  projectionDifference
    P
    S
    (insert p S)

end Mathematics.SemiLocalDefect.SoninCore
