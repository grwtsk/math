# stronglyMeasurable_of_measurableSpace_le_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6638a72f5aeebd139d011282b8a1d40108892cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 961,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e67f421-c064-252c-1233-c8c98c0e75dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14cde9a8-fbc9-ebec-7fa5-1edb5ebcf36d",
  "kind": "theorem",
  "lexical_name": "stronglyMeasurable_of_measurableSpace_le_on",
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
  "slug": "stronglymeasurable-of-measurablespace-le-on--1dd375d0523546f8dceca331",
  "source": {
    "blob": "b6638a72f5aeebd139d011282b8a1d40108892cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 999,
    "line": 961,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dd375d0523546f8dceca331b0e27ff544d9712719123b452479b42f1012d043",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14cde9a8-fbc9-ebec-7fa5-1edb5ebcf36d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 961–999.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stronglyMeasurable_of_measurableSpace_le_on {α E} {m m₂ : MeasurableSpace α}
    [TopologicalSpace E] [Zero E] {s : Set α} {f : α → E} (hs_m : MeasurableSet[m] s)
    (hs : ∀ t, MeasurableSet[m] (s ∩ t) → MeasurableSet[m₂] (s ∩ t))
    (hf : StronglyMeasurable[m] f) (hf_zero : ∀ x ∉ s, f x = 0) :
    StronglyMeasurable[m₂] f := by
  have hs_m₂ : MeasurableSet[m₂] s := by
    rw [← Set.inter_univ s]
    refine hs Set.univ ?_
    rwa [Set.inter_univ]
  obtain ⟨g_seq_s, hg_seq_tendsto, hg_seq_zero⟩ := stronglyMeasurable_in_set hs_m hf hf_zero
  let g_seq_s₂ : ℕ → @SimpleFunc α m₂ E := fun n =>
    { toFun := g_seq_s n
      measurableSet_fiber' := fun x => by
        rw [← Set.inter_univ (g_seq_s n ⁻¹' {x}), ← Set.union_compl_self s,
          Set.inter_union_distrib_left, Set.inter_comm (g_seq_s n ⁻¹' {x})]
        refine MeasurableSet.union (hs _ (hs_m.inter ?_)) ?_
        · exact @SimpleFunc.measurableSet_fiber _ _ m _ _
        by_cases hx : x = 0
        · suffices g_seq_s n ⁻¹' {x} ∩ sᶜ = sᶜ by
            rw [this]
            exact hs_m₂.compl
          ext1 y
          rw [hx, Set.mem_inter_iff, Set.mem_preimage, Set.mem_singleton_iff]
          exact ⟨fun h => h.2, fun h => ⟨hg_seq_zero y h n, h⟩⟩
        · suffices g_seq_s n ⁻¹' {x} ∩ sᶜ = ∅ by
            rw [this]
            exact MeasurableSet.empty
          ext1 y
          simp only [mem_inter_iff, mem_preimage, mem_singleton_iff, mem_compl_iff,
            mem_empty_iff_false, iff_false, not_and, not_notMem]
          refine Function.mtr fun hys => ?_
          rw [hg_seq_zero y hys n]
          exact Ne.symm hx
      finite_range' := @SimpleFunc.finite_range _ _ m (g_seq_s n) }
  exact ⟨g_seq_s₂, hg_seq_tendsto⟩

/-- If a function `f` is strongly measurable w.r.t. a sub-σ-algebra `m` and the measure is σ-finite
on `m`, then there exists spanning measurable sets with finite measure on which `f` has bounded
norm. In particular, `f` is integrable on each of those sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant37228bc604e8f4eaeace0a119a9ff7830fbcaa1de6f2dc1f19996ccda2c8b5bb.lean#L961).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6638a72f5aeebd139d011282b8a1d40108892cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
