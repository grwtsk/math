# plain_calibration_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22a1fab3-64c1-03bd-3ee5-76acc6e7f264",
  "kind": "theorem",
  "lexical_name": "plain_calibration_identity",
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
  "slug": "plain-calibration-identity--7b584e6b300734df69f2705f",
  "source": {
    "blob": "ab00c04dbe6103e6f3fbda7c693e2c51f50b3562",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/636d3736561bed4e3bd0ActualArithmeticCalibration/Variant06bd3c6bd4e0a4cc54a314101c2064acecee38b028cb010d84d11d9e37c35034.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b584e6b300734df69f2705fd122aeb9f3839764e0349cee6cb1d6a7f73209a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/636d3736561bed4e3bd0ActualArithmeticCalibration/Variant06bd3c6bd4e0a4cc54a314101c2064acecee38b028cb010d84d11d9e37c35034.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22a1fab3-64c1-03bd-3ee5-76acc6e7f264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plain_calibration_identity {A : ℝ} (hA : 1 ≤ A) :
    plainInventory A - (riemannZeta (1/2)).re =
      criticalContinuousMoment A+2 + ∫ u in Ioi (1:ℝ), actualRemainder A u := by
  have hs := actual_remainder_sum_identity hA
  rw [unit_sampling_main hA, ActualSamplingConstant.samplingAlpha0_eq_riemannZeta_half_re,
    full_remainder_split hA, lower_remainder_integral hA] at hs
  exact hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/636d3736561bed4e3bd0ActualArithmeticCalibration/Variant06bd3c6bd4e0a4cc54a314101c2064acecee38b028cb010d84d11d9e37c35034.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/636d3736561bed4e3bd0ActualArithmeticCalibration/Variant06bd3c6bd4e0a4cc54a314101c2064acecee38b028cb010d84d11d9e37c35034.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab00c04dbe6103e6f3fbda7c693e2c51f50b3562` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
