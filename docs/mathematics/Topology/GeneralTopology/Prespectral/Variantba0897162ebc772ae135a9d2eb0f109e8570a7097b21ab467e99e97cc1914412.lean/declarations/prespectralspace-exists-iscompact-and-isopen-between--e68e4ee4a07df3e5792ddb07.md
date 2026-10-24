# PrespectralSpace.exists_isCompact_and_isOpen_between

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9812b00807feedcbadd596237523f407f1d73ca0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4e46dd5-65ef-a322-8469-bd175d1cd869",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:428bb47d-9c78-d4d2-f8aa-48947a41f4ac",
  "kind": "lemma",
  "lexical_name": "PrespectralSpace.exists_isCompact_and_isOpen_between",
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
  "slug": "prespectralspace-exists-iscompact-and-isopen-between--e68e4ee4a07df3e5792ddb07",
  "source": {
    "blob": "9812b00807feedcbadd596237523f407f1d73ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e68e4ee4a07df3e5792ddb0726859c5e57312ebe4afab4617bab33d5eb286289",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:428bb47d-9c78-d4d2-f8aa-48947a41f4ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma PrespectralSpace.exists_isCompact_and_isOpen_between [PrespectralSpace X] {K U : Set X}
    (hK : IsCompact K) (hU : IsOpen U) (hKU : K ⊆ U) :
    ∃ (W : Set X), IsCompact W ∧ IsOpen W ∧ K ⊆ W ∧ W ⊆ U := by
  refine hK.induction_on ⟨∅, by simp⟩ (fun s t hst ⟨W, Wc, Wo, hKW, hWU⟩ ↦ ?_) ?_ ?_
  · use W, Wc, Wo, subset_trans hst hKW, hWU
  · intro s t ⟨W₁, Wc₁, Wo₁, hKW₁, hWU₁⟩ ⟨W₂, Wc₂, Wo₂, hKW₂, hWU₂⟩
    exact ⟨W₁ ∪ W₂, Wc₁.union Wc₂, Wo₁.union Wo₂, Set.union_subset_union hKW₁ hKW₂,
      Set.union_subset hWU₁ hWU₂⟩
  · intro x hx
    obtain ⟨V, h, hxV, hVU⟩ :=
      PrespectralSpace.isTopologicalBasis.exists_subset_of_mem_open (hKU hx) hU
    exact ⟨V, mem_nhdsWithin.mpr ⟨V, h.1, hxV, Set.inter_subset_left⟩, V, h.2, h.1, subset_rfl, hVU⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9812b00807feedcbadd596237523f407f1d73ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
