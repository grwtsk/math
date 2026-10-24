# weighted_difference_le_three_halves

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b53f80c09872ce89d4fbf758cb26aa075612e39b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9c36c7712275e898c38ec652ddc84cbc95f05f44b922db1ed89d799e5b69d15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e858acb3-66c2-8ff4-e347-bada6d955c22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92a0a7bf-05ad-bcb3-fc31-4ead32b0ecec",
  "kind": "theorem",
  "lexical_name": "weighted_difference_le_three_halves",
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
  "slug": "weighted-difference-le-three-halves--8d89afa71e2c7299ba01ca40",
  "source": {
    "blob": "b53f80c09872ce89d4fbf758cb26aa075612e39b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variantc9c36c7712275e898c38ec652ddc84cbc95f05f44b922db1ed89d799e5b69d15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d89afa71e2c7299ba01ca4005b557ae16c1e7a7b550351ab62f49b75bfba014",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variantc9c36c7712275e898c38ec652ddc84cbc95f05f44b922db1ed89d799e5b69d15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92a0a7bf-05ad-bcb3-fc31-4ead32b0ecec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_difference_le_three_halves (N : ℕ) :
    weightedMangoldt N - weightedPrime N ≤ 3 / 2 := by
  rw [← tailProperMass_one_eq]
  simpa [powerTailBudget] using tailProperMass_le_budget 1 N (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variantc9c36c7712275e898c38ec652ddc84cbc95f05f44b922db1ed89d799e5b69d15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceProperPowerMertens/Variantc9c36c7712275e898c38ec652ddc84cbc95f05f44b922db1ed89d799e5b69d15.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53f80c09872ce89d4fbf758cb26aa075612e39b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
