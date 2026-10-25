# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConditionalPassivity.Variant87ca1bcc35b7ad3beacd22e0d412ea95dba6ed3f6c1091f9684094952923d639

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71f2cbbbabbeb053cd3a1b24720a7023928f6074` · SHA-256 `87ca1bcc35b7ad3beacd22e0d412ea95dba6ed3f6c1091f9684094952923d639`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure ConditionalPassivityDescriptor where
  sourceCutRef : String
  insertedPrimeRef : String
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyConditionalPassivity

end Mathematics.SemiLocalDefect.Hardy
```
