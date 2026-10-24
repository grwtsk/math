# mapN_type₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89e1825d-2523-1302-0dd3-77ed5cf2c4e2",
  "kind": "lemma",
  "lexical_name": "mapN_type₁",
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
  "slug": "mapn-type--f55ca8c5c7e8f715132cc339",
  "source": {
    "blob": "c3c794563aaafa9d6e5e487aca9722e9cd217f1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 529,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f55ca8c5c7e8f715132cc339ec7c329d07e35e83232b88f55955063cc6e695f1",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89e1825d-2523-1302-0dd3-77ed5cf2c4e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–536.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapN_type₁ {j : ι} (c : f.Cell j) : f.mapN c.type₁ = S.mk (P.p c.s).val.simplex := by
  dsimp only [Cell.type₁, mapN]
  rw [← S.cast_eq_self _ (P.dim_p c.s)]
  dsimp
  rw [S.ext_iff, c.ι_b_app_apply]
  apply yonedaEquiv_symm_app_id

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/RelativeCellComplex/Variantaa4320cb07b31e784f53e6a745ab063e5a8868e99c9aa5308855aec29cf30514.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3c794563aaafa9d6e5e487aca9722e9cd217f1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
