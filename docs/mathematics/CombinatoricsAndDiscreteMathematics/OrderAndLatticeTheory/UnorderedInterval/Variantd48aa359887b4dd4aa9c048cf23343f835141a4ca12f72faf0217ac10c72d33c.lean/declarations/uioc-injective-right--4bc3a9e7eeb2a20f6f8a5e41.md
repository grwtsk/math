# uIoc_injective_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb0587ca6893a69ac36fcff5e5874fc4d5a4f15b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 312,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00c280ad-f2b8-524d-9524-e09f4fc3687f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4747b66-01e4-cd87-0759-1f8f04b4c112",
  "kind": "lemma",
  "lexical_name": "uIoc_injective_right",
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
  "slug": "uioc-injective-right--4bc3a9e7eeb2a20f6f8a5e41",
  "source": {
    "blob": "bb0587ca6893a69ac36fcff5e5874fc4d5a4f15b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 312,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantd48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bc3a9e7eeb2a20f6f8a5e413360f80cddd45b21725da3b67116ade5b88a6cd5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantd48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4747b66-01e4-cd87-0759-1f8f04b4c112`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma uIoc_injective_right (a : α) : Injective fun b => Ι b a := by
  rintro b c h
  rw [ext_iff] at h
  obtain ha | ha := le_or_lt b a
  · have hb := (h b).not
    simp only [ha, left_mem_uIoc, not_lt, true_iff_iff, not_mem_uIoc, ← not_le,
      and_true_iff, not_true, false_and_iff, not_false_iff, true_iff_iff, or_false_iff] at hb
    refine' hb.eq_of_not_lt fun hc => _
    simpa [ha, and_iff_right hc, ← @not_le _ _ _ a, iff_not_self, -not_le] using h c
  · refine'
      eq_of_mem_uIoc_of_mem_uIoc ((h _).1 <| left_mem_uIoc.2 ha)
        ((h _).2 <| left_mem_uIoc.2 <| ha.trans_le _)
    simpa [ha, ha.not_le, mem_uIoc] using h b
#align set.uIoc_injective_right Set.uIoc_injective_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantd48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantd48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb0587ca6893a69ac36fcff5e5874fc4d5a4f15b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
