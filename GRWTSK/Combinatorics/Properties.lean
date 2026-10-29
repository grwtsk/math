import Mathematics.SemiLocalDefect.WP2.Increment.Certificate

/-!
# Projection-increment theorem primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

theorem soninIncrement_isOrthogonalProjection
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (_hp : p ∉ S) :
    OrthogonalProjectionCertificate
      (soninIncrement P S p) := by
  apply cert.difference_isProjection
  intro x hx
  exact Finset.mem_insert_of_mem hx

theorem soninIncrement_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorNonnegative
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).nonnegative

theorem soninIncrement_idempotent
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorIdempotent
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).idempotent

theorem soninIncrement_selfAdjoint
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorSelfAdjoint
      (soninIncrement P S p) :=
  (soninIncrement_isOrthogonalProjection
    cert S p hp).selfAdjoint

end Mathematics.SemiLocalDefect.SoninCore
