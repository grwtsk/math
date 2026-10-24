# vertexAdjacent_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cd9c163-7d7c-5aa6-de96-4a6ed9519854",
  "kind": "theorem",
  "lexical_name": "vertexAdjacent_symmetric",
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
  "slug": "vertexadjacent-symmetric--9452e0b847bd6aa27b2303ad",
  "source": {
    "blob": "635013682e0d3798970979af4fb14e45f50cf95f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9452e0b847bd6aa27b2303ad9e152521bf1d800f9341d8cbaf0b0d99b8fcb899",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cd9c163-7d7c-5aa6-de96-4a6ed9519854`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertexAdjacent_symmetric {rows columns : Nat}
    {left right : GridCell rows columns} :
    VertexAdjacent left right ↔ VertexAdjacent right left := by
  constructor <;> intro adjacent
  · exact ⟨adjacent.1.symm,
      neighboringCoordinate_symmetric.mp adjacent.2.1,
      neighboringCoordinate_symmetric.mp adjacent.2.2⟩
  · exact ⟨adjacent.1.symm,
      neighboringCoordinate_symmetric.mp adjacent.2.1,
      neighboringCoordinate_symmetric.mp adjacent.2.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant24c9747b59a66d9901cd7bf88055c5be2aeb259e088a72101cc1bb4d50d491b0.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `635013682e0d3798970979af4fb14e45f50cf95f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
