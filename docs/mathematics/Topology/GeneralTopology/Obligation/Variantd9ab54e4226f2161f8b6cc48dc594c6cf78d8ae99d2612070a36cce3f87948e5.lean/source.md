# Complete source: GRWTSK.Topology.GeneralTopology.Obligation.Variantd9ab54e4226f2161f8b6cc48dc594c6cf78d8ae99d2612070a36cce3f87948e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6cad35e8187be8f8f7684c68fbe68ffcc50f66bd` · SHA-256 `e0dd5d5840b72488a32f11d16d2b68c1ea2b0b626ff72180c3dd721cf5f62381`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ObligationStatus.Variant7c7607db48268dc352d11484e3bb1d7a970febc86a1c2d4df69da23a5b5c4dea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c7607db48268dc352d11484e3bb1d7a970febc86a1c2d4df69da23a5b5c4dea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ObligationStatus.Variant7c7607db48268dc352d11484e3bb1d7a970febc86a1c2d4df69da23a5b5c4dea","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7c7607db48268dc352d11484e3bb1d7a970febc86a1c2d4df69da23a5b5c4dea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Obligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.TrustedBase

/-!
# Explicit unresolved obligations

Research targets and missing implementation bridges are data in this ledger.
Only a discharged record may name a discharge artifact, and no constructor
contains a proof of the target statement.
-/


namespace GRWTSK.Topology.GeneralTopology.ObligationStatus.Variant7c7607db48268dc352d11484e3bb1d7a970febc86a1c2d4df69da23a5b5c4dea

namespace Surface.ContinuousAssurance.WorldModel

/-- Honest lifecycle state of an obligation. -/
inductive ObligationStatus
  | open
  | discharged
  | superseded
  | permanentlyOutOfScope
  | futurePhase
  deriving DecidableEq, Repr

/-- A finite-scope research, proof, implementation, or governance obligation. -/
structure ObligationRecord where
  identity : ObligationId
  statement : String
  owner : Project
  assumptions : List AssumptionId
  affectedObjects : List MathematicalObjectId
  status : ObligationStatus
  dischargeArtifact : Option ArtifactIdentity
  discharged_names_artifact :
    status = .discharged → ∃ artifact, dischargeArtifact = some artifact
  supersedes : Option ObligationId

/-- Every discharged obligation names an explicit artifact. -/
theorem ObligationRecord.discharged_has_artifact
    (record : ObligationRecord)
    (h : record.status = .discharged) :
    ∃ artifact, record.dischargeArtifact = some artifact :=
  record.discharged_names_artifact h

/-- Pending obligations cannot be consumed as proof terms by this API. -/
def ObligationRecord.IsOpen (record : ObligationRecord) : Prop :=
  record.status = .open ∨ record.status = .futurePhase

end Surface.ContinuousAssurance.WorldModel
```
