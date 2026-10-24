# AdmittedProposal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44c15b67408083946fa6ed2d317f5aa101105114a8cae4a04fbb5cd4c4b47119",
  "kind": "structure",
  "lexical_name": "AdmittedProposal",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "admittedproposal--e13fdf7208ca37ecec16856f",
  "source": {
    "blob": "e2d1c73fc16413b2ce8880a21ab132bde217a813",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 120,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantafb62a6a73a2874fedc3c47a793bdb7a7d42f6a4f9b807d9d86d85ebf93915ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e13fdf7208ca37ecec16856f2e78e7706c3231f6cc0c16d61f17accf5f4c0be8",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantafb62a6a73a2874fedc3c47a793bdb7a7d42f6a4f9b807d9d86d85ebf93915ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44c15b67408083946fa6ed2d317f5aa101105114a8cae4a04fbb5cd4c4b47119`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmittedProposal (Host EdgeId : Type*)
    [Fintype Host] [DecidableEq Host]
    [Fintype EdgeId] [DecidableEq EdgeId] where
  contract : RoutingContract Host EdgeId
  snapshot : SourceSnapshot Host
  register : LwwRegister xyzFormatV1
  proposal : RawProposal Host EdgeId
  edge : DeclaredEdge Host EdgeId
  source : RevisionedXYZ xyzFormatV1
  output : RevisionedXYZ xyzFormatV1
  contractValid : contract.Valid
  schemaMatches :
    proposal.schemaVersion = xyzRoutingSchemaVersionV1 ∧
      snapshot.schemaVersion = xyzRoutingSchemaVersionV1
  hashFraming :
    proposal.contractHash.Valid ∧ proposal.sourceSnapshotHash.Valid ∧
      snapshot.contractHash.Valid ∧ snapshot.snapshotHash.Valid
  contractHashMatches :
    proposal.contractHash = contract.contractHash ∧
      snapshot.contractHash = contract.contractHash
  snapshotHashMatches : proposal.sourceSnapshotHash = snapshot.snapshotHash
  algorithmMatches : proposal.algorithmVersion = contract.algorithmVersion
  edgeDeclared : edge ∈ contract.edges
  edgeIdentity : edge.edgeId = proposal.edgeId
  endpointsMatch :
    edge.source = proposal.claimedSource ∧
      edge.target = proposal.claimedTarget ∧
      proposal.claimedSource = snapshot.sourceHost
  revisionBound : proposal.revision < revisionModulus
  revisionMatches :
    source.revision.val = proposal.revision ∧
      output.revision.val = proposal.revision
  sourceRawMatches :
    source.value.x.raw = proposal.source.x ∧
      source.value.y.raw = proposal.source.y ∧
      source.value.z.raw = proposal.source.z
  outputRawMatches :
    output.value.x.raw = proposal.proposed.x ∧
      output.value.y.raw = proposal.proposed.y ∧
      output.value.z.raw = proposal.proposed.z
  sourceMatches : source = snapshot.source
  expectedOutput : output = leanExpectedUpdate source
  invariantPreserved :
    normalizedTristimulusInvariant xyzFormatV1 output.value
  mergeDecision : MergeDecision xyzFormatV1
  mergeClassified : merge register output = mergeDecision
  mergeAdmissible : MergeAdmissible mergeDecision

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantafb62a6a73a2874fedc3c47a793bdb7a7d42f6a4f9b807d9d86d85ebf93915ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantafb62a6a73a2874fedc3c47a793bdb7a7d42f6a4f9b807d9d86d85ebf93915ab.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2d1c73fc16413b2ce8880a21ab132bde217a813` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
