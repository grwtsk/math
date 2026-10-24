# residual_upper_of_actualTriangular_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8233c2-f13a-2297-1c79-550c41e17604",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_actualTriangular_upper",
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
  "slug": "residual-upper-of-actualtriangular-upper--eb13185dd27d33f278127dc5",
  "source": {
    "blob": "ee883cba74ffae848e4baf6721dc710464038030",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 33,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd47be42a3912efc1e9cbeb904fb7cafb1e60f960c581353b269489bed0014356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb13185dd27d33f278127dc589fe73f5780e6650aff2d2037c0ec38f45787525",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd47be42a3912efc1e9cbeb904fb7cafb1e60f960c581353b269489bed0014356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8233c2-f13a-2297-1c79-550c41e17604`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_actualTriangular_upper (A D C_F : ℝ) (hA : 1 ≤ A)
    (hG : triangularInterior A ≤ D)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 1 / 2 + 3 + C_F := by
  have hc := (abs_le.mp (strictInterior_triangular_discrepancy A hA)).2
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  have he := (abs_le.mp (sourceEndpoint_abs_le_three A hA)).2
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hF).2
  dsimp only at hs
  linarith

/-- The original actual signed tail premise remains at its original all-real radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd47be42a3912efc1e9cbeb904fb7cafb1e60f960c581353b269489bed0014356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variantd47be42a3912efc1e9cbeb904fb7cafb1e60f960c581353b269489bed0014356.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee883cba74ffae848e4baf6721dc710464038030` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
