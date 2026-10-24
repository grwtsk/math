# cesaroWeight_weighted_second_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c3e886d-da68-aa58-7a9c-aa04ea102786",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_weighted_second_budget",
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
  "slug": "cesaroweight-weighted-second-budget--74e50d2ed1eb1e5f37d2816d",
  "source": {
    "blob": "d76d6ad67de95a3248ef9c359d7b5aadb4f04b61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 167,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74e50d2ed1eb1e5f37d2816dc3a7bd324063a12bd3836626ce932a53ad794ddf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c3e886d-da68-aa58-7a9c-aa04ea102786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_weighted_second_budget (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
        65 / 3 + 268 / A := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let B := 134 / A ^ 3 + 65 / (6 * A ^ 2)
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hmono : (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
      ∫ t in Real.log 2..2 * A, t * B := by
    apply intervalIntegral.integral_mono_on hlA
      (((continuous_id.sub continuous_const).mul hc.abs).intervalIntegrable _ _)
      ((by fun_prop : Continuous (fun t : ℝ => t * B)).intervalIntegrable _ _)
    intro t ht
    change (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t| ≤ t * B
    have ht0 : 0 ≤ t := hl0.trans ht.1
    have hkernel := cesaroWeight_second_abs_le_physical A t hA ht0 ht.2
    exact (mul_le_mul_of_nonneg_left hkernel (by linarith [ht.1])).trans
      (mul_le_mul_of_nonneg_right (by linarith) hB)
  have hsub : (∫ t in Real.log 2..2 * A, t * B) ≤ ∫ t in 0..2 * A, t * B := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      ((by fun_prop : Continuous (fun t : ℝ => t * B)).intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le hB
  have he : (∫ t in 0..2 * A, t * B) = 65 / 3 + 268 / A := by
    rw [integral_linear]
    dsimp [B]
    field_simp
    ring
  exact hmono.trans (hsub.trans he.le)

/-- A fixed cap is available at the same radius ninety-one as the checked fourth derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantcea6c5a05b69b0d17467185b18a43f0b8b159a38ad3224a9c5ceec22cc5fe2ee.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d76d6ad67de95a3248ef9c359d7b5aadb4f04b61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
