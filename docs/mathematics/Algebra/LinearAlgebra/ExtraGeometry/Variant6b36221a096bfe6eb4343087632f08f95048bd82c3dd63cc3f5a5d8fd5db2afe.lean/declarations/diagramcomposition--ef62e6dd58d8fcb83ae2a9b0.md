# diagramComposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e72a27a1b2d3c5379caa768c7dc005ef7575a72101492ce322f54dbb7f25f81f",
  "kind": "def",
  "lexical_name": "diagramComposition",
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
  "slug": "diagramcomposition--ef62e6dd58d8fcb83ae2a9b0",
  "source": {
    "blob": "65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 186,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef62e6dd58d8fcb83ae2a9b0934dd1ececbac3dde1e9e40c69fc0fbd10fdf140",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e72a27a1b2d3c5379caa768c7dc005ef7575a72101492ce322f54dbb7f25f81f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagramComposition (a b : Fin 6) : Fin 6 :=
  ![![0,1,2,3,4,5], ![1,0,4,5,2,3], ![2,3,0,1,5,4],
    ![3,2,5,4,0,1], ![4,5,1,0,3,2], ![5,4,3,2,1,0]] a b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExtraGeometry/Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
