# affineCombination_mem_affineSpan_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 892,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:497c91e7-e7b7-7ca6-cd6f-dbc51633ad2c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e1feacf-b293-c5d8-6bc9-100cefbc8cda",
  "kind": "lemma",
  "lexical_name": "affineCombination_mem_affineSpan_image",
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
  "slug": "affinecombination-mem-affinespan-image--8e92ed3a9dcf2bf46ef830c7",
  "source": {
    "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 915,
    "line": 892,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e92ed3a9dcf2bf46ef830c737580a836a967b283d668b2a8bd9bd5aebdf74a8",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1feacf-b293-c5d8-6bc9-100cefbc8cda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–915.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma affineCombination_mem_affineSpan_image [Nontrivial k] {s : Finset ι} {w : ι → k}
    (h : ∑ i ∈ s, w i = 1) {s' : Set ι} (hs' : ∀ i ∈ s, i ∉ s' → w i = 0) (p : ι → P) :
    s.affineCombination k p w ∈ affineSpan k (p '' s') := by
  classical
  rw [Set.image_eq_range]
  let w' : s' → k := fun i ↦ w i
  have h' : ∑ i ∈ s with i ∈ s', w i = 1 := by
    rw [← h, ← Finset.sum_sdiff (s₁ := {x ∈ s | x ∈ s'}) (s₂ := s) (by simp), right_eq_add]
    refine Finset.sum_eq_zero ?_
    intro i hi
    simp only [Finset.mem_sdiff, Finset.mem_filter, not_and] at hi
    exact hs' i hi.1 (hi.2 hi.1)
  rw [← Finset.sum_subtype_eq_sum_filter] at h'
  convert! affineCombination_mem_affineSpan h' (fun x ↦ p x)
  rw [Finset.affineCombination_subtype_eq_filter, Finset.affineCombination_indicator_subset w p
    (Finset.filter_subset _ _)]
  refine Finset.affineCombination_congr _ (fun i hi ↦ ?_) (fun _ _ ↦ rfl)
  simp_all [Set.indicator_apply]

variable (k V)

/-- A point is in the `affineSpan` of an indexed family if and only
if it is an `affineCombination` with sum of weights 1, provided the
underlying ring is nontrivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6969cc1a9de419f6a1de3c975d60329c2a59a0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
