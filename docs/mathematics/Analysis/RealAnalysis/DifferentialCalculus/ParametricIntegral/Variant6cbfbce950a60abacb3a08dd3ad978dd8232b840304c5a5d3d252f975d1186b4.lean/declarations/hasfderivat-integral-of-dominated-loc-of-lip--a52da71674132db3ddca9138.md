# hasFDerivAt_integral_of_dominated_loc_of_lip'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf70960a-24ce-2bb7-3a4e-cb77aaf5ff02",
  "kind": "theorem",
  "lexical_name": "hasFDerivAt_integral_of_dominated_loc_of_lip'",
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
  "slug": "hasfderivat-integral-of-dominated-loc-of-lip--a52da71674132db3ddca9138",
  "source": {
    "blob": "4761ad4e52534891fc6a2652394d8c869de732dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a52da71674132db3ddca9138ecdf906dd03b588c8f74e2448949a596a1ac7e1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf70960a-24ce-2bb7-3a4e-cb77aaf5ff02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasFDerivAt_integral_of_dominated_loc_of_lip' {F' : α → H →L[𝕜] E} (ε_pos : 0 < ε)
    (hF_meas : ∀ x ∈ ball x₀ ε, AEStronglyMeasurable (F x) μ) (hF_int : Integrable (F x₀) μ)
    (hF'_meas : AEStronglyMeasurable F' μ)
    (h_lipsch : ∀ᵐ a ∂μ, ∀ x ∈ ball x₀ ε, ‖F x a - F x₀ a‖ ≤ bound a * ‖x - x₀‖)
    (bound_integrable : Integrable (bound : α → ℝ) μ)
    (h_diff : ∀ᵐ a ∂μ, HasFDerivAt (F · a) (F' a) x₀) :
    Integrable F' μ ∧ HasFDerivAt (fun x ↦ ∫ a, F x a ∂μ) (∫ a, F' a ∂μ) x₀ := by
  have x₀_in : x₀ ∈ ball x₀ ε := mem_ball_self ε_pos
  have nneg : ∀ x, 0 ≤ ‖x - x₀‖⁻¹ := fun x ↦ inv_nonneg.mpr (norm_nonneg _)
  set b : α → ℝ := fun a ↦ |bound a|
  have b_int : Integrable b μ := bound_integrable.norm
  have b_nonneg : ∀ a, 0 ≤ b a := fun a ↦ abs_nonneg _
  replace h_lipsch : ∀ᵐ a ∂μ, ∀ x ∈ ball x₀ ε, ‖F x a - F x₀ a‖ ≤ b a * ‖x - x₀‖ :=
    h_lipsch.mono fun a ha x hx ↦
      (ha x hx).trans <| mul_le_mul_of_nonneg_right (le_abs_self _) (norm_nonneg _)
  have hF_int' : ∀ x ∈ ball x₀ ε, Integrable (F x) μ := fun x x_in ↦ by
    have : ∀ᵐ a ∂μ, ‖F x₀ a - F x a‖ ≤ ε * b a := by
      simp only [norm_sub_rev (F x₀ _)]
      refine h_lipsch.mono fun a ha ↦ (ha x x_in).trans ?_
      rw [mul_comm ε]
      rw [mem_ball, dist_eq_norm] at x_in
      exact mul_le_mul_of_nonneg_left x_in.le (b_nonneg _)
    exact integrable_of_norm_sub_le (hF_meas x x_in) hF_int
      (bound_integrable.norm.const_mul ε) this
  have hF'_int : Integrable F' μ :=
    have : ∀ᵐ a ∂μ, ‖F' a‖ ≤ b a := by
      apply (h_diff.and h_lipsch).mono
      rintro a ⟨ha_diff, ha_lip⟩
      exact ha_diff.le_of_lip' (b_nonneg a) (mem_of_superset (ball_mem_nhds _ ε_pos) <| ha_lip)
    b_int.mono' hF'_meas this
  refine ⟨hF'_int, ?_⟩
  /- Discard the trivial case where `E` is not complete, as all integrals vanish. -/
  by_cases hE : CompleteSpace E; swap
  · rcases subsingleton_or_nontrivial H with hH|hH
    · have : Subsingleton (H →L[𝕜] E) := inferInstance
      convert hasFDerivAt_of_subsingleton _ x₀
    · have : ¬(CompleteSpace (H →L[𝕜] E)) := by
        simpa [SeparatingDual.completeSpace_continuousLinearMap_iff] using hE
      simp only [integral, hE, ↓reduceDIte, this]
      exact hasFDerivAt_const 0 x₀
  have h_ball : ball x₀ ε ∈ 𝓝 x₀ := ball_mem_nhds x₀ ε_pos
  have : ∀ᶠ x in 𝓝 x₀, ‖x - x₀‖⁻¹ * ‖((∫ a, F x a ∂μ) - ∫ a, F x₀ a ∂μ) - (∫ a, F' a ∂μ) (x - x₀)‖ =
      ‖∫ a, ‖x - x₀‖⁻¹ • (F x a - F x₀ a - F' a (x - x₀)) ∂μ‖ := by
    apply mem_of_superset (ball_mem_nhds _ ε_pos)
    intro x x_in; simp only
    rw [Set.mem_setOf_eq, ← norm_smul_of_nonneg (nneg _), integral_smul, integral_sub, integral_sub,
      ← ContinuousLinearMap.integral_apply hF'_int]
    exacts [hF_int' x x_in, hF_int, (hF_int' x x_in).sub hF_int,
      hF'_int.apply_continuousLinearMap _]
  rw [hasFDerivAt_iff_tendsto, tendsto_congr' this, ← tendsto_zero_iff_norm_tendsto_zero, ←
    show (∫ a : α, ‖x₀ - x₀‖⁻¹ • (F x₀ a - F x₀ a - (F' a) (x₀ - x₀)) ∂μ) = 0 by simp]
  apply tendsto_integral_filter_of_dominated_convergence
  · filter_upwards [h_ball] with _ x_in
    apply AEStronglyMeasurable.const_smul
    exact ((hF_meas _ x_in).sub (hF_meas _ x₀_in)).sub (hF'_meas.apply_continuousLinearMap _)
  · refine mem_of_superset h_ball fun x hx ↦ ?_
    apply (h_diff.and h_lipsch).mono
    on_goal 1 => rintro a ⟨-, ha_bound⟩
    show ‖‖x - x₀‖⁻¹ • (F x a - F x₀ a - F' a (x - x₀))‖ ≤ b a + ‖F' a‖
    replace ha_bound : ‖F x a - F x₀ a‖ ≤ b a * ‖x - x₀‖ := ha_bound x hx
    calc
      ‖‖x - x₀‖⁻¹ • (F x a - F x₀ a - F' a (x - x₀))‖ =
          ‖‖x - x₀‖⁻¹ • (F x a - F x₀ a) - ‖x - x₀‖⁻¹ • F' a (x - x₀)‖ := by rw [smul_sub]
      _ ≤ ‖‖x - x₀‖⁻¹ • (F x a - F x₀ a)‖ + ‖‖x - x₀‖⁻¹ • F' a (x - x₀)‖ := norm_sub_le _ _
      _ = ‖x - x₀‖⁻¹ * ‖F x a - F x₀ a‖ + ‖x - x₀‖⁻¹ * ‖F' a (x - x₀)‖ := by
        rw [norm_smul_of_nonneg, norm_smul_of_nonneg] <;> exact nneg _
      _ ≤ ‖x - x₀‖⁻¹ * (b a * ‖x - x₀‖) + ‖x - x₀‖⁻¹ * (‖F' a‖ * ‖x - x₀‖) := by
        gcongr; exact (F' a).le_opNorm _
      _ ≤ b a + ‖F' a‖ := ?_
    simp only [← div_eq_inv_mul]
    apply_rules [add_le_add, div_le_of_le_mul₀] <;> first | rfl | positivity
  · exact b_int.add hF'_int.norm
  · apply h_diff.mono
    intro a ha
    suffices Tendsto (fun x ↦ ‖x - x₀‖⁻¹ • (F x a - F x₀ a - F' a (x - x₀))) (𝓝 x₀) (𝓝 0) by simpa
    rw [tendsto_zero_iff_norm_tendsto_zero]
    have : (fun x ↦ ‖x - x₀‖⁻¹ * ‖F x a - F x₀ a - F' a (x - x₀)‖) = fun x ↦
        ‖‖x - x₀‖⁻¹ • (F x a - F x₀ a - F' a (x - x₀))‖ := by
      ext x
      rw [norm_smul_of_nonneg (nneg _)]
    rwa [hasFDerivAt_iff_tendsto, this] at ha

/-- Differentiation under integral of `x ↦ ∫ F x a` at a given point `x₀`, assuming
`F x₀` is integrable, `x ↦ F x a` is locally Lipschitz on a ball around `x₀` for ae `a`
(with a ball radius independent of `a`) with integrable Lipschitz bound, and `F x` is ae-measurable
for `x` in a possibly smaller neighborhood of `x₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ParametricIntegral/Variant6cbfbce950a60abacb3a08dd3ad978dd8232b840304c5a5d3d252f975d1186b4.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4761ad4e52534891fc6a2652394d8c869de732dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
