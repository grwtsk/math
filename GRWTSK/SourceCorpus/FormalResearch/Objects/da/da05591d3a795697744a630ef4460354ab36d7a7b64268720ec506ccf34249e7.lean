import Mathematics.SemiLocalDefect.WP2.ProjectionProfile.Definition

/-!
# Projection-capacity primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

def SoninProjectionProfile.capacity
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    HilbertEnd H.Ambient :=
  P.projection S

theorem SoninProjectionProfile.capacity_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U) :
    OperatorNonnegative
      (P.capacity S) :=
  (P.projection_isProjection S).nonnegative

theorem SoninProjectionProfile.capacity_mono
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    {S T : PrimeCut U}
    (hST : S ⊆ T) :
    OperatorLE
      (P.capacity S)
      (P.capacity T) :=
  P.projection_mono hST

end Mathematics.SemiLocalDefect.SoninCore
