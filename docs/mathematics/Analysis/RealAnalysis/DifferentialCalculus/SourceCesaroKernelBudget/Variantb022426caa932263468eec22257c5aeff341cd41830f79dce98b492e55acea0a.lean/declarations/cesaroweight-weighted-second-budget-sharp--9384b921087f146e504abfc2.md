# cesaroWeight_weighted_second_budget_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6aedb1a2-bc3a-526f-5722-fa2a34fde472",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_weighted_second_budget_sharp",
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
  "slug": "cesaroweight-weighted-second-budget-sharp--9384b921087f146e504abfc2",
  "source": {
    "blob": "9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 205,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9384b921087f146e504abfc2e4be7ba187f75f10858d3b6ba18eedc79c4b77eb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aedb1a2-bc3a-526f-5722-fa2a34fde472`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_weighted_second_budget_sharp (A : ℝ) (hA : 91 ≤ A) :
    (∫ t in Real.log 2..2 * A,
      (t - Real.log 2) * |deriv (deriv (cesaroWeight A)) t|) ≤
        65 / 3 + 268 / (3 * A) := by
  have hp : 0 < A := by linarith
  have hl0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hlA : Real.log (2 : ℝ) ≤ 2 * A := by linarith
  let H := fun t : ℝ => 67 / A ^ 4 * (2 * A - t) + 65 / (6 * A ^ 2)
  have hc := cesaroWeight_second_deriv_continuous A hp
  have hbound (t : ℝ) (ht : t ≤ 2 * A) :
      |deriv (deriv (cesaroWeight A)) t| ≤ H t := by
    have h3 := actual_correlation_third_abs_le_upper_distance A t hA ht
    have h2 := sourceCorrelation_second_deriv_abs_le_coefficient (by linarith : 1 ≤ A) t
    have hb : 162826 / (7623 * A ^ 2) ≤ 65 / (3 * A ^ 2) := by
      apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
      nlinarith [sq_pos_of_pos hp]
    have heq : 65 / (3 * A ^ 2) / 2 = 65 / (6 * A ^ 2) := by
      rw [div_div]
      congr 1
      ring
    have hd := (div_le_div_of_nonneg_right (h2.trans hb)
      (by norm_num : (0 : ℝ) ≤ 2)).trans_eq heq
    rw [cesaroWeight_second_deriv A t hp]
    exact (abs_add_le _ _).trans (by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add h3 hd)
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
    exact (mul_le_mul_of_nonneg_left (hbound t ht.2) (by linarith [ht.1])).trans
      (mul_le_mul_of_nonneg_right (by linarith) (hH t ht.2))
  have hsub : (∫ t in Real.log 2..2 * A, t * H t) ≤ ∫ t in 0..2 * A, t * H t := by
    apply intervalIntegral.integral_mono_interval hl0 hlA le_rfl _
      ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable _ _)
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    exact mul_nonneg ht.1.le (hH t ht.2)
  let P := fun t : ℝ => 67 / A ^ 4 * (A * t ^ 2 - t ^ 3 / 3) +
    65 / (12 * A ^ 2) * t ^ 2
  have hP (t : ℝ) : HasDerivAt P (t * H t) t := by
    have hd := (((((hasDerivAt_id t).pow 2).const_mul A).sub
      (((hasDerivAt_id t).pow 3).div_const 3)).const_mul (67 / A ^ 4)).add
      (((hasDerivAt_id t).pow 2).const_mul (65 / (12 * A ^ 2)))
    exact hd.congr_deriv (by dsimp only [id_eq, H]; ring)
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hP t)
    ((by fun_prop : Continuous (fun t : ℝ => t * H t)).intervalIntegrable 0 (2 * A))
  have he : P (2 * A) - P 0 = 65 / 3 + 268 / (3 * A) := by
    dsimp [P]
    field_simp
    ring
  exact hmono.trans (hsub.trans (hi.trans he).le)

/-- The sharper radius-ninety-one cap applies to every real source scale in that tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
