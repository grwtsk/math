# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Mobius.Variantb393617321153461088694c2706605b886512559475579cd6028e0b6d13dd80a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2453f0d9fe4b713374c5123404df621df0ff50ff` · SHA-256 `b393617321153461088694c2706605b886512559475579cd6028e0b6d13dd80a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
Finite Möbius windows do not own analytic Möbius identities. This restates the
firewall from the analytic side.
-/
theorem finite_mobius_window_not_analytic_identity
    (W : _root_.Number.FiniteMobiusWindow) :
    ¬ _root_.Number.FiniteMobiusWindowProvesAnalyticIdentity W :=
  _root_.Number.finite_mobius_window_not_analytic_identity W

end AnalyticNumber
```
