# actual_regular_negative_slope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f157569e-00a0-4c70-dd02-5f87ce963734",
  "kind": "theorem",
  "lexical_name": "actual_regular_negative_slope",
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
  "slug": "actual-regular-negative-slope--65681ed0c48307bcc5c04de1",
  "source": {
    "blob": "9de41b2cf8c0a55e7fbf7fed2d96c1305ce7748e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65681ed0c48307bcc5c04de1e7ef483f8a11033ca641e4b8a672aa4ed6ca47bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f157569e-00a0-4c70-dd02-5f87ce963734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_regular_negative_slope :
    Tendsto (fun u : ℂ =>
      (regularNegativeLogDerivative (1+u)+(Real.eulerMascheroniConstant : ℂ))/u)
      (𝓝[≠] 0) (𝓝 ((Real.eulerMascheroniConstant : ℂ)^2 + 2*(firstStieltjesConstant : ℂ))) := by
  simpa only [actual_firstStieltjes_deriv,mul_neg,sub_neg_eq_add] using
    ActualLaurentSlope.actual_regular_negative_slope

/-- The actual zeta logarithmic derivative, with pole and constant subtracted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ArithmeticLaurentAttempt01/Variantc2755126b0c35a65cb3d8ff4fb21706ec5d5daa95e6fec297dd90e738c801b53.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9de41b2cf8c0a55e7fbf7fed2d96c1305ce7748e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
