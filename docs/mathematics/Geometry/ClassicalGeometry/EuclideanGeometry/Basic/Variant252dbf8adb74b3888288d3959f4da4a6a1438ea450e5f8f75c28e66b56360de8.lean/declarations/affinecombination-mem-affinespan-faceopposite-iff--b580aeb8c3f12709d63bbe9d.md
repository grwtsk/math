# affineCombination_mem_affineSpan_faceOpposite_iff

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
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d94bd54-9b50-a63a-6e70-364ae4cad6b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:22872667-83dd-4a97-cbc1-de5749f14fec",
  "kind": "lemma",
  "lexical_name": "affineCombination_mem_affineSpan_faceOpposite_iff",
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
  "slug": "affinecombination-mem-affinespan-faceopposite-iff--b580aeb8c3f12709d63bbe9d",
  "source": {
    "blob": "011f31359194e9485492ec54fd669a216209f85e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 193,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b580aeb8c3f12709d63bbe9dbc9351a7bbf4d1f9c0b43c570c5ad0dde6688aca",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22872667-83dd-4a97-cbc1-de5749f14fec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineCombination_mem_affineSpan_faceOpposite_iff {n : ℕ} [NeZero n] {s : Simplex k P n}
    {w : Fin (n + 1) → k} (hw : ∑ i, w i = 1) {i : Fin (n + 1)} :
    Finset.univ.affineCombination k s.points w ∈
      affineSpan k (Set.range (s.faceOpposite i).points) ↔ w i = 0 := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · rw [range_faceOpposite_points] at h
    exact s.independent.eq_zero_of_affineCombination_mem_affineSpan hw h (Finset.mem_univ i)
      (by simp)
  · rw [range_faceOpposite_points]
    rcases subsingleton_or_nontrivial k with hk | hk
    · have : Subsingleton V := Module.subsingleton k _
      have : Subsingleton P := (AddTorsor.subsingleton_iff V P).1 inferInstance
      rw [(affineSpan_eq_top_iff_nonempty_of_subsingleton k).2 (by simp)]
      simp
    · exact affineCombination_mem_affineSpan_image hw (by simpa using h) s.points

/-- Push forward an affine simplex under an injective affine map. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011f31359194e9485492ec54fd669a216209f85e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
