# quadratureError_le_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa7c5e24-da9e-e862-dd90-2e7ef2265717",
  "kind": "theorem",
  "lexical_name": "quadratureError_le_price",
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
  "slug": "quadratureerror-le-price--aba0bf730fbe92ff89282889",
  "source": {
    "blob": "6a9a5e7f118c85cb4c47919a0e945f7c475c54ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 222,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba0bf730fbe92ff892828895a19a9295690f4a2af7a157bf106a1729f87b8ce",
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

Occurrence: `result:fa7c5e24-da9e-e862-dd90-2e7ef2265717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratureError_le_price (R A : ℝ) (hR : 1 ≤ R) (hRA : R ≤ A) :
    quadratureError A ≤ quadraturePrice R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hR0 : 0 < R := by linarith
  unfold quadraturePrice
  apply le_min
  · have hq := (abs_le.mp (quadratureError_abs_le A hA)).2
    have hr : 10 / A ≤ 10 / R :=
      div_le_div_of_nonneg_left (by norm_num) hR0 hRA
    linarith
  · have hq := quadratureError_le_coefficient A hA
    have hs : R ^ 2 ≤ A ^ 2 := by nlinarith
    have hcoef : 0 ≤ 8 * curvatureCoefficient := by
      unfold curvatureCoefficient
      positivity
    exact hq.trans (div_le_div_of_nonneg_left hcoef (sq_pos_of_pos hR0) hs)

/-- The tighter comparison requires the same independent compensated arithmetic cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaQuadratureCurvature/Variantd9ab2b7a9d469e2330925993e115f272708aa488f98afcc0a50d85db836dd5b7.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9a5e7f118c85cb4c47919a0e945f7c475c54ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
