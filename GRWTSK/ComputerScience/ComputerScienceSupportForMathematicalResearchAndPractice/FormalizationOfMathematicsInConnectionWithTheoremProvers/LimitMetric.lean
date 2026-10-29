import Mathematics.StratifiedBoundary.Boundary.LimitState

/-!
# Certified limit metric

Separation and completeness are supplied for the declared weighted metric;
they are not inferred from a schema containing weights.
-/

namespace Mathematics.StratifiedBoundary

structure LimitMetricCertificate (State : Type u) where
  distance : State → State → Nat
  cauchy : (Nat → State) → Prop
  converges : (Nat → State) → State → Prop
  separates :
    ∀ {left right},
      distance left right = 0 →
        left = right
  complete :
    ∀ sequence,
      cauchy sequence →
        ∃ limit,
          converges sequence limit
  summableWeightCertificateRef : String
  finiteProjectionContinuityRef : String

theorem limit_metric_separates
    {State : Type u}
    (certificate : LimitMetricCertificate State)
    {left right : State}
    (zeroDistance :
      certificate.distance left right = 0) :
    left = right :=
  certificate.separates zeroDistance

theorem limit_metric_complete
    {State : Type u}
    (certificate : LimitMetricCertificate State)
    (sequence : Nat → State)
    (isCauchy : certificate.cauchy sequence) :
    ∃ limit,
      certificate.converges sequence limit :=
  certificate.complete sequence isCauchy

end Mathematics.StratifiedBoundary
