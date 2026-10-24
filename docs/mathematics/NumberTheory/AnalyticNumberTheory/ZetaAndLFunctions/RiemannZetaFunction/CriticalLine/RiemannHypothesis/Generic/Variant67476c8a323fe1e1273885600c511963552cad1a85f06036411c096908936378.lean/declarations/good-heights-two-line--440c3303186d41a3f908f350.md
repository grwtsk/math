# good_heights_two_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58012f458575d1efeb286634aea144124e4207a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16e0bf42-67e6-a202-f50c-c3131494cc69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a71ac48-e1a0-51a8-c17c-aa92bd33db23",
  "kind": "theorem",
  "lexical_name": "good_heights_two_line",
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
  "slug": "good-heights-two-line--440c3303186d41a3f908f350",
  "source": {
    "blob": "58012f458575d1efeb286634aea144124e4207a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 375,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:440c3303186d41a3f908f3500d0f7c68d9414a6a859501a0cc10e6c511eef5c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a71ac48-e1a0-51a8-c17c-aa92bd33db23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem good_heights_two_line {f : ℂ → ℂ} {Cf t₀ : ℝ} {k : ℕ}
    (hfa : ∀ t : ℝ, t₀ ≤ |t| → AnalyticOnNhd ℂ f (closedBall (2 + t * I) (91 / 50)))
    (hCf : 0 < Cf)
    (hgrow : ∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| → ‖f s‖ ≤ Cf * |s.im| ^ k)
    (hlow' : ∀ t : ℝ, t₀ ≤ |t| → 1 ≤ ‖f (2 + t * I)‖)
    (Zc : ZeroConfig)
    (hlink : ∀ ρ ∈ Zc.carrier, 1 / 2 ≤ ρ.re → f ρ = 0 ∧ analyticOrderNatAt f ρ = Zc.mult ρ)
    (hlink' : ∀ ρ : ℂ, 0 < ρ.re → t₀ ≤ |ρ.im| → f ρ = 0 → ρ ∈ Zc.carrier) :
    ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j →
    ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
    ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      f s ≠ 0 ∧ ‖logDeriv f s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2 := by
  classical
  obtain ⟨C, t₁, hC, ht₁4, ht₀, hpf⟩ := logDeriv_partial_fraction_two_line hfa hCf hgrow hlow'
  obtain ⟨A₀, hA₀1, hloc⟩ := local_count_two_line hfa hCf hgrow hlow' Zc hlink
  have hA₀ : 0 ≤ A₀ := by linarith
  -- the constant and the threshold
  refine ⟨2 * C * (48 * A₀ + 3), by positivity, ⌈t₁⌉₊ + 4, fun j hj => ?_⟩
  have hjt4 : t₁ + 4 ≤ j := by
    have h1 : t₁ ≤ ⌈t₁⌉₊ := Nat.le_ceil t₁
    have h2 : ((⌈t₁⌉₊ + 4 : ℕ) : ℝ) ≤ j := by exact_mod_cast hj
    push_cast at h2; linarith
  have hjt : t₁ ≤ j := by
    have h1 : t₁ ≤ ⌈t₁⌉₊ := Nat.le_ceil t₁
    have h2 : ((⌈t₁⌉₊ + 4 : ℕ) : ℝ) ≤ j := by exact_mod_cast hj
    push_cast at h2; linarith
  have hj4 : (4 : ℝ) ≤ j := by
    have h2 : ((⌈t₁⌉₊ + 4 : ℕ) : ℝ) ≤ j := by exact_mod_cast hj
    push_cast at h2; linarith [Nat.cast_nonneg (α := ℝ) ⌈t₁⌉₊]
  set Lg : ℝ := Real.log ((j : ℝ) + 3) with hLg
  have hLg1 : 1 ≤ Lg := by
    rw [hLg, ← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  have hlog2 : Real.log 2 ≤ Lg := by rw [hLg]; exact Real.log_le_log (by norm_num) (by linarith)
  -- the two finite families of zeros near height ±j (as sets of ℂ)
  set Wp : Set ℂ := Zc.window ((j : ℝ) - 3) ((j : ℝ) - 3 + (6 : ℕ)) with hWp
  set Wm : Set ℂ := Zc.window (-(j : ℝ) - 4) (-(j : ℝ) - 4 + (6 : ℕ)) with hWm
  have hWpfin : Wp.Finite := Zc.window_finite _ _
  have hWmfin : Wm.Finite := Zc.window_finite _ _
  set S : Finset ℝ := hWpfin.toFinset.image (fun ρ : ℂ => ρ.im)
    ∪ hWmfin.toFinset.image (fun ρ : ℂ => -ρ.im) with hS
  -- counts
  have hwin6 : ∀ a : ℝ, |a| ≤ (j : ℝ) + 4 → (Zc.N a (a + (6 : ℕ)) : ℝ) ≤ 6 * (A₀ * (2 * Lg)) := by
    intro a ha
    rw [N_unit_windows Zc a 6, Nat.cast_sum]
    have hterm : ∀ i ∈ Finset.range 6, (Zc.N (a + i) (a + i + 1) : ℝ) ≤ A₀ * (2 * Lg) := by
      intro i hi
      have hi6 : (i : ℝ) < 6 := by exact_mod_cast Finset.mem_range.mp hi
      refine (hloc (a + i)).trans (mul_le_mul_of_nonneg_left ?_ hA₀)
      have h1 : |a + i| + 3 ≤ ((j : ℝ) + 3) ^ 2 := by
        have := abs_add_le a (i : ℝ)
        rw [Nat.abs_cast] at this
        nlinarith
      calc Real.log (|a + ↑i| + 3) ≤ Real.log (((j : ℝ) + 3) ^ 2) :=
            Real.log_le_log (by positivity) h1
        _ = 2 * Lg := by rw [hLg, Real.log_pow]; push_cast; ring
    calc ∑ i ∈ Finset.range 6, (Zc.N (a + i) (a + i + 1) : ℝ)
        ≤ ∑ i ∈ Finset.range 6, A₀ * (2 * Lg) := Finset.sum_le_sum hterm
      _ = 6 * (A₀ * (2 * Lg)) := by
          rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul]; push_cast; ring
  have hcardW : ∀ {W : Set ℂ} (hW : W.Finite) (a : ℝ), W = Zc.window a (a + (6 : ℕ)) →
      |a| ≤ (j : ℝ) + 4 → (hW.toFinset.card : ℝ) ≤ 6 * (A₀ * (2 * Lg)) := by
    intro W hW a hWa ha
    have h1 : hW.toFinset.card = W.ncard := (Set.ncard_eq_toFinset_card W hW).symm
    have h2 : W.ncard ≤ Zc.N a (a + (6 : ℕ)) := by
      rw [hWa]; exact Zc.ncard_le_finsum_mult a (a + (6 : ℕ)) subset_rfl
    calc (hW.toFinset.card : ℝ) = (W.ncard : ℝ) := by rw [h1]
      _ ≤ (Zc.N a (a + (6 : ℕ)) : ℝ) := by exact_mod_cast h2
      _ ≤ 6 * (A₀ * (2 * Lg)) := hwin6 a ha
  have hcard : (S.card : ℝ) ≤ 24 * A₀ * Lg := by
    have h1 : S.card ≤ hWpfin.toFinset.card + hWmfin.toFinset.card :=
      (Finset.card_union_le _ _).trans (Nat.add_le_add Finset.card_image_le Finset.card_image_le)
    have h1' : (S.card : ℝ) ≤ hWpfin.toFinset.card + hWmfin.toFinset.card := by exact_mod_cast h1
    have hp := hcardW hWpfin ((j : ℝ) - 3) hWp (by rw [abs_of_nonneg (by linarith)]; linarith)
    have hm := hcardW hWmfin (-(j : ℝ) - 4) hWm (by rw [abs_of_nonpos (by linarith)]; linarith)
    linarith
  -- the good height
  obtain ⟨R, hR1, hR2, hfar⟩ := Zeta23.WeilEF.exists_far_point S j
  set δ : ℝ := 1 / (2 * ((S.card : ℝ) + 1)) with hδ
  have hδpos : 0 < δ := by rw [hδ]; positivity
  have hδinv : 1 / δ = 2 * ((S.card : ℝ) + 1) := by rw [hδ, one_div_one_div]
  refine ⟨R, hR1, hR2, ?_⟩
  have hlogR : Real.log (|R| + 3) ≤ 2 * Lg := by
    rw [abs_of_nonneg (by linarith)]
    calc Real.log (R + 3) ≤ Real.log (2 * ((j:ℝ) + 3)) := Real.log_le_log (by linarith) (by linarith)
      _ = Real.log 2 + Lg := by rw [Real.log_mul (by norm_num) (by linarith)]
      _ ≤ 2 * Lg := by linarith
  -- the right half 1/2 ≤ Re s ≤ 2
  have right_half : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      f s ≠ 0 ∧ ‖logDeriv f s‖ ≤ (2 * C * (48 * A₀ + 3)) * Lg ^ 2 := by
    intro s hsR hσ1 hσ2
    have hsre : 0 < s.re := by linarith
    have habs : |s.im| = R := by
      rcases hsR with h | h
      · rw [h, abs_of_nonneg (by linarith)]
      · rw [h, abs_neg, abs_of_nonneg (by linarith)]
    have ht : t₁ ≤ |s.im| := by rw [habs]; linarith
    obtain ⟨_, Z, hZset, hZsum, hZpf⟩ := hpf s.im ht
    have hsball : s ∈ closedBall (2 + s.im * I) (3 / 2) := by
      rw [mem_closedBall, dist_eq_norm]
      have : s - (2 + s.im * I) = ((s.re - 2 : ℝ) : ℂ) := by apply Complex.ext <;> simp
      rw [this, Complex.norm_real, Real.norm_eq_abs, abs_sub_comm, abs_of_nonneg (by linarith)]
      linarith
    -- every zero of Y in the pf ball has its signed ordinate in S, hence is δ-far from s
    have hordS : ∀ ρ : ℂ, ρ ∈ closedBall (2 + s.im * I) (22 / 25 * (91 / 50)) →
        f ρ = 0 → δ ≤ ‖s - ρ‖ := by
      intro ρ hρ hz
      have him := Zeta23.WeilEF.im_mem_of_mem_closedBall hρ
      rw [mem_closedBall, dist_eq_norm] at hρ
      have hρre : 0 < ρ.re := by
        have := Complex.abs_re_le_norm (ρ - (2 + s.im * I))
        simp at this; rw [abs_le] at this; linarith [this.1]
      have hρim : t₀ ≤ |ρ.im| := by
        have h1 : |ρ.im - s.im| ≤ 22 / 25 * (91 / 50) := him
        have h2 := abs_sub_abs_le_abs_sub s.im ρ.im
        rw [abs_sub_comm] at h2
        rw [habs] at h2
        linarith
      have hρc : ρ ∈ Zc.carrier := hlink' ρ hρre hρim hz
      rw [abs_le] at him
      refine le_trans ?_ (Zeta23.WeilEF.abs_im_sub_le_norm_sub s ρ)
      rcases hsR with hsR | hsR
      · have hmem : ρ ∈ hWpfin.toFinset := by
          rw [Set.Finite.mem_toFinset, hWp]
          rw [hsR] at him
          refine ⟨hρc, ?_, ?_⟩
          · show (j : ℝ) - 3 < ρ.im
            linarith [him.1]
          · show ρ.im ≤ (j : ℝ) - 3 + ((6 : ℕ) : ℝ)
            push_cast; linarith [him.2]
        have : ρ.im ∈ S := by
          rw [hS, Finset.mem_union]; left
          exact Finset.mem_image.mpr ⟨ρ, hmem, rfl⟩
        have := hfar _ this
        rwa [hsR]
      · have hmem : ρ ∈ hWmfin.toFinset := by
          rw [Set.Finite.mem_toFinset, hWm]
          rw [hsR] at him
          refine ⟨hρc, ?_, ?_⟩
          · show -(j : ℝ) - 4 < ρ.im
            linarith [him.1]
          · show ρ.im ≤ -(j : ℝ) - 4 + ((6 : ℕ) : ℝ)
            push_cast; linarith [him.2]
        have : -ρ.im ∈ S := by
          rw [hS, Finset.mem_union]; right
          exact Finset.mem_image.mpr ⟨ρ, hmem, rfl⟩
        have := hfar _ this
        rw [hsR, show |(-R) - ρ.im| = |R - (-ρ.im)| by rw [← abs_neg]; ring_nf]
        exact this
    have hY : f s ≠ 0 := by
      intro hz
      have h0 := hordS s (closedBall_subset_closedBall (by norm_num) hsball) hz
      simp at h0; linarith
    refine ⟨hY, ?_⟩
    have hZpf' := hZpf s hsball hY
    have hlogt : Real.log (|s.im| + 3) ≤ 2 * Lg := by rw [habs]; rw [abs_of_nonneg (by linarith)] at hlogR; exact hlogR
    have hZmem : ∀ ρ ∈ Z, ρ ∈ closedBall (2 + s.im * I) (22 / 25 * (91 / 50)) ∧ f ρ = 0 := by
      intro ρ hρ
      have : ρ ∈ (↑Z : Set ℂ) := hρ
      rw [hZset] at this
      exact this
    have hsumZ : ‖∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) / (s - ρ)‖ ≤ (C * (2 * Lg)) * (1 / δ) := by
      calc ‖∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) / (s - ρ)‖
          ≤ ∑ ρ ∈ Z, ‖(analyticOrderNatAt f ρ : ℂ) / (s - ρ)‖ := norm_sum_le _ _
        _ ≤ ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℝ) * (1 / δ) := by
            refine Finset.sum_le_sum fun ρ hρ => ?_
            obtain ⟨hρb, hρz⟩ := hZmem ρ hρ
            have hd := hordS ρ hρb hρz
            rw [norm_div, Complex.norm_natCast, div_eq_mul_one_div]
            refine mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
            exact one_div_le_one_div_of_le hδpos hd
        _ = (∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℝ)) * (1 / δ) := by rw [Finset.sum_mul]
        _ ≤ (C * (2 * Lg)) * (1 / δ) := by
            refine mul_le_mul_of_nonneg_right (hZsum.trans ?_) (div_nonneg zero_le_one hδpos.le)
            exact mul_le_mul_of_nonneg_left hlogt hC.le
    have hYld : ‖logDeriv f s‖ ≤ C * (2 * Lg) + (C * (2 * Lg)) * (1 / δ) := by
      have h1 : ‖logDeriv f s‖
          ≤ ‖logDeriv f s - ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) / (s - ρ)‖
            + ‖∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) / (s - ρ)‖ := norm_le_norm_sub_add _ _
      have h2 := hZpf'.trans (mul_le_mul_of_nonneg_left hlogt hC.le)
      linarith [hsumZ]
    refine hYld.trans ?_
    rw [hδinv]
    have : C * (2 * Lg) + C * (2 * Lg) * (2 * ((S.card : ℝ) + 1))
        = 2 * C * Lg * (2 * (S.card : ℝ) + 3) := by ring
    rw [this]
    have hn : 2 * (S.card : ℝ) + 3 ≤ (48 * A₀ + 3) * Lg := by nlinarith
    calc 2 * C * Lg * (2 * (S.card : ℝ) + 3) ≤ 2 * C * Lg * ((48 * A₀ + 3) * Lg) :=
          mul_le_mul_of_nonneg_left hn (by positivity)
      _ = 2 * C * (48 * A₀ + 3) * Lg ^ 2 := by ring
  exact right_half


end Generic
end ZeroCount
end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58012f458575d1efeb286634aea144124e4207a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
