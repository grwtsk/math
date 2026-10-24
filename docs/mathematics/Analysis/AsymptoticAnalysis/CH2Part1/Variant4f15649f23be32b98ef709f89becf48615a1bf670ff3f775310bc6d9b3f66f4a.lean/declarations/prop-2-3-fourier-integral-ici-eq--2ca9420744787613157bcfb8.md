# prop_2_3_fourier_integral_ici_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddb878f0-1472-3fd9-8e5d-2c0e556abb23",
  "kind": "lemma",
  "lexical_name": "prop_2_3_fourier_integral_ici_eq",
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
  "slug": "prop-2-3-fourier-integral-ici-eq--2ca9420744787613157bcfb8",
  "source": {
    "blob": "fe1ca3fba3ce69f1a74f1c88c8189358b833ea04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 338,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ca9420744787613157bcfb83e5f8daf04de99ea9f0e42802c271bfb9484a756",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb878f0-1472-3fd9-8e5d-2c0e556abb23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prop_2_3_fourier_integral_ici_eq
    {T β : ℝ} (hT : 0 < T) (hβ : 1 < β)
    {φ : ℝ → ℂ} (hφ_int : Integrable φ)
    (hφ_cont : ContinuousAt φ 0)
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ y‖ ≤ C / |y| ^ β)
    (x : ℝ) :
    ∫ u in Set.Ici (-log x), 𝓕 (fun t:ℝ ↦ φ (t/T)) (u/(2*π)) =
      (2*π * (φ 0 - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ y) : ℂ) := by
  let psi := fun t : ℝ ↦ φ (t / T)
  have h_int_Fphi : Integrable (𝓕 φ) := fourier_integrable_of_rpow_decay hβ hφ_int hφ_Fourier
  calc
    ∫ u in Set.Ici (-log x), 𝓕 psi (u / (2 * π))
    _ = (2 * π : ℂ) * ∫ v in Set.Ici (-log x / (2 * π)), 𝓕 psi v := by
      have h2pi : 0 < 2 * π := mul_pos (by linarith) Real.pi_pos
      simp_rw [← integral_indicator measurableSet_Ici]
      let g := (Set.Ici (-log x / (2 * π))).indicator (𝓕 psi)
      convert (Measure.integral_comp_div g (2 * π)) using 1
      · congr 1; ext u; dsimp [g]; simp [Set.indicator_apply, Set.mem_Ici, le_div_iff₀ h2pi]
      · simp only [g, abs_of_pos h2pi]
        exact_mod_cast rfl
    _ = (2 * π : ℂ) * ∫ v in Set.Ici (-log x / (2 * π)), (T : ℂ) * 𝓕 φ (T * v) := by
      congr 1; apply integral_congr_ae; filter_upwards with v
      rw [fourier_scale_div_noscalar φ T v hT]
    _ = (2 * π : ℂ) * ∫ y in Set.Ici (-T * log x / (2 * π)), 𝓕 φ y := by
      rw [show (∫ v in Set.Ici (-log x / (2 * π)), (T : ℂ) * 𝓕 φ (T * v)) =
          (T : ℂ) * ∫ v in Set.Ici (-log x / (2 * π)), 𝓕 φ (T * v) from
        MeasureTheory.integral_const_mul _ _, setIntegral_Ici_const_mul hT]
      congr 2; ring
    _ = (2 * π : ℂ) * ((∫ y, 𝓕 φ y) - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ y) := by
      congr 1
      rw [← MeasureTheory.setIntegral_univ, MeasureTheory.setIntegral_univ]
      rw [eq_sub_iff_add_eq, add_comm]
      rw [← MeasureTheory.setIntegral_union₀]
      · rw [Set.Iic_union_Ici, MeasureTheory.setIntegral_univ]
      · rw [MeasureTheory.AEDisjoint, Set.inter_comm, Set.Ici_inter_Iic, Set.Icc_self, MeasureTheory.measure_singleton]
      · exact measurableSet_Ici.nullMeasurableSet
      · exact h_int_Fphi.integrableOn
      · exact h_int_Fphi.integrableOn
    _ = (2 * π : ℂ) * (φ 0 - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ y) := by
      have h_inv : ∫ y, 𝓕 φ y = φ 0 := by
        rw [← setIntegral_univ]
        trans 𝓕⁻ (𝓕 φ) 0
        · rw [Real.fourierInv_eq]; congr
          · simp
          · ext y; simp
        · rw [hφ_int.fourierInv_fourier_eq h_int_Fphi hφ_cont]
      congr 1; rw [h_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant4f15649f23be32b98ef709f89becf48615a1bf670ff3f775310bc6d9b3f66f4a.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1ca3fba3ce69f1a74f1c88c8189358b833ea04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
