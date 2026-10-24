# horizontal_vanish

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "837c38c48d64d88a392eeb6876cb93bdaa540bec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60fa56485acfedf5d0ec0e9bf7f6cf6b42ca453432bcc3271ed25668ad606667.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3cf3c4bd-0852-fdcc-a3ed-945d3118e24e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bed3eba7-97d3-900f-cd45-9ff4f06797c8",
  "kind": "theorem",
  "lexical_name": "horizontal_vanish",
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
  "slug": "horizontal-vanish--dea2b503117f50a13c3d5473",
  "source": {
    "blob": "837c38c48d64d88a392eeb6876cb93bdaa540bec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Horizontal/Variant60fa56485acfedf5d0ec0e9bf7f6cf6b42ca453432bcc3271ed25668ad606667.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dea2b503117f50a13c3d547343a989de1d5e8dffc55350ebf63ca494bb4a89bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Horizontal/Variant60fa56485acfedf5d0ec0e9bf7f6cf6b42ca453432bcc3271ed25668ad606667.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bed3eba7-97d3-900f-cd45-9ff4f06797c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_vanish {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) {Cg : ℝ} (hCg : 0 < Cg) {R : ℕ → ℝ}
    (hR : ∀ j : ℕ, (j : ℝ) + 7 ≤ R j ∧ R j ≤ (j : ℝ) + 8 ∧
      ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg * (Real.log ((j : ℝ) + 10)) ^ 2) :
    Tendsto (fun j : ℕ => HIntegral (fun s => Hfn k s * logDeriv completedRiemannZeta s)
        (1 - c) c (R j)) atTop (𝓝 0)
    ∧ Tendsto (fun j : ℕ => HIntegral (fun s => Hfn k s * logDeriv completedRiemannZeta s)
        (1 - c) c (-(R j))) atTop (𝓝 0) := by
  obtain ⟨CH, hCH0, hH⟩ := norm_Hfn_le hk hkc
  obtain ⟨Cψ, hCψ, hψ⟩ := digamma_growth_strip
  set Lg : ℕ → ℝ := fun j => Real.log ((j : ℝ) + 10) with hLgdef
  have hLg1 : ∀ j : ℕ, 1 ≤ Lg j := fun j => by
    rw [hLgdef, ← Real.log_exp 1]
    refine Real.log_le_log (Real.exp_pos 1) ?_
    have := Real.exp_one_lt_d9
    have : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    linarith
  have hlogπ : 0 < Real.log Real.pi := Real.log_pos (by linarith [Real.pi_gt_three])
  set K : ℝ := Real.log Real.pi / 2 + Cψ + Cg with hKdef
  have hK0 : 0 < K := by positivity
  -- ‖Λ'/Λ(s)‖ ≤ K log²(j+10) on the good horizontals, re s ∈ [1/2, 2]
  have hright : ∀ (j : ℕ) (s : ℂ), (s.im = R j ∨ s.im = -R j) → 1/2 ≤ s.re → s.re ≤ 2 →
      ‖logDeriv completedRiemannZeta s‖ ≤ K * (Lg j) ^ 2 := by
    intro j s hsim hre1 hre2
    obtain ⟨hR1, hR2, hRs⟩ := hR j
    have hj0 : (0:ℝ) ≤ j := Nat.cast_nonneg j
    have hRj0 : 0 ≤ R j := by linarith
    have him7 : 7 ≤ |s.im| := by
      rcases hsim with h | h
      · rw [h, abs_of_nonneg hRj0]; linarith
      · rw [h, abs_neg, abs_of_nonneg hRj0]; linarith
    have hs0 : s ≠ 0 := fun h => by rw [h] at him7; norm_num at him7
    have hs1 : s ≠ 1 := fun h => by rw [h] at him7; norm_num at him7
    obtain ⟨hζ, hLζ⟩ := hRs s hsim hre1 hre2
    have hre0 : 0 < s.re := by linarith
    rw [logDeriv_completedZeta s hs1 hζ hre0, logDeriv_Gammaℝ hre0]
    have hψs : ‖Complex.digamma (s / 2)‖ ≤ Cψ * Real.log (2 + |(s / 2).im|) :=
      hψ (s / 2) (by simp; linarith) (by simp; linarith)
    have hlog2 : Real.log (2 + |(s / 2).im|) ≤ Lg j := by
      have him8 : |s.im| ≤ (j : ℝ) + 8 := by
        rcases hsim with h | h
        · rw [h, abs_of_nonneg hRj0]; exact hR2
        · rw [h, abs_neg, abs_of_nonneg hRj0]; exact hR2
      have e : |(s / 2).im| = |s.im| / 2 := by simp [abs_div]
      rw [e, hLgdef]
      exact Real.log_le_log (by positivity) (by linarith)
    have hLg2 : Lg j ≤ Lg j ^ 2 := by nlinarith [hLg1 j]
    calc ‖-((Real.log Real.pi : ℝ) : ℂ) / 2 + 1 / 2 * Complex.digamma (s / 2) + logDeriv riemannZeta s‖
        ≤ ‖-((Real.log Real.pi : ℝ) : ℂ) / 2‖ + ‖(1 / 2 : ℂ) * Complex.digamma (s / 2)‖
          + ‖logDeriv riemannZeta s‖ := norm_add₃_le
      _ = Real.log Real.pi / 2 + 1 / 2 * ‖Complex.digamma (s / 2)‖ + ‖logDeriv riemannZeta s‖ := by
          rw [norm_div, norm_neg, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hlogπ, norm_mul]
          norm_num
      _ ≤ Real.log Real.pi / 2 * Lg j ^ 2 + Cψ * Lg j ^ 2 + Cg * Lg j ^ 2 := by
          have h1 : Real.log Real.pi / 2 ≤ Real.log Real.pi / 2 * Lg j ^ 2 := by
            have : (1:ℝ) ≤ Lg j ^ 2 := by nlinarith [hLg1 j]
            nlinarith
          have h2 : 1 / 2 * ‖Complex.digamma (s / 2)‖ ≤ Cψ * Lg j ^ 2 := by
            have := hψs.trans (mul_le_mul_of_nonneg_left (hlog2.trans hLg2) hCψ.le)
            nlinarith [norm_nonneg (Complex.digamma (s / 2))]
          linarith
      _ = K * Lg j ^ 2 := by rw [hKdef]; ring
  -- the same bound on the whole horizontal segment x ∈ [1-c, c], by reflection for x < 1/2
  have hall : ∀ (j : ℕ) (x y : ℝ), (y = R j ∨ y = -R j) → 1 - c ≤ x → x ≤ c →
      ‖logDeriv completedRiemannZeta ((x : ℂ) + y * I)‖ ≤ K * (Lg j) ^ 2 := by
    intro j x y hy hx1 hx2
    rcases le_or_gt (1/2 : ℝ) x with hx | hx
    · exact hright j _ (by rcases hy with h | h <;> simp [h]) (by simpa using hx)
        (by simp; linarith)
    · -- reflect: s = 1 − s', s' := (1 − x) − y i on the opposite good horizontal
      set s' : ℂ := ((1 - x : ℝ) : ℂ) + (-y) * I with hs'def
      have him' : s'.im = -y := by simp [hs'def]
      have hre' : s'.re = 1 - x := by simp [hs'def]
      have hy0 : y ≠ 0 := by
        obtain ⟨hR1, -, -⟩ := hR j
        have hj0 : (0:ℝ) ≤ j := Nat.cast_nonneg j
        have hRpos : 0 < R j := by linarith
        rcases hy with h | h
        · rw [h]; exact hRpos.ne'
        · rw [h]; exact (neg_lt_zero.mpr hRpos).ne
      have hs'0 : s' ≠ 0 := fun h => hy0 (by
        have him0 := congrArg Complex.im h
        rw [him'] at him0; simpa using him0)
      have hs'1 : s' ≠ 1 := fun h => hy0 (by
        have him1 := congrArg Complex.im h
        rw [him'] at him1; simpa using him1)
      have e : ((x : ℂ) + y * I) = 1 - s' := by
        simp only [hs'def]; push_cast; ring
      rw [e, logDeriv_completedZeta_one_sub s' hs'0 hs'1, norm_neg]
      refine hright j s' ?_ (by rw [hre']; linarith) (by rw [hre']; linarith)
      rw [him']
      rcases hy with h | h
      · right; rw [h]
      · left; rw [h, neg_neg]
  -- integral bound along either horizontal
  have hint : ∀ (j : ℕ) (y : ℝ), (y = R j ∨ y = -R j) →
      ‖HIntegral (fun s => Hfn k s * logDeriv completedRiemannZeta s) (1 - c) c y‖
        ≤ CH / (1 + (R j) ^ 2) * (K * Lg j ^ 2) * |c - (1 - c)| := by
    intro j y hy
    unfold HIntegral
    refine intervalIntegral.norm_integral_le_of_norm_le_const fun x hx => ?_
    rw [Set.uIoc_of_le (by linarith)] at hx
    have hy2 : y ^ 2 = (R j) ^ 2 := by rcases hy with h | h <;> simp [h]
    dsimp only
    rw [norm_mul, ← hy2]
    exact mul_le_mul (hH x y (by linarith [hx.1]) (by linarith [hx.2]))
      (hall j x y hy hx.1.le hx.2) (norm_nonneg _) (by positivity)
  -- the majorant tends to 0
  set b : ℕ → ℝ := fun j => CH / (1 + (R j) ^ 2) * (K * Lg j ^ 2) * |c - (1 - c)| with hbdef
  have hLg_sq : ∀ j : ℕ, Lg j ^ 2 ≤ 4 * ((j : ℝ) + 10) := fun j => by
    have hy0 : (0 : ℝ) ≤ (j : ℝ) + 10 := by positivity
    have h := Real.log_le_rpow_div hy0 (by norm_num : (0:ℝ) < 1/2)
    have hsq : (((j : ℝ) + 10) ^ (1/2 : ℝ)) ^ 2 = (j : ℝ) + 10 := by
      rw [← Real.rpow_natCast, ← Real.rpow_mul hy0]; norm_num
    have h0 : 0 ≤ Lg j := (zero_le_one.trans (hLg1 j))
    calc Lg j ^ 2 ≤ (((j : ℝ) + 10) ^ (1/2 : ℝ) / (1/2)) ^ 2 := pow_le_pow_left₀ h0 h 2
      _ = 4 * ((j : ℝ) + 10) := by rw [div_pow, hsq]; ring
  have hb_le : ∀ j : ℕ, b j ≤ (8 * CH * K * |c - (1 - c)|) / ((j : ℝ) + 7) := fun j => by
    obtain ⟨hR1, hR2, -⟩ := hR j
    have hj0 : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    have h1 : Lg j ^ 2 / (1 + R j ^ 2) ≤ 8 / ((j : ℝ) + 7) := by
      rw [div_le_div_iff₀ (by positivity) (by positivity)]
      have hR7 : ((j : ℝ) + 7) ^ 2 ≤ R j ^ 2 := pow_le_pow_left₀ (by positivity) hR1 2
      nlinarith [hLg_sq j, hR7, mul_le_mul_of_nonneg_right (hLg_sq j) (show (0:ℝ) ≤ (j:ℝ) + 7 by positivity),
        sq_nonneg ((j:ℝ) + 7)]
    have e : b j = CH * K * |c - (1 - c)| * (Lg j ^ 2 / (1 + R j ^ 2)) := by
      rw [hbdef]; ring
    rw [e]
    calc CH * K * |c - (1 - c)| * (Lg j ^ 2 / (1 + R j ^ 2))
        ≤ CH * K * |c - (1 - c)| * (8 / ((j : ℝ) + 7)) :=
          mul_le_mul_of_nonneg_left h1 (by positivity)
      _ = 8 * CH * K * |c - (1 - c)| / ((j : ℝ) + 7) := by ring
  have hb0 : ∀ j, 0 ≤ b j := fun j => by rw [hbdef]; positivity
  have hb : Tendsto b atTop (𝓝 0) := by
    have hlim : Tendsto (fun j : ℕ => (8 * CH * K * |c - (1 - c)|) / ((j : ℝ) + 7)) atTop (𝓝 0) :=
      tendsto_const_nhds.div_atTop
        (tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop)
    exact squeeze_zero hb0 hb_le hlim
  exact ⟨squeeze_zero_norm (fun j => hint j (R j) (Or.inl rfl)) hb,
    squeeze_zero_norm (fun j => hint j (-(R j)) (Or.inr rfl)) hb⟩

end WeilEF
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Horizontal/Variant60fa56485acfedf5d0ec0e9bf7f6cf6b42ca453432bcc3271ed25668ad606667.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Horizontal/Variant60fa56485acfedf5d0ec0e9bf7f6cf6b42ca453432bcc3271ed25668ad606667.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `837c38c48d64d88a392eeb6876cb93bdaa540bec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
