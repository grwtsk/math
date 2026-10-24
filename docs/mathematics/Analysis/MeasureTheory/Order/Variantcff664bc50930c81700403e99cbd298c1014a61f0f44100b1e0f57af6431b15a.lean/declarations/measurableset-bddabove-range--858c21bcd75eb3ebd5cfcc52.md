# measurableSet_bddAbove_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 851,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d9f14f4-e1e7-0b00-4c8f-47496bf8d706",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14f1855f-7ef0-c77d-d824-fe2021b99752",
  "kind": "lemma",
  "lexical_name": "measurableSet_bddAbove_range",
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
  "slug": "measurableset-bddabove-range--858c21bcd75eb3ebd5cfcc52",
  "source": {
    "blob": "373362a90f7b59d21ae884ceadb84fc51fcae514",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 851,
    "path": "GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:858c21bcd75eb3ebd5cfcc52c5f55d97d0371264a943acd8083dc83db38d3e96",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14f1855f-7ef0-c77d-d824-fe2021b99752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_bddAbove_range {ι} [Countable ι] {f : ι → δ → α} (hf : ∀ i, Measurable (f i)) :
    MeasurableSet {b | BddAbove (range (fun i ↦ f i b))} := by
  rcases isEmpty_or_nonempty α with hα | hα
  · have : ∀ b, range (fun i ↦ f i b) = ∅ := fun b ↦ eq_empty_of_isEmpty _
    simp [this]
  have A : ∀ (i : ι) (c : α), MeasurableSet {x | f i x ≤ c} := by
    intro i c
    exact measurableSet_le (hf i) measurable_const
  have B : ∀ (c : α), MeasurableSet {x | ∀ i, f i x ≤ c} := by
    intro c
    rw [ofPred_forall]
    exact MeasurableSet.iInter (fun i ↦ A i c)
  obtain ⟨u, hu⟩ : ∃ (u : ℕ → α), Tendsto u atTop atTop := exists_seq_tendsto (atTop : Filter α)
  have : {b | BddAbove (range (fun i ↦ f i b))} = {x | ∃ n, ∀ i, f i x ≤ u n} := by
    apply Subset.antisymm
    · rintro x ⟨c, hc⟩
      obtain ⟨n, hn⟩ : ∃ n, c ≤ u n := (tendsto_atTop.1 hu c).exists
      exact ⟨n, fun i ↦ (hc ((mem_range_self i))).trans hn⟩
    · rintro x ⟨n, hn⟩
      refine ⟨u n, ?_⟩
      rintro - ⟨i, rfl⟩
      exact hn i
  rw [this, ofPred_exists]
  exact MeasurableSet.iUnion (fun n ↦ B (u n))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Order/Variantcff664bc50930c81700403e99cbd298c1014a61f0f44100b1e0f57af6431b15a.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373362a90f7b59d21ae884ceadb84fc51fcae514` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
