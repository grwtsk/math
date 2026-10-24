# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PassivityObstruction.Variantbd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1261aeebae1865d1574b02f24088179e2e8c6c7a` · SHA-256 `bd1a309865ae58c16a5100f5c44ad9f38866ae875e7ba6f782b41261943290af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure PassivityObstructionDescriptor where
  obstructionRef : String
  witnessVectorRef : String
  strictNegativityCertificateRef : Option String
  minimalityCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .passivityObstruction

end Mathematics.SemiLocalDefect.Access
```
