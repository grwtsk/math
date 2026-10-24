import Mathematics.Stability.Residual

/-! # Certified local derivative or Lipschitz gain -/

namespace Mathematics.Stability

structure DerivativeGainCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  gain : Nat
  bounds :
    ∀ x y,
      construction.domain.contains x →
      construction.domain.contains y →
      metric.distance (construction.apply x)
        (construction.apply y) ≤
        gain * metric.distance x y

theorem derivative_gain_bounds_one_step
    {X : Type}
    {construction : ReflectiveMap X}
    {metric : ResidualMetric X}
    (certificate :
      DerivativeGainCertificate construction metric)
    (x y : X)
    (xMember : construction.domain.contains x)
    (yMember : construction.domain.contains y) :
    metric.distance (construction.apply x)
      (construction.apply y) ≤
      certificate.gain * metric.distance x y :=
  certificate.bounds x y xMember yMember

/-!
Non-integral gains use a common positive scale.  The bound
`scale * d(F x, F y) ≤ numerator * d(x, y)` is the division-free form of
`d(F x, F y) ≤ (numerator / scale) * d(x, y)`.
-/
structure ScaledDerivativeGainCertificate
    {X : Type}
    (construction : ReflectiveMap X)
    (metric : ResidualMetric X) where
  numerator : Nat
  scale : Nat
  scalePositive : 0 < scale
  bounds :
    ∀ x y,
      construction.domain.contains x →
      construction.domain.contains y →
      scale *
        metric.distance (construction.apply x)
          (construction.apply y) ≤
        numerator * metric.distance x y

theorem scaled_derivative_gain_bounds_one_step
    {X : Type}
    {construction : ReflectiveMap X}
    {metric : ResidualMetric X}
    (certificate :
      ScaledDerivativeGainCertificate construction metric)
    (x y : X)
    (xMember : construction.domain.contains x)
    (yMember : construction.domain.contains y) :
    certificate.scale *
      metric.distance (construction.apply x)
        (construction.apply y) ≤
      certificate.numerator * metric.distance x y :=
  certificate.bounds x y xMember yMember

structure GainInterval where
  lower : Nat
  upper : Nat
  ordered : lower ≤ upper

inductive StabilityRegime
  | contractive
  | critical
  | expansive
  | periodicContractive
  | unknown
  deriving DecidableEq, Repr

/-!
`scale` is the denominator shared by the integer bounds.  A gain numerator
below `scale` is strict contraction; a lower bound above `scale` is expansion.
-/
def classifyGain (interval : GainInterval) (scale : Nat) :
    StabilityRegime :=
  if interval.upper < scale then
    .contractive
  else if scale < interval.lower then
    .expansive
  else
    .critical

theorem strict_upper_bound_classifies_contractive
    (interval : GainInterval)
    (scale : Nat)
    (strict : interval.upper < scale) :
    classifyGain interval scale = .contractive := by
  simp [classifyGain, strict]

theorem unresolved_unit_intersection_is_critical
    (interval : GainInterval)
    (scale : Nat)
    (notContractive : ¬ interval.upper < scale)
    (notExpansive : ¬ scale < interval.lower) :
    classifyGain interval scale = .critical := by
  simp [classifyGain, notContractive, notExpansive]

end Mathematics.Stability
