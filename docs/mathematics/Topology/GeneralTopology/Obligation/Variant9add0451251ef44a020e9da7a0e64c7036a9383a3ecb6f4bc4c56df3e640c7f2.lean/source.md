# Complete source: GRWTSK.Topology.GeneralTopology.Obligation.Variant9add0451251ef44a020e9da7a0e64c7036a9383a3ecb6f4bc4c56df3e640c7f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d2ace43c771a2b5f619a6372d13f44f7b44b9a5` · SHA-256 `1fbf124de6147a1ceb3e32d604f704c199fb225131bc607a72cc8670240e124a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ObligationStatus.Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ObligationStatus.Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea","mathematical_subject":"Topology.GeneralTopology","original_sha256":"33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/Surface/ContinuousAssurance/WorldModel/Obligation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.TrustedBase

/-!
# Explicit unresolved obligations

Research targets and missing implementation bridges are data in this ledger.
Only a discharged record may name a discharge artifact, and no constructor
contains a proof of the target statement.
-/


namespace GRWTSK.Topology.GeneralTopology.ObligationStatus.Variant33718e92b2cbbf1e652c4e9f8abb5f3904ffcda59930281f00a757f5c93dcbea

namespace Surface.ContinuousAssurance.WorldModel

/-- Honest lifecycle state of an obligation. -/
inductive ObligationStatus
  | open
  | blocked
  | discharged
  | superseded
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

/-- Open obligations cannot be consumed as proof terms by this API. -/
def ObligationRecord.IsOpen (record : ObligationRecord) : Prop :=
  record.status = .open ∨ record.status = .blocked

end Surface.ContinuousAssurance.WorldModel
```
