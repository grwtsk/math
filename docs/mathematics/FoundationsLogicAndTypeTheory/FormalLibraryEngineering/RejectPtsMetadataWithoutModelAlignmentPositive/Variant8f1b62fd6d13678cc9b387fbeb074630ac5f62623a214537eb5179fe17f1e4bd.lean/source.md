# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectPtsMetadataWithoutModelAlignmentPositive.Variant8f1b62fd6d13678cc9b387fbeb074630ac5f62623a214537eb5179fe17f1e4bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `897bc717073ec51892f7b0ebdb22acf91ac08918` · SHA-256 `8f1b62fd6d13678cc9b387fbeb074630ac5f62623a214537eb5179fe17f1e4bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
-- Matched positive: both a theorem proof and exact model alignment are supplied.
example (B : SourceBoundWeakToStrong N) (E : ModelEquiv (portModel P) N) :
    ExternalAdmission P N where
  externalTheorem := B
  alignment := E
```
