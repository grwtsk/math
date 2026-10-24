# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SelfAdjoint.Variant84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed8f87d6e61af06fb812b3ad7a0b00944f0d5ce1` · SHA-256 `84b4e484324c96fa730f6d3be75fcee87c69b20811d59fa31c86476de2c54579`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
