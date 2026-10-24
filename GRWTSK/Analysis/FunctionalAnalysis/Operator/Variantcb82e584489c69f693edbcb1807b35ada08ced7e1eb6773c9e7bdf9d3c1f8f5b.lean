import Surface.Hilbert.Basic

namespace Surface

universe u v

/-!
What is formalized:
Dense-domain linear operator interfaces between Hilbert spaces.

What is certificate-gated:
Linearity, domain preservation, and any analytic domain facts are explicit
certificate fields.

What is not claimed:
No operator is self-adjoint, closed, trace-class, or spectrally complete without
the corresponding certificate supplied in later modules.

Primary mathematical source:
Internal Surface Hilbert operator interface.
-/

structure Hilbert.LinearOperator
    (H K : Hilbert.Space.{u, v}) where
  domain : Hilbert.DenseDomain H
  map : H.carrier → K.carrier
  mapsDomain : Prop
  mapsDomainCertified : mapsDomain
  linear : Prop
  linearCertified : linear
  boundary : List String

def Hilbert.identityOperator
    (H : Hilbert.Space.{u, v}) :
    Hilbert.LinearOperator H H where
  domain := Hilbert.fullDomain H
  map := fun x => x
  mapsDomain := True
  mapsDomainCertified := trivial
  linear := True
  linearCertified := trivial
  boundary := [
    "Identity operator interface example.",
    "This example does not supply spectral theorem data."
  ]

theorem Hilbert.linearOperator_is_linear
    {H K : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H K) :
    T.linear :=
  T.linearCertified

end Surface
