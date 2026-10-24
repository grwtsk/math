# w_full_line_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de50fc7e-7cc4-c2c4-2bf0-e165ac1f6de0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6311317b-546f-127b-fdc9-bce861499d19",
  "kind": "theorem",
  "lexical_name": "w_full_line_identity",
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
  "slug": "w-full-line-identity--c2dfb3ad5f7e4c76e5d41ef8",
  "source": {
    "blob": "2cf2d75db2f44cb0dd99e2160fd273caf639f807",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 281,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2dfb3ad5f7e4c76e5d41ef87783ace66d08307950e3a7b398ea9c544e4f1ca5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6311317b-546f-127b-fdc9-bce861499d19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem w_full_line_identity {t₀ : ℝ} (hZ : WZerosInStrip t₀) (hs : WSeam t₀)
    (hR : RiemannVonMangoldt (wZeros hZ hs))
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 5 / 4)
    (hWc : ∀ s : ℂ, s.re = c → |s.im| < t₀ → hardyW s ≠ 0)
    (hWc' : ∀ s : ℂ, s.re = 1 - c → |s.im| < t₀ → hardyW s ≠ 0)
    (hline : ∃ M : ℝ, ∀ t : ℝ, ‖L2 ((c : ℂ) + t * I) + logDeriv hardyW ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|))
    {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun ρ : (wZeros hZ hs).carrier => (wMult (ρ : ℂ) : ℂ) * Hfn k ρ) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k ((c : ℂ) + t * I) + Hfn k (1 - c - t * I))
        * (L2 ((c : ℂ) + t * I) + logDeriv hardyW ((c : ℂ) + t * I)))
      = (∑' ρ : (wZeros hZ hs).carrier, (wMult (ρ : ℂ) : ℂ) * Hfn k ρ)
        + (∑ ρ ∈ lowZerosW c t₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ)
        - (3 / 2 : ℂ) * (Hfn k 0 + Hfn k 1) := by
  classical
  have ht₀ : 0 < t₀ := hs.pos
  set F : ℂ → ℂ := fun s => L2 s + logDeriv hardyW s with hF
  set Zc : ZeroConfig := wZeros hZ hs with hZc
  -- summability of the zero sum from the local count
  obtain ⟨A₀, hA₀, hloc⟩ := hR.local_count
  have hsum : Summable (fun ρ : Zc.carrier => (wMult (ρ : ℂ) : ℂ) * Hfn k ρ) :=
    Zeta23.WeilEF.EF_zero_sum_summable_gen Zc hA₀ hloc hk hkc
  refine ⟨hsum, ?_⟩
  -- W ≠ 0 on the two vertical lines (any height)
  have hvert : ∀ s : ℂ, (s.re = 1 - c ∨ s.re = c) → hardyW s ≠ 0 := by
    intro s hre h0
    rcases lt_or_ge |s.im| t₀ with hlt | hge
    · rcases hre with h | h
      · exact hWc' s h hlt h0
      · exact hWc s h hlt h0
    · have := hZ s h0 hge
      rcases hre with h | h <;> rw [h] at this <;> linarith [this.1, this.2]
  have hline_mem : ∀ t : ℝ, ((c : ℂ) + t * I) ∈ stripReg := fun t =>
    ⟨by simp; linarith, by simp; linarith, fun h => by have := congrArg Complex.re h; simp at this; linarith,
      fun h => by have := congrArg Complex.re h; simp at this; linarith⟩
  have hline_mem' : ∀ t : ℝ, ((1 : ℂ) - ((c : ℂ) + t * I)) ∈ stripReg := fun t =>
    ⟨by simp; linarith, by simp; linarith, fun h => by have := congrArg Complex.re h; simp at this; linarith,
      fun h => by have := congrArg Complex.re h; simp at this; linarith⟩
  -- F is analytic at every point of both lines
  have hFan : ∀ s : ℂ, s ∈ stripReg → hardyW s ≠ 0 → AnalyticAt ℂ F s := by
    intro s hsR hW
    have ha := hardyW_analyticAt_of_mem hsR
    have e : F = fun z => L2 z + deriv hardyW z / hardyW z := by funext z; simp only [hF, logDeriv_apply]
    rw [e]
    exact (L2_analyticAt_of_mem hsR).add (ha.deriv.div ha hW)
  have hl : Continuous fun t : ℝ => (c : ℂ) + t * I := by fun_prop
  have hl' : Continuous fun t : ℝ => (1 : ℂ) - ((c : ℂ) + t * I) := by fun_prop
  have hFc : Continuous fun t : ℝ => F ((c : ℂ) + t * I) := by
    refine continuous_iff_continuousAt.mpr fun t => ?_
    exact ContinuousAt.comp (f := fun t : ℝ => (c : ℂ) + t * I) (x := t)
      (hFan _ (hline_mem t) (hvert _ (Or.inr (by simp)))).continuousAt hl.continuousAt
  have hFc' : Continuous fun t : ℝ => F (1 - ((c : ℂ) + t * I)) := by
    refine continuous_iff_continuousAt.mpr fun t => ?_
    exact ContinuousAt.comp (f := fun t : ℝ => (1 : ℂ) - ((c : ℂ) + t * I)) (x := t)
      (hFan _ (hline_mem' t) (hvert _ (Or.inl (by simp)))).continuousAt hl'.continuousAt
  -- the fold symmetry on the line, extended to t = 0 by continuity
  have hsymm : ∀ t : ℝ, F (1 - ((c : ℂ) + t * I)) = -F ((c : ℂ) + t * I) := by
    have heq : (fun t : ℝ => F (1 - ((c : ℂ) + t * I))) = fun t : ℝ => -F ((c : ℂ) + t * I) := by
      refine Continuous.ext_on (dense_compl_singleton (0 : ℝ)) hFc' hFc.neg (fun t ht => ?_)
      have him : ((c : ℂ) + t * I).im ≠ 0 := by simpa using ht
      exact L2_add_logDeriv_hardyW_one_sub him (hvert _ (Or.inr (by simp)))
    intro t; exact congr_fun heq t
  -- good heights
  obtain ⟨C, hC, j₁, hj₁, hj₁t, R, hRj⟩ := exists_heightsW (hardyW_good_heights hZ hs)
  have hRt : ∀ j : ℕ, t₀ < R j := fun j => by
    have := (hRj j).1; have : (0:ℝ) ≤ j := Nat.cast_nonneg j; linarith
  have hR0 : ∀ j : ℕ, 0 < R j := fun j => lt_trans ht₀ (hRt j)
  have hRge : ∀ j : ℕ, (j : ℝ) ≤ R j := fun j => by have := (hRj j).1; have : (0:ℝ) ≤ j₁ := Nat.cast_nonneg j₁; linarith
  have hRmono : Monotone R := by
    intro i j hij
    rcases hij.eq_or_lt with h | h
    · rw [h]
    · have : (i : ℝ) + 1 ≤ j := by exact_mod_cast h
      linarith [(hRj i).2.1, (hRj j).1]
  have hhor : ∀ j : ℕ, ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1 - c ≤ s.re → s.re ≤ c →
      ‖F s‖ ≤ C * (Real.log ((j : ℝ) + j₁ + 3)) ^ 2 := fun j s him h1 h2 =>
    ((hRj j).2.2 s him (by linarith) (by linarith)).2
  -- W ≠ 0 on the border of every rectangle
  have hWb : ∀ j : ℕ, ∀ s ∈ RectangleBorder (zc c (R j)) (wc c (R j)), hardyW s ≠ 0 := by
    intro j s hsb
    rcases border_cases hsb with h | h | h | h
    · exact hvert s (Or.inl h)
    · exact hvert s (Or.inr h)
    · obtain ⟨⟨h1, h2⟩, -⟩ := (mem_rect_iff (by linarith) (hR0 j).le s).mp (rectangleBorder_subset_rectangle _ _ hsb)
      exact ((hRj j).2.2 s (Or.inr h) (by linarith) (by linarith)).1
    · obtain ⟨⟨h1, h2⟩, -⟩ := (mem_rect_iff (by linarith) (hR0 j).le s).mp (rectangleBorder_subset_rectangle _ _ hsb)
      exact ((hRj j).2.2 s (Or.inl h) (by linarith) (by linarith)).1
  -- the rectangle identities
  have hrect : ∀ j : ℕ, ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ : ℂ | ρ ∈ Rectangle (zc c (R j)) (wc c (R j)) ∧ ρ ≠ 0 ∧ ρ ≠ 1 ∧ hardyW ρ = 0}) ∧
      RectangleIntegral' (fun s => Hfn k s * F s) (zc c (R j)) (wc c (R j))
        = (∑ ρ ∈ Z, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ) - (3 / 2 : ℂ) * (Hfn k 0 + Hfn k 1) :=
    fun j => rect_FZ hk hkc hc1 hc2 (hR0 j) (hWb j)
  choose Z hZc hE using hrect
  have hmemZ : ∀ j ρ, ρ ∈ Z j ↔ ρ ∈ Rectangle (zc c (R j)) (wc c (R j)) ∧ ρ ≠ 0 ∧ ρ ≠ 1 ∧ hardyW ρ = 0 := by
    intro j ρ; rw [← Finset.mem_coe, hZc j]; rfl
  -- the low zeros: finite (inside Z 0) and described by lowZerosSet
  have hlow_sub : ∀ j, lowZerosSet c t₀ ⊆ (Z j : Set ℂ) := by
    intro j ρ hρ
    obtain ⟨h0, hne0, hne1, him, hr1, hr2⟩ := hρ
    rw [Finset.mem_coe, hmemZ]
    refine ⟨(mem_rect_iff (by linarith) (hR0 j).le ρ).mpr ⟨⟨hr1.le, hr2.le⟩, ?_, ?_⟩, hne0, hne1, h0⟩
    · linarith [(abs_lt.mp him).1, hRt j]
    · linarith [(abs_lt.mp him).2, hRt j]
  have hfin : (lowZerosSet c t₀).Finite := (Z 0).finite_toSet.subset (hlow_sub 0)
  -- splitting Z j into the configuration window and the low zeros
  set Zbig : ℕ → Finset ℂ := fun j => (Z j).filter (fun ρ => t₀ ≤ |ρ.im|) with hZbig
  have hZbig_coe : ∀ j : ℕ, ((Zbig j : Finset ℂ) : Set ℂ) = {ρ : ℂ | ρ ∈ Zc.carrier ∧ -R j < ρ.im ∧ ρ.im < R j} := by
    intro j
    ext ρ
    rw [Finset.mem_coe, hZbig, Finset.mem_filter, hmemZ, Set.mem_setOf_eq]
    constructor
    · rintro ⟨⟨hρQ, h0, h1, hW0⟩, him⟩
      have himne : ρ.im ≠ 0 := by intro h; rw [h, abs_zero] at him; linarith
      obtain ⟨-, hi1, hi2⟩ := (mem_rect_iff (by linarith) (hR0 j).le ρ).mp hρQ
      refine ⟨⟨⟨hW0, himne⟩, him⟩, lt_of_le_of_ne hi1 ?_, lt_of_le_of_ne hi2 ?_⟩
      · intro h
        have hb : ρ ∈ RectangleBorder (zc c (R j)) (wc c (R j)) := by
          refine Or.inl (Or.inl (Or.inl ⟨?_, ?_⟩))
          · obtain ⟨⟨a, b⟩, -⟩ := (mem_rect_iff (by linarith) (hR0 j).le ρ).mp hρQ
            simp only [zc_re, wc_re]; exact Set.mem_uIcc.mpr (Or.inl ⟨a, b⟩)
          · simp [← h]
        exact hWb j ρ hb hW0
      · intro h
        have hb : ρ ∈ RectangleBorder (zc c (R j)) (wc c (R j)) := by
          refine Or.inl (Or.inr ⟨?_, ?_⟩)
          · obtain ⟨⟨a, b⟩, -⟩ := (mem_rect_iff (by linarith) (hR0 j).le ρ).mp hρQ
            simp only [zc_re, wc_re]; exact Set.mem_uIcc.mpr (Or.inl ⟨a, b⟩)
          · simp [h]
        exact hWb j ρ hb hW0
    · rintro ⟨⟨⟨hW0, himne⟩, him⟩, hi1, hi2⟩
      have hstrip := hZ ρ hW0 him
      refine ⟨⟨(mem_rect_iff (by linarith) (hR0 j).le ρ).mpr ⟨⟨by linarith [hstrip.1], by linarith [hstrip.2]⟩,
        hi1.le, hi2.le⟩, ne_zero_of_im_ne_zero himne, ne_one_of_im_ne_zero himne, hW0⟩, him⟩
  have hsplit : ∀ j : ℕ, ∑ ρ ∈ Z j, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ
      = (∑ ρ ∈ Zbig j, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ)
        + ∑ ρ ∈ lowZerosW c t₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ := by
    intro j
    have hlow_eq : lowZerosW c t₀ = (Z j).filter (fun ρ => ¬ t₀ ≤ |ρ.im|) := by
      ext ρ
      rw [mem_lowZerosW_iff hfin, Finset.mem_filter, hmemZ]
      constructor
      · intro hρ
        have := hlow_sub j hρ
        rw [Finset.mem_coe, hmemZ] at this
        exact ⟨this, not_le.mpr hρ.2.2.2.1⟩
      · rintro ⟨⟨hρQ, h0, h1, hW0⟩, him⟩
        obtain ⟨⟨hr1, hr2⟩, -⟩ := (mem_rect_iff (by linarith) (hR0 j).le ρ).mp hρQ
        refine ⟨hW0, h0, h1, not_le.mp him, lt_of_le_of_ne hr1 ?_, lt_of_le_of_ne hr2 ?_⟩
        · intro h; exact hvert ρ (Or.inl h.symm) hW0
        · intro h; exact hvert ρ (Or.inr h) hW0
    rw [hlow_eq, hZbig]
    exact (Finset.sum_filter_add_sum_filter_not (Z j) (fun ρ => t₀ ≤ |ρ.im|) _).symm
  -- the limit of the big part
  have hZlim := zero_sum_limit_of (Zset := Zc.carrier) (fun ρ => (wMult ρ : ℂ) * Hfn k ρ) hsum hRmono hRge hZbig_coe
  have hmult : ∀ ρ, (analyticOrderNatAt hardyW ρ : ℂ) = (wMult ρ : ℂ) := fun ρ => by rw [analyticOrderNatAt_hardyW]
  have hElim : Tendsto (fun j => (∑ ρ ∈ Z j, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ) - (3 / 2 : ℂ) * (Hfn k 0 + Hfn k 1))
      atTop (𝓝 ((∑' ρ : Zc.carrier, (wMult (ρ : ℂ) : ℂ) * Hfn k ρ)
        + (∑ ρ ∈ lowZerosW c t₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ) - (3 / 2 : ℂ) * (Hfn k 0 + Hfn k 1))) := by
    have h1 : Tendsto (fun j => ∑ ρ ∈ Zbig j, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ) atTop
        (𝓝 (∑' ρ : Zc.carrier, (wMult (ρ : ℂ) : ℂ) * Hfn k ρ)) := by
      refine hZlim.congr fun j => Finset.sum_congr rfl fun ρ _ => by rw [hmult]
    have := (h1.add_const (∑ ρ ∈ lowZerosW c t₀, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ)).sub_const
      ((3 / 2 : ℂ) * (Hfn k 0 + Hfn k 1))
    refine this.congr fun j => ?_
    rw [hsplit j]
  have hE' : ∀ j : ℕ, RectangleIntegral' (fun s => Hfn k s * F s) (((1 - c : ℝ) : ℂ) - R j * I) ((c : ℝ) + R j * I)
      = (∑ ρ ∈ Z j, (analyticOrderNatAt hardyW ρ : ℂ) * Hfn k ρ) - (3 / 2 : ℂ) * (Hfn k 0 + Hfn k 1) :=
    fun j => hE j
  exact (full_line_of_rectangles (by linarith) (by linarith) hk hkc hFc hsymm hline hj₁ hC.le
    (fun j => ⟨(hRj j).1, (hRj j).2.1⟩) hhor hE' hElim).2

end XiPrime
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variantb334333f17711e91dc46a1adde44f190d801f4e224e706644fa96bd880966dc5.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf2d75db2f44cb0dd99e2160fd273caf639f807` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
