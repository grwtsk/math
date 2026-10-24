# riemann_sum_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3bbc7a9-7bde-5b99-ff8b-72e7f6b78ace",
  "kind": "lemma",
  "lexical_name": "riemann_sum_monotone",
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
  "slug": "riemann-sum-monotone--03abc57cd789b805fef0e84a",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 999,
    "line": 887,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03abc57cd789b805fef0e84a1b45a5c315a898e7699830614f86782b1341a9e5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3bbc7a9-7bde-5b99-ff8b-72e7f6b78ace`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 887–999.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma riemann_sum_monotone {μ : ℝ → ℝ} {T h : ℝ} (hh : 0 < h) (hhT : h ≤ T)
    (hmono : MonotoneOn μ (Set.Ici (T - h))) (hnonneg : ∀ x, T - h ≤ x → 0 ≤ μ x) :
    |h * ∑ k ∈ Finset.range ⌊T / h⌋₊, μ (T + k * h) - ∫ x in T..(2 * T), μ x|
      ≤ 2 * h * μ (2 * T) := by
  have hT : 0 < T := hh.trans_le hhT
  obtain ⟨d, hd⟩ : ∃ d : ℕ, d = ⌊T / h⌋₊ := ⟨_, rfl⟩
  rw [← hd]
  have hdh : (d : ℝ) * h ≤ T := by
    have := Nat.floor_le (div_nonneg hT.le hh.le); rw [← hd] at this
    rwa [le_div_iff₀ hh] at this
  have hdh' : T < (d + 1 : ℝ) * h := by
    have := Nat.lt_floor_add_one (T / h); rw [← hd] at this
    rwa [div_lt_iff₀ hh] at this
  have hd1 : 1 ≤ d := by
    have : (1:ℝ) ≤ T / h := by rw [le_div_iff₀ hh]; linarith
    exact_mod_cast (Nat.one_le_floor_iff _).2 this |>.trans_eq hd.symm
  -- rescaled function
  set f : ℝ → ℝ := fun s => μ (T + h * s) with hf
  have hfmono : ∀ a : ℝ, -1 ≤ a → MonotoneOn f (Set.Ici a) := by
    intro a ha x hx y hy hxy
    apply hmono
    · simp only [Set.mem_Ici] at hx ⊢; nlinarith
    · simp only [Set.mem_Ici] at hy ⊢; nlinarith
    · nlinarith
  have hμint : ∀ a b : ℝ, T - h ≤ a → T - h ≤ b → IntervalIntegrable μ volume a b := by
    intro a b ha hb
    apply MonotoneOn.intervalIntegrable
    exact hmono.mono (by
      intro x hx; simp only [Set.mem_Ici]
      rcases Set.mem_uIcc.1 hx with ⟨h1, _⟩ | ⟨h1, _⟩ <;> linarith)
  -- change of variables: ∫_0^a f = h⁻¹ ∫_T^{T+ha} μ
  have hcov : ∀ a : ℝ, ∫ s in (0:ℝ)..a, f s = h⁻¹ * ∫ x in T..(T + h * a), μ x := by
    intro a
    have e := intervalIntegral.integral_comp_mul_add (a := 0) (b := a) μ hh.ne' T
    rw [mul_zero, zero_add, smul_eq_mul, show h * a + T = T + h * a by ring] at e
    rw [← e]
    refine intervalIntegral.integral_congr fun s _ => ?_
    simp only [hf]; ring_nf
  -- upper bound: h Σ_{k<d} μ(T+kh) ≤ ∫_T^{T+dh} μ ≤ ∫_T^{2T} μ
  have hup : h * ∑ k ∈ Finset.range d, μ (T + k * h) ≤ ∫ x in T..(2 * T), μ x := by
    have h1 := (hfmono 0 (by norm_num)).mono
      (show Set.Icc (0:ℝ) (0 + d) ⊆ Set.Ici 0 from fun x hx => hx.1) |>.sum_le_integral
    simp only [zero_add] at h1
    rw [hcov] at h1
    have h2 : ∑ k ∈ Finset.range d, μ (T + k * h) = ∑ i ∈ Finset.range d, f (i : ℝ) := by
      refine Finset.sum_congr rfl fun k _ => ?_; simp [hf, mul_comm]
    rw [h2]
    have h3 : h * ∑ i ∈ Finset.range d, f (i : ℝ) ≤ ∫ x in T..(T + h * d), μ x := by
      have := mul_le_mul_of_nonneg_left h1 hh.le
      rwa [← mul_assoc, mul_inv_cancel₀ hh.ne', one_mul] at this
    refine h3.trans ?_
    -- ∫_T^{T+hd} ≤ ∫_T^{2T} since μ ≥ 0 on [T+hd, 2T]
    have hsplit := intervalIntegral.integral_add_adjacent_intervals
      (hμint T (T + h * d) (by linarith) (by nlinarith))
      (hμint (T + h * d) (2 * T) (by nlinarith) (by linarith))
    rw [← hsplit]
    have : 0 ≤ ∫ x in (T + h * d)..(2 * T), μ x :=
      intervalIntegral.integral_nonneg (by nlinarith) fun x hx => hnonneg x (by nlinarith [hx.1])
    linarith
  -- lower bound
  have hlo : (∫ x in T..(2 * T), μ x) - 2 * h * μ (2 * T)
      ≤ h * ∑ k ∈ Finset.range d, μ (T + k * h) := by
    obtain ⟨d', rfl⟩ : ∃ d', d = d' + 1 := ⟨d - 1, (Nat.sub_add_cancel hd1).symm⟩
    have h1 := (hfmono 0 (by norm_num)).mono
      (show Set.Icc (0:ℝ) (0 + d') ⊆ Set.Ici 0 from fun x hx => hx.1) |>.integral_le_sum
    simp only [zero_add] at h1
    rw [hcov] at h1
    -- Σ_{i<d'} f(i+1) ≤ Σ_{k<d'+1} μ(T+kh)  (drop k = 0 term, which is ≥ 0)
    have h2 : ∑ i ∈ Finset.range d', f ((i + 1 : ℕ) : ℝ)
        ≤ ∑ k ∈ Finset.range (d' + 1), μ (T + k * h) := by
      rw [Finset.sum_range_succ']
      have : ∑ i ∈ Finset.range d', f ((i + 1 : ℕ) : ℝ)
          = ∑ k ∈ Finset.range d', μ (T + ((k + 1 : ℕ) : ℝ) * h) := by
        refine Finset.sum_congr rfl fun k _ => ?_; simp [hf, mul_comm]
      rw [this]
      have : 0 ≤ μ (T + ((0:ℕ):ℝ) * h) := hnonneg _ (by simp; linarith)
      linarith
    have h3 : (∫ x in T..(T + h * d'), μ x) ≤ h * ∑ k ∈ Finset.range (d' + 1), μ (T + k * h) := by
      have := mul_le_mul_of_nonneg_left (h1.trans h2) hh.le
      rwa [← mul_assoc, mul_inv_cancel₀ hh.ne', one_mul] at this
    refine le_trans ?_ h3
    -- ∫_T^{2T} μ − ∫_T^{T+hd'} μ = ∫_{T+hd'}^{2T} μ ≤ (2T − T − hd')·μ(2T) ≤ 2h μ(2T)
    push_cast at hdh hdh'
    have hlen : 2 * T - (T + h * d') ≤ 2 * h := by nlinarith
    have hlen0 : T + h * d' ≤ 2 * T := by nlinarith
    have hsplit := intervalIntegral.integral_add_adjacent_intervals
      (hμint T (T + h * d') (by linarith) (by nlinarith))
      (hμint (T + h * d') (2 * T) (by nlinarith) (by linarith))
    rw [← hsplit]
    have hμ2T : 0 ≤ μ (2 * T) := hnonneg _ (by linarith)
    have : ∫ x in (T + h * d')..(2 * T), μ x ≤ 2 * h * μ (2 * T) := by
      calc ∫ x in (T + h * d')..(2 * T), μ x
          ≤ ∫ x in (T + h * d')..(2 * T), μ (2 * T) := by
            apply intervalIntegral.integral_mono_on hlen0
              (hμint _ _ (by nlinarith) (by linarith)) intervalIntegrable_const
            intro x hx
            exact hmono (by simp only [Set.mem_Ici]; nlinarith [hx.1])
              (by simp only [Set.mem_Ici]; linarith) hx.2
        _ = (2 * T - (T + h * d')) * μ (2 * T) := by
            rw [intervalIntegral.integral_const, smul_eq_mul]
        _ ≤ 2 * h * μ (2 * T) := by gcongr
    linarith
  exact abs_le.2 ⟨by linarith, by linarith⟩

end TraceLemmas

/-! ### Analytic lemmas for [prop:trace]: growth and increments of μ, decay of Π_X -/

section TraceAnalytic
variable {cϱ : ℝ} {p : Setting} {F : LocalFun}

/-- From H-Γ [eq:mufacts]: a crude global bound `|μ(τ)| ≤ M + |τ|` (used only to control the
`|r| > τ_k/2` tails, §5.2 "|μ(τ_k+r) − μ(τ_k)| ≪ l + log(2+|r|)"). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L887).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
