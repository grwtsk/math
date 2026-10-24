# boundary_quadratic_background_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae93280a-eb3f-e097-3cd1-d33b4ce727de",
  "kind": "theorem",
  "lexical_name": "boundary_quadratic_background_zero",
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
  "slug": "boundary-quadratic-background-zero--1e665f223201d1fcc1b4aee9",
  "source": {
    "blob": "20cd0fb6a9cbcb5385757995f36ef86f587e0095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e665f223201d1fcc1b4aee9d41252aa45f19fe925f40b673370a115e4214949",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae93280a-eb3f-e097-3cd1-d33b4ce727de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_quadratic_background_zero {A : ℝ} (hA : 1 ≤ A)
    (a b c : ℝ) :
    (∫ y in 0..4*A, (a+b*y+c*y^2)*boundaryWorkKernel A y) = 0 := by
  have hp : 0 < A := by linarith
  let f := criticalPrimeTest A
  have hsup : Function.support f ⊆ Icc (-(2*A)) (2*A) := by
    intro t ht
    have hc : sourceCorrelation explicitSecondDerivative A t ≠ 0 := by
      intro hn
      exact ht (by simp [f, criticalPrimeTest, hn])
    have ht' : |t| < 2*A := by
      by_contra hn
      exact hc (sourceCorrelation_eq_zero_of_two_mul_le_abs A t hp (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le t], (le_abs_self t).trans ht'.le⟩
  have hts : tsupport f ⊆ Icc (-(2*A)) (2*A) :=
    closure_minimal hsup isClosed_Icc
  have hdout (t : ℝ) (ht : t ∉ Icc (-(2*A)) (2*A)) : deriv f t = 0 := by
    by_contra hn
    exact ht (hts (support_deriv_subset hn))
  let P : ℝ → ℝ := fun t => a+b*(2*A-t)+c*(2*A-t)^2
  have hz : (∫ t : ℝ, P t * deriv f t) = 0 := by
    have h := actual_quadratic_derivative_background_zero hA
      (a+2*b*A+4*c*A^2) (-b-4*c*A) c
    have he : (fun t : ℝ => P t * deriv f t) =
        fun t => (a+2*b*A+4*c*A^2+(-b-4*c*A)*t+c*t^2)*
          deriv (criticalPrimeTest A) t := by
      funext t
      dsimp [P, f]
      ring
    rw [he]
    exact h
  have hi : (∫ t : ℝ, P t * deriv f t) =
      ∫ t in -(2*A)..2*A, P t * deriv f t := by
    calc
      _ = ∫ t : ℝ, (Icc (-(2*A)) (2*A)).indicator (fun t => P t*deriv f t) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2*A)) (2*A)
        · rw [indicator_of_mem ht]
        · rw [indicator_of_notMem ht, hdout t ht, mul_zero]
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have hr := intervalIntegral.integral_comp_sub_left (fun t => P t*deriv f t)
    (a := 0) (b := 4*A) (2*A)
  have he (y : ℝ) : (a+b*y+c*y^2)*boundaryWorkKernel A y =
      (A^9*Real.exp (-A))*(P (2*A-y)*deriv f (2*A-y)) := by
    dsimp [boundaryWorkKernel, P, f]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul]
  have hleft : (∫ y in 0..4*A, P (2*A-y)*deriv f (2*A-y)) =
      ∫ t in -(2*A)..2*A, P t*deriv f t := by
    simpa only [show 2*A-4*A=-(2*A) by ring, sub_zero] using hr
  rw [hleft, ← hi, hz, mul_zero]

#check first_convolution_moment
#check actual_first_pole_moment_zero
#check actual_quadratic_derivative_background_zero
#check boundaryWorkKernel_eq_source
#check boundaryCorrelation_deriv
#check boundaryWorkKernel_eq_correlation
#check boundary_quadratic_background_zero
#print axioms first_convolution_moment
#print axioms actual_first_pole_moment_zero
#print axioms actual_quadratic_derivative_background_zero
#print axioms boundaryWorkKernel_eq_source
#print axioms boundaryCorrelation_deriv
#print axioms boundaryWorkKernel_eq_correlation
#print axioms boundary_quadratic_background_zero
#print first_convolution_moment
#print actual_first_pole_moment_zero
#print actual_quadratic_derivative_background_zero
#print boundaryWorkKernel_eq_source
#print boundaryCorrelation_deriv
#print boundaryWorkKernel_eq_correlation
#print boundary_quadratic_background_zero

end ContinuousResearch.SourceFirstPoleMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cd0fb6a9cbcb5385757995f36ef86f587e0095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
