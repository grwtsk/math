# logProfile_deriv_abs_le_density

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7cc3f0c-4d01-a352-f188-6b721e4e5c12",
  "kind": "theorem",
  "lexical_name": "logProfile_deriv_abs_le_density",
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
  "slug": "logprofile-deriv-abs-le-density--47381845afc32a7b79e1c4ad",
  "source": {
    "blob": "0d69fa87e0c697dcf51df2ecbdbb5c630098feae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47381845afc32a7b79e1c4adfe287beae758f417800003b6950f7efed32b3cb7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7cc3f0c-4d01-a352-f188-6b721e4e5c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logProfile_deriv_abs_le_density {A d y : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hy : 1 ≤ y) :
    |deriv (logProfile A d) y| ≤
      (1 / Real.sqrt d * y ^ (-3 / 2 : ℝ)) *
        (1 + (1 / 2 + 5 / A) * Real.log y) := by
  have hd0 : 0 < d := by linarith
  have hy0 : 0 < y := by linarith
  have hl : 0 ≤ Real.log y := Real.log_nonneg hy
  have hw : 0 ≤ 1 / Real.sqrt d * y ^ (-3 / 2 : ℝ) := by positivity
  have hc := actual_correlation_abs_le_one A (Real.log d + Real.log y) hA
  have hcp := sourceCorrelation_deriv_abs_le_five_div hA (Real.log d + Real.log y)
  have hcoef : |1 - Real.log y / 2| ≤ 1 + Real.log y / 2 := by
    simpa only [abs_one, abs_div, abs_of_nonneg hl,
      abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log y / 2)
  rw [logProfile_deriv_eq hA hd0 hy0, abs_mul, abs_of_nonneg hw]
  apply mul_le_mul_of_nonneg_left _ hw
  calc
    _ ≤ |1 - Real.log y / 2| *
          |sourceCorrelation explicitSecondDerivative A (Real.log d + Real.log y)| +
        Real.log y * |deriv (sourceCorrelation explicitSecondDerivative A)
          (Real.log d + Real.log y)| := by
      simpa only [abs_mul, abs_of_nonneg hl] using
        abs_add_le
          ((1 - Real.log y / 2) *
            sourceCorrelation explicitSecondDerivative A (Real.log d + Real.log y))
          (Real.log y * deriv (sourceCorrelation explicitSecondDerivative A)
            (Real.log d + Real.log y))
    _ ≤ (1 + Real.log y / 2) * 1 + Real.log y * (5 / A) := by
      apply add_le_add
      · exact mul_le_mul hcoef hc (abs_nonneg _) (by positivity)
      · exact mul_le_mul_of_nonneg_left hcp hl
    _ = _ := by ring

/-- Positive-base powers convert the same literal budget to the requested denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSource/Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d69fa87e0c697dcf51df2ecbdbb5c630098feae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
