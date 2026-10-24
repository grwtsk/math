# affineCombination_mem_interior_face_iff_pos

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
      "line": 579,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a868178-8ca5-93c4-bec7-f0e3f99f2c6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0b50ee8-2832-9291-5fcd-9b009b2189d7",
  "kind": "lemma",
  "lexical_name": "affineCombination_mem_interior_face_iff_pos",
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
  "slug": "affinecombination-mem-interior-face-iff-pos--7b7ab4017107e244707eb5e9",
  "source": {
    "blob": "011f31359194e9485492ec54fd669a216209f85e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 589,
    "line": 579,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b7ab4017107e244707eb5e9544369c4285d20241fc218ec165f63dd69a5b547",
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

Occurrence: `result:e0b50ee8-2832-9291-5fcd-9b009b2189d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 579–589.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineCombination_mem_interior_face_iff_pos [IsOrderedAddMonoid k] {n : ℕ}
    (s : Simplex k P n) {fs : Finset (Fin (n + 1))} {m : ℕ} [NeZero m] (h : #fs = m + 1)
    {w : Fin (n + 1) → k} (hw : ∑ i, w i = 1) :
    Finset.univ.affineCombination k s.points w ∈ (s.face h).interior ↔
      (∀ i ∈ fs, 0 < w i) ∧ (∀ i ∉ fs, w i = 0) := by
  rw [s.affineCombination_mem_interior_face_iff_mem_Ioo h hw]
  refine ⟨by grind, fun ⟨hii, hi0⟩ ↦ ⟨fun i hi ↦ ⟨hii i hi, ?_⟩, hi0⟩⟩
  rw [← hw, ← Finset.sum_subset (Finset.subset_univ fs) fun j _ ↦ hi0 j]
  obtain ⟨j, hj, hji⟩ := fs.exists_mem_ne (by grind [→ NeZero.ne]) i
  exact Finset.single_lt_sum hji hi hj (hii j hj) fun t ht _ ↦ (hii t ht).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean#L579).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `011f31359194e9485492ec54fd669a216209f85e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
