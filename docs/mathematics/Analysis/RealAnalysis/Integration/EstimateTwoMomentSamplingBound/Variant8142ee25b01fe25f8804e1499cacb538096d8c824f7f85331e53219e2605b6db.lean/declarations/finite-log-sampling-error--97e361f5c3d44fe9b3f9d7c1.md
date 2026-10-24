# finite_log_sampling_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2b52f49-0856-00c7-567c-e474dc0f5ce6",
  "kind": "theorem",
  "lexical_name": "finite_log_sampling_error",
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
  "slug": "finite-log-sampling-error--97e361f5c3d44fe9b3f9d7c1",
  "source": {
    "blob": "077045859d21a5db0987247d29004a7e6334c399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 207,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97e361f5c3d44fe9b3f9d7c14feeb1f1ea311c1698db6704a50dfcf4da51f456",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2b52f49-0856-00c7-567c-e474dc0f5ce6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_log_sampling_error
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ) :
    |leftSampleSum (logSamplingTerm F x) N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ),
          logSamplingTerm F x u| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |logSamplingDerivative F x u| := by
  rw [integral_logSampling_eq_sum_unit_intervals
    hF hx N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    |∑ k ∈ Finset.Icc 1 N,
      (logSamplingTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          logSamplingTerm F x u)| ≤
      ∑ k ∈ Finset.Icc 1 N,
        |logSamplingTerm F x k -
          ∫ u in (k : ℝ)..(k + 1 : ℝ),
            logSamplingTerm F x u| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          |logSamplingDerivative F x u| := by
      gcongr with k hk
      exact abs_unit_log_sampling_error_le
        hF hx k (Finset.mem_Icc.mp hk).1
    _ =
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |logSamplingDerivative F x u| := by
      symm
      -- Reuse the same partition induction directly through continuity.
      induction N with
      | zero => norm_num
      | succ N ih =>
          by_cases hN : N = 0
          · subst N
            norm_num
          · have h1N : 1 ≤ N :=
              Nat.one_le_iff_ne_zero.mpr hN
            have hleft :
                IntervalIntegrable
                  (fun u => |logSamplingDerivative F x u|)
                  volume 1 (N + 1) := by
              exact
                ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
                  (fun u hu => by linarith [hu.1]))
                  .intervalIntegrable_of_Icc
                    (by norm_num)
            have hright :
                IntervalIntegrable
                  (fun u => |logSamplingDerivative F x u|)
                  volume (N + 1) (N + 2) := by
              exact
                ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
                  (fun u hu => by linarith [hu.1]))
                  .intervalIntegrable_of_Icc
                    (by norm_num)
            have hsplit :=
              intervalIntegral.integral_add_adjacent_intervals
                hleft hright
            rw [ih] at hsplit
            rw [Finset.sum_Icc_succ_top
              (by omega : 1 ≤ N + 1)]
            norm_num at hsplit ⊢
            linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateTwoMomentSamplingBound/Variant8142ee25b01fe25f8804e1499cacb538096d8c824f7f85331e53219e2605b6db.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `077045859d21a5db0987247d29004a7e6334c399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
