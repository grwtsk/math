# IsLocallyConstructible.isConstructible_of_subset_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97b75b14b02033ef3d206a9f27720ec1b71f72ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:040e1750-ce70-3a77-c23f-e6a4a482c281",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb2f8b68-948e-dc81-416a-a435a83f44d8",
  "kind": "lemma",
  "lexical_name": "IsLocallyConstructible.isConstructible_of_subset_of_isCompact",
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
  "slug": "islocallyconstructible-isconstructible-of-subset-of-iscompact--fa51f7a795f8c1342141d3c4",
  "source": {
    "blob": "97b75b14b02033ef3d206a9f27720ec1b71f72ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 446,
    "path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa51f7a795f8c1342141d3c4ffe4be7cd1f0b4ef036ee5b2254d8a6778d855c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb2f8b68-948e-dc81-416a-a435a83f44d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocallyConstructible.isConstructible_of_subset_of_isCompact
    [PrespectralSpace X] [QuasiSeparatedSpace X]
    (hs : IsLocallyConstructible s) (hst : s ⊆ t) (ht : IsCompact t) :
    IsConstructible s := by
  have (x) : ∃ U, IsOpen U ∧ IsCompact U ∧ x ∈ U ∧ IsConstructible (U ∩ s) :=
    have ⟨U, hxU, hU, hUs⟩ := hs x
    have ⟨V, ⟨hV₁, hV₂⟩, hxV, hVU⟩ := PrespectralSpace.isTopologicalBasis.mem_nhds_iff.mp hxU
    have : IsConstructible (V ↓∩ s) :=
      (hUs.preimage_of_isOpenEmbedding (IsOpenEmbedding.id.restrict hVU hV₁):)
    have : IsConstructible (V ∩ s) := by
      have := this.image_of_isOpenEmbedding hV₁.isOpenEmbedding_subtypeVal
        (by simpa using hV₂.isRetrocompact hV₁)
      rwa [Subtype.image_preimage_coe] at this
    ⟨V, hV₁, hV₂, hxV, this⟩
  choose U hU hU' hxU hUs using this
  obtain ⟨σ, hσ, htσ⟩ := ht.elim_nhds_subcover U (fun x _ ↦ (hU x).mem_nhds (hxU x))
  convert IsConstructible.biUnion σ.finite_toSet (fun x _ ↦ hUs x)
  apply subset_antisymm
  · rw [← Set.iUnion₂_inter, Set.subset_inter_iff]
    exact ⟨hst.trans htσ, subset_rfl⟩
  · exact Set.iUnion₂_subset fun _ _ ↦ Set.inter_subset_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97b75b14b02033ef3d206a9f27720ec1b71f72ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
