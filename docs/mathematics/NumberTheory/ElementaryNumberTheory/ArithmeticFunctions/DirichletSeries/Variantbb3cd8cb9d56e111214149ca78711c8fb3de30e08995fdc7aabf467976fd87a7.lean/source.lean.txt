import Number
import AnalyticNumber.Certificate

/-!
# Analytic number Dirichlet series

This is the first analytic-number layer above `Number`.

The coefficient object is a discrete `Number.ArithmeticFunction`.  The analytic
claims, such as absolute convergence or Cauchy product soundness, are explicit
certificate fields.
-/

namespace AnalyticNumber

/-- Analytic domain shell. -/
structure HalfPlane where
  label : String
  condition : Prop

/-- Formal Dirichlet series shell with arithmetic coefficients. -/
structure DirichletSeries where
  coeff : _root_.Number.ArithmeticFunction
  variableLabel : String

/-- Absolute convergence authority for a Dirichlet series on a domain. -/
structure AbsoluteConvergenceCertificate
    (_F : DirichletSeries)
    (_domain : HalfPlane) where
  absolutelyConvergent : Prop
  absolutelyConvergentProof : absolutelyConvergent
  locallyUniform : Prop
  locallyUniformProof : locallyUniform

/-- Cauchy product authority for Dirichlet series. -/
structure CauchyProductCertificate
    (F G H : DirichletSeries)
    (domain : HalfPlane) where
  leftConverges : AbsoluteConvergenceCertificate F domain
  rightConverges : AbsoluteConvergenceCertificate G domain
  productConverges : AbsoluteConvergenceCertificate H domain
  cauchyProductSound : Prop
  cauchyProductProof : cauchyProductSound

theorem absolute_convergence_sound
    {F : DirichletSeries}
    {domain : HalfPlane}
    (C : AbsoluteConvergenceCertificate F domain) :
    C.absolutelyConvergent ∧ C.locallyUniform :=
  ⟨C.absolutelyConvergentProof, C.locallyUniformProof⟩

theorem cauchy_product_sound
    {F G H : DirichletSeries}
    {domain : HalfPlane}
    (C : CauchyProductCertificate F G H domain) :
    C.cauchyProductSound :=
  C.cauchyProductProof

/--
A Dirichlet-series shell does not prove convergence without its convergence
certificate.
-/
def DirichletSeriesOwnsConvergence
    (_F : DirichletSeries) : Prop :=
  False

theorem dirichlet_series_not_convergence_authority
    (F : DirichletSeries) :
    ¬ DirichletSeriesOwnsConvergence F := by
  intro h
  exact h

end AnalyticNumber
