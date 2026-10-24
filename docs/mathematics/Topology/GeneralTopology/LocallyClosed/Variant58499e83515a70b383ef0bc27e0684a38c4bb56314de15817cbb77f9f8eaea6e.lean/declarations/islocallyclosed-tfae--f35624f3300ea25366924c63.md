# isLocallyClosed_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05a148ad12e4c118a2e944f1c90e5f8efed0bec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9004446d-0852-8cd3-0b19-4ad5d4603a15",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:937c02cb-fe25-f6cf-8cd8-b112412fcff1",
  "kind": "lemma",
  "lexical_name": "isLocallyClosed_tfae",
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
  "slug": "islocallyclosed-tfae--f35624f3300ea25366924c63",
  "source": {
    "blob": "05a148ad12e4c118a2e944f1c90e5f8efed0bec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f35624f3300ea25366924c637354e0d016b3229f6d4701b24fdddcad50d4bfd2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:937c02cb-fe25-f6cf-8cd8-b112412fcff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyClosed_tfae (s : Set X) :
    List.TFAE
    [ IsLocallyClosed s,
      IsOpen (coborder s),
      ∀ x ∈ s, ∃ U ∈ 𝓝 x, IsClosed (U ↓∩ s),
      ∀ x ∈ s, ∃ U, x ∈ U ∧ IsOpen U ∧ U ∩ closure s ⊆ s,
      IsOpen (closure s ↓∩ s)] := by
  tfae_have 1 → 2 := by
    rintro ⟨U, Z, hU, hZ, rfl⟩
    have : Z ∪ (frontier (U ∩ Z))ᶜ = univ := by
      nth_rw 1 [← hZ.closure_eq]
      rw [← compl_subset_iff_union, compl_subset_compl]
      refine frontier_subset_closure.trans (closure_mono inter_subset_right)
    rw [coborder_eq_union_frontier_compl, inter_union_distrib_right, this,
      inter_univ]
    exact hU.union isClosed_frontier.isOpen_compl
  tfae_have 2 → 3
  | h, x => (⟨coborder s, h.mem_nhds <| subset_coborder ·, isClosed_preimage_val_coborder⟩)
  tfae_have 3 → 4
  | h, x, hx => by
    obtain ⟨t, ht, ht'⟩ := h x hx
    obtain ⟨U, hUt, hU, hxU⟩ := mem_nhds_iff.mp ht
    rw [isClosed_preimage_val] at ht'
    exact ⟨U, hxU, hU, (subset_inter (inter_subset_left.trans hUt) (hU.inter_closure.trans
      (closure_mono <| inter_subset_inter hUt subset_rfl))).trans ht'⟩
  tfae_have 4 → 5
  | H => by
    choose U hxU hU e using H
    refine ⟨⋃ x ∈ s, U x ‹_›, isOpen_iUnion (isOpen_iUnion <| hU ·), ext fun x ↦ ⟨?_, ?_⟩⟩
    · rintro ⟨_, ⟨⟨y, rfl⟩, ⟨_, ⟨hy, rfl⟩, hxU⟩⟩⟩
      exact e y hy ⟨hxU, x.2⟩
    · exact (subset_iUnion₂ _ _ <| hxU x ·)
  tfae_have 5 → 1
  | H => by
    convert H.isLocallyClosed.image IsInducing.subtypeVal
      (by simpa using isClosed_closure.isLocallyClosed)
    simpa using subset_closure
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant58499e83515a70b383ef0bc27e0684a38c4bb56314de15817cbb77f9f8eaea6e.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05a148ad12e4c118a2e944f1c90e5f8efed0bec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
