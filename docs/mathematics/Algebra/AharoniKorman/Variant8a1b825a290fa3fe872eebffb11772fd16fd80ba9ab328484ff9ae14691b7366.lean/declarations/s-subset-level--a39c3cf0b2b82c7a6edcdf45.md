# S_subset_level

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 944,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0152899b-017f-503c-cee9-32881f4090f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a50b033-7253-133c-3cf9-0d2f95fae50f",
  "kind": "lemma",
  "lexical_name": "S_subset_level",
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
  "slug": "s-subset-level--a39c3cf0b2b82c7a6edcdf45",
  "source": {
    "blob": "3eea7e4bd418a2e1ae42665cdf464a2230815e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 951,
    "line": 944,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a39c3cf0b2b82c7a6edcdf45f49e99dc7967ed122f6fa3437c835654322f4d2e",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a50b033-7253-133c-3cf9-0d2f95fae50f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 944–951.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma S_subset_level : S n C ⊆ level n := S_subset_R.trans R_subset_level

set_option backward.isDefEq.respectTransparency false in
/--
Assuming `C ∩ level n` is finite, and `C ∩ level (n + 1)` is finite, that there exists cofinitely
many `a` such that `{(x, y, n) | x ≥ a ∧ y ≥ a} ⊆ S \ (C ∩ level n)`.
We will later show the same assuming `C ∩ level (n + 1)` is infinite.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant8a1b825a290fa3fe872eebffb11772fd16fd80ba9ab328484ff9ae14691b7366.lean#L944).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eea7e4bd418a2e1ae42665cdf464a2230815e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
