# toyProjectionNetwork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:053484e5a0f3795aac3fe8b633150d27e02a8abc828d04d21d39d2e1d5b8f763",
  "kind": "def",
  "lexical_name": "toyProjectionNetwork",
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
  "slug": "toyprojectionnetwork--2c5ea110000bb3e34f4286d4",
  "source": {
    "blob": "9ef441273cd8e5e1f21f8a51a216a5711ff5c3cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant81fa41a4d9a317cf1da63b8d79bbf45747456fdc4acae3825b742dde1e6fd5fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c5ea110000bb3e34f4286d4978d4073701d6e1ac89ad3d226a87cb917364775",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant81fa41a4d9a317cf1da63b8d79bbf45747456fdc4acae3825b742dde1e6fd5fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:053484e5a0f3795aac3fe8b633150d27e02a8abc828d04d21d39d2e1d5b8f763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toyProjectionNetwork : ProjectionNetwork where
  networkHash := 1301
  nodes := toyProjectionNetworkNodes
  edges := [
    toyProjectionNetworkEdge 1 2 1401,
    toyProjectionNetworkEdge 2 3 1402,
    toyProjectionNetworkEdge 3 4 1403,
    toyProjectionNetworkEdge 4 5 1404,
    toyProjectionNetworkEdge 5 6 1405
  ]
  wellTyped := True
  wellTypedProof := trivial
  composedSound := True
  composedSoundProof := trivial
  preservesIdentity := True
  preservesIdentityProof := trivial
  preservesAuthorityBoundary := True
  preservesAuthorityBoundaryProof := trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant81fa41a4d9a317cf1da63b8d79bbf45747456fdc4acae3825b742dde1e6fd5fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant81fa41a4d9a317cf1da63b8d79bbf45747456fdc4acae3825b742dde1e6fd5fe.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef441273cd8e5e1f21f8a51a216a5711ff5c3cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
