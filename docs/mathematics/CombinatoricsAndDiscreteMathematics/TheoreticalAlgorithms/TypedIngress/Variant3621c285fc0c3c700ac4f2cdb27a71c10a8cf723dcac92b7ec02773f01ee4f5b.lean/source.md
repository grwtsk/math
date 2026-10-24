# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypedIngress.Variant3621c285fc0c3c700ac4f2cdb27a71c10a8cf723dcac92b7ec02773f01ee4f5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5303c97404f43da064229efae8a1e01ffb15e309` · SHA-256 `1fa5f7bde4edca96ae7ce0fb51ae399fe6010c285986ccbb48f316a8bef3ab50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypedIngressPayload.Variant3a96b3feef1cdc5cb9419cb0832ac402ac0b8130fffc00906a8e600a73bfe98b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3a96b3feef1cdc5cb9419cb0832ac402ac0b8130fffc00906a8e600a73bfe98b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TypedIngressPayload.Variant3a96b3feef1cdc5cb9419cb0832ac402ac0b8130fffc00906a8e600a73bfe98b","mathematical_subject":"Computation.DataStructures","original_sha256":"3a96b3feef1cdc5cb9419cb0832ac402ac0b8130fffc00906a8e600a73bfe98b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Ingestion/TypedIngress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TypedIngressPayload.Variant3a96b3feef1cdc5cb9419cb0832ac402ac0b8130fffc00906a8e600a73bfe98b

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
