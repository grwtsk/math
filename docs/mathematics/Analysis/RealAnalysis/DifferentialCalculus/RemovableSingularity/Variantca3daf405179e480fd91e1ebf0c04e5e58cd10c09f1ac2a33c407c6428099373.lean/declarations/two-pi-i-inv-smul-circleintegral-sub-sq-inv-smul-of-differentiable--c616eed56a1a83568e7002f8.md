# two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6fca43b-6a58-b719-a4b2-d5a66f6bd79b",
  "kind": "theorem",
  "lexical_name": "two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable",
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
  "slug": "two-pi-i-inv-smul-circleintegral-sub-sq-inv-smul-of-differentiable--c616eed56a1a83568e7002f8",
  "source": {
    "blob": "04a35c71b68298502fd065199782b146800f958e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c616eed56a1a83568e7002f8b2dc98eb3e1a05f91c84edd16c5cef8ab480bfd1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6fca43b-6a58-b719-a4b2-d5a66f6bd79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable {U : Set ℂ}
    (hU : IsOpen U) {c w₀ : ℂ} {R : ℝ} {f : ℂ → E} (hc : closedBall c R ⊆ U)
    (hf : DifferentiableOn ℂ f U) (hw₀ : w₀ ∈ ball c R) :
    ((2 * π * I : ℂ)⁻¹ • ∮ z in C(c, R), ((z - w₀) ^ 2)⁻¹ • f z) = deriv f w₀ := by
  -- We apply the removable singularity theorem and the Cauchy formula to `dslope f w₀`
  have hf' : DifferentiableOn ℂ (dslope f w₀) U :=
    (differentiableOn_dslope (hU.mem_nhds ((ball_subset_closedBall.trans hc) hw₀))).mpr hf
  have h0 := (hf'.diffContOnCl_ball hc).two_pi_i_inv_smul_circleIntegral_sub_inv_smul hw₀
  rw [← dslope_same, ← h0]
  congr 1
  trans ∮ z in C(c, R), ((z - w₀) ^ 2)⁻¹ • (f z - f w₀)
  · have h1 : ContinuousOn (fun z : ℂ => ((z - w₀) ^ 2)⁻¹) (sphere c R) := by
      refine' ((continuous_id'.sub continuous_const).pow 2).continuousOn.inv₀ fun w hw h => _
      exact sphere_disjoint_ball.ne_of_mem hw hw₀ (sub_eq_zero.mp (sq_eq_zero_iff.mp h))
    have h2 : CircleIntegrable (fun z : ℂ => ((z - w₀) ^ 2)⁻¹ • f z) c R := by
      refine' ContinuousOn.circleIntegrable (pos_of_mem_ball hw₀).le _
      exact h1.smul (hf.continuousOn.mono (sphere_subset_closedBall.trans hc))
    have h3 : CircleIntegrable (fun z : ℂ => ((z - w₀) ^ 2)⁻¹ • f w₀) c R :=
      ContinuousOn.circleIntegrable (pos_of_mem_ball hw₀).le (h1.smul continuousOn_const)
    have h4 : (∮ z : ℂ in C(c, R), ((z - w₀) ^ 2)⁻¹) = 0 := by
      simpa using circleIntegral.integral_sub_zpow_of_ne (by decide : (-2 : ℤ) ≠ -1) c w₀ R
    simp only [smul_sub, circleIntegral.integral_sub h2 h3, h4, circleIntegral.integral_smul_const,
      zero_smul, sub_zero]
  · refine' circleIntegral.integral_congr (pos_of_mem_ball hw₀).le fun z hz => _
    simp only [dslope_of_ne, Metric.sphere_disjoint_ball.ne_of_mem hz hw₀, slope, ← smul_assoc, sq,
      mul_inv, Ne.def, not_false_iff, vsub_eq_sub, Algebra.id.smul_eq_mul]
set_option linter.uppercaseLean3 false in
#align complex.two_pi_I_inv_smul_circle_integral_sub_sq_inv_smul_of_differentiable Complex.two_pi_I_inv_smul_circleIntegral_sub_sq_inv_smul_of_differentiable

end Complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RemovableSingularity/Variantca3daf405179e480fd91e1ebf0c04e5e58cd10c09f1ac2a33c407c6428099373.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a35c71b68298502fd065199782b146800f958e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
