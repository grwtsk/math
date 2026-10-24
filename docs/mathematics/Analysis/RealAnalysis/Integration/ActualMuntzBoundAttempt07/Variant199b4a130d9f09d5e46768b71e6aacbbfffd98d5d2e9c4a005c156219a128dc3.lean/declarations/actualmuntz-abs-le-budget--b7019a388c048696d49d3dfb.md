# actualMuntz_abs_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c304bf6e-9c4c-1acb-0c31-8dd8b893d756",
  "kind": "theorem",
  "lexical_name": "actualMuntz_abs_le_budget",
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
  "slug": "actualmuntz-abs-le-budget--b7019a388c048696d49d3dfb",
  "source": {
    "blob": "4d5033aa7231ff0e735ea40eaabec867b0157d09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7019a388c048696d49d3dfbc31169f1aa8fd76bf11cc32b772489b7de54b12d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c304bf6e-9c4c-1acb-0c31-8dd8b893d756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMuntz_abs_le_budget {A : ℝ} (hA : 1 ≤ A) (x : ℝ) :
    |actualMuntz A x| ≤ derivativeBudget A := by
  by_cases hx : 0 < x
  · have h := actualMuntz_abs_le_scaled_derivative hA hx
    rw [scaled_derivative_integral_eq hA hx,
      intervalIntegral.integral_of_le (Real.exp_pos A).le] at h
    exact h.trans (setIntegral_le_integral (actual_derivative_abs_integrable hA)
      (Eventually.of_forall fun _ => abs_nonneg _))
  · rw [actualMuntz_zero_outside hA (Or.inl (le_of_not_gt hx)),abs_zero]
    exact derivativeBudget_nonneg A

end ContinuousResearch.ActualMuntzBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt07/Variant199b4a130d9f09d5e46768b71e6aacbbfffd98d5d2e9c4a005c156219a128dc3.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d5033aa7231ff0e735ea40eaabec867b0157d09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
