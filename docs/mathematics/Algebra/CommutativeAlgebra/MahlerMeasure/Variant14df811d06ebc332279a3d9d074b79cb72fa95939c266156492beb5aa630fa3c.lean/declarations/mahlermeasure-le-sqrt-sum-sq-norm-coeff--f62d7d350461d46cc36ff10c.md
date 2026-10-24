# mahlerMeasure_le_sqrt_sum_sq_norm_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd0dd6de-6f8b-fa15-bc18-e6a89e4a7706",
  "kind": "theorem",
  "lexical_name": "mahlerMeasure_le_sqrt_sum_sq_norm_coeff",
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
  "slug": "mahlermeasure-le-sqrt-sum-sq-norm-coeff--f62d7d350461d46cc36ff10c",
  "source": {
    "blob": "cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 308,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f62d7d350461d46cc36ff10c80ebbace62fcecce98db7e7e4b497feaa914a0b3",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0dd6de-6f8b-fa15-bc18-e6a89e4a7706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mahlerMeasure_le_sqrt_sum_sq_norm_coeff (p : Polynomial ℂ) :
    p.mahlerMeasure ≤ √(∑ i ∈ p.support, ‖p.coeff i‖ ^ 2) := by
  -- Proof: Jensen's inequality (twice) + Parseval's identity
  have : IsFiniteMeasure (volume.restrict (uIoc 0 (2 * π))) := by
    rw [uIoc_of_le (by positivity)]; infer_instance
  have : NeZero (volume (uIoc 0 (2 * π))) := ⟨by simp [pi_pos]⟩
  by_cases! hp : p = 0
  · simp [hp]
  have : ∀ᵐ (θ : ℝ) ∂volume.restrict (uIoc 0 (2 * π)), 0 < ‖p.eval (circleMap 0 1 θ)‖ := by
    rw [ae_restrict_iff' measurableSet_uIoc]
    refine Set.Finite.measure_zero ?_ _
    simp only [norm_pos_iff, ne_eq, compl_ofPred, Classical.not_imp, Decidable.not_not]
    refine Finite.of_finite_image (f := circleMap 0 1) (p.roots.finite_toSet.subset ?_) ?_
    · rintro z ⟨θ, ⟨_, heval⟩, rfl⟩
      exact (mem_roots hp).mpr heval
    · grw [ofPred_and, inter_subset_left]
      exact injOn_circleMap_of_abs_sub_le one_ne_zero (by simp)
  have hlogAe : ∀ᵐ (θ : ℝ) ∂volume.restrict (uIoc 0 (2 * π)),
      exp (log ‖p.eval (circleMap 0 1 θ)‖) = ‖p.eval (circleMap 0 1 θ)‖ := by
    filter_upwards [this] with θ hθ
    exact exp_log hθ
  have hcont : Continuous (fun x : ℝ ↦ ‖eval (circleMap 0 1 x) p‖) := by fun_prop
  simp only [mahlerMeasure, logMahlerMeasure, ne_eq, hp, not_false_eq_true, ↓reduceIte]
  rw [circleAverage_eq_intervalAverage]
  calc exp (⨍ (θ : ℝ) in 0..(2 * π), log ‖p.eval (circleMap 0 1 θ)‖)
    ≤ ⨍ (θ : ℝ) in 0..(2 * π), exp (log ‖p.eval (circleMap 0 1 θ)‖) := by
        -- First Jensen's inequality invocation
        refine convexOn_exp.map_average_le continuousOn_exp isClosed_univ (by simp) ?_ ?_
        · rw [Set.uIoc_of_le (by positivity : 0 ≤ 2 * Real.pi)]
          exact ((analyticOnNhd_id.aeval_polynomial p).meromorphicOn.circleIntegrable_log_norm).1
        · exact (integrable_congr hlogAe).mpr hcont.integrableOn_uIoc
    _ = ⨍ (θ : ℝ) in 0..(2 * π), ‖p.eval (circleMap 0 1 θ)‖ := average_congr hlogAe
    _ = √((⨍ (θ : ℝ) in 0..(2 * π), ‖p.eval (circleMap 0 1 θ)‖) ^ 2) := by
        rw [sqrt_sq]; exact integral_nonneg (fun _ ↦ norm_nonneg _)
    _ ≤ √(⨍ (θ : ℝ) in 0..(2 * π), ‖p.eval (circleMap 0 1 θ)‖ ^ 2) := by
        -- Second Jensen's inequality invocation
        gcongr
        refine (convexOn_pow 2).map_average_le (continuousOn_pow 2)
            isClosed_Ici (by filter_upwards; simp) ?_ ?_
        · exact hcont.integrableOn_Icc.mono_set Set.Ioc_subset_Icc_self
        · exact ((continuous_pow 2).comp hcont).integrableOn_Icc.mono_set Set.Ioc_subset_Icc_self
    _ = √(circleAverage (fun θ ↦ ‖p.eval θ‖ ^ 2) 0 1) := by simp [circleAverage_eq_intervalAverage]
    _ = √(∑ i ∈ p.support, ‖p.coeff i‖ ^ 2) := by simp [p.sum_sq_norm_coeff_eq_circleAverage]

/-- The Mahler measure of a polynomial is at most the sup norm of the polynomial times the square
root of its degree plus one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
