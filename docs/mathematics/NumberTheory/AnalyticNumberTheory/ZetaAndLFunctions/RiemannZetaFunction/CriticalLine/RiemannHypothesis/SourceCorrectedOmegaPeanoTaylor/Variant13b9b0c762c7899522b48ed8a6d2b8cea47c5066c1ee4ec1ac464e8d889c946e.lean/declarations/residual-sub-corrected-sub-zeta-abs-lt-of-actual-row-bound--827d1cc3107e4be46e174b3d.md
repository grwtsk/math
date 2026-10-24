# residual_sub_corrected_sub_zeta_abs_lt_of_actual_row_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3af0c68e-f06e-fcee-d92f-2054d264f10d",
  "kind": "theorem",
  "lexical_name": "residual_sub_corrected_sub_zeta_abs_lt_of_actual_row_bound",
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
  "slug": "residual-sub-corrected-sub-zeta-abs-lt-of-actual-row-bound--827d1cc3107e4be46e174b3d",
  "source": {
    "blob": "aef80445b9934661b699c331185f51c455f17936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 132,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant13b9b0c762c7899522b48ed8a6d2b8cea47c5066c1ee4ec1ac464e8d889c946e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:827d1cc3107e4be46e174b3d17d1cf3c43e6f49461b542a7b22ad6bae1895b85",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant13b9b0c762c7899522b48ed8a6d2b8cea47c5066c1ee4ec1ac464e8d889c946e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3af0c68e-f06e-fcee-d92f-2054d264f10d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_sub_corrected_sub_zeta_abs_lt_of_actual_row_bound
    (A : ℝ) (hA : 117 ≤ A)
    (hrow : ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4) :
    |mertensResidual A - correctedCompleteOmega A - (riemannZeta (1 / 2)).re| < 3 / 50 := by
  have hc := actual_calibration_260 (by linarith : 1 ≤ A)
  have he := integerJ_sub_corrected_abs_le_of_actual_row_bound A (by linarith) hrow
  have hb := combined_corrected_calibration_budget_lt A hA
  have ht := abs_add_le
    (mertensResidual A - integerJ A - (riemannZeta (1 / 2)).re)
    (integerJ A - correctedCompleteOmega A)
  have hid : mertensResidual A - correctedCompleteOmega A - (riemannZeta (1 / 2)).re =
      (mertensResidual A - integerJ A - (riemannZeta (1 / 2)).re) +
        (integerJ A - correctedCompleteOmega A) := by ring
  rw [← hid] at ht
  linarith

/-- The unchanged original target needs both actual analytic control and a uniform signed witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant13b9b0c762c7899522b48ed8a6d2b8cea47c5066c1ee4ec1ac464e8d889c946e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedOmegaPeanoTaylor/Variant13b9b0c762c7899522b48ed8a6d2b8cea47c5066c1ee4ec1ac464e8d889c946e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aef80445b9934661b699c331185f51c455f17936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
