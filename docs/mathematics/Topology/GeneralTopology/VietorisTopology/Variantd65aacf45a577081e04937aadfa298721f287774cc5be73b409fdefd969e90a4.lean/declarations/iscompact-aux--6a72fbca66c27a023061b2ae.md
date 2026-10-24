# isCompact_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2690f4417e777e7749ded9313d6da9bab371ad0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d682d8c-87de-ba86-4a53-7cac41657f30",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46033efd-5d31-b320-a1e4-1f93f4a3b546",
  "kind": "theorem",
  "lexical_name": "isCompact_aux",
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
  "slug": "iscompact-aux--6a72fbca66c27a023061b2ae",
  "source": {
    "blob": "2690f4417e777e7749ded9313d6da9bab371ad0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 253,
    "path": "GRWTSK/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a72fbca66c27a023061b2ae1dfbefd456cbf82facc095bd56cbd74c37bdfa6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46033efd-5d31-b320-a1e4-1f93f4a3b546`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isCompact_aux {K : Set α} (hK : IsCompact K)
    {s : Set (Set α)} (hsK : s ⊆ K.powerset) (hs : ∀ L ∈ s, IsCompact L) :
    IsCompact {t ⊆ K | ∀ L ∈ s, (t ∩ L).Nonempty} := by
  -- By Alexander's subbasis theorem, it is enough to consider covers by the generating sets.
  refine isCompact_generateFrom rfl fun S hS hKS => ?_
  let u := {U | IsOpen U ∧ {s | (s ∩ U).Nonempty} ∈ S}
  by_cases! hsu : ∃ L ∈ s, L ⊆ ⋃₀ u
  · /- If the open sets `Uⱼ` in the hit conditions `t ∩ Uⱼ ≠ ∅` cover some `Lᵢ`, then every set
    intersecting `Lᵢ` also intersects some `Uⱼ`. This `Uⱼ` can be chosen from a finite subfamily by
    the compactness of `Lᵢ`. -/
    obtain ⟨L, hL, hLu⟩ := hsu
    rw [sUnion_eq_biUnion] at hLu
    obtain ⟨T, hTS, hT, hLT⟩ := (hs L hL).elim_finite_subcover_image (fun _ h => h.1) hLu
    refine ⟨(fun U => {s | (s ∩ U).Nonempty}) '' T, by grind [image_subset_iff], hT.image _, ?_⟩
    simp_rw [sUnion_image, ← ofPred_exists, ← nonempty_iUnion, ← inter_iUnion]
    grw [← hLT]
    grind
  · -- Otherwise, the set `K \ ⋃ Uⱼ` intersects every `Lᵢ`, so it is in one of the covering sets.
    simp_rw [← sdiff_nonempty] at hsu
    replace hsu L (h : L ∈ s) : (K \ ⋃₀ u ∩ L).Nonempty := (hsu L h).mono <| by grind
    obtain ⟨_, hUS, hUu⟩ := mem_sUnion.mp <| hKS ⟨sdiff_subset, hsu⟩
    rcases hS hUS with ⟨U, hU, rfl⟩ | ⟨U, hU, rfl⟩
    · /- If `K \ ⋃ Uⱼ ⊆ U`, then every subset of `K` is either a subset of `U` or intersects some
      `Uⱼ`. By the compactness of `K \ U`, `Uⱼ` can be chosen from a finite subfamily. -/
      rw [mem_powerset_iff, sdiff_subset_comm, sUnion_eq_biUnion] at hUu
      obtain ⟨T, hTS, hT, hKT⟩ := (hK.diff hU).elim_finite_subcover_image (fun _ h => h.1) hUu
      refine ⟨insert U.powerset ((fun V => {s | (s ∩ V).Nonempty}) '' T),
        insert_subset hUS <| Set.image_subset_iff.mpr <| hTS.trans fun _ h => h.2,
        (hT.image _).insert _, ?_⟩
      rw [sUnion_insert, ← sdiff_subset_iff, sUnion_image]
      rintro t ⟨⟨htK, -⟩, htU⟩
      rw [mem_powerset_iff, not_subset] at htU
      obtain ⟨x, hxt, hxU⟩ := htU
      obtain ⟨V, hVT, hxV⟩ := mem_iUnion₂.mp <| hKT ⟨htK hxt, hxU⟩
      exact mem_biUnion hVT ⟨x, hxt, hxV⟩
    · -- `K \ ⋃ Uⱼ` is disjoint from every `Uⱼ`, so it cannot satisfy any of the hit conditions.
      obtain ⟨x, hxu, hxU⟩ := hUu
      cases hxu.2 <| mem_sUnion_of_mem hxU ⟨hU, hUS⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VietorisTopology/Variantd65aacf45a577081e04937aadfa298721f287774cc5be73b409fdefd969e90a4.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2690f4417e777e7749ded9313d6da9bab371ad0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
