# ResolvedSurgeryOperation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:90ec210c7cc1ab3bc4b4ecc85a7ca599df03c0270c3034f5246da40f029919b4",
  "kind": "structure",
  "lexical_name": "ResolvedSurgeryOperation",
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
  "slug": "resolvedsurgeryoperation--410036b44255ae21de585430",
  "source": {
    "blob": "3e50cd36cd5d7a7ef23c4a1794cdce72653411da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 225,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:410036b44255ae21de585430bb47c938c4047225747f8ad3ee65527feffb073a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:90ec210c7cc1ab3bc4b4ecc85a7ca599df03c0270c3034f5246da40f029919b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResolvedSurgeryOperation where
  operation : SurgeryOperation
  structuralPacketHash : Hash256
  packetSourceSnapshotHash : Hash256
  compiledEdits : List ExactGuardedByteEdit
  packetSourceSnapshotMatches :
    packetSourceSnapshotHash = operation.context.baseSourceSnapshotHash
  editsOrdered : CompiledEditsOrdered compiledEdits
  editsNonoverlapping : CompiledEditsNonoverlapping compiledEdits

end Surface.Refactor.Surgery
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant5bc1cc4ff8b81c2440717434e0bef070867374c25104b8ca321f38a97552cb9a.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e50cd36cd5d7a7ef23c4a1794cdce72653411da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
