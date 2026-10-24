# actual_centered_kernel_variation_exponential_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a0819cf-3193-9f17-0371-d653082fdb58",
  "kind": "theorem",
  "lexical_name": "actual_centered_kernel_variation_exponential_lower",
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
  "slug": "actual-centered-kernel-variation-exponential-lower--6158a035701342b5c0a50b3a",
  "source": {
    "blob": "a6f6c515272f1e0668e2398d064d223e2106b244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6158a035701342b5c0a50b3aa429332f544e4ac0d742fb57f4000b0fcb98e63c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a0819cf-3193-9f17-0371-d653082fdb58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_kernel_variation_exponential_lower (A : ℝ) (hA : 91 ≤ A) :
    (5 / 8 : ℝ) * (Real.exp (A / 80) - 2) ≤ actualCenteredKernelVariation A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  have hL0 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hL1 : Real.log (2 : ℝ) ≤ 1 := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hL : Real.log (2 : ℝ) ≤ A / 40 := by linarith
  have hU : A / 40 ≤ 2 * A := by linarith
  have hc := (criticalPrimeTest_contDiff A hp).continuous_deriv_one
  have he : (∫ t in Real.log 2..A / 40, Real.exp (t / 2)) =
      2 * (Real.exp (A / 80) - Real.exp (Real.log 2 / 2)) := by
    have hd (t : ℝ) : HasDerivAt (fun u : ℝ => 2 * Real.exp (u / 2))
        (Real.exp (t / 2)) t :=
      (((hasDerivAt_id t).div_const 2).exp.const_mul 2).congr_deriv
        (by dsimp only [id_eq]; ring)
    have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
      ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable
        (μ := volume) (Real.log 2) (A / 40))
    rw [show A / 40 / 2 = A / 80 by ring] at hi
    linarith only [hi]
  have hm : (∫ t in Real.log 2..A / 40, (5 / 16 : ℝ) * Real.exp (t / 2)) ≤
      ∫ t in Real.log 2..A / 40, |deriv (criticalPrimeTest A) t| := by
    have hk : Continuous (fun t : ℝ => (5 / 16 : ℝ) * Real.exp (t / 2)) := by
      fun_prop
    apply intervalIntegral.integral_mono_on hL
      (hk.intervalIntegrable _ _) (hc.abs.intervalIntegrable _ _)
    intro t ht
    exact (actual_critical_derivative_early_lower (by linarith : 40 ≤ A)
      (hL0.trans ht.1) ht.2).trans (le_abs_self _)
  have hr := intervalIntegral.integral_mono_interval (μ := volume) le_rfl hL hU
    (f := fun t => |deriv (criticalPrimeTest A) t|)
    (Filter.Eventually.of_forall (fun t => abs_nonneg (deriv (criticalPrimeTest A) t)))
    (hc.abs.intervalIntegrable _ _)
  have hb : Real.exp (Real.log 2 / 2) ≤ 2 := by
    calc
      _ ≤ Real.exp (Real.log 2) := Real.exp_le_exp.mpr (by linarith)
      _ = 2 := Real.exp_log (by norm_num)
  rw [intervalIntegral.integral_const_mul, he] at hm
  unfold actualCenteredKernelVariation
  linarith only [hm, hr, hb]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSmoothingCost/Variante4cecf248a3b8182604aa2f12ccd22cc17c2485c5e9345cf9140270328a6e5c8.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6f6c515272f1e0668e2398d064d223e2106b244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
