# cesaroWeight_weighted_budget_twenty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3f66f05-1c9f-15b8-530e-3fa6cfdd26c1",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_weighted_budget_twenty",
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
  "slug": "cesaroweight-weighted-budget-twenty--5f6ffb01ffdfd233cf6daec9",
  "source": {
    "blob": "930869bd4577b8d63d0b2d796c4b33b584f4ff24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f6ffb01ffdfd233cf6daec90608dab8c6f4c8ae8d8d918b93b1a6b587a7c8b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f66f05-1c9f-15b8-530e-3fa6cfdd26c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_weighted_budget_twenty (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
        20 + 268 / (3 * A) := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let H := fun t : ℝ => 67 / A ^ 4 * (2 * A - t) + 10 / A ^ 2
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hH (t : ℝ) (ht : t ≤ 2 * A) : 0 ≤ H t := by
    dsimp [H]
    exact add_nonneg (mul_nonneg (by positivity) (by linarith)) (by positivity)
  have hmono : (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
      ∫ t in Real.log 2..2 * A, t * H t := by
    apply intervalIntegral.integral_mono_on hlA
      (((continuous_id.sub continuous_const).mul hc.abs).intervalIntegrable _ _)
      ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable _ _)
    intro t ht
    change (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t| ≤ t * H t
    exact (mul_le_mul_of_nonneg_left (cesaroWeight_second_abs_le_upper A t hA ht.2)
      (by linarith [ht.1])).trans
      (mul_le_mul_of_nonneg_right (by linarith) (hH t ht.2))
  have hsub : (∫ t in Real.log 2..2 * A, t * H t) ≤ ∫ t in 0..2 * A, t * H t := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le (hH t ht.2)
  have he : (∫ t in 0..2 * A, t * H t) = 20 + 268 / (3 * A) := by
    have hf : (fun t : ℝ => t * H t) =
        (fun t : ℝ => t * ((-67 / A ^ 4) * t + (134 / A ^ 3 + 10 / A ^ 2))) := by
      ext t
      dsimp [H]
      field_simp
      ring
    rw [hf, integral_quadratic]
    field_simp
    ring
  exact hmono.trans (hsub.trans he.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SharperCesaroKernelBudget/Variantd41c74047239b3f54d8aae1fa853e1d683ea8f6a0599a8b19ab70a543710f1aa.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `930869bd4577b8d63d0b2d796c4b33b584f4ff24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
