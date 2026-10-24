# card_le_card_biUnion_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "796887e96d72505541d41659daae1db19cc44dc5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ef294ed-e086-1c2a-a612-0096d55d61a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61d1d33e-d99d-afdc-945c-1654fa93ab38",
  "kind": "theorem",
  "lexical_name": "card_le_card_biUnion_add_one",
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
  "slug": "card-le-card-biunion-add-one--1427a95c753bebc2f6e1c794",
  "source": {
    "blob": "796887e96d72505541d41659daae1db19cc44dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 384,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1427a95c753bebc2f6e1c794ef7f5b267bd5528f9adc2e86b49dd4e71cae8ed8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61d1d33e-d99d-afdc-945c-1654fa93ab38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_card_biUnion_add_one {s : Finset ι} {f : ι → Finset α} (hf : Injective f)
    (hs : (s : Set ι).PairwiseDisjoint f) : s.card ≤ (s.biUnion f).card + 1 :=
  (card_le_card_biUnion_add_card_fiber hs).trans <|
    add_le_add_left
      (card_le_one.2 fun _ hi _ hj ↦ hf <| (mem_filter.1 hi).2.trans (mem_filter.1 hj).2.symm) _
#align finset.card_le_card_bUnion_add_one Finset.card_le_card_biUnion_add_one

end DoubleCounting

section CanonicallyOrderedMonoid

variable [CanonicallyOrderedMonoid M] {f : ι → M} {s t : Finset ι}

@[to_additive (attr := simp) sum_eq_zero_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantf54760a6f3507ede45aee3267b31bb36059e650de821cb0cc1d86fb32c8278ef.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `796887e96d72505541d41659daae1db19cc44dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
