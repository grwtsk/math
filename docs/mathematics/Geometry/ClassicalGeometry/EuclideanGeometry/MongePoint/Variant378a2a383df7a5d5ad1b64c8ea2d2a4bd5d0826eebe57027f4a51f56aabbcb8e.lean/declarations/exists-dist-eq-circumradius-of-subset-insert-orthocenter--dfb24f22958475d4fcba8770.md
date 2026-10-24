# exists_dist_eq_circumradius_of_subset_insert_orthocenter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f444e965-2ea5-8454-5cda-2396512525d0",
  "kind": "theorem",
  "lexical_name": "exists_dist_eq_circumradius_of_subset_insert_orthocenter",
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
  "slug": "exists-dist-eq-circumradius-of-subset-insert-orthocenter--dfb24f22958475d4fcba8770",
  "source": {
    "blob": "1279a2e7b96731c6a97969d3d022508edc7025df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 701,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfb24f22958475d4fcba8770333ea15a9673bc9960c1b778d2609b6c6768a31f",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f444e965-2ea5-8454-5cda-2396512525d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_dist_eq_circumradius_of_subset_insert_orthocenter {t : Triangle ℝ P}
    (ho : t.orthocenter ∉ Set.range t.points) {p : Fin 3 → P}
    (hps : Set.range p ⊆ insert t.orthocenter (Set.range t.points)) (hpi : Function.Injective p) :
    ∃ c ∈ affineSpan ℝ (Set.range t.points), ∀ p₁ ∈ Set.range p, dist p₁ c = t.circumradius := by
  rcases exists_of_range_subset_orthocentricSystem ho hps hpi with
    (⟨i₁, i₂, i₃, j₂, j₃, _, _, _, h₁₂₃, h₁, hj₂₃, h₂, h₃⟩ | hs)
  · use reflection (affineSpan ℝ (t.points '' {j₂, j₃})) t.circumcenter,
      reflection_mem_of_le_of_mem (affineSpan_mono ℝ (Set.image_subset_range _ _))
        t.circumcenter_mem_affineSpan
    intro p₁ hp₁
    rcases hp₁ with ⟨i, rfl⟩
    have h₁₂₃ := h₁₂₃ i
    repeat' cases' h₁₂₃ with h₁₂₃ h₁₂₃
    · convert Triangle.dist_orthocenter_reflection_circumcenter t hj₂₃
    · rw [←h₂, dist_reflection_eq_of_mem _
       (mem_affineSpan ℝ (Set.mem_image_of_mem _ (Set.mem_insert _ _)))]
      exact t.dist_circumcenter_eq_circumradius _
    · rw [← h₃,
        dist_reflection_eq_of_mem _
          (mem_affineSpan ℝ
            (Set.mem_image_of_mem _ (Set.mem_insert_of_mem _ (Set.mem_singleton _))))]
      exact t.dist_circumcenter_eq_circumradius _
  · use t.circumcenter, t.circumcenter_mem_affineSpan
    intro p₁ hp₁
    rw [hs] at hp₁
    rcases hp₁ with ⟨i, rfl⟩
    exact t.dist_circumcenter_eq_circumradius _
#align euclidean_geometry.exists_dist_eq_circumradius_of_subset_insert_orthocenter EuclideanGeometry.exists_dist_eq_circumradius_of_subset_insert_orthocenter

/-- Any three points in an orthocentric system are affinely independent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant378a2a383df7a5d5ad1b64c8ea2d2a4bd5d0826eebe57027f4a51f56aabbcb8e.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1279a2e7b96731c6a97969d3d022508edc7025df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
