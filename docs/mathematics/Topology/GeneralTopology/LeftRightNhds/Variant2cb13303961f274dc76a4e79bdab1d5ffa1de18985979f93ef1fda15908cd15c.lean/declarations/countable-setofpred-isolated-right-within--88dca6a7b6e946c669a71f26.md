# countable_setOfPred_isolated_right_within

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f334435-b01c-356b-e62a-e0f84ea714e2",
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
  "slug": "countable-setofpred-isolated-right-within--88dca6a7b6e946c669a71f26",
  "source": {
    "blob": "d7b16aa2e126a28d590b4725543080800f86dd9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88dca6a7b6e946c669a71f263716d9f6220fbb8f648cba03d293ed5a86574ec1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f334435-b01c-356b-e62a-e0f84ea714e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–180.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variant2cb13303961f274dc76a4e79bdab1d5ffa1de18985979f93ef1fda15908cd15c.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7b16aa2e126a28d590b4725543080800f86dd9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
