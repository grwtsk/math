# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Mobius.Variantaa7871537d612e136f75e3ab4506243411ad2b8b020768eb6c65869f7bdfd5cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3aa5d93ad11f49c9edcd66e9674fbf200dfae11` · SHA-256 `aa7871537d612e136f75e3ab4506243411ad2b8b020768eb6c65869f7bdfd5cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.EulerProduct
import Number.Mobius

/-!
# Analytic number Möbius authority

The finite Möbius window belongs to `Number`.

The analytic identity involving a Möbius Dirichlet series belongs here and
requires explicit convergence/Cauchy-product/identity authority.
-/

namespace AnalyticNumber

/-- Analytic authority for the Möbius Dirichlet identity on a domain. -/
structure MobiusDirichletIdentityAuthority where
  domain : HalfPlane
  zetaSeries : DirichletSeries
  mobiusSeries : DirichletSeries
  oneTimesMobiusSound : Prop
  oneTimesMobiusProof : oneTimesMobiusSound
  cauchyProductSound : Prop
  cauchyProductProof : cauchyProductSound
  identitySound : Prop
  identityProof : identitySound

theorem mobius_dirichlet_identity_sound
    (A : MobiusDirichletIdentityAuthority) :
    A.identitySound :=
  A.identityProof

/--
Finite Möbius windows do not own analytic Möbius identities.  This restates the
firewall from the analytic side.
-/
theorem finite_mobius_window_not_analytic_identity
    (W : _root_.Number.FiniteMobiusWindow) :
    ¬ _root_.Number.FiniteMobiusWindowProvesAnalyticIdentity W :=
  _root_.Number.finite_mobius_window_not_analytic_identity W

end AnalyticNumber
```
