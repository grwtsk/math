# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Core.Variantdbd0463b6f603e89df0776ff3d46d3f261439a93bb16d61a25cf567f73dc4e61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64ab3b4ca5b5c8924a8e24cb454a345239de242e` · SHA-256 `dbd0463b6f603e89df0776ff3d46d3f261439a93bb16d61a25cf567f73dc4e61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Internal WP0–WP3 obligation primitives
-/

namespace Mathematics.SemiLocalDefect.SoninCore

inductive SoninCoreUnknownKind
  | primeUniverse
  | primeValueInjectivity
  | primeCutCombinatorics
  | horizonEmbedding
  | horizonEmbeddingCoherence
  | exactCoefficientRing
  | soninCarrier
  | soninConnector
  | soninConnectorIdentity
  | soninConnectorComposition
  | soninConnectorInjectivity
  | transportedRangeNesting
  | transportedRangeClosed
  | projectionConstruction
  | projectionRange
  | projectionSelfAdjoint
  | projectionIdempotent
  | projectionMonotonicity
  | differenceProjection
  | differenceLayer
  | boundaryCochainClosed
  | packetEnergyModel
  | packetNormBound
  | positivePacketEnergy
  | connectorEnergyIdentity
  | finiteTelescope
  | enumerationIndependence
deriving DecidableEq, Repr

structure OpenSoninObligation where
  id : Nat
  kind : SoninCoreUnknownKind
  subject : String
  description : String
  blockedTheorems : Array String
deriving Repr

end Mathematics.SemiLocalDefect.SoninCore
```
