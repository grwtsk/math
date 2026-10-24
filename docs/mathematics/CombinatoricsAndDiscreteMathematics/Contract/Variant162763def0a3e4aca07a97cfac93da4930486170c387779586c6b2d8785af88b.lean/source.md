# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Contract.Variant162763def0a3e4aca07a97cfac93da4930486170c387779586c6b2d8785af88b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5117dbdaf270c56e520714e54b1bc68dffd54545` · SHA-256 `61e056d2552341fb6f194be8d30fbcbdadc458877691d649042138638a2fbc7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TransportContract.Variant5dcc9c2e5fc2a70bba524cba2d0ddbba9065c650defab2db0e85e2df09d0afc5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5dcc9c2e5fc2a70bba524cba2d0ddbba9065c650defab2db0e85e2df09d0afc5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TransportContract.Variant5dcc9c2e5fc2a70bba524cba2d0ddbba9065c650defab2db0e85e2df09d0afc5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"5dcc9c2e5fc2a70bba524cba2d0ddbba9065c650defab2db0e85e2df09d0afc5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/lib/Surface/Core/Transport/Contract.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.Transport.Bytes
public import Surface.Core.Transport.Payload
public import Surface.Core.Transport.Route

/-!
# Payload-neutral transport contracts

The canonical material binds the finite routing table and stable payload
identifiers.  SHA-256 computation remains a Rust responsibility; Lean checks
the exact material, hash framing, and equality used by an admission.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TransportContract.Variant5dcc9c2e5fc2a70bba524cba2d0ddbba9065c650defab2db0e85e2df09d0afc5

public section

namespace Surface.Core.Transport

@[expose] def transportSchemaVersionV1 : Nat := 1
@[expose] def transportSerializationVersionV1 : Nat := 1
@[expose] def transportRevisionWidthV1 : Nat := 32

@[expose] def traversalModeCode : TraversalMode → Nat
  | .breadthFirst => 1
  | .depthFirst => 2

@[surface_novel]
structure TransportContract (Host EdgeId : Type*)
    [Fintype Host] [Fintype EdgeId]
    [DecidableEq Host] [DecidableEq EdgeId] where
  schemaVersion : Nat
  serializationVersion : Nat
  revisionWidth : Nat
  routing : RoutingContract Host EdgeId
  payloadDescriptor : PayloadDescriptor
  contractHash : Hash256

namespace TransportContract

variable {Host EdgeId Payload : Type*}
variable [Fintype Host] [DecidableEq Host]
variable [Fintype EdgeId] [DecidableEq EdgeId]

@[expose] def hostTableMaterial
    (contract : TransportContract Host EdgeId) : CanonicalBytes :=
  contract.routing.sortedHosts.flatMap (fun host ↦
    encodeU32LE (contract.routing.hostCode.code host))

@[expose] def edgeTableMaterial
    (contract : TransportContract Host EdgeId) : CanonicalBytes :=
  contract.routing.sortedCanonicalEdges.flatMap (fun edge ↦
    encodeU32LE (contract.routing.edgeCode.code edge.edgeId) ++
    encodeU32LE (contract.routing.hostCode.code edge.source) ++
    encodeU32LE (contract.routing.hostCode.code edge.target) ++
    encodeI32LE edge.tension ++
    encodeU32LE edge.tieBreak)

/-- Version-one canonical material. It contains no source bytes, revisions,
paths, timestamps, DOM identifiers, or process-local metadata. -/
@[expose] def canonicalMaterial
    (contract : TransportContract Host EdgeId) : CanonicalBytes :=
  encodeLengthPrefixedUtf8 "surface.transport.contract.v1" ++
  encodeU32LE contract.schemaVersion ++
  encodeU32LE contract.serializationVersion ++
  encodeU32LE contract.revisionWidth ++
  encodeU32LE contract.routing.schemaVersion ++
  encodeU32LE contract.routing.algorithmVersion ++
  encodeU32LE contract.routing.serializationVersion ++
  encodeU8 (traversalModeCode contract.routing.traversalMode) ++
  encodeI32LE contract.routing.tensionMin ++
  encodeI32LE contract.routing.tensionMax ++
  encodeU32LE contract.routing.tieBreakBound ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.schemaId ++
  encodeU32LE contract.payloadDescriptor.schemaVersion ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.algorithmId ++
  encodeU32LE contract.payloadDescriptor.algorithmVersion ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.invariantId ++
  encodeU32LE contract.payloadDescriptor.serializationVersion ++
  encodeLengthPrefixedUtf8 contract.payloadDescriptor.mergeSemanticsId ++
  encodeU32LE (Fintype.card Host) ++
  contract.hostTableMaterial ++
  encodeU32LE contract.routing.edges.card ++
  contract.edgeTableMaterial

@[expose] def Valid (contract : TransportContract Host EdgeId)
    (semantics : PayloadSemantics Payload) : Prop :=
  contract.schemaVersion = transportSchemaVersionV1 ∧
    contract.serializationVersion = transportSerializationVersionV1 ∧
    contract.revisionWidth = transportRevisionWidthV1 ∧
    contract.routing.Valid ∧
    contract.payloadDescriptor.Valid ∧
    semantics.descriptor = contract.payloadDescriptor ∧
    contract.contractHash.Valid ∧
    contract.routing.contractHash = contract.contractHash

instance (contract : TransportContract Host EdgeId)
    (semantics : PayloadSemantics Payload) : Decidable (contract.Valid semantics) := by
  unfold Valid
  infer_instance

@[expose] def verifyTransportContract
    (contract : TransportContract Host EdgeId)
    (semantics : PayloadSemantics Payload) : Bool :=
  decide (contract.Valid semantics)

@[surface_novel, surface_published, surface_certificate]
theorem verifyTransportContract_sound
    (contract : TransportContract Host EdgeId)
    (semantics : PayloadSemantics Payload)
    (accepted : verifyTransportContract contract semantics = true) :
    contract.Valid semantics := by
  exact of_decide_eq_true accepted

@[surface_novel, surface_published]
theorem canonicalMaterial_deterministic
    (contract : TransportContract Host EdgeId)
    {left right : CanonicalBytes}
    (leftMaterial : left = contract.canonicalMaterial)
    (rightMaterial : right = contract.canonicalMaterial) :
    left = right := by
  rw [leftMaterial, rightMaterial]

end TransportContract

end Surface.Core.Transport
```
