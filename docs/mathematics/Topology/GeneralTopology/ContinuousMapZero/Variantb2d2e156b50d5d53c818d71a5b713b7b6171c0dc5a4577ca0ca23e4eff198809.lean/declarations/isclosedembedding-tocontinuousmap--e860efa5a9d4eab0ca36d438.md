# isClosedEmbedding_toContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ad016b-c7b7-212c-f6f1-3b71562a9533",
  "kind": "lemma",
  "lexical_name": "isClosedEmbedding_toContinuousMap",
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
  "slug": "isclosedembedding-tocontinuousmap--e860efa5a9d4eab0ca36d438",
  "source": {
    "blob": "245b94a27b25ea886c0522611dd3ed88cdfe04d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 127,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e860efa5a9d4eab0ca36d4380c735e270f83dc91f647d5476bd711eef8f6b358",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ad016b-c7b7-212c-f6f1-3b71562a9533`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedEmbedding_toContinuousMap [T1Space R] :
    IsClosedEmbedding ((↑) : C(X, R)₀ → C(X, R)) where
  toIsEmbedding := isEmbedding_toContinuousMap
  isClosed_range := by
    rw [range_toContinuousMap]
    exact isClosed_singleton.preimage <| continuous_eval_const 0

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variantb2d2e156b50d5d53c818d71a5b713b7b6171c0dc5a4577ca0ca23e4eff198809.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245b94a27b25ea886c0522611dd3ed88cdfe04d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
