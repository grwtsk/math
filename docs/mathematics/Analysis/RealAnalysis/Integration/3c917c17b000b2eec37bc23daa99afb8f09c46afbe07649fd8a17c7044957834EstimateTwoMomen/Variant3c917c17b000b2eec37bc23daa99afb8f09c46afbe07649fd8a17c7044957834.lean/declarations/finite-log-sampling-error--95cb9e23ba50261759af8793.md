# finite_log_sampling_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f67dabeab1d9b08ef25033ccd41252e02054d30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7588f80c-1fd3-eb1b-6bc1-c3698f8d54ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c28e929-1ded-5481-0dba-149ffb92f3c0",
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
  "slug": "finite-log-sampling-error--95cb9e23ba50261759af8793",
  "source": {
    "blob": "0f67dabeab1d9b08ef25033ccd41252e02054d30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 196,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95cb9e23ba50261759af87930aee658f90cbfed01ea2d263a5531617fc6757ce",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c28e929-1ded-5481-0dba-149ffb92f3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–261.

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
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
                  (fun u hu => zero_lt_one.trans_le hu.1))
            have hright :
                IntervalIntegrable
                  (fun u => |logSamplingDerivative F x u|)
                  volume (N + 1) (N + 2) := by
              exact ContinuousOn.intervalIntegrable_of_Icc (by norm_num)
                ((logSamplingDerivative_continuousOn_pos hF hx).abs.mono
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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834EstimateTwoMomen/Variant3c917c17b000b2eec37bc23daa99afb8f09c46afbe07649fd8a17c7044957834.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f67dabeab1d9b08ef25033ccd41252e02054d30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
