# toyReducerEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff886824f69c07648b3f185bb123a1d6ee2542a7ed888c88abece6cc5550d625",
  "kind": "def",
  "lexical_name": "toyReducerEvent",
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
  "slug": "toyreducerevent--de735e5de548ba21205ef269",
  "source": {
    "blob": "9ef441273cd8e5e1f21f8a51a216a5711ff5c3cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 197,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant81fa41a4d9a317cf1da63b8d79bbf45747456fdc4acae3825b742dde1e6fd5fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de735e5de548ba21205ef269ebbdb6a80beec49606785660e1ef7503ac31afcb",
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

Occurrence: `declaration:ff886824f69c07648b3f185bb123a1d6ee2542a7ed888c88abece6cc5550d625`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toyReducerEvent
    (eventId : Nat)
    (kind : ReducerEventKind)
    (operatorId : Option Nat)
    (heatDelta : Int)
    (witnessHash : Option Nat) :
    ReducerNdjsonEvent where
  eventId := eventId
  runId := 1901
  kind := kind
  requestHash := toyFaceRequest.requestHash
  faceId := toyFaceRequest.faceId
  operatorId := operatorId
  beforeStateHash := some 1801
  afterStateHash := some 1802
  heatDelta := heatDelta
  witnessHash := witnessHash
  authorityBoundaryHash := toyFaceRequest.authorityBoundaryHash
  lossRecordHash := some toyProjectedFace.lossRecordHash

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant81fa41a4d9a317cf1da63b8d79bbf45747456fdc4acae3825b742dde1e6fd5fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant81fa41a4d9a317cf1da63b8d79bbf45747456fdc4acae3825b742dde1e6fd5fe.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef441273cd8e5e1f21f8a51a216a5711ff5c3cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
