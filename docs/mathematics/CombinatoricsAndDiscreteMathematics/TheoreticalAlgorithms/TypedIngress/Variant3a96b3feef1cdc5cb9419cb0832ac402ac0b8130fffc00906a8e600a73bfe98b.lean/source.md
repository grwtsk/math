# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypedIngress.Variant3a96b3feef1cdc5cb9419cb0832ac402ac0b8130fffc00906a8e600a73bfe98b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba57ff9e2c3d0887f1565c1d70aa205c70a09865` · SHA-256 `3a96b3feef1cdc5cb9419cb0832ac402ac0b8130fffc00906a8e600a73bfe98b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Manifest
import Mathematics.Ingestion.Opaque
import Mathematics.Ingestion.Source
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Typed ingress

Every inventoried artifact enters as either a decoded source unit or an
explicit opaque artifact.  Every abstract-source layer has an observed
disposition.  Unsupported, failed, and not-run work are records, not absences.
-/

namespace Mathematics.Ingestion

inductive TypedIngressPayload
  | source (unit : SourceUnit)
  | opaque (artifact : OpaqueArtifact)

def TypedIngressPayload.artifactId : TypedIngressPayload → Ecosystem.ArtifactId
  | .source unit => unit.artifact.artifactId
  | .opaque artifact => artifact.artifact.artifactId

inductive LayerDisposition
  | complete
  | partiallyComplete (obligationId : StableId)
  | notRun (obligationId : StableId)
  | unsupported (obligationId : StableId)
  | failed (diagnosticId : StableId)
  deriving DecidableEq, Repr

structure LayerIngressReceipt where
  layer : SourceAnalysis.AbstractSourceLayer
  disposition : LayerDisposition
  evidenceIds : List EvidenceId
  receiptDigest : Digest
  deriving DecidableEq, Repr

structure TypedIngressEntry where
  entryId : StableId
  payload : TypedIngressPayload
  sourceAddress : SourceAnalysis.AbstractSourceAddress
  receiptDigest : Digest

/-- Totality here means exact inventory accounting, never semantic completion. -/
structure TypedIngressGate where
  manifest : Ecosystem.ProjectManifest
  entries : List TypedIngressEntry
  artifact_ids_unique :
    (entries.map (·.payload.artifactId)).Nodup
  artifactCoverage :
    ∀ artifactId,
      artifactId ∈ manifest.sourceInventory ↔
        ∃ entry ∈ entries,
          entry.payload.artifactId = artifactId
  layerReceipts : List LayerIngressReceipt
  layerCoverage :
    ∀ layer,
      ∃ receipt ∈ layerReceipts,
        receipt.layer = layer
  gateDigest : Digest

namespace TypedIngressGate

/-- No inventoried artifact can bypass the typed-or-opaque sum. -/
theorem entry_exists
    (gate : TypedIngressGate)
    {artifactId : Ecosystem.ArtifactId}
    (inventoried : artifactId ∈ gate.manifest.sourceInventory) :
    ∃ entry ∈ gate.entries,
      entry.payload.artifactId = artifactId :=
  (gate.artifactCoverage artifactId).mp inventoried

/-- Every source layer is represented, even when work has not run. -/
theorem layer_disposition_exists
    (gate : TypedIngressGate)
    (layer : SourceAnalysis.AbstractSourceLayer) :
    ∃ receipt ∈ gate.layerReceipts,
      receipt.layer = layer :=
  gate.layerCoverage layer

end TypedIngressGate

end Mathematics.Ingestion
```
