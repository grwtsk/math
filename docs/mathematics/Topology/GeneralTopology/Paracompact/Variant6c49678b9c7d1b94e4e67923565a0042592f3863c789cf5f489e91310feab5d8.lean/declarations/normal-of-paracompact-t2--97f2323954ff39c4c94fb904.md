# normal_of_paracompact_t2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38be5f3fa4708dbebb99bae63054faca56658191",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d707f439-fedf-6f05-0d26-1cd1cf745d21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5e31391-b23f-340e-7004-4e705dcc330a",
  "kind": "theorem",
  "lexical_name": "normal_of_paracompact_t2",
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
  "slug": "normal-of-paracompact-t2--97f2323954ff39c4c94fb904",
  "source": {
    "blob": "38be5f3fa4708dbebb99bae63054faca56658191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 292,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97f2323954ff39c4c94fb9041e81c563f40b6396b047b02c1b8abf48ed00cb43",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5e31391-b23f-340e-7004-4e705dcc330a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normal_of_paracompact_t2 [T2Space X] [ParacompactSpace X] : NormalSpace X := by
  -- First we show how to go from points to a set on one side.
  have : ∀ s t : Set X, IsClosed s → IsClosed t →
      (∀ x ∈ s, ∃ u v, IsOpen u ∧ IsOpen v ∧ x ∈ u ∧ t ⊆ v ∧ Disjoint u v) →
      ∃ u v, IsOpen u ∧ IsOpen v ∧ s ⊆ u ∧ t ⊆ v ∧ Disjoint u v := by
    /- For each `x ∈ s` we choose open disjoint `u x ∋ x` and `v x ⊇ t`. The sets `u x` form an
        open covering of `s`. We choose a locally finite refinement `u' : s → Set X`, then
        `⋃ i, u' i` and `(closure (⋃ i, u' i))ᶜ` are disjoint open neighborhoods of `s` and `t`. -/
    intro s t hs _ H
    choose u v hu hv hxu htv huv using SetCoe.forall'.1 H
    rcases precise_refinement_set hs u hu fun x hx ↦ mem_iUnion.2 ⟨⟨x, hx⟩, hxu _⟩ with
      ⟨u', hu'o, hcov', hu'fin, hsub⟩
    refine' ⟨⋃ i, u' i, (closure (⋃ i, u' i))ᶜ, isOpen_iUnion hu'o, isClosed_closure.isOpen_compl,
      hcov', _, disjoint_compl_right.mono le_rfl (compl_le_compl subset_closure)⟩
    rw [hu'fin.closure_iUnion, compl_iUnion, subset_iInter_iff]
    refine' fun i x hxt hxu ↦
      absurd (htv i hxt) (closure_minimal _ (isClosed_compl_iff.2 <| hv _) hxu)
    exact fun y hyu hyv ↦ (huv i).le_bot ⟨hsub _ hyu, hyv⟩
  -- Now we apply the lemma twice: first to `s` and `t`, then to `t` and each point of `s`.
  refine' ⟨fun s t hs ht hst ↦ this s t hs ht fun x hx ↦ _⟩
  rcases this t {x} ht isClosed_singleton fun y hy ↦ (by
    simp_rw [singleton_subset_iff]
    exact t2_separation (hst.symm.ne_of_mem hy hx))
    with ⟨v, u, hv, hu, htv, hxu, huv⟩
  exact ⟨u, v, hu, hv, singleton_subset_iff.1 hxu, htv, huv.symm⟩
#align normal_of_paracompact_t2 normal_of_paracompact_t2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38be5f3fa4708dbebb99bae63054faca56658191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
