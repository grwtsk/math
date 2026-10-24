# binaryDirectionSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd941c89324f2d22253742cb3396f0d8ccb8b1ef7a81730364194be48179fd71",
  "kind": "def",
  "lexical_name": "binaryDirectionSystem",
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
  "slug": "binarydirectionsystem--d0b782f6d1f5ebca966624bb",
  "source": {
    "blob": "982bb0aa77a72a5721dcc3f271d8cf8f1d24efea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 145,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0b782f6d1f5ebca966624bb8ebd2d878df900434d5a48a76e185080cd0b7b7a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd941c89324f2d22253742cb3396f0d8ccb8b1ef7a81730364194be48179fd71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryDirectionSystem : DirectionSystem where
  Vertex := BinaryVertex
  Edge := BinaryEdge
  source := fun e =>
    match e with
    | BinaryEdge.zeroToOne => BinaryVertex.zero
    | BinaryEdge.oneToZero => BinaryVertex.one
  target := fun e =>
    match e with
    | BinaryEdge.zeroToOne => BinaryVertex.one
    | BinaryEdge.oneToZero => BinaryVertex.zero
  reverse := fun e =>
    match e with
    | BinaryEdge.zeroToOne => BinaryEdge.oneToZero
    | BinaryEdge.oneToZero => BinaryEdge.zeroToOne
  reverse_source := by
    intro e
    cases e <;> rfl
  reverse_target := by
    intro e
    cases e <;> rfl
  reverse_involutive := by
    intro e
    cases e <;> rfl
  directionLabel := fun e =>
    match e with
    | BinaryEdge.zeroToOne => "[0,1]"
    | BinaryEdge.oneToZero => "[1,0]"
  vertexLabel := fun v =>
    match v with
    | BinaryVertex.zero => "0"
    | BinaryVertex.one => "1"
  polarity := fun e =>
    match e with
    | BinaryEdge.zeroToOne => 1
    | BinaryEdge.oneToZero => -1
  nullVertex := BinaryVertex.zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DirectionalChain/Variant5fbe86b42bc7b6f912d4d4ffd38edd6b7299d2f0eae4888cb0cfe6606a034276.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `982bb0aa77a72a5721dcc3f271d8cf8f1d24efea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
