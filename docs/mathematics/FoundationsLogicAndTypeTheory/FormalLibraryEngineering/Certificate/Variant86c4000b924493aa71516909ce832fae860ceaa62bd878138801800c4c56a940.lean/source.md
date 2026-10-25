# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Certificate.Variant86c4000b924493aa71516909ce832fae860ceaa62bd878138801800c4c56a940

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec711e4cec9e112cc2815bc36a4ef23629c1e4a4` · SHA-256 `86c4000b924493aa71516909ce832fae860ceaa62bd878138801800c4c56a940`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Authority

/-!
# Analytic number certificates

This file gives `AnalyticNumber` a local name for the generic authority
certificate vocabulary.  It is not a compatibility layer; it is the analytic
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
