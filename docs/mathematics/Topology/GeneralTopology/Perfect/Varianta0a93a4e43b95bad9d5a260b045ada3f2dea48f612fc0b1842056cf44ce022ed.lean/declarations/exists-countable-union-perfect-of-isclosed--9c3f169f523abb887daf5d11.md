# exists_countable_union_perfect_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "418558263984922713fc09516ef04cf7ad42b9e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9413208f-3411-8aa1-35df-f97d8ac738e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec8d0fa9-a24e-d694-f032-f56d5ceb7a35",
  "kind": "theorem",
  "lexical_name": "exists_countable_union_perfect_of_isClosed",
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
  "slug": "exists-countable-union-perfect-of-isclosed--9c3f169f523abb887daf5d11",
  "source": {
    "blob": "418558263984922713fc09516ef04cf7ad42b9e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 197,
    "path": "GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c3f169f523abb887daf5d11d53ccfd7df4583ce6b5a2e611f5abf3dd3189437",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec8d0fa9-a24e-d694-f032-f56d5ceb7a35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_countable_union_perfect_of_isClosed [SecondCountableTopology α]
    (hclosed : IsClosed C) : ∃ V D : Set α, V.Countable ∧ Perfect D ∧ C = V ∪ D := by
  obtain ⟨b, bct, _, bbasis⟩ := TopologicalSpace.exists_countable_basis α
  let v := { U ∈ b | (U ∩ C).Countable }
  let V := ⋃ U ∈ v, U
  let D := C \ V
  have Vct : (V ∩ C).Countable := by
    simp only [V, iUnion_inter, mem_sep_iff]
    apply Countable.biUnion
    · exact Countable.mono inter_subset_left bct
    · exact inter_subset_right
  refine ⟨V ∩ C, D, Vct, ⟨?_, ?_⟩, ?_⟩
  · refine hclosed.sdiff (isOpen_biUnion fun _ ↦ ?_)
    exact fun ⟨Ub, _⟩ ↦ IsTopologicalBasis.isOpen bbasis Ub
  · rw [preperfect_iff_nhds]
    intro x xD E xE
    have : ¬(E ∩ D).Countable := by
      intro h
      obtain ⟨U, hUb, xU, hU⟩ : ∃ U ∈ b, x ∈ U ∧ U ⊆ E :=
        (IsTopologicalBasis.mem_nhds_iff bbasis).mp xE
      have hU_cnt : (U ∩ C).Countable := by
        apply @Countable.mono _ _ (E ∩ D ∪ V ∩ C)
        · rintro y ⟨yU, yC⟩
          by_cases h : y ∈ V
          · exact mem_union_right _ (mem_inter h yC)
          · exact mem_union_left _ (mem_inter (hU yU) ⟨yC, h⟩)
        exact Countable.union h Vct
      have : U ∈ v := ⟨hUb, hU_cnt⟩
      apply xD.2
      exact mem_biUnion this xU
    by_contra! h
    exact absurd (Countable.mono h (Set.countable_singleton _)) this
  · rw [inter_comm, inter_union_diff]

/-- Any uncountable closed set in a second countable space contains a nonempty perfect subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `418558263984922713fc09516ef04cf7ad42b9e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
