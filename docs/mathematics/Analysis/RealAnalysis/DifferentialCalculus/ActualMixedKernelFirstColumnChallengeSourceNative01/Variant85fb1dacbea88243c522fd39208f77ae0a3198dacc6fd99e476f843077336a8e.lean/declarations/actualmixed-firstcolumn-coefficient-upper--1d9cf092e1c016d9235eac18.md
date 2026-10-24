# actualMixed_firstColumn_coefficient_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a25fe844-deca-7540-15dc-6f5f43f01837",
  "kind": "theorem",
  "lexical_name": "actualMixed_firstColumn_coefficient_upper",
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
  "slug": "actualmixed-firstcolumn-coefficient-upper--1d9cf092e1c016d9235eac18",
  "source": {
    "blob": "5e4a2916f8c32e60d81103764ac02b308ee16f1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant85fb1dacbea88243c522fd39208f77ae0a3198dacc6fd99e476f843077336a8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d9cf092e1c016d9235eac1814d17595b04ebb228d0a838d17837eb5fc2cb6a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant85fb1dacbea88243c522fd39208f77ae0a3198dacc6fd99e476f843077336a8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25fe844-deca-7540-15dc-6f5f43f01837`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixed_firstColumn_coefficient_upper {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    actualMixedColumnCoefficient A t u ≤ -(1 / 5 : ℝ) := by
  have hy := actualMixed_firstColumn_shift_bounds hA ht ht1 hu hu2
  have hA0 : 0 < A := by linarith
  have hy2 : (t + Real.log u) ^ 2 ≤ A ^ 2 / 100 := by nlinarith
  have hc := actualCorrelation_sub_one_abs_le_five (by linarith : 91 ≤ A) (t + Real.log u)
  have hc1 : |sourceCorrelation explicitSecondDerivative A (t + Real.log u) - 1| ≤
      (1 / 40 : ℝ) := by
    calc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (t + Real.log u) ^ 2 := hc
      _ ≤ (5 / 2 : ℝ) / A ^ 2 * (A ^ 2 / 100) := by gcongr
      _ = 1 / 40 := by field_simp; ring
  have hd := RH16FiveCesaro.actualCorrelation_second_abs_le_five
    (by linarith : 91 ≤ A) (t + Real.log u)
  have hd1 : |deriv (deriv (sourceCorrelation explicitSecondDerivative A))
      (t + Real.log u)| ≤ (1 / 1600 : ℝ) := by
    calc
      _ ≤ 5 / A ^ 2 := hd
      _ ≤ 5 / 8000 := div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
      _ = 1 / 1600 := by norm_num
  have hcl := (abs_le.mp hc1).1
  have hdu := (abs_le.mp hd1).2
  unfold actualMixedColumnCoefficient
  linarith

/-- In particular its absolute size cannot be treated as a pure small curvature term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant85fb1dacbea88243c522fd39208f77ae0a3198dacc6fd99e476f843077336a8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualMixedKernelFirstColumnChallengeSourceNative01/Variant85fb1dacbea88243c522fd39208f77ae0a3198dacc6fd99e476f843077336a8e.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4a2916f8c32e60d81103764ac02b308ee16f1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
