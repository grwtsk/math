# altitude_eq_mongePlane

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:757954e9-70d2-e50b-6e0c-90af82791e77",
  "kind": "theorem",
  "lexical_name": "altitude_eq_mongePlane",
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
  "slug": "altitude-eq-mongeplane--10cf8d36cc700d12684246c8",
  "source": {
    "blob": "f8a75383f74bce4a0176f0d5a0d927c00b5f87ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 349,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10cf8d36cc700d12684246c8190771a627e99f9a1b6efe48a8cc2396fa9c14a8",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:757954e9-70d2-e50b-6e0c-90af82791e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem altitude_eq_mongePlane (t : Triangle ℝ P) {i₁ i₂ i₃ : Fin 3} (h₁₂ : i₁ ≠ i₂) (h₁₃ : i₁ ≠ i₃)
    (h₂₃ : i₂ ≠ i₃) : t.altitude i₁ = t.mongePlane i₂ i₃ := by
  have hs : ({i₂, i₃}ᶜ : Finset (Fin 3)) = {i₁} := by decide +revert
  have he : ({i₁}ᶜ : Set (Fin 3)) = {i₂, i₃} := by ext; decide +revert
  rw [mongePlane_def, altitude_def, direction_affineSpan, hs, he, centroid_singleton,
    vectorSpan_image_eq_span_vsub_set_left_ne ℝ _ (Set.mem_insert i₂ _)]
  simp [h₂₃, Submodule.span_insert_eq_span]

/-- The orthocenter lies in the altitudes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant0c08c4d71577776d0739678039e0b1722c202f7a20c5b5676d14b6637c1c2254.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8a75383f74bce4a0176f0d5a0d927c00b5f87ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
