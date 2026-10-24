# eq_circumradius_of_dist_eq

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
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3dc85868-ffb2-2873-87e1-642ce83af3c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06668910-2ef5-c404-aff2-9c74f4ff0cb6",
  "kind": "theorem",
  "lexical_name": "eq_circumradius_of_dist_eq",
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
  "slug": "eq-circumradius-of-dist-eq--2b517719c0db9e882a791b30",
  "source": {
    "blob": "9b09d2d0277f5d2b6905595e4ed90d616a73c7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 282,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b517719c0db9e882a791b309f3124547811157a88778873179b2ef63319aa07",
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

Occurrence: `result:06668910-2ef5-c404-aff2-9c74f4ff0cb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_circumradius_of_dist_eq {n : ℕ} (s : Simplex ℝ P n) {p : P}
    (hp : p ∈ affineSpan ℝ (Set.range s.points)) {r : ℝ} (hr : ∀ i, dist (s.points i) p = r) :
    r = s.circumradius := by
  have h := s.circumsphere_unique_dist_eq.2 ⟨p, r⟩
  simp only [hp, hr, forall_const, eq_self_iff_true, subset_sphere, Sphere.ext_iff,
    Set.forall_mem_range, mem_sphere] at h
  -- Porting note: added the next three lines (`simp` less powerful)
  rw [subset_sphere (s := ⟨p, r⟩)] at h
  simp only [hp, hr, forall_const, eq_self_iff_true, subset_sphere, Sphere.ext_iff,
    Set.forall_mem_range, mem_sphere, true_and] at h
  exact h.2

/-- The circumradius is non-negative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Circumcenter/Variant9d333fc4c6cf6c9a9998edd9d55709abe0bcb2694169d4e24985c61ea469e9c7.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b09d2d0277f5d2b6905595e4ed90d616a73c7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
