# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variante308b0f578765a648e74c80a4c925393fcb440ec18d3b8fa6de52be2879057d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a532a954a0738e1acc4d2a967a338b9f336542e` · SHA-256 `e308b0f578765a648e74c80a4c925393fcb440ec18d3b8fa6de52be2879057d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Authority

/-!
# Analytic number certificates

This file gives `AnalyticNumber` a local name for the generic authority
certificate vocabulary. It is not a compatibility layer; it is the analytic
number-theory certificate surface.
-/

namespace AnalyticNumber

abbrev AnalyticCertificate :=
  Authority.Certificate

abbrev AnalyticBoundaryKind :=
  Authority.BoundaryKind

theorem analytic_certificate_sound
    (C : AnalyticCertificate) :
    C.sound :=
  Authority.certificate_sound C

end AnalyticNumber
```
