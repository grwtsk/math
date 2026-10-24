# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.DirichletSeries.Variant6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dc0b7069c6c63c9c7acd404b311ca2d2b78aba6` · SHA-256 `6a0d7e704b2c81635409082c0a3728bc870cb668557d36eee4afddea5fc537be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number
import AnalyticNumber.Certificate

/-!
# Analytic number Dirichlet series

This is the first analytic-number layer above `Number`.

The coefficient object is a discrete `Number.ArithmeticFunction`. The analytic
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
```
