# stoppedProcess_eq_of_mem_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25c9a07faa8890caf333b83750be2ecf7d4bdb48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51687bd8-0236-0a59-1816-955d8181ce55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6afc744f-a182-59e6-59d1-e71d3453a425",
  "kind": "theorem",
  "lexical_name": "stoppedProcess_eq_of_mem_finset",
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
  "slug": "stoppedprocess-eq-of-mem-finset--ccb5bc9bcf773931a66cbe70",
  "source": {
    "blob": "25c9a07faa8890caf333b83750be2ecf7d4bdb48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1150,
    "line": 1118,
    "path": "GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb5bc9bcf773931a66cbe701d3fe895022096acd369817824332a99fa67e2a1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6afc744f-a182-59e6-59d1-e71d3453a425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1118–1150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stoppedProcess_eq_of_mem_finset [LinearOrder ι] [AddCommMonoid E] {s : Finset ι} (n : ι)
    (hbdd : ∀ ω, τ ω < n → τ ω ∈ WithTop.some '' s) :
    stoppedProcess u τ n = Set.indicator {a | n ≤ τ a} (u n) +
      ∑ i ∈ s with i < n, Set.indicator {ω | τ ω = i} (u i) := by
  ext ω
  rw [Pi.add_apply, Finset.sum_apply]
  rcases le_or_gt (n : WithTop ι) (τ ω) with h | h
  · rw [stoppedProcess_eq_of_le h, Set.indicator_of_mem, Finset.sum_eq_zero, add_zero]
    · intro m hm
      refine Set.indicator_of_notMem ?_ _
      rw [Finset.mem_filter] at hm
      simp only [Set.mem_ofPred_eq]
      refine (lt_of_lt_of_le ?_ h).ne'
      exact mod_cast hm.2
    · exact h
  · rw [stoppedProcess_eq_of_ge (le_of_lt h)]
    have h_top : τ ω ≠ ⊤ := fun h_contra ↦ by simp [h_contra] at h
    specialize hbdd ω h
    lift τ ω to ι using h_top with i hi
    rw [Finset.sum_eq_single_of_mem i]
    · simp only [untopD_coe]
      rw [Set.indicator_of_notMem, zero_add, Set.indicator_of_mem] <;> rw [Set.mem_ofPred]
      · exact hi.symm
      · rw [← hi]
        exact not_le.2 h
    · rw [Finset.mem_filter]
      simp only [Set.mem_image, Finset.mem_coe, coe_eq_coe, exists_eq_right] at hbdd
      exact ⟨hbdd, mod_cast h⟩
    · intro b _ hneq
      rw [Set.indicator_of_notMem]
      rw [Set.mem_ofPred, ← hi]
      exact mod_cast hneq.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Stopping/Variant9c861e299606b510460eca3f71cae201ae2d012f62213d92d37764f1c7995dc3.lean#L1118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25c9a07faa8890caf333b83750be2ecf7d4bdb48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
