# a2_100_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8911fe04ebb982e576008be1d04ff08150979c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 393,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d66e0cf-b9e8-7e59-3c04-47d2806da7e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02263810-3158-788d-c39e-d270e49f3329",
  "kind": "lemma",
  "lexical_name": "a2_100_upper",
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
  "slug": "a2-100-upper--cd0e9d7d8c039f3abb9da23b",
  "source": {
    "blob": "a8911fe04ebb982e576008be1d04ff08150979c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 393,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variantb6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd0e9d7d8c039f3abb9da23ba86f0a72c642aed018a9e98bc8efde03ddf37d9c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variantb6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02263810-3158-788d-c39e-d270e49f3329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma a2_100_upper :
    (1 + 193571378 / (10 : ℝ) ^ 16) *
      max (f (exp 100)) (f ((2 : ℝ) ^ (⌊(100 : ℝ) / log 2⌋₊ + 1))) ≤
      (1.0002420 : ℝ) + (1 : ℝ) / 10 ^ 7 := by
  rw [floor_100, mul_max_of_nonneg _ _
    (by positivity : (0 : ℝ) ≤ 1 + 193571378 / (10 : ℝ) ^ 16)]
  apply max_le
  · exact a2_100_exp_upper
  · exact cert_pow145_upper

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variantb6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variantb6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8911fe04ebb982e576008be1d04ff08150979c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
