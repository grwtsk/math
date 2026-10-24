# actual_cutoff_integral_moment_error_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8278d6ba-1477-2377-0862-10fd2803a3a0",
  "kind": "theorem",
  "lexical_name": "actual_cutoff_integral_moment_error_le_one",
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
  "slug": "actual-cutoff-integral-moment-error-le-one--45e2e77c741584bbceac9576",
  "source": {
    "blob": "b7778df09ee0c6d1af6f734ea8e80361f4c3bc89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45e2e77c741584bbceac9576f3174cc20dc6f5725029d6413f3ee2b11bb91df4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8278d6ba-1477-2377-0862-10fd2803a3a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_cutoff_integral_moment_error_le_one {A r : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) :
    |(∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x) -
      (1 / r) * (testMoment A (1 / r)) ^ 2| ≤ 1 := by
  rw [censusCutoff, actual_logarithmic_integral_exact hA hr]
  have hs := actual_full_moment_retains_negative_half hA (1 / r)
  simp_rw [neg_mul, one_div_mul_eq_div, ← neg_div] at hs
  have heq : (1 / r) * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / r) * C A t) -
      (1 / r) * (testMoment A (1 / r)) ^ 2 =
      -(1 / r) * (∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) * C A t) := by
    rw [hs]
    ring
  rw [heq, abs_mul, abs_neg, abs_of_pos (one_div_pos.mpr hr)]
  have h := mul_le_mul_of_nonneg_left (actual_negative_half_price_le_radius hA hr)
    (one_div_pos.mpr hr).le
  simpa [hr.ne'] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCensusMoment/Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7778df09ee0c6d1af6f734ea8e80361f4c3bc89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
