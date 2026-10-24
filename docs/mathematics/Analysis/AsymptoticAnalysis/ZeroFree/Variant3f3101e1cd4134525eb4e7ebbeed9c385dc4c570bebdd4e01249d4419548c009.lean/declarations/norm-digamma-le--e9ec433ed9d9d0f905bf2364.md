# norm_digamma_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4a602ae-49d0-b12d-0ff4-902a1985f4ad",
  "kind": "theorem",
  "lexical_name": "norm_digamma_le",
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
  "slug": "norm-digamma-le--e9ec433ed9d9d0f905bf2364",
  "source": {
    "blob": "0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 376,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9ec433ed9d9d0f905bf236491b2470eee8c36dfa613a6e8b1b2930c888af9a0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4a602ae-49d0-b12d-0ff4-902a1985f4ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_digamma_le : ∃ C : ℝ, 0 < C ∧ ∀ z : ℂ, 1 / 2 ≤ z.re →
    ‖Complex.digamma z‖ ≤ C * Real.log (2 + ‖z‖) := by
  -- the compact box
  have hK : IsCompact (Set.Icc (1 / 2 : ℝ) (3 / 2) ×ℂ Set.Icc (-(1 / 2) : ℝ) (1 / 2)) :=
    isCompact_Icc.reProdIm isCompact_Icc
  have hcont : ContinuousOn Complex.digamma (Set.Icc (1 / 2 : ℝ) (3 / 2) ×ℂ Set.Icc (-(1 / 2) : ℝ) (1 / 2)) := by
    intro s hs
    have : 1 / 2 ≤ s.re := (Complex.mem_reProdIm.mp hs).1.1
    exact (differentiableAt_digamma (by linarith)).continuousAt.continuousWithinAt
  obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn hcont
  have hM0 : 0 ≤ M := le_trans (norm_nonneg _) (hM 1 (by
    rw [Complex.mem_reProdIm, Complex.one_re, Complex.one_im, Set.mem_Icc, Set.mem_Icc]; norm_num))
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have hlog4 : 0 ≤ Real.log 4 := Real.log_nonneg (by norm_num)
  set K₀ : ℝ := 14 + Real.pi + Real.log 4 with hK₀
  have hK₀0 : 0 ≤ K₀ := by have := Real.pi_pos; rw [hK₀]; linarith
  refine ⟨(K₀ + M + 4) / Real.log 2 + 2, by positivity, fun z hz => ?_⟩
  have hL : Real.log 2 ≤ Real.log (2 + ‖z‖) :=
    Real.log_le_log two_pos (by linarith [norm_nonneg z])
  have hL0 : 0 < Real.log (2 + ‖z‖) := hlog2.trans_le hL
  suffices h : ‖Complex.digamma z‖ ≤ 2 * Real.log (2 + ‖z‖) + (K₀ + M + 4) by
    calc ‖Complex.digamma z‖ ≤ 2 * Real.log (2 + ‖z‖) + (K₀ + M + 4) := h
      _ = 2 * Real.log (2 + ‖z‖) + ((K₀ + M + 4) / Real.log 2) * Real.log 2 := by field_simp
      _ ≤ 2 * Real.log (2 + ‖z‖) + ((K₀ + M + 4) / Real.log 2) * Real.log (2 + ‖z‖) := by
          have : 0 ≤ (K₀ + M + 4) / Real.log 2 := by positivity
          nlinarith
      _ = ((K₀ + M + 4) / Real.log 2 + 2) * Real.log (2 + ‖z‖) := by ring
  have hzre0 : 0 < z.re := by linarith
  have hnorm_lo : 1 / 2 ≤ ‖z‖ := le_trans hz (le_trans (le_abs_self _) (Complex.abs_re_le_norm z))
  have hnorm0 : 0 < ‖z‖ := by linarith
  rcases le_or_gt (1 / 2 : ℝ) |z.im| with him | him
  · -- Stirling: ‖ψ‖ ≤ ‖ψ − log z + (1/2)/z‖ + ‖log z‖ + ‖(1/2)/z‖ ≤ 12 + (log 4 + log(2+|z|) + π) + 2
    have hst := Zeta23.StirlingVert.digamma_stirling (w := z) hzre0 him
    have hlog_s : ‖Complex.log z‖ ≤ |Real.log ‖z‖| + Real.pi := by
      calc ‖Complex.log z‖ ≤ |(Complex.log z).re| + |(Complex.log z).im| :=
            Complex.norm_le_abs_re_add_abs_im _
        _ ≤ |Real.log ‖z‖| + Real.pi := by
            rw [Complex.log_re, Complex.log_im]
            have := Complex.abs_arg_le_pi z
            linarith
    have hlog_abs : |Real.log ‖z‖| ≤ Real.log 4 + Real.log (2 + ‖z‖) := by
      rcases le_or_gt (Real.log ‖z‖) 0 with hneg | hpos
      · have h1 : Real.log (1 / 4 : ℝ) ≤ Real.log ‖z‖ := Real.log_le_log (by norm_num) (by linarith)
        have h2 : Real.log (1 / 4 : ℝ) = -Real.log 4 := by
          rw [show (1 / 4 : ℝ) = 4⁻¹ by norm_num, Real.log_inv]
        rw [abs_of_nonpos hneg]
        linarith
      · rw [abs_of_pos hpos]
        have h1 : Real.log ‖z‖ ≤ Real.log (2 + ‖z‖) := Real.log_le_log hnorm0 (by linarith)
        linarith
    have hinv : ‖(1 / 2 : ℂ) / z‖ ≤ 2 := by
      rw [norm_div, div_le_iff₀ hnorm0]
      have h1 : ‖(1 / 2 : ℂ)‖ = 1 / 2 := by
        rw [show (1 / 2 : ℂ) = ((1 / 2 : ℝ) : ℂ) by norm_num, Complex.norm_real,
          Real.norm_eq_abs, abs_of_pos (by norm_num)]
      rw [h1]; linarith
    have him2 : 3 / z.im ^ 2 ≤ 12 := by
      have h1 : (1 / 4 : ℝ) ≤ z.im ^ 2 := by nlinarith [abs_nonneg z.im, sq_abs z.im]
      rw [div_le_iff₀ (by nlinarith)]
      nlinarith
    have hsplit : ‖Complex.digamma z‖
        ≤ ‖Complex.digamma z - Complex.log z + (1 / 2 : ℂ) / z‖ + ‖Complex.log z‖
          + ‖(1 / 2 : ℂ) / z‖ := by
      have h2 : Complex.digamma z = (Complex.digamma z - Complex.log z + (1 / 2 : ℂ) / z)
          + Complex.log z - (1 / 2 : ℂ) / z := by ring
      calc ‖Complex.digamma z‖
          = ‖(Complex.digamma z - Complex.log z + (1 / 2 : ℂ) / z) + Complex.log z
              - (1 / 2 : ℂ) / z‖ := by rw [← h2]
        _ ≤ ‖(Complex.digamma z - Complex.log z + (1 / 2 : ℂ) / z) + Complex.log z‖
            + ‖(1 / 2 : ℂ) / z‖ := norm_sub_le _ _
        _ ≤ _ := by
            have := norm_add_le (Complex.digamma z - Complex.log z + (1 / 2 : ℂ) / z) (Complex.log z)
            linarith
    rw [hK₀]
    linarith [hL0]
  · -- near the real axis: z = z₀ + n with z₀ in the box
    set n : ℕ := ⌊z.re - 1 / 2⌋₊ with hn
    set z₀ : ℂ := z - n with hz₀
    have hfl : (n : ℝ) ≤ z.re - 1 / 2 := Nat.floor_le (by linarith)
    have hfl2 : z.re - 1 / 2 < n + 1 := Nat.lt_floor_add_one (z.re - 1 / 2)
    have hz₀re : z₀.re = z.re - n := by simp [hz₀]
    have hz₀im : z₀.im = z.im := by simp [hz₀]
    have hz₀B : z₀ ∈ Set.Icc (1 / 2 : ℝ) (3 / 2) ×ℂ Set.Icc (-(1 / 2) : ℝ) (1 / 2) := by
      rw [Complex.mem_reProdIm, hz₀re, hz₀im, Set.mem_Icc, Set.mem_Icc]
      have := abs_lt.mp him
      refine ⟨⟨by linarith, by linarith⟩, by linarith, by linarith⟩
    have hz₀pos : 0 < z₀.re := by rw [hz₀re]; linarith
    have hzeq : z = z₀ + n := by simp [hz₀]
    have hψ : Complex.digamma z = Complex.digamma z₀ + ∑ k ∈ Finset.range n, 1 / (z₀ + k) := by
      rw [hzeq]; exact digamma_add_nat hz₀pos n
    have hterm : ∀ k ∈ Finset.range n, ‖1 / (z₀ + (k : ℂ))‖ ≤ 2 * (1 / ((k : ℝ) + 1)) := by
      intro k _
      have hre : (z₀ + (k : ℂ)).re = z₀.re + k := by simp
      have hpos : 0 < z₀.re + k := by positivity
      have hnk : z₀.re + k ≤ ‖z₀ + (k : ℂ)‖ := by
        calc z₀.re + k = |(z₀ + (k : ℂ)).re| := by rw [hre, abs_of_pos hpos]
          _ ≤ ‖z₀ + (k : ℂ)‖ := Complex.abs_re_le_norm _
      rw [norm_div, norm_one]
      calc 1 / ‖z₀ + (k : ℂ)‖ ≤ 1 / (z₀.re + k) := one_div_le_one_div_of_le hpos hnk
        _ ≤ 1 / (1 / 2 + k) := one_div_le_one_div_of_le (by positivity) (by linarith [hz₀B.1.1])
        _ ≤ 2 * (1 / ((k : ℝ) + 1)) := by
            rw [div_le_iff₀ (by positivity)]
            have hk0 : (0 : ℝ) ≤ k := Nat.cast_nonneg k
            field_simp
            nlinarith
    have hlogn : Real.log n ≤ Real.log (2 + ‖z‖) := by
      rcases Nat.eq_zero_or_pos n with h0 | hpos
      · rw [h0, Nat.cast_zero, Real.log_zero]; exact hL0.le
      · apply Real.log_le_log (by exact_mod_cast hpos)
        have : z.re ≤ ‖z‖ := le_trans (le_abs_self _) (Complex.abs_re_le_norm z)
        linarith
    have hsum : ‖∑ k ∈ Finset.range n, 1 / (z₀ + (k : ℂ))‖ ≤ 2 * (1 + Real.log (2 + ‖z‖)) := by
      calc ‖∑ k ∈ Finset.range n, 1 / (z₀ + (k : ℂ))‖
          ≤ ∑ k ∈ Finset.range n, ‖1 / (z₀ + (k : ℂ))‖ := norm_sum_le _ _
        _ ≤ ∑ k ∈ Finset.range n, 2 * (1 / ((k : ℝ) + 1)) := Finset.sum_le_sum hterm
        _ = 2 * ((harmonic n : ℚ) : ℝ) := by
            rw [← Finset.mul_sum, Zeta23.DigammaSeries.harmonic_cast_eq]
        _ ≤ 2 * (1 + Real.log n) := by
            have := harmonic_le_one_add_log n
            linarith
        _ ≤ 2 * (1 + Real.log (2 + ‖z‖)) := by linarith
    calc ‖Complex.digamma z‖ = ‖Complex.digamma z₀ + ∑ k ∈ Finset.range n, 1 / (z₀ + (k : ℂ))‖ := by
          rw [hψ]
      _ ≤ ‖Complex.digamma z₀‖ + ‖∑ k ∈ Finset.range n, 1 / (z₀ + (k : ℂ))‖ := norm_add_le _ _
      _ ≤ M + 2 * (1 + Real.log (2 + ‖z‖)) := add_le_add (hM z₀ hz₀B) hsum
      _ ≤ 2 * Real.log (2 + ‖z‖) + (K₀ + M + 4) := by linarith

/-- ‖Γℝ′/Γℝ(w)‖ ≤ C log(2 + |w|) for Re w ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variant3f3101e1cd4134525eb4e7ebbeed9c385dc4c570bebdd4e01249d4419548c009.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ae0a2fe106d4d5a5bcb06102dc2f0a602bda9e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
