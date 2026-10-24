# strictColumnInterior_upper_of_complete_pairing_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:136e93a4-cca2-b80c-cf6a-af70eb376482",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_upper_of_complete_pairing_upper",
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
  "slug": "strictcolumninterior-upper-of-complete-pairing-upper--4239f303c4f03d4b5e0c5cd3",
  "source": {
    "blob": "1a473fee3b0ba97cfa98b8f8e28d1a35d5da2184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusConsumer/Variant2f7e6a81af195e425288073035ef8be3477772fdcb30ee9c47ad03c3937e814d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4239f303c4f03d4b5e0c5cd3a8276873617c3b73bc1a3cdffbd842c0b462ef16",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusConsumer/Variant2f7e6a81af195e425288073035ef8be3477772fdcb30ee9c47ad03c3937e814d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:136e93a4-cca2-b80c-cf6a-af70eb376482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_upper_of_complete_pairing_upper
    (K R A C_F : ℝ) (hR : 117 ≤ R) (hRA : R ≤ A)
    (hP : completeCorrectedAbelPairing A ≤ K)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    strictColumnInterior A ≤ K + (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) +
      C_F + endpointBudget R := by
  have hR1 : 1 ≤ R := by linarith
  have hp := residual_upper_of_complete_pairing_upper K R A hR hRA hP
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A (hR1.trans hRA)
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at he
  have hr := actual_residual_decomposition A (hR1.trans hRA)
  have hb := (abs_le.mp (sourceEndpoint_abs_le_budget R A hR1 hRA)).1
  have hf := (abs_le.mp hF).1
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusConsumer/Variant2f7e6a81af195e425288073035ef8be3477772fdcb30ee9c47ad03c3937e814d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointRadiusConsumer/Variant2f7e6a81af195e425288073035ef8be3477772fdcb30ee9c47ad03c3937e814d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a473fee3b0ba97cfa98b8f8e28d1a35d5da2184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
