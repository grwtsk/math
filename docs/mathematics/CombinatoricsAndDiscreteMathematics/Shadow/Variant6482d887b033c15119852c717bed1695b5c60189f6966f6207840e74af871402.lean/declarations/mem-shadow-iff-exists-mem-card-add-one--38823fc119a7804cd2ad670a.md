# mem_shadow_iff_exists_mem_card_add_one

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
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecc82f1d-5b46-2334-9e96-5382c2ef9f89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0b9b592-00d4-1c3c-868b-17579a6cf88f",
  "kind": "theorem",
  "lexical_name": "mem_shadow_iff_exists_mem_card_add_one",
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
  "slug": "mem-shadow-iff-exists-mem-card-add-one--38823fc119a7804cd2ad670a",
  "source": {
    "blob": "b533219ff7c9a83db3a5daa25c9e28e9d1da8e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38823fc119a7804cd2ad670afab753d552f8af242e3bb6309fabd77e6a6cd748",
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

Occurrence: `result:d0b9b592-00d4-1c3c-868b-17579a6cf88f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_shadow_iff_exists_mem_card_add_one :
    s ∈ ∂ 𝒜 ↔ ∃ t ∈ 𝒜, s ⊆ t ∧ t.card = s.card + 1 := by
  refine' mem_shadow_iff_insert_mem.trans ⟨_, _⟩
  · rintro ⟨a, ha, hs⟩
    exact ⟨insert a s, hs, subset_insert _ _, card_insert_of_not_mem ha⟩
  · rintro ⟨t, ht, hst, h⟩
    obtain ⟨a, ha⟩ : ∃ a, t \ s = {a} :=
      card_eq_one.1 (by rw [card_sdiff hst, h, add_tsub_cancel_left])
    exact
      ⟨a, fun hat => not_mem_sdiff_of_mem_right hat (ha.superset <| mem_singleton_self a),
       by rwa [insert_eq a s, ← ha, sdiff_union_of_subset hst]⟩
#align finset.mem_shadow_iff_exists_mem_card_add_one Finset.mem_shadow_iff_exists_mem_card_add_one

/-- Being in the shadow of `𝒜` means we have a superset in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shadow/Variant6482d887b033c15119852c717bed1695b5c60189f6966f6207840e74af871402.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b533219ff7c9a83db3a5daa25c9e28e9d1da8e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
