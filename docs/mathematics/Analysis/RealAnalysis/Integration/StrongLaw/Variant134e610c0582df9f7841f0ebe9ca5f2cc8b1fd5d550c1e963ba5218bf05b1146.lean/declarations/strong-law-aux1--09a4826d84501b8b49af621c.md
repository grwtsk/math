# strong_law_aux1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7ae2e24-1506-fe3d-c093-8e835d1a5c00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c447a5ab-d21f-e149-9ab3-513667476418",
  "kind": "theorem",
  "lexical_name": "strong_law_aux1",
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
  "slug": "strong-law-aux1--09a4826d84501b8b49af621c",
  "source": {
    "blob": "0ddcf1107b0499008db6ae482ac58dbc3c446b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 411,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09a4826d84501b8b49af621c106f3b21d1505d14139b67ac89c56ecbf9c33ab5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c447a5ab-d21f-e149-9ab3-513667476418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strong_law_aux1 {c : ℝ} (c_one : 1 < c) {ε : ℝ} (εpos : 0 < ε) : ∀ᵐ ω, ∀ᶠ n : ℕ in atTop,
    |∑ i in range ⌊c ^ n⌋₊, truncation (X i) i ω - 𝔼[∑ i in range ⌊c ^ n⌋₊, truncation (X i) i]| <
    ε * ⌊c ^ n⌋₊ := by
  /- Let `S n = ∑ i in range n, Y i` where `Y i = truncation (X i) i`. We should show that
    `|S k - 𝔼[S k]| / k ≤ ε` along the sequence of powers of `c`. For this, we apply Borel-Cantelli:
    it suffices to show that the converse probabilites are summable. From Chebyshev inequality, this
    will follow from a variance control `∑' Var[S (c^i)] / (c^i)^2 < ∞`. This is checked in `I2`
    using pairwise independence to expand the variance of the sum as the sum of the variances,
    and then a straightforward but tedious computation (essentially boiling down to the fact that
    the sum of `1/(c ^ i)^2` beyong a threshold `j` is comparable to `1/j^2`).
    Note that we have written `c^i` in the above proof sketch, but rigorously one should put integer
    parts everywhere, making things more painful. We write `u i = ⌊c^i⌋₊` for brevity. -/
  have c_pos : 0 < c := zero_lt_one.trans c_one
  have hX : ∀ i, AEStronglyMeasurable (X i) ℙ := fun i =>
    (hident i).symm.aestronglyMeasurable_snd hint.1
  have A : ∀ i, StronglyMeasurable (indicator (Set.Ioc (-i : ℝ) i) id) := fun i =>
    stronglyMeasurable_id.indicator measurableSet_Ioc
  set Y := fun n : ℕ => truncation (X n) n
  set S := fun n => ∑ i in range n, Y i with hS
  let u : ℕ → ℕ := fun n => ⌊c ^ n⌋₊
  have u_mono : Monotone u := fun i j hij => Nat.floor_mono (pow_le_pow c_one.le hij)
  have I1 : ∀ K, ∑ j in range K, ((j : ℝ) ^ 2)⁻¹ * Var[Y j] ≤ 2 * 𝔼[X 0] := by
    intro K
    calc
      ∑ j in range K, ((j : ℝ) ^ 2)⁻¹ * Var[Y j] ≤
          ∑ j in range K, ((j : ℝ) ^ 2)⁻¹ * 𝔼[truncation (X 0) j ^ 2] := by
        apply sum_le_sum fun j _ => ?_
        refine' mul_le_mul_of_nonneg_left _ (inv_nonneg.2 (sq_nonneg _))
        rw [(hident j).truncation.variance_eq]
        exact variance_le_expectation_sq (hX 0).truncation
      _ ≤ 2 * 𝔼[X 0] := sum_variance_truncation_le hint (hnonneg 0) K
  let C := c ^ 5 * (c - 1)⁻¹ ^ 3 * (2 * 𝔼[X 0])
  have I2 : ∀ N, ∑ i in range N, ((u i : ℝ) ^ 2)⁻¹ * Var[S (u i)] ≤ C := by
    intro N
    calc
      ∑ i in range N, ((u i : ℝ) ^ 2)⁻¹ * Var[S (u i)] =
          ∑ i in range N, ((u i : ℝ) ^ 2)⁻¹ * ∑ j in range (u i), Var[Y j] := by
        congr 1 with i
        congr 1
        rw [hS, IndepFun.variance_sum]
        · intro j _
          exact (hident j).aestronglyMeasurable_fst.memℒp_truncation
        · intro k _ l _ hkl
          exact (hindep hkl).comp (A k).measurable (A l).measurable
      _ = ∑ j in range (u (N - 1)),
          (∑ i in (range N).filter fun i => j < u i, ((u i : ℝ) ^ 2)⁻¹) * Var[Y j] := by
        simp_rw [mul_sum, sum_mul, sum_sigma']
        refine' sum_bij' (fun (p : Σ _ : ℕ, ℕ) _ => (⟨p.2, p.1⟩ : Σ _ : ℕ, ℕ)) _ (fun a _ => rfl)
          (fun (p : Σ _ : ℕ, ℕ) _ => (⟨p.2, p.1⟩ : Σ _ : ℕ, ℕ)) _ _ _
        · rintro ⟨i, j⟩ hij
          simp only [mem_sigma, mem_range] at hij
          simp only [hij.1, hij.2, mem_sigma, mem_range, mem_filter, and_true_iff]
          exact hij.2.trans_le (u_mono (Nat.le_pred_of_lt hij.1))
        · rintro ⟨i, j⟩ hij
          simp only [mem_sigma, mem_range, mem_filter] at hij
          simp only [hij.2.1, hij.2.2, mem_sigma, mem_range, and_self_iff]
        · rintro ⟨i, j⟩ hij; rfl
        · rintro ⟨i, j⟩ hij; rfl
      _ ≤ ∑ j in range (u (N - 1)), c ^ 5 * (c - 1)⁻¹ ^ 3 / ↑j ^ 2 * Var[Y j] := by
        apply sum_le_sum fun j hj => ?_
        rcases @eq_zero_or_pos _ _ j with (rfl | hj)
        · simp only [Nat.cast_zero, zero_pow', Ne.def, bit0_eq_zero, Nat.one_ne_zero,
            not_false_iff, div_zero, zero_mul]
          simp only [Nat.cast_zero, truncation_zero, variance_zero, mul_zero, le_rfl]
        apply mul_le_mul_of_nonneg_right _ (variance_nonneg _ _)
        convert sum_div_nat_floor_pow_sq_le_div_sq N (Nat.cast_pos.2 hj) c_one using 2
        · simp only [Nat.cast_lt]
        · simp only [one_div]
      _ = c ^ 5 * (c - 1)⁻¹ ^ 3 * ∑ j in range (u (N - 1)), ((j : ℝ) ^ 2)⁻¹ * Var[Y j] := by
        simp_rw [mul_sum, div_eq_mul_inv, mul_assoc]
      _ ≤ c ^ 5 * (c - 1)⁻¹ ^ 3 * (2 * 𝔼[X 0]) := by
        apply mul_le_mul_of_nonneg_left (I1 _)
        apply mul_nonneg (pow_nonneg c_pos.le _)
        exact pow_nonneg (inv_nonneg.2 (sub_nonneg.2 c_one.le)) _
  have I3 : ∀ N, ∑ i in range N, ℙ {ω | (u i * ε : ℝ) ≤ |S (u i) ω - 𝔼[S (u i)]|} ≤
      ENNReal.ofReal (ε⁻¹ ^ 2 * C) := by
    intro N
    calc
      ∑ i in range N, ℙ {ω | (u i * ε : ℝ) ≤ |S (u i) ω - 𝔼[S (u i)]|} ≤
          ∑ i in range N, ENNReal.ofReal (Var[S (u i)] / (u i * ε) ^ 2) := by
        refine' sum_le_sum fun i _ => _
        apply meas_ge_le_variance_div_sq
        · exact memℒp_finset_sum' _ fun j _ => (hident j).aestronglyMeasurable_fst.memℒp_truncation
        · apply mul_pos (Nat.cast_pos.2 _) εpos
          refine' zero_lt_one.trans_le _
          apply Nat.le_floor
          rw [Nat.cast_one]
          apply one_le_pow_of_one_le c_one.le
      _ = ENNReal.ofReal (∑ i in range N, Var[S (u i)] / (u i * ε) ^ 2) := by
        rw [ENNReal.ofReal_sum_of_nonneg fun i _ => ?_]
        exact div_nonneg (variance_nonneg _ _) (sq_nonneg _)
      _ ≤ ENNReal.ofReal (ε⁻¹ ^ 2 * C) := by
        apply ENNReal.ofReal_le_ofReal
        -- Porting note: do most of the rewrites under `conv` so as not to expand `variance`
        conv_lhs =>
          enter [2, i]
          rw [div_eq_inv_mul, ← inv_pow, mul_inv, mul_comm _ ε⁻¹, mul_pow, mul_assoc]
        rw [← mul_sum]
        refine' mul_le_mul_of_nonneg_left _ (sq_nonneg _)
        conv_lhs => enter [2, i]; rw [inv_pow]
        exact I2 N
  have I4 : (∑' i, ℙ {ω | (u i * ε : ℝ) ≤ |S (u i) ω - 𝔼[S (u i)]|}) < ∞ :=
    (le_of_tendsto_of_tendsto' (ENNReal.tendsto_nat_tsum _) tendsto_const_nhds I3).trans_lt
      ENNReal.ofReal_lt_top
  filter_upwards [ae_eventually_not_mem I4.ne] with ω hω
  simp_rw [not_le, mul_comm, sum_apply] at hω
  convert hω; simp only [sum_apply]
#align probability_theory.strong_law_aux1 ProbabilityTheory.strong_law_aux1

/- The truncation of `Xᵢ` up to `i` satisfies the strong law of large numbers
(with respect to the truncated expectation) along the sequence
`c^n`, for any `c > 1`. This follows from `strong_law_aux1` by varying `ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant134e610c0582df9f7841f0ebe9ca5f2cc8b1fd5d550c1e963ba5218bf05b1146.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ddcf1107b0499008db6ae482ac58dbc3c446b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
