# truncated_coefficient_six_eighteen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74949f4a6e4dad4bb5da7a75fb1410f363d1f1c4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9776c535-9225-6dbc-9bf0-4e8fc82ae57e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9e50db4-4389-6c25-8de1-121dece9c2da",
  "kind": "theorem",
  "lexical_name": "truncated_coefficient_six_eighteen",
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
  "slug": "truncated-coefficient-six-eighteen--ca4b9f8f26d70b2ade1c5ce5",
  "source": {
    "blob": "74949f4a6e4dad4bb5da7a75fb1410f363d1f1c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca4b9f8f26d70b2ade1c5ce5306aabbef745fa08776ef070fd290865fb9fd036",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9e50db4-4389-6c25-8de1-121dece9c2da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncated_coefficient_six_eighteen :
    (shortPart 6 (moebius : ArithmeticFunction ℝ) * shortPart 6 vonMangoldt) 18 =
      Real.log 3 := by
  have hd : Nat.divisorsAntidiagonal 18 =
      {(1, 18), (2, 9), (3, 6), (6, 3), (9, 2), (18, 1)} := by decide
  have hl : vonMangoldt 3 = Real.log 3 := vonMangoldt_apply_prime Nat.prime_three
  norm_num [ArithmeticFunction.mul_apply, hd, shortPart_apply, real_moebius_six,
    mangoldt_six_zero, hl]

/-- The omitted (2,9) factor cancels the positive term in the full coefficient at 18. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentFringeSigns/Variantb1569d3ff392216febb5f0e79ede38eac7c3961cd98a7acd2a6df60dfe7d9942.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74949f4a6e4dad4bb5da7a75fb1410f363d1f1c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
