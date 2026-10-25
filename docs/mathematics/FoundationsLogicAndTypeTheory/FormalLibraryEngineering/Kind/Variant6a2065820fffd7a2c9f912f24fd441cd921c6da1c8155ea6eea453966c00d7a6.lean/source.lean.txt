-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lane.Variantfd3171f36bd54fcb7ddb6f3f70c9fb00063b970c1b4b954dfe1570292a2a408f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd3171f36bd54fcb7ddb6f3f70c9fb00063b970c1b4b954dfe1570292a2a408f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Lane.Variantfd3171f36bd54fcb7ddb6f3f70c9fb00063b970c1b4b954dfe1570292a2a408f","mathematical_subject":"Foundations.Unclassified","original_sha256":"fd3171f36bd54fcb7ddb6f3f70c9fb00063b970c1b4b954dfe1570292a2a408f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Kind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Authority.Evidence

/-! # Irreducible network and project kinds -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lane.Variantfd3171f36bd54fcb7ddb6f3f70c9fb00063b970c1b4b954dfe1570292a2a408f

namespace URSM.Network

inductive Lane
  | command
  | outcome
  | state
  | telemetry
  deriving DecidableEq, Repr

def Lane.durable : Lane → Bool
  | .command => false
  | .outcome => true
  | .state => false
  | .telemetry => false

inductive ProjectKind
  | rust
  | lean
  | composite
  deriving DecidableEq, Repr

inductive OutcomeStatus
  | committed
  | rejected
  | failed
  | stale
  | cancelled
  | quarantined
  deriving DecidableEq, Repr

inductive AuthorityLabel
  | kernelTheorem
  | checkedOperational
  | runtimeObservation
  | contractPayload
  | unresolved
  deriving DecidableEq, Repr

def AuthorityLabel.evidenceKind : AuthorityLabel → Mathematics.Authority.EvidenceKind
  | .kernelTheorem => .fixedLeanPredicate
  | .checkedOperational => .runtimeObservation
  | .runtimeObservation => .runtimeObservation
  | .contractPayload => .contractProposition
  | .unresolved => .runtimeObservation

end URSM.Network
