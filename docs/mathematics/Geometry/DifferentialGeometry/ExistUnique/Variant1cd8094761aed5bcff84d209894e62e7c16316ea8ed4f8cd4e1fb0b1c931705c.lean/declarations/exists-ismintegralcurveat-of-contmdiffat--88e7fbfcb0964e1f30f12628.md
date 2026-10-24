# exists_isMIntegralCurveAt_of_contMDiffAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:358b42fd-c326-4d67-9d3e-6e8263e5df74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f15377d2-d114-4ccb-5381-b95d584c026c",
  "kind": "theorem",
  "lexical_name": "exists_isMIntegralCurveAt_of_contMDiffAt",
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
  "slug": "exists-ismintegralcurveat-of-contmdiffat--88e7fbfcb0964e1f30f12628",
  "source": {
    "blob": "029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 65,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88e7fbfcb0964e1f30f12628bcf53375c1063a01f584453512f2921fde65b567",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f15377d2-d114-4ccb-5381-b95d584c026c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_isMIntegralCurveAt_of_contMDiffAt [CompleteSpace E]
    (hv : CMDiffAt 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)) x₀)
    (hx : I.IsInteriorPoint x₀) :
    ∃ γ : ℝ → M, γ t₀ = x₀ ∧ IsMIntegralCurveAt γ v t₀ := by
  -- express the differentiability of the vector field `v` in the local chart
  rw [contMDiffAt_iff] at hv
  obtain ⟨_, hv⟩ := hv
  -- use Picard-Lindelöf theorem to extract a solution to the ODE in the local chart
  obtain ⟨f, hf1, hf2⟩ := hv.contDiffAt (range_mem_nhds_isInteriorPoint hx)
    |>.snd.exists_forall_mem_closedBall_exists_eq_forall_mem_Ioo_hasDerivAt₀ t₀
  simp_rw [← Real.ball_eq_Ioo, ← Metric.eventually_nhds_iff_ball] at hf2
  -- use continuity of `f` so that `f t` remains inside `interior (extChartAt I x₀).target`
  have ⟨a, ha, hf2'⟩ := Metric.eventually_nhds_iff_ball.mp hf2
  have hcont := (hf2' t₀ (Metric.mem_ball_self ha)).continuousAt
  rw [continuousAt_def, hf1] at hcont
  have hnhds : f ⁻¹' (interior (extChartAt I x₀).target) ∈ 𝓝 t₀ :=
    hcont _ (isOpen_interior.mem_nhds ((I.isInteriorPoint_iff).mp hx))
  rw [← eventually_mem_nhds_iff] at hnhds
  -- obtain a neighbourhood `s` so that the above conditions both hold in `s`
  obtain ⟨s, hs, haux⟩ := (hf2.and hnhds).exists_mem
  -- prove that `γ := (extChartAt I x₀).symm ∘ f` is a desired integral curve
  refine ⟨(extChartAt I x₀).symm ∘ f,
    Eq.symm (by rw [Function.comp_apply, hf1, PartialEquiv.left_inv _ (mem_extChartAt_source ..)]),
    isMIntegralCurveAt_iff.mpr ⟨s, hs, ?_⟩⟩
  intro t ht
  -- collect useful terms in convenient forms
  let xₜ : M := (extChartAt I x₀).symm (f t) -- `xₜ := γ t`
  have h : HasDerivAt f (x := t) <| fderivWithin ℝ (extChartAt I x₀ ∘ (extChartAt I xₜ).symm)
    (range I) (extChartAt I xₜ xₜ) (v xₜ) := (haux t ht).1
  rw [← tangentCoordChange_def] at h
  have hf3 := mem_preimage.mp <| mem_of_mem_nhds (haux t ht).2
  have hf3' := mem_of_mem_of_subset hf3 interior_subset
  have hft1 := mem_preimage.mp <|
    mem_of_mem_of_subset hf3' (extChartAt I x₀).target_subset_preimage_source
  have hft2 := mem_extChartAt_source (I := I) xₜ
  -- express the derivative of the integral curve in the local chart
  apply HasMFDerivAt.hasMFDerivWithinAt
  refine ⟨(continuousAt_extChartAt_symm'' hf3').comp h.continuousAt,
    HasDerivWithinAt.hasFDerivWithinAt ?_⟩
  simp only [mfld_simps, hasDerivWithinAt_univ]
  change HasDerivAt ((extChartAt I xₜ ∘ (extChartAt I x₀).symm) ∘ f) (v xₜ) t
  -- express `v (γ t)` as `D⁻¹ D (v (γ t))`, where `D` is a change of coordinates, so we can use
  -- `HasFDerivAt.comp_hasDerivAt` on `h`
  rw [← tangentCoordChange_self (I := I) (x := xₜ) (z := xₜ) (v := v xₜ) hft2,
    ← tangentCoordChange_comp (x := x₀) ⟨⟨hft2, hft1⟩, hft2⟩]
  apply HasFDerivAt.comp_hasDerivAt _ _ h
  apply HasFDerivWithinAt.hasFDerivAt (s := range I) _ <|
    mem_nhds_iff.mpr ⟨interior (extChartAt I x₀).target,
      subset_trans interior_subset (extChartAt_target_subset_range ..),
      isOpen_interior, hf3⟩
  rw [← (extChartAt I x₀).right_inv hf3']
  exact hasFDerivWithinAt_tangentCoordChange ⟨hft1, hft2⟩

/-- Existence of local integral curves for a $C^1$ vector field on a `C^1` manifold without
boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant1cd8094761aed5bcff84d209894e62e7c16316ea8ed4f8cd4e1fb0b1c931705c.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029fdc70dcb9fa62ef7a2e5592429b16a0e8c6c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
