# half_count_large

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42f9e1e712587991f2b9ea6e8edf074c9055375c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58bda9d2-f170-df53-7812-93f33ae80411",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9122f15-115a-b0ee-2099-a1142968a4a6",
  "kind": "theorem",
  "lexical_name": "half_count_large",
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
  "slug": "half-count-large--798af9089cdb28402de1ef06",
  "source": {
    "blob": "42f9e1e712587991f2b9ea6e8edf074c9055375c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 96,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:798af9089cdb28402de1ef064844cedca646a3aead140a0b8ae4accb1aec9ee6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9122f15-115a-b0ee-2099-a1142968a4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_count_large :
    ∃ A₁ : ℝ, ∀ t : ℝ, 4 ≤ |t| → NhalfR t ≤ A₁ * Real.log (|t| + 3) := by
  obtain ⟨A, C, hC, hgrowth⟩ := zeta_growth_right
  have hL := zeta_lower_bound_two
  set A' : ℝ := max A 0 with hA'
  have hA'0 : 0 ≤ A' := le_max_right _ _
  -- constants
  set r : ℝ := 0.84 with hr
  set R : ℝ := 0.95 with hR
  have hlogRr : 0 < Real.log (R / r) := Real.log_pos (by norm_num [hr, hR])
  refine ⟨1 / Real.log (R / r) * (|Real.log (3 * C)| + 2 * A'), fun t ht => ?_⟩
  -- centre and rescaling
  set c₀ : ℂ := 2 + (t + 1/2 : ℝ) * I with hc₀
  set κ : ℂ := ((19/10 : ℝ) : ℂ) with hκ
  have hκ0 : κ ≠ 0 := by simp [hκ]
  have hnormκ : ‖κ‖ = 1.9 := by simp [hκ]; norm_num
  have hζc₀ : (1/3 : ℝ) ≤ ‖riemannZeta c₀‖ := by simpa [hc₀] using hL (t + 1/2)
  have hζc₀ne : riemannZeta c₀ ≠ 0 := by
    intro h; rw [h, norm_zero] at hζc₀; norm_num at hζc₀
  set u : ℂ := (riemannZeta c₀)⁻¹ with hu
  have hu0 : u ≠ 0 := inv_ne_zero hζc₀ne
  have hnu : ‖u‖ ≤ 3 := by
    rw [hu, norm_inv]; rw [inv_le_comm₀ (by positivity) (by norm_num)]; linarith
  set g : ℂ → ℂ := gfun c₀ κ u with hg
  -- geometry: ‖c₀ + κ z - 1‖ ≥ |t + 1/2| - 1.9 ‖z‖
  have hc₀1 : |t + 1/2| ≤ ‖c₀ - 1‖ := by
    have : (c₀ - 1).im = t + 1/2 := by simp [hc₀]
    rw [← this]; exact Complex.abs_im_le_norm _
  have ht' : 3.5 ≤ |t + 1/2| := by
    rcases le_abs'.mp ht with h | h
    · rw [abs_of_neg (by linarith)]; linarith
    · rw [abs_of_pos (by linarith)]; linarith
  have hdist : ∀ z : ℂ, ‖z‖ ≤ 1 → |t + 1/2| - 1.9 * ‖z‖ ≤ ‖c₀ + κ * z - 1‖ := by
    intro z hz
    have h1 : ‖c₀ - 1‖ - ‖κ * z‖ ≤ ‖c₀ + κ * z - 1‖ := by
      have := norm_sub_norm_le (c₀ - 1) (-(κ * z))
      rw [norm_neg] at this
      have e : c₀ - 1 - -(κ * z) = c₀ + κ * z - 1 := by ring
      rw [e] at this; linarith
    rw [norm_mul, hnormκ] at h1; linarith
  have hne1 : ∀ z : ℂ, ‖z‖ ≤ 1 → c₀ + κ * z ≠ 1 := by
    intro z hz h
    have := hdist z hz
    rw [h, sub_self, norm_zero] at this
    nlinarith
  -- hypotheses of ZerosBound
  have hfAnalytic : AnalyticOnNhd ℂ g (Metric.closedBall (0 : ℂ) 1) := by
    intro z hz
    rw [Metric.mem_closedBall, dist_zero_right] at hz
    exact gfun_analyticAt (hne1 z hz)
  have hg0 : g 0 = 1 := by simp [hg, gfun, hu, hζc₀ne]
  have hfin : (SetOfZeros 1 g).Finite := by
    have hK := riemannZeta_zeros_finite_of_isCompact (isCompact_closedBall c₀ (1.9 : ℝ))
    refine (hK.image fun ρ => (ρ - c₀) / κ).subset ?_
    rintro z ⟨hz, hgz⟩
    refine ⟨c₀ + κ * z, ⟨?_, hne1 z hz, ?_⟩, ?_⟩
    · rw [Metric.mem_closedBall, dist_eq_norm, add_sub_cancel_left, norm_mul, hnormκ]; nlinarith [norm_nonneg z]
    · simpa [hg, gfun, hu0] using hgz
    · show (c₀ + κ * z - c₀) / κ = z
      rw [add_sub_cancel_left, mul_div_cancel_left₀ _ hκ0]
  set B : ℝ := 3 * C * (|t| + 6) ^ A' with hB
  have hBpos : 0 < B := by positivity
  have hfz : ∀ z : ℂ, ‖z‖ ≤ R → ‖g z‖ ≤ B := by
    intro z hz
    have hz1 : ‖z‖ ≤ 1 := hz.trans (by norm_num [hR])
    set s : ℂ := c₀ + κ * z with hs
    have hsre : (0.15:ℝ) ≤ s.re := by
      have : s.re = 2 + 1.9 * z.re := by norm_num [hs, hc₀, hκ]
      rw [this]
      obtain ⟨h1, -⟩ := abs_le.mp ((abs_re_le_norm z).trans hz)
      rw [hR] at h1; nlinarith
    have hs1 : 1 ≤ ‖s - 1‖ := by have := hdist z hz1; rw [hR] at hz; nlinarith
    have hsim : |s.im| + 3 ≤ |t| + 6 := by
      have : s.im = t + 1/2 + 1.9 * z.im := by norm_num [hs, hc₀, hκ]
      rw [this]
      have hzi := (abs_im_le_norm z).trans hz; rw [hR] at hzi
      have h1 := abs_add_le (t + 1/2) (1.9 * z.im)
      have h2 : |1.9 * z.im| ≤ 1.9 * 0.95 := by
        rw [abs_mul, abs_of_pos (by norm_num : (0:ℝ) < 1.9)]; nlinarith
      have h3 : |t + 1/2| ≤ |t| + 1/2 := by simpa using abs_add_le t (1/2)
      linarith
    have h1 : ‖riemannZeta s‖ ≤ C * (|s.im| + 3) ^ A := hgrowth s hsre hs1
    have hbase : 1 ≤ |s.im| + 3 := by linarith [abs_nonneg s.im]
    have h2 : (|s.im| + 3) ^ A ≤ (|s.im| + 3) ^ A' := Real.rpow_le_rpow_of_exponent_le hbase (le_max_left _ _)
    have h3 : (|s.im| + 3) ^ A' ≤ (|t| + 6) ^ A' := Real.rpow_le_rpow (by linarith [abs_nonneg s.im]) hsim hA'0
    calc ‖g z‖ = ‖riemannZeta s‖ * ‖u‖ := by simp [hg, gfun, hs]
      _ ≤ (C * (|t| + 6) ^ A') * 3 := by
          apply mul_le_mul (h1.trans ((mul_le_mul_of_nonneg_left (h2.trans h3) hC.le))) hnu (norm_nonneg _)
          positivity
      _ = B := by rw [hB]; ring
  have hZ := ZerosBound (B := B) (r := r) (R := R) (by norm_num [hr]) (by norm_num [hr])
    (by norm_num [hr, hR]) (by norm_num [hR]) hfAnalytic hg0 hfin hfz
  -- the window's β ≥ 1/2 part maps injectively into the zero finset of g
  set W : Set ℂ := zetaZeroConfig.window t (t + 1) ∩ {ρ | 1/2 ≤ ρ.re} with hW
  have hWfin : W.Finite := (zetaZeroConfig.window_finite t (t + 1)).subset inter_subset_left
  set φ : ℂ → ℂ := fun ρ => (ρ - c₀) / κ with hφ
  have hφinj : Function.Injective φ := by
    intro a b h; simp only [hφ] at h
    have := congrArg (fun w => c₀ + κ * w) h
    simpa [mul_div_cancel₀ _ hκ0] using this
  have hφinv : ∀ ρ, c₀ + κ * φ ρ = ρ := by intro ρ; simp only [hφ]; field_simp; ring
  have hmemS : ∀ ρ ∈ W, φ ρ ∈ (finiteSetOfZeros_mono (by norm_num [hr] : r < 1) hfin).toFinset := by
    rintro ρ ⟨⟨hρZ, hρt, hρt1⟩, hρre⟩
    simp only [Set.Finite.mem_toFinset]
    have hρ : IsNontrivialZero ρ := hρZ
    refine ⟨?_, ?_⟩
    · -- ‖φ ρ‖ ≤ 0.84
      simp only [hφ, norm_div, hnormκ]
      rw [div_le_iff₀ (by norm_num), hr]
      have hre : (ρ - c₀).re = ρ.re - 2 := by simp [hc₀]
      have him : (ρ - c₀).im = ρ.im - (t + 1/2) := by simp [hc₀]
      have hsq : ‖ρ - c₀‖ ^ 2 ≤ (0.84 * 1.9) ^ 2 := by
        rw [Complex.sq_norm, Complex.normSq_apply, hre, him]
        have := hρ.2.2; have := hρre.out
        nlinarith
      exact (pow_le_pow_iff_left₀ (norm_nonneg _) (by norm_num) two_ne_zero).mp hsq
    · show g (φ ρ) = 0
      simp only [hg, gfun, hφinv]; rw [hρ.1, zero_mul]
  have hmult : ∀ ρ ∈ W, (zeroMult ρ : ℝ) = (analyticOrderNatAt g (φ ρ) : ℝ) := by
    rintro ρ ⟨⟨hρZ, -, -⟩, -⟩
    have hρ : IsNontrivialZero ρ := hρZ
    rw [analyticOrderNatAt_gfun hκ0 hu0 (by rw [hφinv]; exact hρ.not_trivial.2), hφinv]
  -- compare the sums
  have hsum : NhalfR t ≤ ((∑ ρ' ∈ (finiteSetOfZeros_mono (by norm_num [hr] : r < 1) hfin).toFinset,
      analyticOrderNatAt g ρ' : ℕ) : ℝ) := by
    unfold NhalfR
    rw [← hW, finsum_mem_eq_finite_toFinset_sum _ hWfin,
      Finset.sum_congr rfl (fun ρ hρ => hmult ρ (hWfin.mem_toFinset.mp hρ)),
      ← Finset.sum_image (f := fun w => (analyticOrderNatAt g w : ℝ))
        (fun a _ b _ h => hφinj h)]
    push_cast
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro w hw
      obtain ⟨ρ, hρ, rfl⟩ := Finset.mem_image.mp hw
      exact hmemS ρ (hWfin.mem_toFinset.mp hρ)
    · intros; positivity
  -- log B ≤ (|log 3C| + 2A') log(|t|+3)
  have hlog3 : 1 ≤ Real.log (|t| + 3) := by
    rw [← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith [abs_nonneg t]
  have hlog6 : Real.log (|t| + 6) ≤ 2 * Real.log (|t| + 3) := by
    rw [← Real.log_rpow (by positivity), Real.rpow_two]
    apply Real.log_le_log (by positivity); nlinarith [abs_nonneg t]
  have hlogB : Real.log B ≤ (|Real.log (3 * C)| + 2 * A') * Real.log (|t| + 3) := by
    rw [hB, Real.log_mul (by positivity) (by positivity), Real.log_rpow (by positivity)]
    have h1 := le_abs_self (Real.log (3 * C))
    have h2 : |Real.log (3 * C)| ≤ |Real.log (3 * C)| * Real.log (|t| + 3) :=
      le_mul_of_one_le_right (abs_nonneg _) hlog3
    have h3 : A' * Real.log (|t| + 6) ≤ A' * (2 * Real.log (|t| + 3)) :=
      mul_le_mul_of_nonneg_left hlog6 hA'0
    linarith
  calc NhalfR t ≤ _ := hsum
    _ ≤ 1 / Real.log (R / r) * Real.log B := by exact_mod_cast hZ
    _ ≤ 1 / Real.log (R / r) * ((|Real.log (3 * C)| + 2 * A') * Real.log (|t| + 3)) :=
        mul_le_mul_of_nonneg_left hlogB (by positivity)
    _ = _ := by ring

/-- small heights: N(t,t+1] ≤ N(−4,5] for |t| ≤ 4. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCount/Variantf23b7b226a62a7622e09bd867136faf00567e2c14a1fc697cf83b5aa5f065b45.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42f9e1e712587991f2b9ea6e8edf074c9055375c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
