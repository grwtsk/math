# monotone_or_antitone_iff_uIcc

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
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bbbc916-271a-7588-e911-cf0a24a42de2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30ab1af9-3b6c-62e3-9896-21d6bede1f78",
  "kind": "lemma",
  "lexical_name": "monotone_or_antitone_iff_uIcc",
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
  "slug": "monotone-or-antitone-iff-uicc--7558790e31a6662d7b83cdbd",
  "source": {
    "blob": "bb0587ca6893a69ac36fcff5e5874fc4d5a4f15b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantd48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7558790e31a6662d7b83cdbd29479e25eaf3169ee84955d9ebc24f9c416facb7",
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

Occurrence: `result:30ab1af9-3b6c-62e3-9896-21d6bede1f78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monotone_or_antitone_iff_uIcc :
    Monotone f ∨ Antitone f ↔ ∀ a b c, c ∈ [[a, b]] → f c ∈ [[f a, f b]] := by
  constructor
  · rintro (hf | hf) a b c <;> simp_rw [← Icc_min_max, ← hf.map_min, ← hf.map_max]
    exacts [fun hc => ⟨hf hc.1, hf hc.2⟩, fun hc => ⟨hf hc.2, hf hc.1⟩]
  contrapose!
  rw [not_monotone_not_antitone_iff_exists_le_le]
  rintro ⟨a, b, c, hab, hbc, ⟨hfab, hfcb⟩ | ⟨hfba, hfbc⟩⟩
  · exact ⟨a, c, b, Icc_subset_uIcc ⟨hab, hbc⟩, fun h => h.2.not_lt <| max_lt hfab hfcb⟩
  · exact ⟨a, c, b, Icc_subset_uIcc ⟨hab, hbc⟩, fun h => h.1.not_lt <| lt_min hfba hfbc⟩
#align set.monotone_or_antitone_iff_uIcc Set.monotone_or_antitone_iff_uIcc

-- Porting note: mathport expands the syntactic sugar `∀ a b c ∈ s` differently than Lean3
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantd48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantd48aa359887b4dd4aa9c048cf23343f835141a4ca12f72faf0217ac10c72d33c.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb0587ca6893a69ac36fcff5e5874fc4d5a4f15b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
