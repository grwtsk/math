# strictColumnInterior_upper_of_complete_pairing_calibration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df491284634ed0bd49bd6600392014accab1764a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c827689e-d580-3fbb-c790-82849160b85b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad3c6799-50de-0ef4-afbd-f13f524ae007",
  "kind": "theorem",
  "lexical_name": "strictColumnInterior_upper_of_complete_pairing_calibration",
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
  "slug": "strictcolumninterior-upper-of-complete-pairing-calibration--fee8751f34318d904dded777",
  "source": {
    "blob": "df491284634ed0bd49bd6600392014accab1764a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedPairingToStrictInterior/Variant2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fee8751f34318d904dded77746b162091d0625a801a2929437eba581e4d83ace",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedPairingToStrictInterior/Variant2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad3c6799-50de-0ef4-afbd-f13f524ae007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictColumnInterior_upper_of_complete_pairing_calibration
    (A C_F : ℝ) (hA : 117 ≤ A)
    (hF : |EstimateBetaSourceRecombination.betaMainLedger A + independentMainTerm A| ≤ C_F) :
    strictColumnInterior A ≤ completeCorrectedAbelPairing A +
      (riemannZeta (1 / 2)).re + (3 / 50 : ℝ) + 12 + C_F := by
  have hA1 : 1 ≤ A := by linarith
  have hc := residual_sub_complete_pairing_sub_zeta_abs_lt A hA
  have he := covariance_sub_main_eq_strictColumnInterior_add_endpoint A hA1
  change VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A =
    strictColumnInterior A + sourceEndpoint A at he
  have hr := actual_residual_decomposition A hA1
  have hb := (abs_le.mp (sourceEndpoint_abs_le_twelve A hA1)).1
  have hf := (abs_le.mp hF).1
  have hp := (abs_lt.mp hc).2
  linarith

/-- The ledger constant is chosen once, before the scale is quantified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedPairingToStrictInterior/Variant2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrectedPairingToStrictInterior/Variant2ebfae5733fc18a3c1cdc18590272c1bb2d9a082828edbf835dd477676b0d6f3.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df491284634ed0bd49bd6600392014accab1764a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
