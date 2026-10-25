# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OnePrimePassivity.Variant726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8feffe65d5c20bab6d955aab1dadb4d936d7d4e5` · SHA-256 `726a13745fcd26ebad4234374e0f23259a250ab35b842867a4aa594fb18ba470`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimePassivityDescriptor where
  primeRef : String
  compressionRank : Nat
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .onePrimePassivity

end Mathematics.SemiLocalDefect.QSeries
```
