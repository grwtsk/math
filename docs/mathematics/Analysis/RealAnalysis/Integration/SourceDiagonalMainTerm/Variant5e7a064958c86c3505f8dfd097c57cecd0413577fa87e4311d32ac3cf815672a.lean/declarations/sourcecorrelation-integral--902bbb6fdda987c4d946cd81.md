# sourceCorrelation_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68f56ae9-e5c3-b7a3-52bf-8fe93268db63",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_integral",
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
  "slug": "sourcecorrelation-integral--902bbb6fdda987c4d946cd81",
  "source": {
    "blob": "5c59980cdb3cc0a80367906c7f6b1534e2fe6222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant5e7a064958c86c3505f8dfd097c57cecd0413577fa87e4311d32ac3cf815672a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:902bbb6fdda987c4d946cd810426bfbc5fb87ad74c82741b0f4d71fd23b9be1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant5e7a064958c86c3505f8dfd097c57cecd0413577fa87e4311d32ac3cf815672a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68f56ae9-e5c3-b7a3-52bf-8fe93268db63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ t : ℝ, sourceCorrelation explicitSecondDerivative A t) =
      (4096 / 99225 : ℝ) * A / sourceNormalization A := by
  rw [sourceCorrelation_integral_eq_square A hA, normalizedTest_integral A hA]
  have hp : 0 ≤ A := by linarith
  have hz := (source_normalization_pos A hA).le
  rw [div_pow, neg_sq, mul_pow, mul_pow, Real.sq_sqrt hp, Real.sq_sqrt hz]
  ring

/-- Evenness and support evaluate the half-correlation integral without dropping a boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant5e7a064958c86c3505f8dfd097c57cecd0413577fa87e4311d32ac3cf815672a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant5e7a064958c86c3505f8dfd097c57cecd0413577fa87e4311d32ac3cf815672a.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c59980cdb3cc0a80367906c7f6b1534e2fe6222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
