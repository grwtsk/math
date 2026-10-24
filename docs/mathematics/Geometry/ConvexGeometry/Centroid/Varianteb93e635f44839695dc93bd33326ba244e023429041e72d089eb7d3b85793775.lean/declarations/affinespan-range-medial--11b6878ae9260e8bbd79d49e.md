# affineSpan_range_medial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a3f544ddd5b2df9607fde34278c23a9dc64cc9f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5ec81e8-52f9-98c2-2f81-9b41b5f63932",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10ca51ea-43b5-0e0c-6766-72ca24710e4c",
  "kind": "theorem",
  "lexical_name": "affineSpan_range_medial",
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
  "slug": "affinespan-range-medial--11b6878ae9260e8bbd79d49e",
  "source": {
    "blob": "a3f544ddd5b2df9607fde34278c23a9dc64cc9f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 563,
    "path": "GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b6878ae9260e8bbd79d49ea449a2c94950c7723b60641e462bf38d0b97294c",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10ca51ea-43b5-0e0c-6766-72ca24710e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineSpan_range_medial [CharZero k] (s : Simplex k P n) :
    affineSpan k (Set.range (s.medial.points)) = affineSpan k (Set.range (s.points)) := by
  have hmem1 : s.medial.points 0 ∈ affineSpan k (Set.range s.medial.points) :=
    mem_affineSpan _ (by simp)
  have hmem2 : s.medial.points 0 ∈ affineSpan k (Set.range s.points) := by
    apply Set.mem_of_mem_of_subset (s.faceOppositeCentroid_mem_affineSpan_face 0)
    exact affineSpan_mono k (by simp)
  rw [eq_iff_direction_eq_of_mem hmem1 hmem2]
  simp_rw [direction_affineSpan, vectorSpan_def]
  suffices Set.range s.medial.points -ᵥ Set.range s.medial.points
    = (-n : k)⁻¹ • (Set.range s.points -ᵥ Set.range s.points) by
    rw [this, Submodule.span_smul_eq_of_isUnit]
    simpa using NeZero.ne n
  ext v
  suffices (∃ a b, (n : k)⁻¹ • (s.points b -ᵥ s.points a) = v) ↔
    ∃ a b, -((n : k)⁻¹ • (s.points a -ᵥ s.points b)) = v by
    simpa [Set.mem_vsub, Set.mem_smul_set, medial_points,
      faceOppositeCentroid_vsub_faceOppositeCentroid]
  congrm ∃ a b, ?_ = v
  simp [← smul_neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3f544ddd5b2df9607fde34278c23a9dc64cc9f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
