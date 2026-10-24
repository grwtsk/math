# mem_upShadow_iff_exists_mem_card_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7739d157ae3d7453ba03ed395f3c8e8be1e69cb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6dfa2a6-e5a7-5ef5-1b51-f27e18d378b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e57f21f5-731b-bfdf-43a0-0c7327271ee6",
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
  "slug": "mem-upshadow-iff-exists-mem-card-add--6471b6e21aeaccafae80d353",
  "source": {
    "blob": "7739d157ae3d7453ba03ed395f3c8e8be1e69cb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6471b6e21aeaccafae80d3533b29a7ed8c0011f982b322f57110fe86e4029c76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e57f21f5-731b-bfdf-43a0-0c7327271ee6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–299.

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
    simp only [exists_prop, Function.comp_apply, Function.iterate_succ]
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
        (by omega)
      refine ⟨u, mem_upShadow_iff_exists_mem_card_add_one.2 ⟨t, ht, htu, hu⟩, hus, ?_⟩
      rw [hu, ← hcard, add_right_comm]
      rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant4c94cd65e03b63600410821e4ea64b0fadb6634de83228d02fc731a8c2361508.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7739d157ae3d7453ba03ed395f3c8e8be1e69cb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
