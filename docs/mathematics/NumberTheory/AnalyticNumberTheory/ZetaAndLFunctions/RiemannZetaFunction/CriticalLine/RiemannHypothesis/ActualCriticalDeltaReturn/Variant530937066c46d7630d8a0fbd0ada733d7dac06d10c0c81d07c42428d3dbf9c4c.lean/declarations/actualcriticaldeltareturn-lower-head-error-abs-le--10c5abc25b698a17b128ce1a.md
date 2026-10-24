# actualCriticalDeltaReturn_lower_head_error_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5ff7588-55d2-b6c0-31a0-b3f2c11c78f3",
  "kind": "theorem",
  "lexical_name": "actualCriticalDeltaReturn_lower_head_error_abs_le",
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
  "slug": "actualcriticaldeltareturn-lower-head-error-abs-le--10c5abc25b698a17b128ce1a",
  "source": {
    "blob": "c879fc712876f77c5cb9564a75dece778a848470",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 205,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant530937066c46d7630d8a0fbd0ada733d7dac06d10c0c81d07c42428d3dbf9c4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c5abc25b698a17b128ce1a465b1ce07d6702792c98e57018cf0a80d5ca8ac0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant530937066c46d7630d8a0fbd0ada733d7dac06d10c0c81d07c42428d3dbf9c4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5ff7588-55d2-b6c0-31a0-b3f2c11c78f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalDeltaReturn_lower_head_error_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |(1 / 2 : ℝ) * criticalPrimeTest A (Real.log 7) *
      actualRelativePsiTail (Real.log 7) -
        (1 / 2 : ℝ) * Real.sqrt 7 * actualRelativePsiTail (Real.log 7)| ≤
      (5 / 4 : ℝ) * Real.sqrt 7 * (Real.log 7) ^ 2 *
        |actualRelativePsiTail (Real.log 7)| / A ^ 2 := by
  have hc := actualCorrelation_sub_one_abs_le_five hA (Real.log 7)
  have he : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 7)]
    congr 1
    ring
  have hx : (1 / 2 : ℝ) * criticalPrimeTest A (Real.log 7) *
      actualRelativePsiTail (Real.log 7) -
        (1 / 2 : ℝ) * Real.sqrt 7 * actualRelativePsiTail (Real.log 7) =
      ((1 / 2 : ℝ) * Real.sqrt 7 * actualRelativePsiTail (Real.log 7)) *
        (sourceCorrelation explicitSecondDerivative A (Real.log 7) - 1) := by
    rw [criticalPrimeTest, he]
    ring
  rw [hx]
  simp only [abs_mul, abs_of_nonneg (Real.sqrt_nonneg 7),
    abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  calc
    _ ≤ ((1 / 2 : ℝ) * Real.sqrt 7 * |actualRelativePsiTail (Real.log 7)|) *
        (5 / 2 / A ^ 2 * (Real.log 7) ^ 2) :=
      mul_le_mul_of_nonneg_left hc (by positivity)
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.ActualCriticalDeltaReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant530937066c46d7630d8a0fbd0ada733d7dac06d10c0c81d07c42428d3dbf9c4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variant530937066c46d7630d8a0fbd0ada733d7dac06d10c0c81d07c42428d3dbf9c4c.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c879fc712876f77c5cb9564a75dece778a848470` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
