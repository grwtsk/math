# prop_2_4_plus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:69822d0c-dc7c-db91-3b33-02d94a24c2d4",
  "kind": "theorem",
  "lexical_name": "prop_2_4_plus",
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
  "slug": "prop-2-4-plus--de79b4d7ab270e0ef633113f",
  "source": {
    "blob": "4730827a7084551f7643dc7ab62b8d647252630c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 919,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de79b4d7ab270e0ef633113f0ef6aa9ee14a709687e0545125a2f1cbf56ff45e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69822d0c-dc7c-db91-3b33-02d94a24c2d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 919–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_2_4_plus {a : ℕ → ℝ} (ha_pos : ∀ n, a n ≥ 0) {T β σ : ℝ} (hT : 0 < T) (hβ : 1 < β) (hσ : σ ≠ 1)
    (ha : Summable (fun n : ℕ ↦ ‖(a n : ℂ)‖ / (n * log n ^ β)))
    {G : ℂ → ℂ} (hG : ContinuousOn G { z | z.re ≥ 1 ∧ z.im ∈ Set.Icc (-T) T })
    (hG' : Set.EqOn G (fun s ↦ ∑' n, a n / (n ^ s : ℂ) - 1 / (s - 1)) { z | z.re > 1 })
    {φ_plus : ℝ → ℂ} (hφ_mes : Measurable φ_plus) (hφ_int : Integrable φ_plus)
    (hφ_cont : ContinuousAt φ_plus 0)
    (hφ_supp : ∀ x, x ∉ Set.Icc (-1) 1 → φ_plus x = 0)
    (hφ_Fourier : ∃ C : ℝ, ∀ y : ℝ, y ≠ 0 → ‖𝓕 φ_plus y‖ ≤ C / |y| ^ β)
    (hI_le_Fourier : ∀ y : ℝ,
      let lambda := (2 * π * (σ - 1)) / T
      I' lambda y ≤ (𝓕 φ_plus y).re)
    (x : ℝ) (hx : 1 ≤ x) :
    S a σ x ≤
      ((2 * π * (x ^ (1 - σ) : ℝ) / T) * φ_plus 0).re +
      (x ^ (-σ) : ℝ) / T *
        (∫ t in Set.Icc (-T) T, φ_plus (t/T) * G (1 + t * I) * (x ^ (1 + t * I))).re -
      if σ < 1 then 1 / (1 - σ) else 0 := by
  have h_summable : Summable (fun n : ℕ+ ↦ (a n : ℂ) * (x / n) * 𝓕 φ_plus ((T / (2 * π)) * log (n / x))) :=
    summable_dirichlet_fourier_complex hT hβ ha hφ_Fourier x (zero_lt_one.trans_le hx)
  have h_sum_RHS : Summable (fun n : ℕ+ ↦ a n * (x / n) * (𝓕 φ_plus ((T / (2 * π)) * log (n / x))).re) := by
    convert h_summable.map Complex.reCLM Complex.reCLM.continuous using 1
    ext n
    norm_cast
    simp only [Function.comp_apply, Complex.reCLM_apply, Complex.mul_re, Complex.ofReal_re,
      Complex.ofReal_im, zero_mul, sub_zero]
  have h_pointwise : ∀ (n : ℕ+), a n * (x / n) * I' ((2 * π * (σ - 1)) / T) ((T / (2 * π)) * log (n / x)) ≤
      a n * (x / n) * (𝓕 φ_plus ((T / (2 * π)) * log (n / x))).re := by
    intro n
    apply mul_le_mul_of_nonneg_left
    · exact hI_le_Fourier ((T / (2 * π)) * log (n / x))
    · exact mul_nonneg (ha_pos _) (by positivity)
  have h_sum_LHS : Summable (fun (n : ℕ+) ↦ a n * (x / n) * I' ((2 * π * (σ - 1)) / T) ((T / (2 * π)) * log (n / x))) := by
    apply Summable.of_nonneg_of_le
    · intro n
      apply mul_nonneg (mul_nonneg (ha_pos _) (div_nonneg (zero_le_one.trans hx) (by positivity)))
      unfold I'; split_ifs <;> positivity
    · exact h_pointwise
    · exact h_sum_RHS
  have h_sum_total : ∑' (n : ℕ+), (a n : ℂ) * (x / n) * 𝓕 φ_plus ((T / (2 * π)) * log (n / x)) =
      2 * π * ((1 / (2 * π * T)) * (∫ t in Set.Icc (-T) T, φ_plus (t / T) * G (1 + t * I) * x ^ (1 + t * I)) +
      (φ_plus 0 - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y) * (x / T)) := by
    have h_sum_eq := prop_2_3 hT hβ ha hG hG' hφ_mes hφ_int hφ_cont hφ_supp hφ_Fourier x (by positivity)
    rw [← h_sum_eq]
    field_simp [Real.pi_pos.ne']
    congr 1
    ext x; ring_nf
  calc S a σ x
    _ ≤ (x ^ (-σ) : ℝ) * ∑' (n : ℕ+), a n * (x / n) * (𝓕 φ_plus ((T / (2 * π)) * log (n / x))).re := by
      rw [S_eq_I a σ x T hσ hT (by linarith [hx])]
      apply mul_le_mul_of_nonneg_left
      · exact Summable.tsum_le_tsum h_pointwise h_sum_LHS h_sum_RHS
      · positivity
    _ = (x ^ (-σ) : ℝ) * (∑' (n : ℕ+), (a n : ℂ) * (x / n) * 𝓕 φ_plus ((T / (2 * π)) * log (n / x))).re := by
      rw [Complex.re_tsum h_summable]
      congr with n
      ring_nf; simp
    _ = (x ^ (-σ) : ℝ) * (2 * π * ((1 / (2 * π * T)) * (∫ t in Set.Icc (-T) T, φ_plus (t / T) * G (1 + t * I) * x ^ (1 + t * I)) +
        (φ_plus 0 - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y) * (x / T))).re := by rw [h_sum_total]
    _ = (((x ^ (-σ) : ℝ) : ℂ) * (2 * π * ((1 / (2 * π * T)) * (∫ t in Set.Icc (-T) T, φ_plus (t / T) * G (1 + t * I) * x ^ (1 + t * I)) +
        (φ_plus 0 - ∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y) * (x / T)))).re := by rw [← Complex.re_ofReal_mul]
    _ = (((2 * π * (x ^ (1 - σ) : ℝ) / T) : ℂ) * φ_plus 0).re +
        (((x ^ (-σ) / T : ℝ) : ℂ) * (∫ t in Set.Icc (-T) T, φ_plus (t / T) * G (1 + t * I) * x ^ (1 + t * I))).re -
        (((2 * π * (x ^ (1 - σ) : ℝ) / T) : ℂ) * (∫ y in Set.Iic (-T * log x / (2 * π)), 𝓕 φ_plus y)).re := by
      rw [complex_residual_algebraic_identity (zero_lt_one.trans_le hx) hT.ne']
      simp only [Complex.add_re, Complex.sub_re]
    _ ≤ (((2 * π * (x ^ (1 - σ) : ℝ) / T) : ℂ) * φ_plus 0).re +
        (((x ^ (-σ) / T : ℝ) : ℂ) * (∫ t in Set.Icc (-T) T, φ_plus (t / T) * G (1 + t * I) * x ^ (1 + t * I))).re -
        (if σ < 1 then 1 / (1 - σ) else 0) := by
      gcongr
      exact prop_2_4_plus_fourier_bound hT hβ hσ hφ_int hφ_Fourier hI_le_Fourier x hx
    _ ≤ _ := by
      gcongr; norm_cast
      rw [Complex.re_ofReal_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant47d05801f669d2ef417f912340c49ea9ce7f627b87d8f49f0b5002fac1f3e7f7.lean#L919).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4730827a7084551f7643dc7ab62b8d647252630c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
