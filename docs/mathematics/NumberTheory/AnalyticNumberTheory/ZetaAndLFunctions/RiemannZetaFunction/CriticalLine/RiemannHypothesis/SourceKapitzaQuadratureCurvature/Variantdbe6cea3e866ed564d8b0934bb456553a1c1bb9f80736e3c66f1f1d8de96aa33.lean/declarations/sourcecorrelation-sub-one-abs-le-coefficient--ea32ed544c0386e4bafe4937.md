# sourceCorrelation_sub_one_abs_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:349c1b9e-42fc-0104-2a67-3219f3191814",
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
  "slug": "sourcecorrelation-sub-one-abs-le-coefficient--ea32ed544c0386e4bafe4937",
  "source": {
    "blob": "0ef9836fbe3aee997761ee9247edf04b30bc3079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantdbe6cea3e866ed564d8b0934bb456553a1c1bb9f80736e3c66f1f1d8de96aa33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea32ed544c0386e4bafe49375aa3762953b349c23fa3e94e58f2116dec92d082",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantdbe6cea3e866ed564d8b0934bb456553a1c1bb9f80736e3c66f1f1d8de96aa33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:349c1b9e-42fc-0104-2a67-3219f3191814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantdbe6cea3e866ed564d8b0934bb456553a1c1bb9f80736e3c66f1f1d8de96aa33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantdbe6cea3e866ed564d8b0934bb456553a1c1bb9f80736e3c66f1f1d8de96aa33.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef9836fbe3aee997761ee9247edf04b30bc3079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
