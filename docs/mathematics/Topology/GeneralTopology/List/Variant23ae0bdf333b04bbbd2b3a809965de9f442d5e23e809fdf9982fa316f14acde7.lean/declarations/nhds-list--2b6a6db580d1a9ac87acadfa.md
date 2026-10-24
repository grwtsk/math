# nhds_list

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cdf2650c9105a6a4dc607b2e612cb802fd8f273",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3adeacf6-5780-a1db-583b-b41dce379bbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb9cd54d-d51d-353c-a912-a85afc919873",
  "kind": "theorem",
  "lexical_name": "nhds_list",
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
  "slug": "nhds-list--2b6a6db580d1a9ac87acadfa",
  "source": {
    "blob": "5cdf2650c9105a6a4dc607b2e612cb802fd8f273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 26,
    "path": "GRWTSK/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b6a6db580d1a9ac87acadfafabb15bff7d4e1b2cf38fc96ce0d41e0323a6e7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb9cd54d-d51d-353c-a912-a85afc919873`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nhds_list (as : List α) : 𝓝 as = traverse 𝓝 as := by
  refine nhds_mkOfNhds _ _ ?_ ?_
  · intro l
    induction l with
    | nil => exact le_rfl
    | cons a l ih =>
      suffices List.cons <$> pure a <*> pure l ≤ List.cons <$> 𝓝 a <*> traverse 𝓝 l by
        simpa only [functor_norm] using this
      exact Filter.seq_mono (Filter.map_mono <| pure_le_nhds a) ih
  · intro l s hs
    rcases (mem_traverse_iff _ _).1 hs with ⟨u, hu, hus⟩
    clear as hs
    have : ∃ v : List (Set α), l.Forall₂ (fun a s => IsOpen s ∧ a ∈ s) v ∧ sequence v ⊆ s := by
      induction hu generalizing s with
      | nil =>
        exists []
        simp only [List.forall₂_nil_left_iff, exists_eq_left]
        exact ⟨trivial, hus⟩
      | cons ht _ ih =>
        rcases mem_nhds_iff.1 ht with ⟨u, hut, hu⟩
        rcases ih _ Subset.rfl with ⟨v, hv, hvss⟩
        exact
          ⟨u::v, List.Forall₂.cons hu hv,
            Subset.trans (Set.seq_mono (Set.image_subset _ hut) hvss) hus⟩
    rcases this with ⟨v, hv, hvs⟩
    have : sequence v ∈ traverse 𝓝 l :=
      mem_traverse _ _ <| hv.imp fun a s ⟨hs, ha⟩ => IsOpen.mem_nhds hs ha
    refine mem_of_superset this fun u hu ↦ ?_
    have hu := (List.mem_traverse _ _).1 hu
    have : List.Forall₂ (fun a s => IsOpen s ∧ a ∈ s) u v := by
      refine List.Forall₂.flip ?_
      replace hv := hv.flip
      simp only [List.forall₂_and_left, Function.flip_def] at hv ⊢
      exact ⟨hv.1, hu.flip⟩
    refine mem_of_superset ?_ hvs
    exact mem_traverse _ _ (this.imp fun a s ⟨hs, ha⟩ => IsOpen.mem_nhds hs ha)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cdf2650c9105a6a4dc607b2e612cb802fd8f273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
