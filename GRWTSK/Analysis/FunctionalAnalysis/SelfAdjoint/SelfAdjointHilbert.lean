import Surface.Hilbert.Operator

namespace Surface

universe u v

/-!
What is formalized:
Symmetric-operator and self-adjointness certificate interfaces.

What is certificate-gated:
Symmetry and self-adjointness are Prop-valued fields, not consequences of finite
matrix symmetry alone.

What is not claimed:
Finite symmetry is not promoted to analytic self-adjointness without an explicit
`SelfAdjointCertificate`.

Primary mathematical source:
Internal Surface Hilbert operator-boundary discipline.
-/

structure Hilbert.SymmetricOperator
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  symmetric : Prop
  symmetricCertified : symmetric
  boundary : List String

structure Hilbert.SelfAdjointCertificate
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  symmetric : Hilbert.SymmetricOperator T
  selfAdjoint : Prop
  selfAdjointCertified : selfAdjoint
  domainBoundary : List String
  boundary : List String

theorem Hilbert.selfAdjoint_implies_symmetric
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : Hilbert.SelfAdjointCertificate T) :
    C.symmetric.symmetric :=
  C.symmetric.symmetricCertified

end Surface
