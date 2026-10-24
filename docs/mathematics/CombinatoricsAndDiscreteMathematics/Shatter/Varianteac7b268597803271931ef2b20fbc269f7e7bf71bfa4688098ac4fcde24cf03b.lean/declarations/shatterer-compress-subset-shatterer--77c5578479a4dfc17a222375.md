# shatterer_compress_subset_shatterer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/eac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39fd3377-c1f1-e327-9584-4d95811b18d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:464df3b3-d0e1-e486-6e44-6adb6f7fd0cf",
  "kind": "lemma",
  "lexical_name": "shatterer_compress_subset_shatterer",
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
  "slug": "shatterer-compress-subset-shatterer--77c5578479a4dfc17a222375",
  "source": {
    "blob": "cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77c5578479a4dfc17a222375c6c0d60d7c24e61c8ca32a716d75b78724046db1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:464df3b3-d0e1-e486-6e44-6adb6f7fd0cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shatterer_compress_subset_shatterer (a : α) (𝒜 : Finset (Finset α)) :
    (𝓓 a 𝒜).shatterer ⊆ 𝒜.shatterer := by
  simp only [subset_iff, mem_shatterer]; exact fun s hs ↦ hs.of_compression

/-! ### Vapnik-Chervonenkis dimension -/

/-- The Vapnik-Chervonenkis dimension of a set family is the maximal size of a set it shatters. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
