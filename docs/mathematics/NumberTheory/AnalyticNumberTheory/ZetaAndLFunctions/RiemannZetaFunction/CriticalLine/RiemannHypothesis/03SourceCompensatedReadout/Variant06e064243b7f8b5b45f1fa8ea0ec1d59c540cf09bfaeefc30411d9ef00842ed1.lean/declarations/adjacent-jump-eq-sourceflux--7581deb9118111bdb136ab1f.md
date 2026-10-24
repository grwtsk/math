# adjacent_jump_eq_sourceFlux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3a91ca5a109bf9729ead58c11dfb6e6cfe72dc0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea84fd55-fc87-27b1-a9ef-e1397d69dea7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebc4968e-66a4-b9d6-702c-ea792d670d8e",
  "kind": "theorem",
  "lexical_name": "adjacent_jump_eq_sourceFlux",
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
  "slug": "adjacent-jump-eq-sourceflux--7581deb9118111bdb136ab1f",
  "source": {
    "blob": "f3a91ca5a109bf9729ead58c11dfb6e6cfe72dc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variant06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7581deb9118111bdb136ab1fc5e316b962509eb9575a287d9eabd18df62f8573",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variant06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebc4968e-66a4-b9d6-702c-ea792d670d8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacent_jump_eq_sourceFlux (A : ℝ) (hA : 0 < A) (U N : ℕ) (hUN : U < N) :
    2 * (⟪stateAt A hA U N, interactionOperator (cutoffJump A hA U N)⟫_ℂ).re +
      quadraticReadout interactionOperator (cutoffJump A hA U N) +
        compensationAt A (U + 1) N - compensationAt A U N = jointFlux A U N := by
  rw [← readoutAt_adjacent_jump, readoutAt_eq_jointAt, readoutAt_eq_jointAt]
  exact jointAt_succ A U N hUN

/-- Above the actual support-complete upper cutoff the compensated scalar remains unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variant06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variant06e064243b7f8b5b45f1fa8ea0ec1d59c540cf09bfaeefc30411d9ef00842ed1.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3a91ca5a109bf9729ead58c11dfb6e6cfe72dc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
