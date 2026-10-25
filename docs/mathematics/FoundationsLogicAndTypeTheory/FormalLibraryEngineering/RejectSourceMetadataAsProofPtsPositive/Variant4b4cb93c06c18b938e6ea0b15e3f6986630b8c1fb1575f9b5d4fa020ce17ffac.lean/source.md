# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectSourceMetadataAsProofPtsPositive.Variant4b4cb93c06c18b938e6ea0b15e3f6986630b8c1fb1575f9b5d4fa020ce17ffac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b5af81b794a04e185a5bceaba8a1a1df12c3ad8` · SHA-256 `4b4cb93c06c18b938e6ea0b15e3f6986630b8c1fb1575f9b5d4fa020ce17ffac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
example (h : N.SystemWeaklyNormalizing → N.SystemStronglyNormalizing) :
    SourceBoundWeakToStrong N where
  source := GRWTSK.Logic.PTSModelTransport.openAIWeakToStrongSource
  «theorem» := h
```
