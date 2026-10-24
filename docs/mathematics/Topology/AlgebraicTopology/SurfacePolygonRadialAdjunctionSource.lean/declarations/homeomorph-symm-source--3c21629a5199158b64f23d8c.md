# homeomorph_symm_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14b1fdc4-7c41-cb24-f8ea-47579aeadeb1",
  "kind": "theorem",
  "lexical_name": "homeomorph_symm_source",
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
  "slug": "homeomorph-symm-source--3c21629a5199158b64f23d8c",
  "source": {
    "blob": "b569bf3ab91a385b107f7aec5704d58bc603e98f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 39,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c21629a5199158b64f23d8c03709c7832ea8cacfe980810b963a14542cc7955",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14b1fdc4-7c41-cb24-f8ea-47579aeadeb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem homeomorph_symm_source (k : ℕ)
    (p : BoundaryPoint k) (r : unitInterval) :
    (filledPolygonHomeomorphAttachedDisk k).symm
      (originalDiskMap k
        (perimeterConeDiskHomeomorph k
          (CircleCone.coneMk (perimeterProjection k p) r))) =
      radialProjection k (p, r) := by
  let : TopologicalSpace (PolygonCorner k) := ⊥
  change adjunctionToFilling k
    (originalDiskMap k
      (perimeterConeDiskHomeomorph k
        (CircleCone.coneMk (perimeterProjection k p) r))) = _
  rw [adjunctionToFilling_disk]
  unfold euclideanDiskToFilling
  rw [Function.comp_apply, Homeomorph.symm_apply_apply,
    perimeterConeToFilling_source]
  exact perimeterCylinderToFilling_source k p r

/-- Exact original polygon boundary map transported through the
proposed homeomorphism: no change in the attaching orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionSource.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b569bf3ab91a385b107f7aec5704d58bc603e98f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
