# CH2_lemma_4_2b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3498bc0e-e1e9-a87c-b949-e251abd9e81d",
  "kind": "theorem",
  "lexical_name": "CH2_lemma_4_2b",
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
  "slug": "ch2-lemma-4-2b--65b130ec1dbed2dbf881cc13",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 6124,
    "line": 6085,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65b130ec1dbed2dbf881cc13b70b67c869580a301f76cd7c263bc39dc21c1b36",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3498bc0e-e1e9-a87c-b949-e251abd9e81d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6085–6124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CH2_lemma_4_2b (z : ℂ) (hz : |z.im| ≤ π / 2) : ‖deriv (fun z:ℂ ↦ z * coth z) z‖ ≤ ‖z‖ := by
  set f := fun w : ℂ ↦ deriv (fun z : ℂ ↦ z * coth z) w
  rcases eq_or_ne z 0 with rfl | hz_nz
  · simp [deriv_z_coth_z_at_zero]
  · let g := dslope f 0
    have hg_bound : ‖g z‖ ≤ 1 := by
      apply PhragmenLindelof.horizontal_strip (a := -(π / 2)) (b := π / 2) (C := 1) (f := g) (z := z) (hza := (abs_le.mp hz).1) (hzb := (abs_le.mp hz).2)
      · have h_g_anal : AnalyticOn ℂ g {w | |w.im| < π} :=
          analyticOn_dslope_deriv_z_coth_z_zero
        constructor
        · apply h_g_anal.differentiableOn.mono
          intro w hw; simp only [Set.mem_preimage, Set.mem_Ioo, Set.mem_setOf_eq, abs_lt] at hw ⊢
          constructor <;> linarith [Real.pi_pos]
        · rw [Complex.closure_preimage_im, closure_Ioo (by linarith [Real.pi_pos])]
          apply h_g_anal.continuousOn.mono
          intro w hw; simp only [Set.mem_preimage, Set.mem_Icc, Set.mem_setOf_eq, abs_lt] at hw ⊢
          constructor <;> linarith [Real.pi_pos]
      · rcases deriv_z_coth_z_growth_bound_half_pi with ⟨c, hc, B, hO⟩
        refine ⟨c, hc, B, hO.congr' ?_ (Filter.EventuallyEq.refl _ _)⟩
        have h_nz : ∀ᶠ w : ℂ in Filter.comap (abs ∘ re) Filter.atTop ⊓ Filter.principal (im ⁻¹' Set.Ioo (-(π / 2)) (π / 2)), w ≠ 0 := by
          rw [Filter.eventually_inf_principal]
          filter_upwards [Filter.tendsto_comap.eventually (Filter.eventually_ge_atTop 1)] with w hw _
          intro h; simp [h] at hw; linarith
        filter_upwards [h_nz] with w hw
        simp only [f, g, dslope_of_ne f hw, slope, deriv_z_coth_z_at_zero]
        simp; ring_nf
      · intro w hw
        exact norm_dslope_deriv_z_coth_z_le_one_of_abs_im_eq w
          (by rw [hw, abs_neg]; exact abs_of_pos (by linarith [Real.pi_pos]))
      · intro w hw
        exact norm_dslope_deriv_z_coth_z_le_one_of_abs_im_eq w
          (by rw [hw]; exact abs_of_pos (by linarith [Real.pi_pos]))
    have hg_eq : ‖g z‖ = ‖f z‖ / ‖z‖ := by
      unfold g dslope; rw [Function.update_of_ne hz_nz]
      unfold slope f
      simp only [sub_zero, vsub_eq_sub, smul_eq_mul, deriv_z_coth_z_at_zero]
      rw [← div_eq_inv_mul, norm_div]
    simpa [f] using (div_le_one (norm_pos_iff.mpr hz_nz)).mp (hg_eq ▸ hg_bound)

end CH2
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L6085).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
