# actualLowerTimeFactor_eq_negative_error_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3891cfe7-380d-2a2b-0725-e0abba553c41",
  "kind": "theorem",
  "lexical_name": "actualLowerTimeFactor_eq_negative_error_integral",
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
  "slug": "actuallowertimefactor-eq-negative-error-integral--eee8d04bc81702321858f854",
  "source": {
    "blob": "9ea9faaf056b788be3ddff77b8975d5acd85057c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eee8d04bc81702321858f85471cb3e8061eb63c01ff823fbcea3e49754d6ab8f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3891cfe7-380d-2a2b-0725-e0abba553c41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLowerTimeFactor_eq_negative_error_integral {A : ℝ} (hA : 1 ≤ A) :
    actualLowerTimeFactor A =
      -(∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        mangoldtLogError t * actualLogMixedDensity A t
          (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) := by
  let a := Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)
  have h := actual_time_covariant_abel A 0 (Real.log (sourceKernelCutoff A : ℝ))
    (actual_orders hA).2.1 (fun t => actualLogMixedDensity A t a)
    (mixed_contDiff (by linarith) a)
  simp only [sub_zero, actualMixedDensity_upperTime_zero A hA a le_rfl,
    mul_zero, zero_sub, actualTwistedTimeDensity_eq_time_deriv (by linarith : 0 < A)] at h
  dsimp only [actualLowerTimeFactor, a] at h ⊢
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSupportEdgeLowerTrace/Variantf75ad26be531bd96010de717f498c636a842d5f5dc66cfc9c9a93d0157540faf.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea9faaf056b788be3ddff77b8975d5acd85057c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
