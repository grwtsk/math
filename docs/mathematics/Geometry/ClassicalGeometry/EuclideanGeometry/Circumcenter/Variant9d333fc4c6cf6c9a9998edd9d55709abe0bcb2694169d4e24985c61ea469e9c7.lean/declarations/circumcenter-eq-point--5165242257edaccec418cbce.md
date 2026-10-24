# circumcenter_eq_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b09d2d0277f5d2b6905595e4ed90d616a73c7b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 309,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e90294a-a598-d4ae-0113-4c2f7b12837a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d388a4d-13cc-d1a0-a04f-029bbcbcdea3",
  "kind": "theorem",
  "lexical_name": "circumcenter_eq_point",
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
  "slug": "circumcenter-eq-point--5165242257edaccec418cbce",
  "source": {
    "blob": "9b09d2d0277f5d2b6905595e4ed90d616a73c7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 309,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5165242257edaccec418cbce1ba92ffdf92879d402e458678898734e500a5bc5",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d388a4d-13cc-d1a0-a04f-029bbcbcdea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circumcenter_eq_point (s : Simplex ℝ P 0) (i : Fin 1) : s.circumcenter = s.points i := by
  have h := s.circumcenter_mem_affineSpan
  have : Unique (Fin 1) := ⟨⟨0, by decide⟩, fun a => by simp only [Fin.eq_zero]⟩
  simp only [Set.range_unique, AffineSubspace.mem_affineSpan_singleton] at h
  rw [h]
  congr
  simp only [eq_iff_true_of_subsingleton]

/-- The circumcenter of a 1-simplex equals its centroid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b09d2d0277f5d2b6905595e4ed90d616a73c7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
