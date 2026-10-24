# Complete source: GRWTSK.Analysis.FunctionalAnalysis.SpectralMeasure.Variant7b8a8a79e4c1626de2be90343311655164ba2daed02104befc6762ffcb54f6be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e2ff0b99f62af9e8a55fe4bb946c0dfc040b067` · SHA-256 `7b8a8a79e4c1626de2be90343311655164ba2daed02104befc6762ffcb54f6be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Hilbert.TraceClass

namespace Surface

universe u v

/-!
What is formalized:
Spectral-measure and spectral-theorem certificate interfaces for Hilbert
operators.

What is certificate-gated:
Existence of a spectral measure and any spectral theorem are explicit
certificates.

What is not claimed:
No zeta spectral correspondence, Hilbert--Pólya theorem, or operator spectrum
classification is proved here.

Primary mathematical source:
Internal Surface Hilbert spectral-readiness interface.
-/

structure Hilbert.SpectralMeasure
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  measureLabel : String
  projectionValued : Prop
  projectionValuedCertified : projectionValued
  boundary : List String

structure Hilbert.SpectralTheoremCertificate
    {H : Hilbert.Space.{u, v}}
    (T : Hilbert.LinearOperator H H) where
  selfAdjoint : Hilbert.SelfAdjointCertificate T
  spectralMeasure : Hilbert.SpectralMeasure T
  theoremApplies : Prop
  theoremAppliesCertified : theoremApplies
  boundary : List String

theorem Hilbert.spectralTheorem_certificate_applies
    {H : Hilbert.Space.{u, v}}
    {T : Hilbert.LinearOperator H H}
    (C : Hilbert.SpectralTheoremCertificate T) :
    C.theoremApplies :=
  C.theoremAppliesCertified

end Surface
```
