# smoothedSlope_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7ef6ddee-faf1-e857-8dfc-bafbb5552011",
  "kind": "theorem",
  "lexical_name": "smoothedSlope_error",
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
  "slug": "smoothedslope-error--45f6e6b26265fd54edd90ee8",
  "source": {
    "blob": "32038d87c50cc68de4f19caa2971a2f5308a5914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45f6e6b26265fd54edd90ee8edf35120e192a3926569cf717e1dd5fb038a2091",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ef6ddee-faf1-e857-8dfc-bafbb5552011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedSlope_error {A : ℝ} (hA : 200 ≤ A) (t : ℝ)
    (hy : Integrable (fun y : ℝ => |y|) μ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t - smoothedSlope μ A t| ≤
      (5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have h1 : 1 ≤ A := by linarith
  have hc : Integrable (fun y : ℝ => deriv C (t + y)) μ :=
    shiftedSlope_integrable μ h1 t
  have hk : Integrable (fun _ : ℝ => deriv C t) μ := integrable_const _
  have hr : Integrable (fun y : ℝ => deriv C (t + y) - deriv C t) μ :=
    hc.sub hk
  have he : (∫ y : ℝ, deriv C (t + y) - deriv C t ∂μ) =
      smoothedSlope μ A t - deriv C t := by
    have hs := integral_sub hc hk
    change (∫ y : ℝ, deriv C (t + y) - deriv C t ∂μ) =
      (∫ y : ℝ, deriv C (t + y) ∂μ) - (∫ _y : ℝ, deriv C t ∂μ) at hs
    rw [hs, integral_const, probReal_univ, one_smul]
    rfl
  rw [abs_sub_comm, ← he]
  calc
    _ ≤ ∫ y : ℝ, |deriv C (t + y) - deriv C t| ∂μ := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm (μ := μ)
        (fun y : ℝ => deriv C (t + y) - deriv C t)
    _ ≤ ∫ y : ℝ, (5 / A ^ 2) * |y| ∂μ := by
      apply integral_mono hr.abs (hy.const_mul _)
      intro y
      exact sourceCorrelation_deriv_increment_bound_five hA t y
    _ = _ := integral_const_mul _ _

/-- The next finite shell consumer has both smoothing hypotheses discharged.
Its signed coefficient masses and logarithmic tangent drift remain explicit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32038d87c50cc68de4f19caa2971a2f5308a5914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
