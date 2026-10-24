# NormedAddCommGroup.completeSpace_of_summable_imp_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e53901bd3ba7707de4fe02512367c293bfddb05e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b26912d-1683-d412-141b-66713bb5bb92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9164a7c-55a3-aeb2-eef2-5c5559fe56ef",
  "kind": "lemma",
  "lexical_name": "NormedAddCommGroup.completeSpace_of_summable_imp_tendsto",
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
  "slug": "normedaddcommgroup-completespace-of-summable-imp-tendsto--3a76b949eba86cb801d93cd2",
  "source": {
    "blob": "e53901bd3ba7707de4fe02512367c293bfddb05e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 55,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a76b949eba86cb801d93cd294ff83bf38e246fda8d279425e7e1caa3049cf3e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9164a7c-55a3-aeb2-eef2-5c5559fe56ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NormedAddCommGroup.completeSpace_of_summable_imp_tendsto
    (h : ∀ u : ℕ → E,
      Summable (‖u ·‖) → ∃ a, Tendsto (fun n => ∑ i ∈ range n, u i) atTop (𝓝 a)) :
    CompleteSpace E := by
  apply Metric.complete_of_cauchySeq_tendsto
  intro u hu
  obtain ⟨f, hf₁, hf₂⟩ := Metric.exists_subseq_summable_dist_of_cauchySeq u hu
  simp only [dist_eq_norm] at hf₂
  let v n := u (f (n+1)) - u (f n)
  have hv_sum : (fun n => (∑ i ∈ range n, v i)) = fun n => u (f n) - u (f 0) := by
    ext n
    exact sum_range_sub (u ∘ f) n
  obtain ⟨a, ha⟩ := h v hf₂
  refine ⟨a + u (f 0), ?_⟩
  refine tendsto_nhds_of_cauchySeq_of_subseq hu hf₁.tendsto_atTop ?_
  rw [hv_sum] at ha
  have h₁ : Tendsto (fun n => u (f n) - u (f 0) + u (f 0)) atTop (𝓝 (a + u (f 0))) :=
    Tendsto.add_const _ ha
  simpa only [sub_add_cancel] using h₁

/-- In a complete normed additive group, every absolutely convergent series converges in the
space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Completeness/Variant52c31653a9255eeba5e9ab9e4e0ded6b88d93c787bc8b54e8a080fe197b4c5ad.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e53901bd3ba7707de4fe02512367c293bfddb05e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
