import Mathematics.SemiLocalDefect.WP2.OperatorOrder.Predicates

/-!
# Orthogonal-projection certificate primitive
-/

namespace Mathematics.SemiLocalDefect.SoninCore

structure OrthogonalProjectionCertificate
    {H : Type*}
    [NormedAddCommGroup H]
    [InnerProductSpace ℂ H]
    (P : HilbertEnd H) :
    Prop where
  selfAdjoint :
    OperatorSelfAdjoint P
  idempotent :
    OperatorIdempotent P
  nonnegative :
    OperatorNonnegative P

end Mathematics.SemiLocalDefect.SoninCore
