# actual_square_remainder_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35c56fa9-d558-d22d-81cc-3a9d131fa9f0",
  "kind": "theorem",
  "lexical_name": "actual_square_remainder_gt",
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
  "slug": "actual-square-remainder-gt--7ea749a58522f5d879f0530d",
  "source": {
    "blob": "64943cf4737f314484b4e53fba77d0345c0c702d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 20,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ea749a58522f5d879f0530d93ddb28063aaf245632b0e8c112b93b5084f1357",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c56fa9-d558-d22d-81cc-3a9d131fa9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_square_remainder_gt {A : ℝ} (hA : 1≤A) :
    -(621/40:ℝ)<squareRemovedRemainder A := by
  have hH := (abs_le.mp (SourceDiagonalMainTerm.criticalContinuousMoment_abs_le_two A hA)).1
  have hP := (abs_le.mp (HigherPowerNumeric.actual_higherPrimePowerMoment_abs_le hA)).1
  have hB := squareTailNegativeMean_le_baseline hA
  have hE := actual_negative_mean_gt hA
  unfold squareRemovedRemainder
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64943cf4737f314484b4e53fba77d0345c0c702d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
