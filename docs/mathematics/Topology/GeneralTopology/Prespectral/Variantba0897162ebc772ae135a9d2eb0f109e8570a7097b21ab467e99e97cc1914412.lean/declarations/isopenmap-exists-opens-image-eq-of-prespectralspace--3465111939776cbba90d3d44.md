# IsOpenMap.exists_opens_image_eq_of_prespectralSpace

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
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2b39d03-e20f-4c9e-1f6c-f8bf44f5e032",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79e71ea1-6546-4bf1-2f09-f10bbcb7faf1",
  "kind": "lemma",
  "lexical_name": "IsOpenMap.exists_opens_image_eq_of_prespectralSpace",
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
  "slug": "isopenmap-exists-opens-image-eq-of-prespectralspace--3465111939776cbba90d3d44",
  "source": {
    "blob": "9812b00807feedcbadd596237523f407f1d73ca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3465111939776cbba90d3d444d11ba102ec1dfdf8ab0b59db2a89a0154793b1c",
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

Occurrence: `result:79e71ea1-6546-4bf1-2f09-f10bbcb7faf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsOpenMap.exists_opens_image_eq_of_prespectralSpace [PrespectralSpace X] {f : X → Y}
    (hfc : Continuous f) (h : IsOpenMap f) {U : Set Y} (hs : U ⊆ Set.range f) (hU : IsOpen U)
    (hc : IsCompact U) : ∃ (V : Opens X), IsCompact V.1 ∧ f '' V = U := by
  obtain ⟨Us, hUs, heq⟩ := TopologicalSpace.Opens.isBasis_iff_cover.mp
    (PrespectralSpace.isBasis_opens X) ⟨f ⁻¹' U, hU.preimage hfc⟩
  obtain ⟨t, ht⟩ := by
    refine hc.elim_finite_subcover (fun s : Us ↦ f '' s.1) (fun s ↦ h _ s.1.2) (fun x hx ↦ ?_)
    obtain ⟨x, rfl⟩ := hs hx
    obtain ⟨i, hi, hx⟩ := mem_sSup.mp <| by rwa [← heq]
    exact Set.mem_iUnion.mpr ⟨⟨i, hi⟩, x, hx, rfl⟩
  refine ⟨⨆ s ∈ t, s.1, ?_, ?_⟩
  · simp only [iSup_mk, carrier_eq_coe, coe_mk]
    exact t.finite_toSet.isCompact_biUnion fun i _ ↦ hUs i.2
  · simp only [iSup_mk, carrier_eq_coe, Set.iUnion_coe_set, coe_mk, Set.image_iUnion]
    convert_to ⋃ i ∈ t, f '' i.1 = U
    · simp
    · refine subset_antisymm (fun x ↦ ?_) ht
      simp_rw [Set.mem_iUnion]
      rintro ⟨i, hi, x, hx, rfl⟩
      have := heq ▸ mem_sSup.mpr ⟨i.1, i.2, hx⟩
      exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prespectral/Variantba0897162ebc772ae135a9d2eb0f109e8570a7097b21ab467e99e97cc1914412.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9812b00807feedcbadd596237523f407f1d73ca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
