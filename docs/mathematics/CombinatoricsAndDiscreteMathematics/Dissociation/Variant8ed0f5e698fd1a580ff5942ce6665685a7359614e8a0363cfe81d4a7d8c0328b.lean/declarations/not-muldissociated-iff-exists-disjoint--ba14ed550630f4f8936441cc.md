# not_mulDissociated_iff_exists_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9faa55897188696dceaad7b57ab2e57276d0b664",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0cf5a8b-e9a0-6a52-d7e5-da820852db79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:78934d4b-76c8-9e9a-0242-a318bf8bce63",
  "kind": "lemma",
  "lexical_name": "not_mulDissociated_iff_exists_disjoint",
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
  "slug": "not-muldissociated-iff-exists-disjoint--ba14ed550630f4f8936441cc",
  "source": {
    "blob": "9faa55897188696dceaad7b57ab2e57276d0b664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 66,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba14ed550630f4f8936441cc1d486792ccc390042b87cb99bd794f0bada8ceb7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78934d4b-76c8-9e9a-0242-a318bf8bce63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_mulDissociated_iff_exists_disjoint :
    ¬ MulDissociated s ↔
      ∃ t u : Finset α, ↑t ⊆ s ∧ ↑u ⊆ s ∧ Disjoint t u ∧ t ≠ u ∧ ∏ a ∈ t, a = ∏ a ∈ u, a := by
  classical
  refine not_mulDissociated.trans
    ⟨?_, fun ⟨t, u, ht, hu, _, htune, htusum⟩ ↦ ⟨t, ht, u, hu, htune, htusum⟩⟩
  rintro ⟨t, ht, u, hu, htu, h⟩
  refine ⟨t \ u, u \ t, ?_, ?_, disjoint_sdiff_sdiff, sdiff_ne_sdiff_iff.2 htu,
    Finset.prod_sdiff_eq_prod_sdiff_iff.2 h⟩ <;> push_cast <;> exact diff_subset.trans ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variant8ed0f5e698fd1a580ff5942ce6665685a7359614e8a0363cfe81d4a7d8c0328b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9faa55897188696dceaad7b57ab2e57276d0b664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
