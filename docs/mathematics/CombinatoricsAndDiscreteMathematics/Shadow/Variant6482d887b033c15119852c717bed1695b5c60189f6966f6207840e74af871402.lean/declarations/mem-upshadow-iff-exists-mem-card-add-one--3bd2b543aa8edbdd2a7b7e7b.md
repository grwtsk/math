# mem_upShadow_iff_exists_mem_card_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b533219ff7c9a83db3a5daa25c9e28e9d1da8e00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b2e8ada-fec5-ce9b-0e0a-cffecdd1f78f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1687662-ca71-65ff-30ea-e141b47455c6",
  "kind": "theorem",
  "lexical_name": "mem_upShadow_iff_exists_mem_card_add_one",
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
  "slug": "mem-upshadow-iff-exists-mem-card-add-one--3bd2b543aa8edbdd2a7b7e7b",
  "source": {
    "blob": "b533219ff7c9a83db3a5daa25c9e28e9d1da8e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 231,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bd2b543aa8edbdd2a7b7e7bcc7a530d40f378fa27d5c44f5ce8bfe3b2ff59ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1687662-ca71-65ff-30ea-e141b47455c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_upShadow_iff_exists_mem_card_add_one :
    s ∈ ∂⁺ 𝒜 ↔ ∃ t ∈ 𝒜, t ⊆ s ∧ t.card + 1 = s.card := by
  refine' mem_upShadow_iff_erase_mem.trans ⟨_, _⟩
  · rintro ⟨a, ha, hs⟩
    exact ⟨s.erase a, hs, erase_subset _ _, card_erase_add_one ha⟩
  · rintro ⟨t, ht, hts, h⟩
    obtain ⟨a, ha⟩ : ∃ a, s \ t = {a} :=
      card_eq_one.1 (by rw [card_sdiff hts, ← h, add_tsub_cancel_left])
    refine' ⟨a, sdiff_subset _ _ ((ha.ge : _ ⊆ _) <| mem_singleton_self a), _⟩
    rwa [← sdiff_singleton_eq_erase, ← ha, sdiff_sdiff_eq_self hts]
#align finset.mem_up_shadow_iff_exists_mem_card_add_one Finset.mem_upShadow_iff_exists_mem_card_add_one

/-- Being in the upper shadow of `𝒜` means we have a superset in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b533219ff7c9a83db3a5daa25c9e28e9d1da8e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
