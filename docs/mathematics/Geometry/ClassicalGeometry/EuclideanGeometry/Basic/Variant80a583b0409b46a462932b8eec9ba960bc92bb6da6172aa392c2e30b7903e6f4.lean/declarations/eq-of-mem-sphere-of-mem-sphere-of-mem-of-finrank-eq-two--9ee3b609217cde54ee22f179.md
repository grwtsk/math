# eq_of_mem_sphere_of_mem_sphere_of_mem_of_finrank_eq_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65e60c522aa7a6ed8b00ff637f51a8e3530c2a47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ebb44edf-cfd4-2642-e016-81e839c681fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8e2b1d2-1ee8-9f70-4cc0-cdad98ee66d1",
  "kind": "theorem",
  "lexical_name": "eq_of_mem_sphere_of_mem_sphere_of_mem_of_finrank_eq_two",
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
  "slug": "eq-of-mem-sphere-of-mem-sphere-of-mem-of-finrank-eq-two--9ee3b609217cde54ee22f179",
  "source": {
    "blob": "65e60c522aa7a6ed8b00ff637f51a8e3530c2a47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 497,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ee3b609217cde54ee22f179d43c998039d9dbf745170690c765c12cf380aca8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8e2b1d2-1ee8-9f70-4cc0-cdad98ee66d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_mem_sphere_of_mem_sphere_of_mem_of_finrank_eq_two {s : AffineSubspace ℝ P}
    [FiniteDimensional ℝ s.direction] (hd : finrank ℝ s.direction = 2) {s₁ s₂ : Sphere P}
    {p₁ p₂ p : P} (hs₁ : s₁.center ∈ s) (hs₂ : s₂.center ∈ s) (hp₁s : p₁ ∈ s) (hp₂s : p₂ ∈ s)
    (hps : p ∈ s) (hs : s₁ ≠ s₂) (hp : p₁ ≠ p₂) (hp₁s₁ : p₁ ∈ s₁) (hp₂s₁ : p₂ ∈ s₁) (hps₁ : p ∈ s₁)
    (hp₁s₂ : p₁ ∈ s₂) (hp₂s₂ : p₂ ∈ s₂) (hps₂ : p ∈ s₂) : p = p₁ ∨ p = p₂ :=
  eq_of_dist_eq_of_dist_eq_of_mem_of_finrank_eq_two hd hs₁ hs₂ hp₁s hp₂s hps
    ((Sphere.center_ne_iff_ne_of_mem hps₁ hps₂).2 hs) hp hp₁s₁ hp₂s₁ hps₁ hp₁s₂ hp₂s₂ hps₂

/-- Two spheres intersect in at most two points in two-dimensional space; this is a version of
`eq_of_dist_eq_of_dist_eq_of_finrank_eq_two` for bundled spheres. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant80a583b0409b46a462932b8eec9ba960bc92bb6da6172aa392c2e30b7903e6f4.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65e60c522aa7a6ed8b00ff637f51a8e3530c2a47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
