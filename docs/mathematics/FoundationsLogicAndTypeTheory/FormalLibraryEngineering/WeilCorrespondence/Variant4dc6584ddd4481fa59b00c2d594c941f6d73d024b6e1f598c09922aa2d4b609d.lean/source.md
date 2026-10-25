# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WeilCorrespondence.Variant4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3e7085c901730d164b0c3902876746ac82f1c09` · SHA-256 `4dc6584ddd4481fa59b00c2d594c941f6d73d024b6e1f598c09922aa2d4b609d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure WeilCorrespondenceDescriptor where
  correspondenceRef : String
  operatorTraceRef : String
  arithmeticDistributionRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticCorrespondence

end Mathematics.SemiLocalDefect.Trace
```
