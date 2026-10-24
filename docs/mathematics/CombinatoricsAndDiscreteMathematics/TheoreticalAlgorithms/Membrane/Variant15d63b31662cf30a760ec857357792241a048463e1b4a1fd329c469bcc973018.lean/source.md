# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Membrane.Variant15d63b31662cf30a760ec857357792241a048463e1b4a1fd329c469bcc973018

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba8f30f7e786891c73732d28e1261bd47c99e341` · SHA-256 `c827370a440967cfd469e6262900c07b209461bf7bb495d8d75e63cfc3bfebb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MembraneStage.Variant20791d3e345d3d1ff3e359fd80548caefe8dabc98a455ebc38fc91e182371551","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20791d3e345d3d1ff3e359fd80548caefe8dabc98a455ebc38fc91e182371551","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MembraneStage.Variant20791d3e345d3d1ff3e359fd80548caefe8dabc98a455ebc38fc91e182371551","mathematical_subject":"Computation.DataStructures","original_sha256":"20791d3e345d3d1ff3e359fd80548caefe8dabc98a455ebc38fc91e182371551","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/network/NetworkElements/Membrane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import NetworkElements.Command
import NetworkElements.Projection
import NetworkElements.Session

/-! # The sole public path from network intent to the Rust reducer -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MembraneStage.Variant20791d3e345d3d1ff3e359fd80548caefe8dabc98a455ebc38fc91e182371551

namespace URSM.Network

inductive MembraneStage
  | transportTerminated
  | authenticated
  | originValidated
  | schemaValidated
  | canonicalized
  | authorized
  | admitted
  | enqueued
  deriving DecidableEq, Repr

inductive DeliveryClass
  | durableOutcome
  | replaceableState
  | lossyTelemetry
  deriving DecidableEq, Repr

structure ArbitratorMembrane
    (lease : Mathematics.Capability.Lease)
    (revocations : List Mathematics.Capability.Revocation)
    (time : Nat)
    (packet : CommandPacket) where
  admitted : AdmittedCommand lease revocations time packet
  finalStage : MembraneStage
  reachesCore : finalStage = .enqueued

def ArbitratorMembrane.evidenceKind
    {lease revocations time packet}
    (_ : ArbitratorMembrane lease revocations time packet) :
    Mathematics.Authority.EvidenceKind :=
  .runtimeObservation

@[simp] theorem membrane_has_no_theorem_authority
    {lease revocations time packet}
    (membrane : ArbitratorMembrane lease revocations time packet) :
    Mathematics.Authority.contributesTheoremAuthority
      membrane.evidenceKind = false :=
  rfl

end URSM.Network
```
