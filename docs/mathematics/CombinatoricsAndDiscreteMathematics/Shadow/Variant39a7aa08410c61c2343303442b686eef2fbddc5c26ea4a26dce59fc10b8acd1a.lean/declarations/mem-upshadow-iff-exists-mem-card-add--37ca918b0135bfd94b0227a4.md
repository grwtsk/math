# mem_upShadow_iff_exists_mem_card_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f5c888e9c3cd1333673de013b7146c65d3e8b8ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 280,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39a7aa08410c61c2343303442b686eef2fbddc5c26ea4a26dce59fc10b8acd1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34f80dc2-61b8-b42c-1e3e-8ef764e9cbcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e54a1793-20b0-aa9c-c8b4-c83a593583de",
  "kind": "theorem",
  "lexical_name": "mem_upShadow_iff_exists_mem_card_add",
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
  "slug": "mem-upshadow-iff-exists-mem-card-add--37ca918b0135bfd94b0227a4",
  "source": {
    "blob": "f5c888e9c3cd1333673de013b7146c65d3e8b8ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 280,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant39a7aa08410c61c2343303442b686eef2fbddc5c26ea4a26dce59fc10b8acd1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ca918b0135bfd94b0227a46e68a58bdd6bd2bde9a5a1c973962511d95b37bd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant39a7aa08410c61c2343303442b686eef2fbddc5c26ea4a26dce59fc10b8acd1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e54a1793-20b0-aa9c-c8b4-c83a593583de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_upShadow_iff_exists_mem_card_add :
    s ∈ ∂⁺ ^[k] 𝒜 ↔ ∃ t ∈ 𝒜, t ⊆ s ∧ #t + k = #s := by
  induction k generalizing 𝒜 s with
  | zero =>
    refine ⟨fun hs => ⟨s, hs, Subset.refl _, rfl⟩, ?_⟩
    rintro ⟨t, ht, hst, hcard⟩
    rwa [← eq_of_subset_of_card_le hst hcard.ge]
  | succ k ih =>
    simp only [Function.comp_apply, Function.iterate_succ]
    refine ih.trans ?_
    clear ih
    constructor
    · rintro ⟨t, ht, hts, hcardst⟩
      obtain ⟨u, hu, hut, hcardtu⟩ := mem_upShadow_iff_exists_mem_card_add_one.1 ht
      refine ⟨u, hu, hut.trans hts, ?_⟩
      rw [← hcardst, hcardtu, add_right_comm]
      rfl
    · rintro ⟨t, ht, hts, hcard⟩
      obtain ⟨u, htu, hus, hu⟩ := Finset.exists_subsuperset_card_eq hts (Nat.le_add_right _ 1)
        (by lia)
      refine ⟨u, mem_upShadow_iff_exists_mem_card_add_one.2 ⟨t, ht, htu, hu⟩, hus, ?_⟩
      rw [hu, ← hcard, add_right_comm]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant39a7aa08410c61c2343303442b686eef2fbddc5c26ea4a26dce59fc10b8acd1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant39a7aa08410c61c2343303442b686eef2fbddc5c26ea4a26dce59fc10b8acd1a.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5c888e9c3cd1333673de013b7146c65d3e8b8ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
