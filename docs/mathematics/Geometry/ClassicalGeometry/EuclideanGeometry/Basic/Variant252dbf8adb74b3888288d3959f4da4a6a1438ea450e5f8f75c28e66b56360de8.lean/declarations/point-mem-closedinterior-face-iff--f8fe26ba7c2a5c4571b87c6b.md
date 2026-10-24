# point_mem_closedInterior_face_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "011f31359194e9485492ec54fd669a216209f85e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 635,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:051f3505-a6e7-b37a-5f89-957879823f04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1c8266e-318f-60f9-61c3-e74c37abc3af",
  "kind": "theorem",
  "lexical_name": "point_mem_closedInterior_face_iff",
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
  "slug": "point-mem-closedinterior-face-iff--f8fe26ba7c2a5c4571b87c6b",
  "source": {
    "blob": "011f31359194e9485492ec54fd669a216209f85e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 635,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8fe26ba7c2a5c4571b87c6bbfb3eb7302f01a5bec3b26de591ed94b1c5c4e41",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1c8266e-318f-60f9-61c3-e74c37abc3af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 635–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem point_mem_closedInterior_face_iff [Nontrivial k] [ZeroLEOneClass k] {n : ℕ}
    (s : Simplex k P n) {fs : Finset (Fin (n + 1))} {m : ℕ} (h : #fs = m + 1) {j : Fin (n + 1)} :
    s.points j ∈ (s.face h).closedInterior ↔ j ∈ fs := by
  refine ⟨fun hj ↦ ?_, fun hfs ↦ ?_⟩
  · suffices s.points j ∈ affineSpan k (s.points '' fs) by simpa
    obtain ⟨w, hw, hw', hs⟩ := hj
    rw [← hs]
    exact Set.mem_of_mem_of_subset (affineCombination_mem_affineSpan hw _) (by simp)
  · obtain ⟨i, rfl⟩ : ∃ i, fs.orderEmbOfFin h i = j := range_orderEmbOfFin fs h |>.ge hfs
    exact point_mem_closedInterior _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean#L635).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011f31359194e9485492ec54fd669a216209f85e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
