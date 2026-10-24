# countable_setOfPred_covBy_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2a6d413ad1c02252c0c69261cf5761e95af1cec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 569,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a06c9d71-b2c9-d55b-b49e-08daa7e8a019",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fe8d2af-1d6a-00cc-7525-9dd99d7cd628",
  "kind": "theorem",
  "lexical_name": "countable_setOfPred_covBy_right",
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
  "slug": "countable-setofpred-covby-right--0853caa7164d18af3aad7870",
  "source": {
    "blob": "a2a6d413ad1c02252c0c69261cf5761e95af1cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 569,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0853caa7164d18af3aad7870e371a15310b8e6b2d300f79d037ec4a2ccce3727",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fe8d2af-1d6a-00cc-7525-9dd99d7cd628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 569–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_setOfPred_covBy_right [SecondCountableTopology α] :
    Set.Countable { x : α | ∃ y, x ⋖ y } := by
  nontriviality α
  let s := { x : α | ∃ y, x ⋖ y }
  have : ∀ x ∈ s, ∃ y, x ⋖ y := fun x => id
  choose! y hy using this
  have Hy : ∀ x z, x ∈ s → z < y x → z ≤ x := fun x z hx => (hy x hx).le_of_lt
  suffices H : ∀ a : Set α, IsOpen a → Set.Countable { x | x ∈ s ∧ x ∈ a ∧ y x ∉ a } by
    have : s ⊆ ⋃ a ∈ countableBasis α, { x | x ∈ s ∧ x ∈ a ∧ y x ∉ a } := fun x hx => by
      rcases (isBasis_countableBasis α).exists_mem_of_ne (hy x hx).ne with ⟨a, ab, xa, ya⟩
      exact mem_iUnion₂.2 ⟨a, ab, hx, xa, ya⟩
    refine Set.Countable.mono this ?_
    refine Countable.biUnion (countable_countableBasis α) fun a ha => H _ ?_
    exact isOpen_of_mem_countableBasis ha
  intro a ha
  suffices H : Set.Countable { x | (x ∈ s ∧ x ∈ a ∧ y x ∉ a) ∧ ¬IsBot x } from
    H.of_sdiff (subsingleton_isBot α).countable
  simp only [and_assoc]
  let t := { x | x ∈ s ∧ x ∈ a ∧ y x ∉ a ∧ ¬IsBot x }
  have : ∀ x ∈ t, ∃ z < x, Ioc z x ⊆ a := by
    intro x hx
    apply exists_Ioc_subset_of_mem_nhds (ha.mem_nhds hx.2.1)
    simpa only [IsBot, not_forall, not_le] using hx.right.right.right
  choose! z hz h'z using this
  have : PairwiseDisjoint t fun x => Ioc (z x) x := fun x xt x' x't hxx' => by
    rcases hxx'.lt_or_gt with (h' | h')
    · refine disjoint_left.2 fun u ux ux' => xt.2.2.1 ?_
      refine h'z x' x't ⟨ux'.1.trans_le (ux.2.trans (hy x xt.1).le), ?_⟩
      by_contra! H
      exact lt_irrefl _ ((Hy _ _ xt.1 H).trans_lt h')
    · refine disjoint_left.2 fun u ux ux' => x't.2.2.1 ?_
      refine h'z x xt ⟨ux.1.trans_le (ux'.2.trans (hy x' x't.1).le), ?_⟩
      by_contra! H
      exact lt_irrefl _ ((Hy _ _ x't.1 H).trans_lt h')
  refine this.countable_of_isOpen (fun x hx => ?_) fun x hx => ⟨x, hz x hx, le_rfl⟩
  suffices H : Ioc (z x) x = Ioo (z x) (y x) by rw [H]; exact isOpen_Ioo
  apply (Ioc_subset_Ioo_right (hy x hx.1).lt).antisymm
  simp_rw [subset_def, mem_Ioo, mem_Ioc]
  exact fun u hu ↦ ⟨hu.1, Hy _ _ hx.1 hu.2⟩

@[deprecated (since := "2026-07-09")] alias countable_setOf_covBy_right :=
  countable_setOfPred_covBy_right

@[deprecated (since := "2026-07-09")] alias countable_setOf_covBy_left :=
  countable_setOfPred_covBy_left

/-- The set of points which are isolated on the left is countable when the space is
second-countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant70041d69776fc6d4a8c15c7c9da1b6c01b11fe8d3194ca7aebccebec539c7db2.lean#L569).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2a6d413ad1c02252c0c69261cf5761e95af1cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
