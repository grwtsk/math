# actual_scaled_linear_derivative_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47e0253e-20de-c2b5-a125-e5b899254301",
  "kind": "theorem",
  "lexical_name": "actual_scaled_linear_derivative_integral_zero",
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
  "slug": "actual-scaled-linear-derivative-integral-zero--9d48f9ee2bd09952e87f0c80",
  "source": {
    "blob": "abb20d419307bd8d1ede0488f00484f699f4d175",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 77,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variant26f2becd4394b7b44dfc512836da04d6409c4615c80c27c041b87942957d2ec2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d48f9ee2bd09952e87f0c801f69aae0d8f93373361002f092ca0a371dfebd36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variant26f2becd4394b7b44dfc512836da04d6409c4615c80c27c041b87942957d2ec2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47e0253e-20de-c2b5-a125-e5b899254301`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scaled_linear_derivative_integral_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    (∫ t in (0 : ℝ)..(Real.exp A/x), t*deriv (fun u : ℝ => actualLogSource A (x*u)) t) = 0 := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hs := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (u:=fun t : ℝ => t) (v:=g) (u':=fun _ => (1 : ℝ)) (v':=deriv g)
    continuous_id.continuousOn hg.continuous.continuousOn
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (Real.exp A/x))
    (hg.continuous_deriv_one.intervalIntegrable 0 (Real.exp A/x))
  have hz : g (Real.exp A/x) = 0 := by
    dsimp [g]
    rw [mul_div_cancel₀ _ hx.ne']
    exact actualLogSource_zero_outside (by linarith) (Or.inr le_rfl)
  rw [hz,mul_zero,zero_mul,sub_zero] at hs
  dsimp [g] at hs
  simpa only [one_mul,scaled_source_interval_integral_zero hA hx,zero_sub,neg_zero] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variant26f2becd4394b7b44dfc512836da04d6409c4615c80c27c041b87942957d2ec2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt08/Variant26f2becd4394b7b44dfc512836da04d6409c4615c80c27c041b87942957d2ec2.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb20d419307bd8d1ede0488f00484f699f4d175` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
