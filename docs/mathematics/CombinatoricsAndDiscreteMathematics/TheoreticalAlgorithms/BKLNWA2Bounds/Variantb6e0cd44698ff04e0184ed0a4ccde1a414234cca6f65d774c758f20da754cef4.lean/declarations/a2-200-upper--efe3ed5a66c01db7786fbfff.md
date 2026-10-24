# a2_200_upper

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
      "line": 497,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:23b1ccaa-8f85-34ad-102c-1c9986b21c66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:597d36e1-9eb7-35a1-0b91-7d0d80b128d1",
  "kind": "lemma",
  "lexical_name": "a2_200_upper",
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
  "slug": "a2-200-upper--efe3ed5a66c01db7786fbfff",
  "source": {
    "blob": "a8911fe04ebb982e576008be1d04ff08150979c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 497,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variantb6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efe3ed5a66c01db7786fbfff97860affc3a35768618f8b6303dc12d040c14936",
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

Occurrence: `result:597d36e1-9eb7-35a1-0b91-7d0d80b128d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma a2_200_upper :
    (1 + 193571378 / (10 : ℝ) ^ 16) *
      max (f (exp 200)) (f ((2 : ℝ) ^ (⌊(200 : ℝ) / log 2⌋₊ + 1))) ≤
      (1.00000007713 : ℝ) + (1 : ℝ) / 10 ^ 9 := by
  rw [floor_200, mul_max_of_nonneg _ _
    (by positivity : (0 : ℝ) ≤ 1 + 193571378 / (10 : ℝ) ^ 16)]
  apply max_le
  · exact a2_200_exp_upper
  · exact cert_pow289_upper

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variantb6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWA2Bounds/Variantb6e0cd44698ff04e0184ed0a4ccde1a414234cca6f65d774c758f20da754cef4.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8911fe04ebb982e576008be1d04ff08150979c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
