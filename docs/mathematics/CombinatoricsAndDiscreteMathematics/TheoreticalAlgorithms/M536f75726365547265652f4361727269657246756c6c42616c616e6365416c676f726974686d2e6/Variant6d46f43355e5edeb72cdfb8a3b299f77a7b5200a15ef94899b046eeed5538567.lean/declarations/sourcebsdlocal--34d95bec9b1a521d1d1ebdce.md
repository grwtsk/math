# SourceBSDLocal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c99b54f2a7ad26a13079807a0d4d3d285e65bf153c6c56800500a93dd38f356",
  "kind": "def",
  "lexical_name": "SourceBSDLocal",
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
  "slug": "sourcebsdlocal--34d95bec9b1a521d1d1ebdce",
  "source": {
    "blob": "4a42d7371cedf242903040ad0af6642d2d3a52d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34d95bec9b1a521d1d1ebdce071dc5c7cad27a0975ecd9391e0ae061658c8d15",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c99b54f2a7ad26a13079807a0d4d3d285e65bf153c6c56800500a93dd38f356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceBSDLocal (T : SourceTreeState) : SourcePlace -> Prop
  | SourcePlace.finite SourceResidueKind.duplicateOwner => T.duplicateOwnerCount = 0
  | SourcePlace.finite SourceResidueKind.missingCover => T.missingCoverCount = 0
  | SourcePlace.finite SourceResidueKind.staleBarrel => T.staleBarrelCount = 0
  | SourcePlace.finite SourceResidueKind.siblingImport => T.importCount = T.importCount
  | SourcePlace.finite SourceResidueKind.monolith => T.monolithCount = 0
  | SourcePlace.finite SourceResidueKind.quarantineLeak => T.quarantineLeakCount = 0
  | SourcePlace.finite SourceResidueKind.unownedAstLeaf => T.conceptCount = T.conceptCount
  | SourcePlace.finite SourceResidueKind.binomialArity => T.binomialArityExcess = 0
  | SourcePlace.finite SourceResidueKind.labelInconsistency => T.labelInconsistencyCount = 0
  | SourcePlace.finite SourceResidueKind.archimedeanRoot => T.physicalPathMismatchCount = 0
  | SourcePlace.archimedean => T.physicalPathMismatchCount = 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a42d7371cedf242903040ad0af6642d2d3a52d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
