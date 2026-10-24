# mem_upShadow_iterate_iff_exists_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67885dd4-46de-113e-fbf4-00e2712c3c90",
  "kind": "lemma",
  "lexical_name": "mem_upShadow_iterate_iff_exists_card",
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
  "slug": "mem-upshadow-iterate-iff-exists-card--937e257e99fe420de2ec090f",
  "source": {
    "blob": "89a993204fcdc0f0483c7faacbd26e68fd4b7cfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant8e7f88c9a1cd533c9b20aa3d4efd5ce6b38d86a0136b2a4c09f2f343ccb5ec12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937e257e99fe420de2ec090fdc4311b776770dbe64f3422ef408c8bb9393da59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant8e7f88c9a1cd533c9b20aa3d4efd5ce6b38d86a0136b2a4c09f2f343ccb5ec12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67885dd4-46de-113e-fbf4-00e2712c3c90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_upShadow_iterate_iff_exists_card :
    t ∈ ∂⁺^[k] 𝒜 ↔ ∃ u : Finset α, #u = k ∧ u ⊆ t ∧ t \ u ∈ 𝒜 := by
  induction k generalizing t with
  | zero => simp
  | succ k ih =>
    simp only [mem_upShadow_iff_erase_mem, ih, Function.iterate_succ_apply', card_eq_succ,
      subset_erase, erase_sdiff_comm, ← sdiff_insert]
    constructor
    · rintro ⟨a, hat, u, rfl, ⟨hut, hau⟩, htu⟩
      exact ⟨_, ⟨_, _, hau, rfl, rfl⟩, insert_subset hat hut, htu⟩
    · rintro ⟨_, ⟨a, u, hau, rfl, rfl⟩, hut, htu⟩
      rw [insert_subset_iff] at hut
      exact ⟨a, hut.1, _, rfl, ⟨hut.2, hau⟩, htu⟩

/-- `t` is in the upper shadow of `𝒜` iff `t` is exactly `k` elements less than something from `𝒜`.

See also `Finset.mem_upShadow_iff_exists_mem_card_add`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant8e7f88c9a1cd533c9b20aa3d4efd5ce6b38d86a0136b2a4c09f2f343ccb5ec12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant8e7f88c9a1cd533c9b20aa3d4efd5ce6b38d86a0136b2a4c09f2f343ccb5ec12.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89a993204fcdc0f0483c7faacbd26e68fd4b7cfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
