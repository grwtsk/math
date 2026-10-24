# actualCriticalDeltaReturn_lower_head_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f307a8a2-ac08-63c7-3500-0b5ec8b461e9",
  "kind": "theorem",
  "lexical_name": "actualCriticalDeltaReturn_lower_head_abs_le",
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
  "slug": "actualcriticaldeltareturn-lower-head-abs-le--17dd24521d5a2aaa8e9d6b87",
  "source": {
    "blob": "9c0cb2c1b1f4d4aca14c3988b1ce26a578701637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 170,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17dd24521d5a2aaa8e9d6b878bad7ecdab90420723c37de1be0f45a39d7a1bc7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f307a8a2-ac08-63c7-3500-0b5ec8b461e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalDeltaReturn_lower_head_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |(1 / 2 : ℝ) * criticalPrimeTest A (Real.log 7) *
      actualRelativePsiTail (Real.log 7)| ≤
        (1 / 2 : ℝ) * Real.sqrt 7 * |actualRelativePsiTail (Real.log 7)| := by
  have hc := actual_correlation_abs_le_one A (Real.log 7) hA
  have he : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos (by norm_num : (0 : ℝ) < 7)]
    congr 1
    ring
  rw [criticalPrimeTest, abs_mul, abs_mul, Real.abs_exp, he]
  norm_num only [abs_of_pos (by norm_num : (0 : ℝ) < 1 / 2)]
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (by nlinarith [hc]) (by positivity)) (abs_nonneg _)

end
end FormalResearch.RiemannHypothesis.ActualCriticalDeltaReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCriticalDeltaReturn/Variantefe08ee65fb4e07ced5aa5c5b0b1c59f288b5eb89f5c3e21b9495cc8ea961cc3.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c0cb2c1b1f4d4aca14c3988b1ce26a578701637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
