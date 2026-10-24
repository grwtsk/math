# countable_setOfPred_isolated_right_within

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e9fd6d724f36ef20986144bfe3a1b20895c83bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd1a999f-2bdb-9521-773f-bd6107470446",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d4464c6-6c2f-3ff7-ba5c-eee2bd367ef4",
  "kind": "theorem",
  "lexical_name": "countable_setOfPred_isolated_right_within",
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
  "slug": "countable-setofpred-isolated-right-within--61b7d7b7d60edb4fc1958258",
  "source": {
    "blob": "2e9fd6d724f36ef20986144bfe3a1b20895c83bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61b7d7b7d60edb4fc195825854a3518120cab7ac07160f97cd55f10b91e9858a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d4464c6-6c2f-3ff7-ba5c-eee2bd367ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem countable_setOfPred_isolated_right_within [SecondCountableTopology α] {s : Set α} :
    { x ∈ s | 𝓝[s ∩ Ioi x] x = ⊥ }.Countable := by
  /- This does not follow from `countable_setOfPred_isolated_right`, which gives the result when `s`
  is the whole space, as one cannot use it inside the subspace since it doesn't have the order
  topology. Instead, we follow the main steps of its proof. -/
  let t := { x ∈ s | 𝓝[s ∩ Ioi x] x = ⊥ ∧ ¬ IsTop x}
  suffices H : t.Countable by
    have : { x ∈ s | 𝓝[s ∩ Ioi x] x = ⊥ } ⊆ t ∪ {x | IsTop x} := by
      intro x hx
      by_cases h'x : IsTop x
      · simp [h'x]
      · simpa [-sep_and, t, h'x]
    apply Countable.mono this
    simp [H, (subsingleton_isTop α).countable]
  have (x) (hx : x ∈ t) : ∃ y > x, s ∩ Ioo x y = ∅ := by
    simp only [← empty_mem_iff_bot, mem_nhdsWithin_iff_exists_mem_nhds_inter,
      subset_empty_iff, IsTop, not_forall, not_le, mem_ofPred_eq, t] at hx
    rcases hx.2.1 with ⟨u, hu, h'u⟩
    obtain ⟨y, hxy, hy⟩ : ∃ y, x < y ∧ Ico x y ⊆ u := exists_Ico_subset_of_mem_nhds hu hx.2.2
    refine ⟨y, hxy, ?_⟩
    contrapose! h'u
    apply h'u.mono
    intro z hz
    exact ⟨hy ⟨hz.2.1.le, hz.2.2⟩, hz.1, hz.2.1⟩
  choose! y hy h'y using this
  apply Set.PairwiseDisjoint.countable_of_Ioo (y := y) _ hy
  simp only [PairwiseDisjoint, Set.Pairwise, Function.onFun]
  intro a ha b hb hab
  wlog! H : a < b generalizing a b with h
  · have : b < a := lt_of_le_of_ne H hab.symm
    exact (h hb ha hab.symm this).symm
  have : y a ≤ b := by
    by_contra!
    have : b ∈ s ∩ Ioo a (y a) := by simp [hb.1, H, this]
    simp [h'y a ha] at this
  rw [disjoint_iff_forall_ne]
  exact fun u hu v hv ↦ ((hu.2.trans_le this).trans hv.1).ne

@[deprecated (since := "2026-07-09")]
alias countable_setOf_isolated_right_within := countable_setOfPred_isolated_right_within

/-- The set of points in a set which are isolated on the left in this set is countable when the
space is second-countable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant1c8eec44cfb3f40aafeb92630f7ad4e9f78851c5520f17a7e30eda205de0cca0.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e9fd6d724f36ef20986144bfe3a1b20895c83bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
