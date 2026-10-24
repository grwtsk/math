# physicalReductionRowsChunk0004

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:870ba3a1fa03114e443691920aad81fc15328b1bbed5392c504b3fab4d823265",
  "kind": "def",
  "lexical_name": "physicalReductionRowsChunk0004",
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
  "slug": "physicalreductionrowschunk0004--fdce4e121abc52dd673d6d74",
  "source": {
    "blob": "b490c038c78433c4a86e2ade48f4c15c665c91c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139995,
    "line": 139928,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdce4e121abc52dd673d6d7444390b56860846d6b3a1a18e29bbb598df8507da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:870ba3a1fa03114e443691920aad81fc15328b1bbed5392c504b3fab4d823265`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139928–139995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def physicalReductionRowsChunk0004 : List PhysicalReductionRow :=
[
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 6, branchCount := 6, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 19, branchCount := 19, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 6, branchCount := 6, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 15, branchCount := 15, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 14, branchCount := 14, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 5, branchCount := 5, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 8, branchCount := 8, folderRequired := true },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false },
  { isRoot := false, terminalCount := 1, branchCount := 1, folderRequired := false }
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CurrentSourceRigidifier/Variant64046891ae23f28a8351fdd1c22d13a0b698788285fa301cd6e5e8ffd59dc62c.lean#L139928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b490c038c78433c4a86e2ade48f4c15c665c91c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
