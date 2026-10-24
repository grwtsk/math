# Iter.mem_toList_iff_isPlausibleIndirectOutput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92acd4bd9fd33431483f0b676259dc3911c2db2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc4c1c5869a88df8f26c737242d4bac6cab0b4e627fb76c43a08dc40c969b972.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb65e407-44c6-d031-db65-cc1e6707c8bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdbe4e92-17cd-b559-6aee-bfc488ccb367",
  "kind": "theorem",
  "lexical_name": "Iter.mem_toList_iff_isPlausibleIndirectOutput",
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
  "slug": "iter-mem-tolist-iff-isplausibleindirectoutput--0f45fbdc5fc197607794dffc",
  "source": {
    "blob": "92acd4bd9fd33431483f0b676259dc3911c2db2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 176,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantfc4c1c5869a88df8f26c737242d4bac6cab0b4e627fb76c43a08dc40c969b972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f45fbdc5fc197607794dffc257cb39645852d6457411d1b471a577eaaa7d027",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantfc4c1c5869a88df8f26c737242d4bac6cab0b4e627fb76c43a08dc40c969b972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdbe4e92-17cd-b559-6aee-bfc488ccb367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.mem_toList_iff_isPlausibleIndirectOutput {α β} [Iterator α Id β]
    [Finite α Id] [LawfulDeterministicIterator α Id]
    {it : Iter (α := α) β} {out : β} :
    out ∈ it.toList ↔ it.IsPlausibleIndirectOutput out := by
  induction it using Iter.inductSteps with | step it ihy ihs
  rw [toList_eq_match_step]
  constructor
  · intro h
    cases heq : it.step using PlausibleIterStep.casesOn <;> simp only [heq] at h
    · rename_i it' out hp
      cases List.mem_cons.mp h <;> rename_i hmem
      · cases hmem
        simp only [Iter.IsPlausibleStep, IterStep.mapIterator_yield] at hp
        exact Iter.IsPlausibleIndirectOutput.direct ⟨_, hp⟩
      · apply Iter.IsPlausibleIndirectOutput.indirect
        · exact ⟨_, rfl, ‹_›⟩
        · exact (ihy ‹_›).mp hmem
    · apply Iter.IsPlausibleIndirectOutput.indirect
      · exact ⟨_, rfl, ‹_›⟩
      · exact (ihs ‹_›).mp h
    · cases h
  · intro hp
    cases hp
    · rename_i hp
      simp only [Iter.isPlausibleOutput_iff_exists, Iter.isPlausibleStep_iff_step_eq] at hp
      obtain ⟨it', hp⟩ := hp
      split <;> simp_all
    · rename_i it' h₁ h₂
      cases heq : it.step using PlausibleIterStep.casesOn <;> simp only
      · apply List.mem_cons_of_mem
        simp only [Iter.isPlausibleSuccessorOf_iff_exists, Iter.isPlausibleStep_iff_step_eq] at h₁
        obtain ⟨step, h₁, rfl⟩ := h₁
        simp only [heq, IterStep.successor, Option.some.injEq] at h₁
        cases h₁
        simp only [ihy ‹_›]
        exact h₂
      · simp only [Iter.isPlausibleSuccessorOf_iff_exists, Iter.isPlausibleStep_iff_step_eq] at h₁
        obtain ⟨step, h₁, rfl⟩ := h₁
        simp only [heq, IterStep.successor, Option.some.injEq] at h₁
        cases h₁
        rw [ihs ‹_›]
        exact h₂
      · simp only [Iter.isPlausibleSuccessorOf_iff_exists, Iter.isPlausibleStep_iff_step_eq] at h₁
        obtain ⟨step, h₁, rfl⟩ := h₁
        simp [heq, IterStep.successor] at h₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantfc4c1c5869a88df8f26c737242d4bac6cab0b4e627fb76c43a08dc40c969b972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variantfc4c1c5869a88df8f26c737242d4bac6cab0b4e627fb76c43a08dc40c969b972.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92acd4bd9fd33431483f0b676259dc3911c2db2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
