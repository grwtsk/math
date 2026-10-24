# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ElementalState.Variant44f03036b0eb2b8e298bbdd6e99f916fcb47fa591aa341e3fa54285dbadb1890

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31989e66caa4ec164bbe6d207d076ef6fb1a85b5` · SHA-256 `44f03036b0eb2b8e298bbdd6e99f916fcb47fa591aa341e3fa54285dbadb1890`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PointUniverse
import Mathematics.Relaxation.State

/-!
# Elemental relaxation state

Relaxation operates over one canonical point universe.  Immutable sources,
project-local identity, negative evidence, and open branches are carried as
separate coordinates so an optimization cannot erase them.
-/

namespace Mathematics.Relaxation

structure ElementalState where
  relaxation : State
  pointUniverse : Concept.PointUniverse
  immutableSourceAddressIds : List StableId
  projectLocalPointIds : List ElementId
  negativeElementIds : List ElementId
  unknownBranchIds : List StableId
  projectionIds : List StableId
  embeddingObservationIds : List EvidenceId
  stateDigest : Digest

/-- Embedding observations are evidence only and have no identity field. -/
structure EmbeddingObservation where
  observationId : EvidenceId
  leftPointId : ElementId
  rightPointId : ElementId
  encoderDigest : Digest
  metricDigest : Digest
  scoreNumerator : Int
  scoreDenominator : Nat
  deriving DecidableEq, Repr

end Mathematics.Relaxation
```
