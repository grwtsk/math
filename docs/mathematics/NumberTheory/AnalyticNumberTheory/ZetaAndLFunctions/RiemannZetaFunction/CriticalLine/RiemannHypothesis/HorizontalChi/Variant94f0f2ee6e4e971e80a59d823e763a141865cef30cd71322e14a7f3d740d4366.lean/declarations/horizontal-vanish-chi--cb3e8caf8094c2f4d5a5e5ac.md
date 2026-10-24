# horizontal_vanish_chi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8253c1e9-c59d-22c8-1130-0b4665f100bb",
  "kind": "theorem",
  "lexical_name": "horizontal_vanish_chi",
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
  "slug": "horizontal-vanish-chi--cb3e8caf8094c2f4d5a5e5ac",
  "source": {
    "blob": "cdf1148abc349a1bede6efbc1bcc2403061e7307",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 34,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HorizontalChi/Variant94f0f2ee6e4e971e80a59d823e763a141865cef30cd71322e14a7f3d740d4366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb3e8caf8094c2f4d5a5e5ac91fee42062a0cbb516bdab91b929171791510629",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HorizontalChi/Variant94f0f2ee6e4e971e80a59d823e763a141865cef30cd71322e14a7f3d740d4366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8253c1e9-c59d-22c8-1130-0b4665f100bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_vanish_chi (hq : 1 < q) (hprim : χ.IsPrimitive) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k)
    {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) {Cg : ℝ} (hCg : 0 < Cg) {R : ℕ → ℝ}
    (hR : ∀ j : ℕ, (j : ℝ) + 7 ≤ R j ∧ R j ≤ (j : ℝ) + 8 ∧
      ∀ s : ℂ, (s.im = R j ∨ s.im = -R j) → 1/2 ≤ s.re → s.re ≤ 2 →
        χ.LFunction s ≠ 0 ∧ ‖logDeriv χ.LFunction s‖ ≤ Cg * (Real.log ((q:ℝ) * ((j : ℝ) + 10))) ^ 2) :
    Tendsto (fun j : ℕ => HIntegral (fun s => Hfn k s * logDeriv (completedLSym χ) s) (1 - c) c (R j))
      atTop (𝓝 0)
    ∧ Tendsto (fun j : ℕ => HIntegral (fun s => Hfn k s * logDeriv (completedLSym χ) s) (1 - c) c (-(R j)))
      atTop (𝓝 0) := by
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  obtain ⟨CH, hCH0, hH⟩ := norm_Hfn_le hk hkc
  obtain ⟨κ, hκ1, hκdef⟩ := exists_parity' χ
  obtain ⟨Ca, hCa, harch⟩ := norm_logDeriv_archChi_le q κ hκ1
  have hq2 : (2:ℝ) ≤ q := by exact_mod_cast hq
  have hq0 : (0:ℝ) < q := by linarith
  set Lg : ℕ → ℝ := fun j => Real.log ((q:ℝ) * ((j : ℝ) + 10)) with hLgdef
  have hLg1 : ∀ j : ℕ, 1 ≤ Lg j := fun j => by
    rw [hLgdef, ← Real.log_exp 1]
    refine Real.log_le_log (Real.exp_pos 1) ?_
    have := Real.exp_one_lt_d9
    have : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    nlinarith
  have hLg_ge : ∀ j : ℕ, Real.log ((j:ℝ) + 10) ≤ Lg j := fun j => by
    show Real.log ((j:ℝ) + 10) ≤ Real.log ((q:ℝ) * ((j : ℝ) + 10))
    rw [Real.log_mul hq0.ne' (by positivity)]
    linarith [Real.log_nonneg (by linarith : (1:ℝ) ≤ q)]
  set K : ℝ := Ca + Cg with hKdef
  have hK0 : 0 < K := by positivity
  -- the arch factor is archChi q κ
  have harchfun : (fun z => (q : ℂ) ^ (z / 2) * DirichletCharacter.gammaFactor χ z) = archChi q κ := by
    funext z; rw [hκdef z]; rfl
  -- ‖Λ'/Λ_sym(s)‖ ≤ K log²(q(j+10)) on the good horizontals, re s ∈ [1/2, 3/2]
  have hright : ∀ (j : ℕ) (s : ℂ), (s.im = R j ∨ s.im = -R j) → 1/2 ≤ s.re → s.re ≤ 3/2 →
      ‖logDeriv (completedLSym χ) s‖ ≤ K * (Lg j) ^ 2 := by
    intro j s hsim hre1 hre2
    obtain ⟨hR1, hR2, hRs⟩ := hR j
    have hj0 : (0:ℝ) ≤ j := Nat.cast_nonneg j
    have hRj0 : 0 ≤ R j := by linarith
    obtain ⟨hL, hLL⟩ := hRs s hsim hre1 (by linarith)
    have hre0 : 0 < s.re := by linarith
    rw [logDeriv_completedLSym_split hq hχ1 hre0 hL, harchfun]
    have him8 : |s.im| ≤ (j : ℝ) + 8 := by
      rcases hsim with h | h
      · rw [h, abs_of_nonneg hRj0]; exact hR2
      · rw [h, abs_neg, abs_of_nonneg hRj0]; exact hR2
    have ha : ‖logDeriv (archChi q κ) s‖ ≤ Ca * Lg j := by
      have h := harch s.re s.im hre1 hre2
      rw [Complex.re_add_im] at h
      refine h.trans (mul_le_mul_of_nonneg_left ?_ hCa.le)
      refine (Real.log_le_log (by positivity) (by linarith)).trans (hLg_ge j)
    have hLg2 : Lg j ≤ Lg j ^ 2 := by nlinarith [hLg1 j]
    calc ‖logDeriv χ.LFunction s + logDeriv (archChi q κ) s‖
        ≤ ‖logDeriv χ.LFunction s‖ + ‖logDeriv (archChi q κ) s‖ := norm_add_le _ _
      _ ≤ Cg * Lg j ^ 2 + Ca * Lg j ^ 2 := by
          have : Ca * Lg j ≤ Ca * Lg j ^ 2 := mul_le_mul_of_nonneg_left hLg2 hCa.le
          linarith
      _ = K * Lg j ^ 2 := by rw [hKdef]; ring
  -- the same bound on the whole horizontal segment x ∈ [1-c, c], by reflection for x < 1/2
  have hall : ∀ (j : ℕ) (x y : ℝ), (y = R j ∨ y = -R j) → 1 - c ≤ x → x ≤ c →
      ‖logDeriv (completedLSym χ) ((x : ℂ) + y * I)‖ ≤ K * (Lg j) ^ 2 := by
    intro j x y hy hx1 hx2
    rcases le_or_gt (1/2 : ℝ) x with hx | hx
    · exact hright j _ (by rcases hy with h | h <;> simp [h]) (by simpa using hx)
        (by simp; linarith)
    · -- reflect: s = 1 − conj s', s' := (1 − x) + y i (same imaginary part)
      set s' : ℂ := ((1 - x : ℝ) : ℂ) + y * I with hs'def
      have him' : s'.im = y := by simp [hs'def]
      have hre' : s'.re = 1 - x := by simp [hs'def]
      have e : ((x : ℂ) + y * I) = 1 - (starRingEnd ℂ) s' := by
        apply Complex.ext <;> simp [hs'def]
      rw [e, logDeriv_completedLSym_one_sub_conj hq hprim s', norm_neg, Complex.norm_conj]
      refine hright j s' ?_ (by rw [hre']; linarith) (by rw [hre']; linarith)
      rw [him']; exact hy
  -- integral bound along either horizontal
  have hint : ∀ (j : ℕ) (y : ℝ), (y = R j ∨ y = -R j) →
      ‖HIntegral (fun s => Hfn k s * logDeriv (completedLSym χ) s) (1 - c) c y‖
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
  set Lq : ℝ := Real.log q with hLq
  have hLq0 : 0 ≤ Lq := Real.log_nonneg (by linarith)
  set b : ℕ → ℝ := fun j => CH / (1 + (R j) ^ 2) * (K * Lg j ^ 2) * |c - (1 - c)| with hbdef
  have hLg_sq : ∀ j : ℕ, Lg j ^ 2 ≤ 2 * Lq ^ 2 + 8 * ((j : ℝ) + 10) := fun j => by
    have hy0 : (0 : ℝ) ≤ (j : ℝ) + 10 := by positivity
    have h := Real.log_le_rpow_div hy0 (by norm_num : (0:ℝ) < 1/2)
    have hsq : (((j : ℝ) + 10) ^ (1/2 : ℝ)) ^ 2 = (j : ℝ) + 10 := by
      rw [← Real.rpow_natCast, ← Real.rpow_mul hy0]; norm_num
    have h0 : 0 ≤ Real.log ((j:ℝ) + 10) := Real.log_nonneg (by linarith [(Nat.cast_nonneg j : (0:ℝ) ≤ j)])
    have hl2 : Real.log ((j:ℝ) + 10) ^ 2 ≤ 4 * ((j : ℝ) + 10) := by
      calc Real.log ((j:ℝ) + 10) ^ 2 ≤ (((j : ℝ) + 10) ^ (1/2 : ℝ) / (1/2)) ^ 2 := pow_le_pow_left₀ h0 h 2
        _ = 4 * ((j : ℝ) + 10) := by rw [div_pow, hsq]; ring
    have hsplit : Lg j = Lq + Real.log ((j:ℝ) + 10) := by
      show Real.log ((q:ℝ) * ((j : ℝ) + 10)) = Real.log q + Real.log ((j:ℝ) + 10)
      exact Real.log_mul hq0.ne' (by positivity)
    rw [hsplit]
    nlinarith [sq_nonneg (Lq - Real.log ((j:ℝ) + 10))]
  have hb_le : ∀ j : ℕ, b j ≤ (CH * K * |c - (1 - c)| * (2 * Lq ^ 2 + 16)) / ((j : ℝ) + 7) := fun j => by
    obtain ⟨hR1, hR2, -⟩ := hR j
    have hj0 : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    have h1 : Lg j ^ 2 / (1 + R j ^ 2) ≤ (2 * Lq ^ 2 + 16) / ((j : ℝ) + 7) := by
      rw [div_le_div_iff₀ (by positivity) (by positivity)]
      have hR7 : ((j : ℝ) + 7) ^ 2 ≤ R j ^ 2 := pow_le_pow_left₀ (by positivity) hR1 2
      have hj7 : (j:ℝ) + 7 ≤ ((j : ℝ) + 7) ^ 2 := by nlinarith
      nlinarith [hLg_sq j, hR7, mul_le_mul_of_nonneg_right (hLg_sq j) (show (0:ℝ) ≤ (j:ℝ) + 7 by positivity),
        mul_nonneg hLq0 hLq0, sq_nonneg ((j:ℝ) + 7)]
    have e : b j = CH * K * |c - (1 - c)| * (Lg j ^ 2 / (1 + R j ^ 2)) := by
      rw [hbdef]; ring
    rw [e]
    calc CH * K * |c - (1 - c)| * (Lg j ^ 2 / (1 + R j ^ 2))
        ≤ CH * K * |c - (1 - c)| * ((2 * Lq ^ 2 + 16) / ((j : ℝ) + 7)) :=
          mul_le_mul_of_nonneg_left h1 (by positivity)
      _ = CH * K * |c - (1 - c)| * (2 * Lq ^ 2 + 16) / ((j : ℝ) + 7) := by ring
  have hb0 : ∀ j, 0 ≤ b j := fun j => by rw [hbdef]; positivity
  have hb : Tendsto b atTop (𝓝 0) := by
    have hlim : Tendsto (fun j : ℕ => (CH * K * |c - (1 - c)| * (2 * Lq ^ 2 + 16)) / ((j : ℝ) + 7))
        atTop (𝓝 0) :=
      tendsto_const_nhds.div_atTop
        (tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop)
    exact squeeze_zero hb0 hb_le hlim
  exact ⟨squeeze_zero_norm (fun j => hint j (R j) (Or.inl rfl)) hb,
    squeeze_zero_norm (fun j => hint j (-(R j)) (Or.inr rfl)) hb⟩

end ThmE
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HorizontalChi/Variant94f0f2ee6e4e971e80a59d823e763a141865cef30cd71322e14a7f3d740d4366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HorizontalChi/Variant94f0f2ee6e4e971e80a59d823e763a141865cef30cd71322e14a7f3d740d4366.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf1148abc349a1bede6efbc1bcc2403061e7307` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
