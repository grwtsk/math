# abs_unit_sampling_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64b4a837-3583-a0eb-8cbf-c85ec7ab1227",
  "kind": "theorem",
  "lexical_name": "abs_unit_sampling_error_le",
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
  "slug": "abs-unit-sampling-error-le--dd7c332d415540b4b8425f0e",
  "source": {
    "blob": "26f94a975b91c8060b3036e8eb3bb5f84955edb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd7c332d415540b4b8425f0e3d7d6904466b8fd3bd7654ce0839b108626f0b59",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64b4a837-3583-a0eb-8cbf-c85ec7ab1227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_unit_sampling_error_le
    (g : ℝ → ℝ)
    (hg : ContDiff ℝ 1 g)
    (k : ℕ) :
    |g k - ∫ u in (k : ℝ)..(k + 1 : ℝ), g u| ≤
      ∫ u in (k : ℝ)..(k + 1 : ℝ), |deriv g u| := by
  rw [unit_sampling_error_identity g hg k, abs_neg]
  have hInt :
      IntervalIntegrable
        (fun u : ℝ => |deriv g u|)
        volume (k : ℝ) (k + 1 : ℝ) :=
    ((hg.continuous_deriv (by norm_num)).abs).intervalIntegrable _ _
  have h :=
    intervalIntegral.norm_integral_le_of_norm_le
      (a := (k : ℝ)) (b := (k + 1 : ℝ))
      (by norm_num : (k : ℝ) ≤ k + 1)
      (f := fun u : ℝ =>
        ((k + 1 : ℝ) - u) * deriv g u)
      (g := fun u : ℝ => |deriv g u|)
      ?_ hInt
  · simpa [Real.norm_eq_abs] using h
  · filter_upwards with u hu
    have hu' : (k : ℝ) < u ∧ u ≤ k + 1 := hu
    have hw0 : 0 ≤ (k + 1 : ℝ) - u := by linarith
    have hw1 : (k + 1 : ℝ) - u ≤ 1 := by linarith
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg hw0]
    nlinarith [abs_nonneg (deriv g u)]

/-- Integral additivity across an integer partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSampling/Variantfe5f28fda816fd3dc46aa8cdd5ed5d13655e33c4b1aef5fc3e4bdc230e0b75e7.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f94a975b91c8060b3036e8eb3bb5f84955edb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
