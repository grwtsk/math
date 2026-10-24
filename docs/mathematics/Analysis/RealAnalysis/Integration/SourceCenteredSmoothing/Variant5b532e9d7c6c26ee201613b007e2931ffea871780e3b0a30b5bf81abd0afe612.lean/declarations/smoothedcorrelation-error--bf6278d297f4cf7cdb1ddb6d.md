# smoothedCorrelation_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50b2e5e6-0ad5-a2bd-8f69-2af4d27cf19d",
  "kind": "theorem",
  "lexical_name": "smoothedCorrelation_error",
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
  "slug": "smoothedcorrelation-error--bf6278d297f4cf7cdb1ddb6d",
  "source": {
    "blob": "32038d87c50cc68de4f19caa2971a2f5308a5914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf6278d297f4cf7cdb1ddb6d9a78204ea388c6acad65442c901338b334a28c6c",
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

Occurrence: `result:50b2e5e6-0ad5-a2bd-8f69-2af4d27cf19d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothedCorrelation_error {A : ℝ} (hA : 200 ≤ A) (t : ℝ)
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ) :
    |sourceCorrelation explicitSecondDerivative A t - smoothedCorrelation μ A t| ≤
      (5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ) := by
  let C := sourceCorrelation explicitSecondDerivative A
  have h1 : 1 ≤ A := by linarith
  have hc : Integrable (fun y : ℝ => C (t + y)) μ :=
    shiftedCorrelation_integrable μ h1 t
  have hk : Integrable (fun _ : ℝ => C t) μ := integrable_const _
  have hl : Integrable (fun y : ℝ => y * deriv C t) μ := hy.mul_const _
  have hr : Integrable (fun y : ℝ => C (t + y) - C t - y * deriv C t) μ :=
    (hc.sub hk).sub hl
  have he : (∫ y : ℝ, C (t + y) - C t - y * deriv C t ∂μ) =
      smoothedCorrelation μ A t - C t := by
    have hs := integral_sub (hc.sub hk) hl
    change (∫ y : ℝ, C (t + y) - C t - y * deriv C t ∂μ) =
      (∫ y : ℝ, C (t + y) - C t ∂μ) - (∫ y : ℝ, y * deriv C t ∂μ) at hs
    rw [hs, integral_sub hc hk, integral_const, probReal_univ, one_smul,
      integral_mul_const, hmean, zero_mul, sub_zero]
    rfl
  rw [abs_sub_comm, ← he]
  calc
    _ ≤ ∫ y : ℝ, |C (t + y) - C t - y * deriv C t| ∂μ := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm (μ := μ)
        (fun y : ℝ => C (t + y) - C t - y * deriv C t)
    _ ≤ ∫ y : ℝ, (5 / (2 * A ^ 2)) * y ^ 2 ∂μ := by
      apply integral_mono hr.abs (hy2.const_mul _)
      intro y
      exact (sourceCorrelation_linear_taylor_bound_five hA t y).trans_eq (by ring)
    _ = _ := integral_const_mul _ _

/-- The derivative channel pays its full absolute first displacement moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCenteredSmoothing/Variant5b532e9d7c6c26ee201613b007e2931ffea871780e3b0a30b5bf81abd0afe612.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32038d87c50cc68de4f19caa2971a2f5308a5914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
