# DiffContOnCl.circleAverage_re_smul_on_ball_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "36154ed1f354b980c4c603074a9b88d5a3c57e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:966d5acb-7ccb-d11f-9dd8-4a44c1033329",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c74efeb9-a3ce-3987-bb54-896cd17c10bd",
  "kind": "lemma",
  "lexical_name": "DiffContOnCl.circleAverage_re_smul_on_ball_zero",
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
  "slug": "diffcontoncl-circleaverage-re-smul-on-ball-zero--d0429ec7713321efc4a1e80e",
  "source": {
    "blob": "36154ed1f354b980c4c603074a9b88d5a3c57e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0429ec7713321efc4a1e80e4d06c7b9e94e87e86b5d5a60be53ebfcdd316829",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c74efeb9-a3ce-3987-bb54-896cd17c10bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma DiffContOnCl.circleAverage_re_smul_on_ball_zero [CompleteSpace E]
    (hf : DiffContOnCl ℂ f (ball 0 R)) (hw : w ∈ ball 0 R) :
    Real.circleAverage (fun z ↦ ((z + w) / (z - w)).re • f z) 0 R = f w := by
  -- Trivial case: nonpositive radius
  rcases le_or_gt R 0 with hR | hR
  · simp_all [ball_eq_empty.2 hR]
  -- Trivial case: w is at the center
  obtain rfl | h₁w := eq_or_ne w 0
  · refine (circleAverage_congr_sphere fun z hz ↦ ?_).trans (abs_of_pos hR ▸ hf |>.circleAverage)
    rw [abs_of_pos hR] at hz
    simp [div_self (a := z) (by aesop)]
  -- General case: positive radius, w is not at the center
  let W := R * exp (w.arg * I)
  let q := ‖w‖ / R
  have h₁q : 0 < q := by positivity
  have h₂q : q < 1 := by simpa [← div_lt_one hR] using hw
  -- Lemma used by automatisation tactics to ensure that quotients are non-zero.
  have η₀ {x : ℂ} (h : ‖x‖ ≤ R) : q * x - W ≠ 0 := by
    suffices ‖q * x‖ < ‖W‖ by grind
    calc
      ‖q * x‖ = q * ‖x‖ := by simp [abs_of_pos h₁q]
      _ ≤ q * R := by gcongr
      _ < 1 * R := by gcongr
      _ = ‖W‖ := by simp [W, abs_of_pos hR]
  have h0 : ∮ (z : ℂ) in C(0, R), z⁻¹ • ((q * z) / (q * z - W)) • f z = 0 := calc
    ∮ (z : ℂ) in C(0, R), z⁻¹ • ((q * z) / (q * z - W)) • f z
    _ = ∮ (z : ℂ) in C(0, R), (q / (q * z - W)) • f z := by
      apply circleIntegral.integral_congr hR.le fun z hz ↦ ?_
      have hz : z ≠ 0 := by aesop
      match_scalars
      field
    _ = 0 := by
      apply DifferentiableOn.diffContOnCl ?_ |>.smul hf |>.circleIntegral_eq_zero hR.le
      rw [closure_ball 0 hR.ne']
      fun_prop (disch := aesop)
  -- Main computation starts here
  calc Real.circleAverage (fun z ↦ ((z + w) / (z - w)).re • f z) 0 R
    _ = Real.circleAverage (fun z ↦ (z / (z - w) - (q • z) / (q • z - W)) • f z) 0 R := by
      apply circleAverage_congr_sphere fun z hz ↦ ?_
      have hzR : ‖z‖ = R := by simpa [abs_of_pos hR] using hz
      match_scalars
      simp only [q, W, real_smul, ofReal_div, coe_algebraMap]
      rw [← norm_mul_exp_arg_mul_I w, ← norm_mul_exp_arg_mul_I z, hzR,
        ← circleAverage_re_smul_on_ball_zero_aux, norm_mul_exp_arg_mul_I w]
      field [hR.ne.symm]
    _ = Real.circleAverage (fun z ↦ (z / (z - w)) • f z) 0 R
        - Real.circleAverage (fun z ↦ ((q • z) / (q • z - W)) • f z) 0 R := by
      simp_rw [sub_smul]
      have h₁ : ∀ z ∈ sphere 0 R, z - w ≠ 0 := by aesop (add simp sub_eq_zero)
      have h₃ : ContinuousOn f (sphere 0 R) :=
        hf.2.mono <| sphere_subset_closedBall.trans_eq (closure_ball 0 hR.ne').symm
      rw [circleAverage_fun_sub]
      all_goals
        apply ContinuousOn.circleIntegrable hR.le
        fun_prop (disch := aesop)
    _ = f w := by
      rw [← abs_of_pos hR] at hw hf
      simp [← hf.circleAverage_smul_div hw, circleAverage_eq_circleIntegral (ne_of_lt hR).symm, h0]

/--
**Poisson integral formula** for ℂ-differentiable functions on arbitrary disks in the complex plane,
formulated with the real part of the Herglotz–Riesz kernel of integration.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poisson/Variant04318d759381fc3eb9e255e5b06d2984a10661bdd35a05cb9fc54e9b511eb0b7.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36154ed1f354b980c4c603074a9b88d5a3c57e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
