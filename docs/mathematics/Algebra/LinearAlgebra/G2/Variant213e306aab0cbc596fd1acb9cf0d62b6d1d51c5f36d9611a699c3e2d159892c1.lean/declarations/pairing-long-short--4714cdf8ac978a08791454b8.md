# pairing_long_short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b94f8da98fba941335109439534b52b3a154c78c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5322abea-0848-90cb-8a12-ac5c9d7728f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4157cdc-3bf8-e06d-6a6b-63e108b68a91",
  "kind": "lemma",
  "lexical_name": "pairing_long_short",
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
  "slug": "pairing-long-short--4714cdf8ac978a08791454b8",
  "source": {
    "blob": "b94f8da98fba941335109439534b52b3a154c78c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4714cdf8ac978a08791454b86253da3e4201f18161a5c58aaab59b5dac9f444b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4157cdc-3bf8-e06d-6a6b-63e108b68a91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairing_long_short : P.pairing (long P) (short P) = - 3 := by
  rw [← P.algebraMap_pairingIn ℤ, pairingIn_long_short]
  simp

/-- The index of the root `α + β` where `α` is the short root and `β` is the long root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/G2/Variant213e306aab0cbc596fd1acb9cf0d62b6d1d51c5f36d9611a699c3e2d159892c1.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94f8da98fba941335109439534b52b3a154c78c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
