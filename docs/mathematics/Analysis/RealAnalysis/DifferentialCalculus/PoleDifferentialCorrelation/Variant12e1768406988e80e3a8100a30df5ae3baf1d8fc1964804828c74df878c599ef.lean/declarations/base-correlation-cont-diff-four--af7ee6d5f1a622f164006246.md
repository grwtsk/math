# base_correlation_cont_diff_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bc2ef396d31fd9257473b8da5c55961453dedcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b7cfc07-2d3f-8317-5dbd-a09639c5b323",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7818a57-94a6-c00a-9e94-78d388b4b07b",
  "kind": "theorem",
  "lexical_name": "base_correlation_cont_diff_four",
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
  "slug": "base-correlation-cont-diff-four--af7ee6d5f1a622f164006246",
  "source": {
    "blob": "7bc2ef396d31fd9257473b8da5c55961453dedcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 223,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af7ee6d5f1a622f164006246d93e706446dac0732651da5c50410606cf825760",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7818a57-94a6-c00a-9e94-78d388b4b07b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem base_correlation_cont_diff_four (A : ℝ) : ContDiff ℝ 4 (baseCorrelation A) := by
  have hF (k : ℕ) (hk : k ≤ 1) :
      Differentiable ℝ (fun t ↦ fixedKernel k (t / A)) :=
    fun t ↦ (has_deriv_at_fixed_kernel_comp_div A k hk t).differentiableAt
  have hS (k : ℕ) (hk : k ≤ 1) :
      Differentiable ℝ (fun t ↦ sineMoment k (t / A)) :=
    fun t ↦ (has_deriv_at_sine_moment_comp_div A k hk t).differentiableAt
  convert (contDiff_nat_iff_iteratedDeriv (f := baseCorrelation A) (n := 4)).mpr ?_ using 1 <;>
    try rfl
  constructor
  · intro m hm
    interval_cases m
    · rw [iteratedDeriv_zero]
      convert (hF 0 (by norm_num)).continuous using 1
      rfl
    · rw [iteratedDeriv_one, base_correlation_deriv]
      exact (hS 0 (by norm_num)).continuous.neg.div_const A
    · rw [base_correlation_second_deriv]
      exact (hF 1 (by norm_num)).continuous.neg.div_const (A ^ 2)
    · rw [base_correlation_third_deriv]
      exact (hS 1 (by norm_num)).continuous.div_const (A ^ 3)
    · rw [base_correlation_fourth_deriv]
      exact ((PhaseKernelBoundary.fixed_kernel_continuous 2 (by norm_num)).comp
        (continuous_id.div_const A)).div_const (A ^ 4)
  · intro m hm
    interval_cases m
    · rw [iteratedDeriv_zero]
      convert hF 0 (by norm_num) using 1 <;> rfl
    · rw [iteratedDeriv_one, base_correlation_deriv]
      exact (hS 0 (by norm_num)).fun_neg.div_const A
    · rw [base_correlation_second_deriv]
      exact (hF 1 (by norm_num)).fun_neg.div_const (A ^ 2)
    · rw [base_correlation_third_deriv]
      exact (hS 1 (by norm_num)).div_const (A ^ 3)

/-- The scaled kernel is exactly the expanded differential operator on its fixed base. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PoleDifferentialCorrelation/Variant12e1768406988e80e3a8100a30df5ae3baf1d8fc1964804828c74df878c599ef.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bc2ef396d31fd9257473b8da5c55961453dedcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
