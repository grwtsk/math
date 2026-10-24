# connectedComponent_eq_iInter_clopen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef960cf7-f5b4-4bf1-0750-b33550d40bc1",
  "kind": "theorem",
  "lexical_name": "connectedComponent_eq_iInter_clopen",
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
  "slug": "connectedcomponent-eq-iinter-clopen--7a4de9245727932c27e7734a",
  "source": {
    "blob": "48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1970,
    "line": 1912,
    "path": "GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a4de9245727932c27e7734a833a26d6698a00f42b0efd8484b2bbd6a6e4343a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef960cf7-f5b4-4bf1-0750-b33550d40bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1912–1970.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem connectedComponent_eq_iInter_clopen [T2Space α] [CompactSpace α] (x : α) :
    connectedComponent x = ⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, Z := by
  apply Subset.antisymm connectedComponent_subset_iInter_clopen
  -- Reduce to showing that the clopen intersection is connected.
  refine' IsPreconnected.subset_connectedComponent _ (mem_iInter.2 fun Z => Z.2.2)
  -- We do this by showing that any disjoint cover by two closed sets implies
  -- that one of these closed sets must contain our whole thing.
  -- To reduce to the case where the cover is disjoint on all of `α` we need that `s` is closed
  have hs : @IsClosed α _ (⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, Z) :=
    isClosed_iInter fun Z => Z.2.1.2
  rw [isPreconnected_iff_subset_of_fully_disjoint_closed hs]
  intro a b ha hb hab ab_disj
  haveI := @normalOfCompactT2 α _ _ _
  -- Since our space is normal, we get two larger disjoint open sets containing the disjoint
  -- closed sets. If we can show that our intersection is a subset of any of these we can then
  -- "descend" this to show that it is a subset of either a or b.
  rcases normal_separation ha hb ab_disj with ⟨u, v, hu, hv, hau, hbv, huv⟩
  obtain ⟨Z, H⟩ : ∃ Z : Set α, IsClopen Z ∧ x ∈ Z ∧ Z ⊆ u ∪ v

  /- Now we find a clopen set `Z` around `x`, contained in `u ∪ v`. We utilize the fact that
  `X \ u ∪ v` will be compact, so there must be some finite intersection of clopen neighbourhoods of
  `X` disjoint to it, but a finite intersection of clopen sets is clopen so we let this be our
  `Z`. -/
  · have H1 := (hu.union hv).isClosed_compl.isCompact.inter_iInter_nonempty
      (fun Z : { Z : Set α // IsClopen Z ∧ x ∈ Z } => Z) fun Z => Z.2.1.2
    rw [← not_disjoint_iff_nonempty_inter, imp_not_comm, not_forall] at H1
    cases' H1 (disjoint_compl_left_iff_subset.2 <| hab.trans <| union_subset_union hau hbv)
      with Zi H2
    refine' ⟨⋂ U ∈ Zi, Subtype.val U, _, _, _⟩
    · exact isClopen_biInter_finset fun Z _ => Z.2.1
    · exact mem_iInter₂.2 fun Z _ => Z.2.2
    · rwa [← disjoint_compl_left_iff_subset, disjoint_iff_inter_eq_empty,
        ← not_nonempty_iff_eq_empty]
  -- So, we get a disjoint decomposition `Z = Z ∩ u ∪ Z ∩ v` of clopen sets. The intersection of all
  -- clopen neighbourhoods will then lie in whichever of u or v x lies in and hence will be a subset
  -- of either a or b.
  · have H1 := isClopen_inter_of_disjoint_cover_clopen H.1 H.2.2 hu hv huv
    rw [union_comm] at H
    have H2 := isClopen_inter_of_disjoint_cover_clopen H.1 H.2.2 hv hu huv.symm
    by_cases hxu : x ∈ u <;> [left; right]
    -- The x ∈ u case.
    · suffices ⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, ↑Z ⊆ u
        from Disjoint.left_le_of_le_sup_right hab (huv.mono this hbv)
      · apply Subset.trans _ (inter_subset_right Z u)
        exact iInter_subset (fun Z : { Z : Set α // IsClopen Z ∧ x ∈ Z } => Z.1)
          ⟨Z ∩ u, H1, mem_inter H.2.1 hxu⟩
    -- If x ∉ u, we get x ∈ v since x ∈ u ∪ v. The rest is then like the x ∈ u case.
    · have h1 : x ∈ v :=
        (hab.trans (union_subset_union hau hbv) (mem_iInter.2 fun i => i.2.2)).resolve_left hxu
      suffices ⋂ Z : { Z : Set α // IsClopen Z ∧ x ∈ Z }, ↑Z ⊆ v
        from (huv.symm.mono this hau).left_le_of_le_sup_left hab
      · refine Subset.trans ?_ (inter_subset_right Z v)
        exact iInter_subset (fun Z : { Z : Set α // IsClopen Z ∧ x ∈ Z } => Z.1)
          ⟨Z ∩ v, H2, mem_inter H.2.1 h1⟩
#align connected_component_eq_Inter_clopen connectedComponent_eq_iInter_clopen

section Profinite

/-- A T1 space with a clopen basis is totally separated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Separation/Variant949605514a678cc4012f1b3f4f20c672cebda66a1ed322cb4bc64591fde0955c.lean#L1912).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e4761a1d4f1e3a46cd7c2bd83b5a0a7b227c9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
