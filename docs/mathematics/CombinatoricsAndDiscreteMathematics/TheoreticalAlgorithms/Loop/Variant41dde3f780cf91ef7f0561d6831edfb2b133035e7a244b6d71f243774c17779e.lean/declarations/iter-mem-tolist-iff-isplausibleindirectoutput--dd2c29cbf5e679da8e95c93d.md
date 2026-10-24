# Iter.mem_toList_iff_isPlausibleIndirectOutput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecc91814-ccc8-f296-dfde-06c7f79a280d",
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
  "slug": "iter-mem-tolist-iff-isplausibleindirectoutput--dd2c29cbf5e679da8e95c93d",
  "source": {
    "blob": "a554251c59f45781c3037de3033e14a5093aea5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd2c29cbf5e679da8e95c93dbb765ac2165645c8eb3d9a2ee8254d033b82af75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc91814-ccc8-f296-dfde-06c7f79a280d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–229.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Loop/Variant41dde3f780cf91ef7f0561d6831edfb2b133035e7a244b6d71f243774c17779e.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a554251c59f45781c3037de3033e14a5093aea5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
