# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectSourceMetadataAsProofNegative.Variant0243d5b19f03cdb7a939777a036e8c6da86176e84c8624c39877cd60f0fe1942

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6a1ac8aa3348787a71606377f7b91a413ce0889` · SHA-256 `0243d5b19f03cdb7a939777a036e8c6da86176e84c8624c39877cd60f0fe1942`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
-- A source identity is data, whereas this field requires a proof of surjectivity.
def metadataCannotProve : SourceBoundRationalHodgeTheorem Examples.lineHodgeData where
  source := openAICMRationalHodgeSource
  variety := "CM metadata only"
  codimension := 0
  realization := "unproved"
  surjective := openAICMRationalHodgeSource
```
