# toyReducerEvent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84abb31b95c68dffb43f823d65711466bbed6590f8671262d9a1c7653b997c91",
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
  "slug": "toyreducerevent--123d5804d0c28340fd49c966",
  "source": {
    "blob": "7cb4ae39f2eddc71a23479585da7460f71cf1fd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 205,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant77c90baa9d31a7cd523e2040f3064487ba5dfd5335378f043e266a5681d3efa6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:123d5804d0c28340fd49c96632db2fea15d836aee697c7f5bc968eee0a73d90b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant77c90baa9d31a7cd523e2040f3064487ba5dfd5335378f043e266a5681d3efa6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84abb31b95c68dffb43f823d65711466bbed6590f8671262d9a1c7653b997c91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–224.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant77c90baa9d31a7cd523e2040f3064487ba5dfd5335378f043e266a5681d3efa6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjectionExamples/Variant77c90baa9d31a7cd523e2040f3064487ba5dfd5335378f043e266a5681d3efa6.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cb4ae39f2eddc71a23479585da7460f71cf1fd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
