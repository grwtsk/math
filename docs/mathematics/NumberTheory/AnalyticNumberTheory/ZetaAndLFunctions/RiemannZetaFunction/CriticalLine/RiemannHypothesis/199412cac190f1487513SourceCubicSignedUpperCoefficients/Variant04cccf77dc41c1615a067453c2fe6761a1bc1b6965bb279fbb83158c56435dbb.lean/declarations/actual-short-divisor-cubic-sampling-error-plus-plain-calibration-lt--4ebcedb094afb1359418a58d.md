# actual_short_divisor_cubic_sampling_error_plus_plain_calibration_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2932dbde-cb17-b17f-7760-60e8b23a33f0",
  "kind": "theorem",
  "lexical_name": "actual_short_divisor_cubic_sampling_error_plus_plain_calibration_lt",
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
  "slug": "actual-short-divisor-cubic-sampling-error-plus-plain-calibration-lt--4ebcedb094afb1359418a58d",
  "source": {
    "blob": "d6fea837fc63ff5ae42a73956188dc798c92aabf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant04cccf77dc41c1615a067453c2fe6761a1bc1b6965bb279fbb83158c56435dbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ebcedb094afb1359418a58db9b726c3ef47703618102d0d394c7aec2c3ae4a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant04cccf77dc41c1615a067453c2fe6761a1bc1b6965bb279fbb83158c56435dbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2932dbde-cb17-b17f-7760-60e8b23a33f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_short_divisor_cubic_sampling_error_plus_plain_calibration_lt
    (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 +
    |(∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) -
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ)))| <
      3 / 50 := by
  rw [actual_short_divisor_upper_cubic_coefficients A hA, add_sub_cancel_left]
  exact actual_short_cubic_error_plus_plain_calibration_lt A hA

/-- Full finite divisor sampling leaves every complementary row in the exact error sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant04cccf77dc41c1615a067453c2fe6761a1bc1b6965bb279fbb83158c56435dbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant04cccf77dc41c1615a067453c2fe6761a1bc1b6965bb279fbb83158c56435dbb.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6fea837fc63ff5ae42a73956188dc798c92aabf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
