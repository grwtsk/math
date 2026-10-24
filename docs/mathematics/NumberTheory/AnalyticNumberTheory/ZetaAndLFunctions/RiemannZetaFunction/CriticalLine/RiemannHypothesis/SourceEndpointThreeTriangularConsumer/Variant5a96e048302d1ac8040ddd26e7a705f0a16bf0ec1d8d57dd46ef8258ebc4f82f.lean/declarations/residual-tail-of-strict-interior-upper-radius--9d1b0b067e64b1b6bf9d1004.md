# residual_tail_of_strict_interior_upper_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c05cfcd9-ba59-98a8-564d-87765954d2fc",
  "kind": "theorem",
  "lexical_name": "residual_tail_of_strict_interior_upper_radius",
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
  "slug": "residual-tail-of-strict-interior-upper-radius--9d1b0b067e64b1b6bf9d1004",
  "source": {
    "blob": "1f13ace3304cd0db859b29377838d9f7a17bb318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointThreeTriangularConsumer/Variant5a96e048302d1ac8040ddd26e7a705f0a16bf0ec1d8d57dd46ef8258ebc4f82f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d1b0b067e64b1b6bf9d1004175c7baff8709f8b59ecfba983b3095b414b3fc4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointThreeTriangularConsumer/Variant5a96e048302d1ac8040ddd26e7a705f0a16bf0ec1d8d57dd46ef8258ebc4f82f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c05cfcd9-ba59-98a8-564d-87765954d2fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_tail_of_strict_interior_upper_radius (D R : ℝ) (hR : 1 ≤ R)
    (hS : ∀ A : ℝ, R ≤ A → strictColumnInterior A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ D + RH16EndpointRadiusBudget.radiusBudget R + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  have hs := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at hs
  have hr := actual_residual_decomposition A hA
  have hb := (abs_le.mp (sourceEndpoint_abs_le_radiusBudget R A hR hRA)).2
  have hf := (abs_le.mp (hF A hA)).2
  have hstrict := hS A hRA
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointThreeTriangularConsumer/Variant5a96e048302d1ac8040ddd26e7a705f0a16bf0ec1d8d57dd46ef8258ebc4f82f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointThreeTriangularConsumer/Variant5a96e048302d1ac8040ddd26e7a705f0a16bf0ec1d8d57dd46ef8258ebc4f82f.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f13ace3304cd0db859b29377838d9f7a17bb318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
