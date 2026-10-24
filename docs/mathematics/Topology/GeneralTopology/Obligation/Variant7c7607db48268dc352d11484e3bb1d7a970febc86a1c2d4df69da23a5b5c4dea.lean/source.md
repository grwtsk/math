# Complete source: GRWTSK.Topology.GeneralTopology.Obligation.Variant7c7607db48268dc352d11484e3bb1d7a970febc86a1c2d4df69da23a5b5c4dea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `197b121c1562b46aab0d8e27be4de76e731a31eb` · SHA-256 `7c7607db48268dc352d11484e3bb1d7a970febc86a1c2d4df69da23a5b5c4dea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.WorldModel.TrustedBase

/-!
# Explicit unresolved obligations

Research targets and missing implementation bridges are data in this ledger.
Only a discharged record may name a discharge artifact, and no constructor
contains a proof of the target statement.
-/

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
