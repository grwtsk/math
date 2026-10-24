# kernel_second_deriv_not_differentiable_at_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48092a69-4959-086f-39d3-81de7e6dc72a",
  "kind": "theorem",
  "lexical_name": "kernel_second_deriv_not_differentiable_at_edge",
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
  "slug": "kernel-second-deriv-not-differentiable-at-edge--e1ac513e99c233b2ae36de33",
  "source": {
    "blob": "cfcf6ea846f715c762e06858836371ff8929902f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 87,
    "path": "GRWTSK/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1ac513e99c233b2ae36de334c58d5d3ac3207c2ec4332ed909d8a1c2f007a3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicShiftKernelRegularity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48092a69-4959-086f-39d3-81de7e6dc72a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_second_deriv_not_differentiable_at_edge {A : ℝ} (hA : 1 ≤ A) :
    ¬ DifferentiableAt ℝ (deriv (deriv (polarityKernel A))) (edgeReading A) := by
  intro differentiable
  have positive : 0 < A := by linarith
  let w : ℝ := Real.log 2 / Real.sqrt 2
  have weightPositive : 0 < w := div_pos (Real.log_pos (by norm_num))
    (Real.sqrt_pos.mpr (by norm_num))
  let R := deriv (deriv (deriv (deriv (correlation A))))
  let Q := deriv (deriv (deriv (correlation A)))
  let E := fun t : ℝ ↦ w * (R (t + Real.log 2) - (1 / 2 : ℝ) * Q (t + Real.log 2))
  have localIdentity : E =ᶠ[𝓝 (edgeReading A)] deriv (deriv (polarityKernel A)) :=
    (kernel_second_deriv_eventually_eq_label_two hA).symm
  have localDifferentiable : DifferentiableAt ℝ E (edgeReading A) :=
    differentiable.congr_of_eventuallyEq localIdentity
  have shiftDifferentiable : DifferentiableAt ℝ (fun z : ℝ ↦ z - Real.log 2) (2 * A) :=
    differentiableAt_id.sub_const _
  have pulled : DifferentiableAt ℝ (fun z : ℝ ↦ E (z - Real.log 2) / w) (2 * A) :=
    (localDifferentiable.comp (2 * A) shiftDifferentiable).div_const w
  have rescaling : (fun z : ℝ ↦ E (z - Real.log 2) / w) =
      fun z : ℝ ↦ R z - (1 / 2 : ℝ) * Q z := by
    funext z
    dsimp [E]
    simp only [sub_add_cancel, mul_div_cancel_left₀ _ (ne_of_gt weightPositive)]
  rw [rescaling] at pulled
  have thirdDifferentiable : DifferentiableAt ℝ Q (2 * A) :=
    (correlation_third_contDiff_one positive).differentiable one_ne_zero (2 * A)
  have cancellation :
      (fun z : ℝ ↦ (R z - (1 / 2 : ℝ) * Q z) + (1 / 2 : ℝ) * Q z) = R := by
    funext z
    ring
  have recovered := pulled.add (thirdDifferentiable.const_mul (1 / 2 : ℝ))
  change DifferentiableAt ℝ
    (fun z : ℝ ↦ (R z - (1 / 2 : ℝ) * Q z) + (1 / 2 : ℝ) * Q z) (2 * A) at recovered
  rw [cancellation] at recovered
  exact fourth_correlation_not_differentiable_at_two_scale positive recovered

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicShiftKernelRegularity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcf6ea846f715c762e06858836371ff8929902f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
