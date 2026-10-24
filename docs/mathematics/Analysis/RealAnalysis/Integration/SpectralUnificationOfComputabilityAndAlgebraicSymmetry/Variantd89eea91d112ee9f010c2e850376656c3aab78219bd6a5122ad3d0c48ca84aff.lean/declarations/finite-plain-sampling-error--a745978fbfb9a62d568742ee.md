# finite_plain_sampling_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb9f5d88-c919-1915-9a75-f9a5ca40ec43",
  "kind": "theorem",
  "lexical_name": "finite_plain_sampling_error",
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
  "slug": "finite-plain-sampling-error--a745978fbfb9a62d568742ee",
  "source": {
    "blob": "036f32b561ee1b123ecf027cc5dd681753c54012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 215,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a745978fbfb9a62d568742ee3b46ac56427c261d505dec808db702d7c0e09a41",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb9f5d88-c919-1915-9a75-f9a5ca40ec43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_plain_sampling_error
    {F : ℝ → ℝ} (hF : ContDiff ℝ 1 F)
    {x : ℝ} (hx : 0 < x)
    (N : ℕ) :
    |leftSampleSum (plainTerm F x) N -
        ∫ u in (1 : ℝ)..(N + 1 : ℝ),
          plainTerm F x u| ≤
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |plainDeriv F x u| := by
  rw [integral_plainSampling_eq_sum_unit_intervals
    hF hx N]
  unfold leftSampleSum
  rw [← Finset.sum_sub_distrib]
  calc
    |∑ k ∈ Finset.Icc 1 N,
      (plainTerm F x k -
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          plainTerm F x u)| ≤
      ∑ k ∈ Finset.Icc 1 N,
        |plainTerm F x k -
          ∫ u in (k : ℝ)..(k + 1 : ℝ),
            plainTerm F x u| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ k ∈ Finset.Icc 1 N,
        ∫ u in (k : ℝ)..(k + 1 : ℝ),
          |plainDeriv F x u| := by
      gcongr with k hk
      exact abs_unit_plain_sampling_error_le
        hF hx k (Finset.mem_Icc.mp hk).1
    _ =
      ∫ u in (1 : ℝ)..(N + 1 : ℝ),
        |plainDeriv F x u| := by
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
                  (fun u => |plainDeriv F x u|)
                  volume 1 (N + 1) := by
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((plainDeriv_continuousOn_pos hF hx).abs.mono
                  (fun u hu => zero_lt_one.trans_le hu.1))
            have hright :
                IntervalIntegrable
                  (fun u => |plainDeriv F x u|)
                  volume (N + 1) (N + 2) := by
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((plainDeriv_continuousOn_pos hF hx).abs.mono
                  (fun u hu => (by positivity : (0 : ℝ) < N + 1).trans_le hu.1))
            have hsplit :=
              intervalIntegral.integral_add_adjacent_intervals
                hleft hright
            rw [ih] at hsplit
            rw [Finset.sum_Icc_succ_top
              (by omega : 1 ≤ N + 1)]
            have hstep : (N : ℝ) + 1 + 1 = N + 2 := by ring
            simpa only [Nat.cast_add, Nat.cast_one, hstep] using hsplit.symm


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantd89eea91d112ee9f010c2e850376656c3aab78219bd6a5122ad3d0c48ca84aff.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f32b561ee1b123ecf027cc5dd681753c54012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
