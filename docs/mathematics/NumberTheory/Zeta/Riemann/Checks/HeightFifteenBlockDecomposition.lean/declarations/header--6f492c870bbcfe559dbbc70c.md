# header

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ae6f54f-6016-c7f0-27e0-1bc05bb6b760",
  "kind": "theorem",
  "lexical_name": "header",
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
  "slug": "header--6f492c870bbcfe559dbbc70c",
  "source": {
    "blob": "06b3aa7f3cbe130682a62541f829a7973e7cd18d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f492c870bbcfe559dbbc70cac62846a6f7dc4645a180d545a7ba4dd75dc8cd8",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae6f54f-6016-c7f0-27e0-1bc05bb6b760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem header : JetContourBlocks.Header edges domain plans image := by
  have hmesh := (RationalRectangleMesh.check_iff_valid _ _).mp mesh_shape.2
  refine ⟨by decide,?_,plan_length,image_length,?_,?_⟩
  · simpa only [domain,RationalRectangleMesh.vertices_length] using mesh_shape.1
  · change (RationalRectangleMesh.vertices _ _ marks).getD edges zero =
      (RationalRectangleMesh.vertices _ _ marks).getD 0 zero
    rw [RationalRectangleMesh.vertex_at _ _ (by rw [mesh_shape.1]; omega),
      RationalRectangleMesh.vertex_at _ _ (by rw [mesh_shape.1]; omega),
      hmesh.2.2.2.1,hmesh.2.2.1,
      RationalRectangleMesh.point_four,RationalRectangleMesh.point_zero]
  · rw [image_last,image_at (show 0 < edges by decide)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenBlockDecomposition.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06b3aa7f3cbe130682a62541f829a7973e7cd18d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
