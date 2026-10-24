# prop_2_3_fourier_integral_ici_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5493ae28-0df9-9936-9fa0-3f9706499c0e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ad3d7ac9-a05f-7a99-ea90-ebd9fdb5d88d",
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
  "slug": "prop-2-3-fourier-integral-ici-eq--f275594eda71801daf4fa6be",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 330,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f275594eda71801daf4fa6be17337d57991bf048b91b0776922ffabbed608a0b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad3d7ac9-a05f-7a99-ea90-ebd9fdb5d88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–377.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
