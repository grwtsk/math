# eq_affineCombination_of_mem_affineSpan

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
      "line": 837,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d987957-260b-dfaf-a85f-22dd2e0b2449",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc858508-4207-657c-d2bc-00ca9a997e68",
  "kind": "theorem",
  "lexical_name": "eq_affineCombination_of_mem_affineSpan",
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
  "slug": "eq-affinecombination-of-mem-affinespan--0f5ed88f7f8ea8687556cd29",
  "source": {
    "blob": "6969cc1a9de419f6a1de3c975d60329c2a59a0c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 837,
    "path": "GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f5ed88f7f8ea8687556cd29b7f2b5d3385ca65fdf2c9e53e9bbfe42f9424ade",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc858508-4207-657c-d2bc-00ca9a997e68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_affineCombination_of_mem_affineSpan {p1 : P} {p : ι → P}
    (h : p1 ∈ affineSpan k (Set.range p)) :
    ∃ (s : Finset ι) (w : ι → k), ∑ i ∈ s, w i = 1 ∧ p1 = s.affineCombination k p w := by
  classical
    have hn : (affineSpan k (Set.range p) : Set P).Nonempty := ⟨p1, h⟩
    rw [affineSpan_nonempty, Set.range_nonempty_iff_nonempty] at hn
    obtain ⟨i0⟩ := hn
    have h0 : p i0 ∈ affineSpan k (Set.range p) := mem_affineSpan k (Set.mem_range_self i0)
    have hd : p1 -ᵥ p i0 ∈ (affineSpan k (Set.range p)).direction :=
      AffineSubspace.vsub_mem_direction h h0
    rw [direction_affineSpan, mem_vectorSpan_iff_eq_weightedVSub] at hd
    rcases hd with ⟨s, w, h, hs⟩
    let s' := insert i0 s
    let w' := Set.indicator (↑s) w
    have h' : ∑ i ∈ s', w' i = 0 := by
      rw [← h, Finset.sum_indicator_subset _ (Finset.subset_insert i0 s)]
    have hs' : s'.weightedVSub p w' = p1 -ᵥ p i0 := by
      rw [hs]
      exact (Finset.weightedVSub_indicator_subset _ _ (Finset.subset_insert i0 s)).symm
    let w0 : ι → k := Function.update (Function.const ι 0) i0 1
    have hw0 : ∑ i ∈ s', w0 i = 1 := by
      rw [Finset.sum_update_of_mem (Finset.mem_insert_self _ _)]
      simp only [Function.const_apply, Finset.sum_const_zero,
        add_zero]
    have hw0s : s'.affineCombination k p w0 = p i0 :=
      s'.affineCombination_of_eq_one_of_eq_zero w0 p (Finset.mem_insert_self _ _)
        (Function.update_self ..) fun _ _ hne => Function.update_of_ne hne _ _
    refine ⟨s', w0 + w', ?_, ?_⟩
    · simp [Pi.add_apply, Finset.sum_add_distrib, hw0, h']
    · rw [add_comm, ← Finset.weightedVSub_vadd_affineCombination, hw0s, hs', vsub_vadd]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Combination/Variant192b01c829ae28633f549a74c0af12e3b82d61a7dbe5a412ccceee2185dd9125.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6969cc1a9de419f6a1de3c975d60329c2a59a0c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
