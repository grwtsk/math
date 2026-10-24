# sourceCorrelation_sub_one_abs_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c416b78-c9d4-abf2-546a-e242958638a5",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_sub_one_abs_le_coefficient",
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
  "slug": "sourcecorrelation-sub-one-abs-le-coefficient--a9d41a9121198b7d7a22278b",
  "source": {
    "blob": "6a9a5e7f118c85cb4c47919a0e945f7c475c54ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 123,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9d41a9121198b7d7a22278b4638f80e6cb80e0824acfeae1d1aa951afc878e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c416b78-c9d4-abf2-546a-e242958638a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_sub_one_abs_le_coefficient (A s : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A s - 1| ≤
      curvatureCoefficient / A ^ 2 * s ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  have hc := actual_correlation_at_zero A hA
  simpa only [zero_add, hc, sourceCorrelation_deriv_zero hp, mul_zero,
    sub_zero, curvatureCoefficient, div_div] using
      sourceCorrelation_linear_taylor_bound hA 0 s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9a5e7f118c85cb4c47919a0e945f7c475c54ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
