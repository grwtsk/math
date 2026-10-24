# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ExactLDL.Variant0afe4dc09a8440504b1ce5ce3a93586eded003159846b026f91af5ac490edc88

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b4a0c72fdaebeafb75ea80544126b3821bd341d` · SHA-256 `0afe4dc09a8440504b1ce5ce3a93586eded003159846b026f91af5ac490edc88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure ExactLDLDescriptor where
  decompositionRef : String
  matrixRef : String
  pivotCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .exactLdlCertificate

end Mathematics.SemiLocalDefect.QSeries
```
