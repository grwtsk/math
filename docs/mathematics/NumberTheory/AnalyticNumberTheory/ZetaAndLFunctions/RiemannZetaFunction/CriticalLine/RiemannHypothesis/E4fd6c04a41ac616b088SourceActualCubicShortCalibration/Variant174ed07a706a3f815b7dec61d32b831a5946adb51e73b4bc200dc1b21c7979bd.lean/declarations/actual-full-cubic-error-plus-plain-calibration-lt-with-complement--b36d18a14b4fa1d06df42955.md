# actual_full_cubic_error_plus_plain_calibration_lt_with_complement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d79ce6f-7885-188c-c477-3b0bca216aad",
  "kind": "theorem",
  "lexical_name": "actual_full_cubic_error_plus_plain_calibration_lt_with_complement",
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
  "slug": "actual-full-cubic-error-plus-plain-calibration-lt-with-complement--b36d18a14b4fa1d06df42955",
  "source": {
    "blob": "81d0ae3abf884b1382eab198d0e1c9b64f455222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E4fd6c04a41ac616b088SourceActualCubicShortCalibration/Variant174ed07a706a3f815b7dec61d32b831a5946adb51e73b4bc200dc1b21c7979bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b36d18a14b4fa1d06df42955e9ba3904afffc5f2a303b3071a41c0cb351c5d64",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E4fd6c04a41ac616b088SourceActualCubicShortCalibration/Variant174ed07a706a3f815b7dec61d32b831a5946adb51e73b4bc200dc1b21c7979bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d79ce6f-7885-188c-c477-3b0bca216aad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_cubic_error_plus_plain_calibration_lt_with_complement (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 +
      |∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| < 3 / 50 +
      |∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)| := by
  have he := actual_cubic_full_divisor_sum_eq_short_add_complement A (by linarith)
  rw [he]
  have hs := actual_short_cubic_error_plus_plain_calibration_lt A hA
  have ht := abs_add_le
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ))
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ))
  linarith only [hs, ht]

end
end FormalResearch.RiemannHypothesis.SourceActualCubicShortCalibration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E4fd6c04a41ac616b088SourceActualCubicShortCalibration/Variant174ed07a706a3f815b7dec61d32b831a5946adb51e73b4bc200dc1b21c7979bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E4fd6c04a41ac616b088SourceActualCubicShortCalibration/Variant174ed07a706a3f815b7dec61d32b831a5946adb51e73b4bc200dc1b21c7979bd.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81d0ae3abf884b1382eab198d0e1c9b64f455222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
