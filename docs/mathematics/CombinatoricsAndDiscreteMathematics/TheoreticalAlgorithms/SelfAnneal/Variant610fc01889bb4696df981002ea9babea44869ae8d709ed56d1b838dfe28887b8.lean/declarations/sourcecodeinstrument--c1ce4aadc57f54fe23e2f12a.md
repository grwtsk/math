# sourceCodeInstrument

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a330ccf3982b9ee37bf3c958b50d280a091444f6e67f8d38cf3a76de7a27ee1",
  "kind": "def",
  "lexical_name": "sourceCodeInstrument",
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
  "slug": "sourcecodeinstrument--c1ce4aadc57f54fe23e2f12a",
  "source": {
    "blob": "99f27c049976adad0935064d753d56c6dc139595",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1ce4aadc57f54fe23e2f12a2e52016c27d88b22bc852ba63b6735cdd5b4422a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a330ccf3982b9ee37bf3c958b50d280a091444f6e67f8d38cf3a76de7a27ee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def sourceCodeInstrument
    (snapshot : SourceAstSnapshot) : SourceCodeInstrument where
  repositoryRevision := snapshot.repositoryRevision
  sourceSnapshotHash := snapshot.sourceSnapshot.snapshotHash
  parserFingerprint := snapshot.parserFingerprint
  packetHash := snapshot.admittedPacket.value.packetHash
  packetByteLength := snapshot.admittedPacket.value.byteLength
  nodeCount := snapshot.nodeCount
  tokenCount := snapshot.tokenCount
  declarationCount := snapshot.declarationCount
  diagnosticCount := snapshot.diagnosticCount
  bracketBalance := finalBalance snapshot.bracketWord
  currentHardViolations := snapshot.energy.hardVector
  selectedRepairCandidateHash? := snapshot.selectedRepairCandidateHash?
  patchSummaryHash? := snapshot.patchSummaryHash?
  compilerObservation := snapshot.compilerObservation
  nonclaims := [
    "Structural transport metadata is not a Lean proof.",
    "Search selection is not source-mutation authority.",
    "Compiler observations are bound to the exact source snapshot and toolchain."
  ]

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SelfAnneal/Variant610fc01889bb4696df981002ea9babea44869ae8d709ed56d1b838dfe28887b8.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99f27c049976adad0935064d753d56c6dc139595` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
