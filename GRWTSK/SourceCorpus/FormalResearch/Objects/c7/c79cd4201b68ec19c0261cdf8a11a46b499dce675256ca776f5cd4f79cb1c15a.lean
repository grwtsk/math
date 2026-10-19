import Mathematics.Stability.DefectTransport

/-! # Fixed points and explicitly open analytic obligations -/

namespace Mathematics.Stability

def IsFixedPoint {X : Type} (construction : X → X) (point : X) : Prop :=
  construction point = point

structure FixedPointCertificate
    {X : Type}
    (construction : ReflectiveMap X) where
  point : X
  member : construction.domain.contains point
  fixed : IsFixedPoint construction.apply point

theorem certified_point_satisfies_exact_equation
    {X : Type}
    {construction : ReflectiveMap X}
    (certificate : FixedPointCertificate construction) :
    construction.apply certificate.point = certificate.point :=
  certificate.fixed

structure FixedPointAnalyticObligations
    {X : Type}
    (construction : ReflectiveMap X) where
  existenceStatement :
    ∃ point, construction.domain.contains point ∧
      IsFixedPoint construction.apply point
  uniquenessStatement :
    ∀ p q,
      construction.domain.contains p →
      construction.domain.contains q →
      IsFixedPoint construction.apply p →
      IsFixedPoint construction.apply q →
      p = q
  basinStatement : X → Prop
  existenceStatus : ProofDisposition
  uniquenessStatus : ProofDisposition
  basinStatus : ProofDisposition

/-!
This is a theorem from a supplied separation premise, not an assertion that
every registered map has a unique fixed point.
-/
theorem fixed_point_unique_from_separation
    {X : Type}
    (construction : X → X)
    (separates :
      ∀ p q,
        IsFixedPoint construction p →
        IsFixedPoint construction q →
        p = q)
    {p q : X}
    (pFixed : IsFixedPoint construction p)
    (qFixed : IsFixedPoint construction q) :
    p = q :=
  separates p q pFixed qFixed

end Mathematics.Stability
