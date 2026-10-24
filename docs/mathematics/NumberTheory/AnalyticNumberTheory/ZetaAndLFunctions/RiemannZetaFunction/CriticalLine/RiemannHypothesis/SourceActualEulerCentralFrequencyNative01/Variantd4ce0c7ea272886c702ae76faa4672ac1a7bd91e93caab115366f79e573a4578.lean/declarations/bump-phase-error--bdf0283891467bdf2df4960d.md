# bump_phase_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba910e85-1235-15a1-8cdc-4a047e538478",
  "kind": "theorem",
  "lexical_name": "bump_phase_error",
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
  "slug": "bump-phase-error--bdf0283891467bdf2df4960d",
  "source": {
    "blob": "9ede8be06bb4b2abb317559365c930a1398d7c5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdf0283891467bdf2df4960dc8744187580364fd488c77c3e601149cf37b8e0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba910e85-1235-15a1-8cdc-4a047e538478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem bump_phase_error (A t : ℝ) :
    ‖bumpLaplace ((A : ℂ)+I*(A*t : ℝ))- (realBumpMass A : ℂ)‖ ≤
      |A*t| * realBumpMass A := by
  rw [← bump_real_eq]
  unfold bumpLaplace
  rw [← intervalIntegral.integral_sub
    (bump_laplace_moment_interval_integrable 0 _ |>.congr_fun
      (fun x _ => by simp) measurableSet_Icc)
    (bump_laplace_moment_interval_integrable 0 _ |>.congr_fun
      (fun x _ => by simp) measurableSet_Icc)]
  have hh := intervalIntegral.norm_integral_le_of_norm_le (a := (-1 : ℝ)) (b := 1)
    (g := fun x => |A*t|*((1-x^2)^4*Real.exp (A*x))) (by norm_num)
    (Filter.Eventually.of_forall fun x hx => by
      have hx1 : |x| ≤ 1 := abs_le.mpr ⟨hx.1.le, hx.2⟩
      have he : (((A : ℂ)+I*(A*t : ℝ))*(x : ℂ)) =
          ((A*x : ℝ) : ℂ)+I*(A*t*x : ℝ) := by push_cast; ring
      rw [he, Complex.exp_add]
      have hid : (((1-x^2)^4 : ℝ) : ℂ) *
          (Complex.exp ((A*x : ℝ) : ℂ)*Complex.exp (I*(A*t*x : ℝ))) -
        (((1-x^2)^4 : ℝ) : ℂ)*Complex.exp ((A : ℂ)*(x : ℂ)) =
          (((1-x^2)^4*Real.exp (A*x) : ℝ) : ℂ)*
            (Complex.exp (I*(A*t*x : ℝ))-1) := by
        push_cast
        ring
      rw [hid, norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (mul_nonneg (pow_nonneg (by positivity) 4) (Real.exp_pos _).le)]
      calc
        _ ≤ ((1-x^2)^4*Real.exp (A*x))*|A*t*x| :=
          mul_le_mul_of_nonneg_left (norm_phase_sub_one _) (by positivity)
        _ ≤ _ := by rw [abs_mul]; nlinarith [abs_nonneg (A*t)])
    ((by fun_prop : Continuous _).intervalIntegrable _ _)
  simpa only [intervalIntegral.integral_const_mul, realBumpMass, mul_comm] using hh

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative01/Variantd4ce0c7ea272886c702ae76faa4672ac1a7bd91e93caab115366f79e573a4578.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ede8be06bb4b2abb317559365c930a1398d7c5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
