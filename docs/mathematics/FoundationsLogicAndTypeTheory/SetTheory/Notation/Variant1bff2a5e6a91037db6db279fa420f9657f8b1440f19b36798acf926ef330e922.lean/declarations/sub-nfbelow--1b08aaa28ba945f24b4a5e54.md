# sub_nfBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 506,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adc7ea49-5e2f-fee0-330f-a75f86dca24e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39828c66-5390-a37c-6a46-9c0f89af0e71",
  "kind": "theorem",
  "lexical_name": "sub_nfBelow",
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
  "slug": "sub-nfbelow--1b08aaa28ba945f24b4a5e54",
  "source": {
    "blob": "662748c0fa51663685efded4a2e2a9ee5ad80563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b08aaa28ba945f24b4a5e54e9753a52cfa5b209ee498e6f2a346fd94ce5507b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39828c66-5390-a37c-6a46-9c0f89af0e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_nfBelow : ∀ {o₁ o₂ b}, NFBelow o₁ b → NF o₂ → NFBelow (o₁ - o₂) b
  | 0, o, b, _, h₂ => by cases o <;> exact NFBelow.zero
  | oadd _ _ _, 0, _, h₁, _ => h₁
  | oadd e₁ n₁ a₁, oadd e₂ n₂ a₂, b, h₁, h₂ => by
    have h' := sub_nfBelow h₁.snd h₂.snd
    simp only [HSub.hSub, Sub.sub, sub] at h' ⊢
    have := @cmp_compares _ _ h₁.fst h₂.fst
    cases h : cmp e₁ e₂ <;> simp [sub]
    · apply NFBelow.zero
    · simp only [h, Ordering.compares_eq] at this
      subst e₂
      cases mn : (n₁ : ℕ) - n₂ <;> simp [sub]
      · by_cases en : n₁ = n₂ <;> simp [en]
        · exact h'.mono (le_of_lt h₁.lt)
        · exact NFBelow.zero
      · exact NFBelow.oadd h₁.fst h₁.snd h₁.lt
    · exact h₁
#align onote.sub_NF_below ONote.sub_nfBelow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant1bff2a5e6a91037db6db279fa420f9657f8b1440f19b36798acf926ef330e922.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `662748c0fa51663685efded4a2e2a9ee5ad80563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
