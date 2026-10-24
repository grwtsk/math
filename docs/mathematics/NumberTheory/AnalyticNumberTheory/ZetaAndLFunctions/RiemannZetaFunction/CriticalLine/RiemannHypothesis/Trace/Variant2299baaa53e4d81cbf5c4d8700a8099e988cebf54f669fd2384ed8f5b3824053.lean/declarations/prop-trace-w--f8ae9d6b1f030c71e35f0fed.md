# prop_trace_W

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3460e01-8390-4abc-102d-cce313378fb9",
  "kind": "theorem",
  "lexical_name": "prop_trace_W",
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
  "slug": "prop-trace-w--f8ae9d6b1f030c71e35f0fed",
  "source": {
    "blob": "24e4e88dd0c9bddae4026b54fcadbe1c3177cf0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 192,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8ae9d6b1f030c71e35f0fed32da5e25cf2739dfffd0934ed008d2da78034097",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3460e01-8390-4abc-102d-cce313378fb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_trace_W (cϱ lam : ℝ) (hΓ : Zeta23.GammaFacts) (hlam : 0 < lam ∧ lam ≤ 1)
    (cPi A : ℝ) :
    ∃ C T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (c : ℕ → ℂ), p.lam = lam → T₀ ≤ p.T →
      LocalHypsCore cϱ p F → c 1 = 0 → ∀ N : ℝ, |N - p.T * p.ell1 / (2 * π)| ≤ A * p.l →
      |trGtW cPi c p F - F.a * p.L * N| ≤ C * (p.L * Real.sqrt p.X + p.L * S1 c p.X) := by
  have hcheb := Zeta23.Cheb.chebyshevMertens
  obtain ⟨C₀, T₀, hC₀⟩ := PrimeSide.prop_trace cϱ lam hΓ hcheb hlam A
  obtain ⟨x₀, hx₀⟩ := hcheb.cheb1b
  refine ⟨|C₀| + |cPi - 1| * (12 * π + 96 + 24 * cϱ ^ 2) + 3 / Real.log 2 + 1 / Real.log 2,
    max (max T₀ 4) (2 * π * Real.exp (|x₀| / lam)), fun p F c hplam hT hF hc1 N hN => ?_⟩
  have hTa : max T₀ 4 ≤ p.T := (le_max_left _ _).trans hT
  have hT₀' : T₀ ≤ p.T := (le_max_left _ _).trans hTa
  have hT4 : 4 ≤ p.T := (le_max_right _ _).trans hTa
  have hTx : 2 * π * Real.exp (|x₀| / lam) ≤ p.T := (le_max_right _ _).trans hT
  have hT0 : 0 < p.T := by linarith
  have h0 := hC₀ p F hplam hT₀' hF N hN
  have hL := hF.L_pos
  have hc4 := hF.four_le_cϱ
  have hlam0 : 0 < p.lam := hplam ▸ hlam.1
  have hX : x₀ ≤ p.X := Setting.le_X_of_T hlam0 (by rw [hplam]; exact hTx)
  have hsX : 0 ≤ Real.sqrt p.X := Real.sqrt_nonneg _
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  have ha1 := hF.a_le_one
  have ha0 := hF.a_pos.le
  have hS1 := S1_nonneg c p.X
  -- the second taper moment
  set I₂ := ∫ r, F.phiHat r ^ 2 * r ^ 2 with hI₂def
  have hI₂0 : 0 ≤ I₂ := integral_nonneg fun r => by positivity
  have hI₂ : I₂ ≤ 8 + 2 * cϱ ^ 2 := by
    refine hF.integral_phiHat_sq_mul_sq_le.trans ?_
    have : (cϱ / p.w) ^ 2 ≤ cϱ ^ 2 := by
      rw [div_pow]; exact div_le_self (sq_nonneg _) (by nlinarith [hF.one_le_w])
    linarith
  -- grid facts
  have hτ : ∀ k ∈ Finset.range p.d, p.T ≤ p.tau k ∧ p.tau k ≤ 2 * p.T := fun k hk =>
    p.tau_mem hL hT0.le hk
  have hd : (p.d : ℝ) ≤ p.L * p.T := by
    refine (p.d_le (by positivity)).trans (div_le_self (by positivity) ?_)
    linarith [Real.pi_gt_three]
  -- the three grid sums of the difference
  set GPi : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * Zeta23.PiX p.X (p.tau k + r) with hGPi
  set GP : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * Zeta23.PX p.X (p.tau k + r) with hGP
  set GPc : ℕ → ℝ := fun k => ∫ r, F.phiHat r ^ 2 * Pc p.X c (p.tau k + r) with hGPc
  have hdiff : ∑ k : Fin p.d, GentryW cPi c p F k k - ∑ k : Fin p.d, GentryA p F k k
      = (cPi - 1) * ∑ k ∈ Finset.range p.d, GPi k + ∑ k ∈ Finset.range p.d, GPc k
        - ∑ k ∈ Finset.range p.d, GP k := by
    rw [Fin.sum_univ_eq_sum_range (fun k => GentryW cPi c p F k k) p.d,
      Fin.sum_univ_eq_sum_range (fun k => GentryA p F k k) p.d, Finset.mul_sum,
      ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun k hk => ?_
    have hk0 : 0 < p.tau k := by linarith [(hτ k hk).1]
    rw [GentryW_diag_eq hΓ hF cPi c k hk0, GentryA_diag_eq hΓ hF k hk0]
    ring
  -- (1) Π-part
  have h3 : |∑ k ∈ Finset.range p.d, GPi k|
      ≤ p.d * ((6 * Real.sqrt p.X / p.T) * (2 * π * p.L) + (12 * Real.sqrt p.X / p.T) * I₂) := by
    have hbound : ∀ k ∈ Finset.range p.d, |GPi k|
        ≤ (6 * Real.sqrt p.X / p.T) * (2 * π * p.L) + (12 * Real.sqrt p.X / p.T) * I₂ := by
      intro k hk
      have ht := (hτ k hk).1
      have ht2 : 2 ≤ p.tau k := by linarith
      refine (Pi_part_bound hF ht2).trans ?_
      have e1 : 6 * Real.sqrt p.X / p.tau k ≤ 6 * Real.sqrt p.X / p.T :=
        div_le_div_of_nonneg_left (by positivity) hT0 ht
      have e2 : 12 * Real.sqrt p.X / p.tau k ^ 2 ≤ 12 * Real.sqrt p.X / p.T :=
        div_le_div_of_nonneg_left (by positivity) hT0 (by nlinarith)
      have e3 : 2 * π * F.a * p.L ≤ 2 * π * p.L := by
        have h1 : 2 * π * F.a ≤ 2 * π := mul_le_of_le_one_right (by positivity) ha1
        nlinarith
      have b1 : 6 * Real.sqrt p.X / p.tau k * (2 * π * F.a * p.L)
          ≤ 6 * Real.sqrt p.X / p.T * (2 * π * p.L) :=
        mul_le_mul e1 e3 (by positivity) (by positivity)
      have b2 : 12 * Real.sqrt p.X / p.tau k ^ 2 * I₂
          ≤ 12 * Real.sqrt p.X / p.T * I₂ := mul_le_mul_of_nonneg_right e2 hI₂0
      linarith
    refine ((Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum hbound)).trans ?_
    rw [Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  have h3' : |(cPi - 1) * ∑ k ∈ Finset.range p.d, GPi k|
      ≤ |cPi - 1| * (12 * π + 96 + 24 * cϱ ^ 2) * (p.L ^ 2 * Real.sqrt p.X) := by
    rw [abs_mul, mul_assoc]
    refine mul_le_mul_of_nonneg_left (h3.trans ?_) (abs_nonneg _)
    calc (p.d : ℝ) * ((6 * Real.sqrt p.X / p.T) * (2 * π * p.L) + (12 * Real.sqrt p.X / p.T) * I₂)
        ≤ (p.L * p.T) * ((6 * Real.sqrt p.X / p.T) * (2 * π * p.L)
            + (12 * Real.sqrt p.X / p.T) * (8 + 2 * cϱ ^ 2)) := by gcongr
      _ = (12 * π * p.L + 12 * (8 + 2 * cϱ ^ 2)) * (p.L * Real.sqrt p.X) := by
          field_simp
          ring
      _ ≤ (12 * π * p.L + (96 + 24 * cϱ ^ 2) * p.L) * (p.L * Real.sqrt p.X) := by
          have hL1 : 1 ≤ p.L := by linarith [hF.eight_le_L]
          apply mul_le_mul_of_nonneg_right _ (by positivity)
          nlinarith [sq_nonneg cϱ]
      _ = (12 * π + 96 + 24 * cϱ ^ 2) * (p.L ^ 2 * Real.sqrt p.X) := by ring
  -- (2) P_X-part
  have h4 : |∑ k ∈ Finset.range p.d, GP k| ≤ 3 / Real.log 2 * (p.L ^ 2 * Real.sqrt p.X) := by
    refine (sum_P_part_bound hF).trans ?_
    calc p.L ^ 2 / Real.log 2 * ∑ n ∈ primeRange p.X, acoef n
        ≤ p.L ^ 2 / Real.log 2 * (3 * Real.sqrt p.X) :=
          mul_le_mul_of_nonneg_left (hx₀ _ hX) (div_nonneg (sq_nonneg _) hlog2.le)
      _ = 3 / Real.log 2 * (p.L ^ 2 * Real.sqrt p.X) := by field_simp
  -- (3) P_c-part
  have h5 : |∑ k ∈ Finset.range p.d, GPc k| ≤ 1 / Real.log 2 * (p.L ^ 2 * S1 c p.X) := by
    refine (sum_Pc_part_bound hF.toCoreW hc1).trans (le_of_eq ?_)
    field_simp
  -- combine
  have hsplit : trGtW cPi c p F - F.a * p.L * N
      = (trGtA p F - F.a * p.L * N)
        + (p.L)⁻¹ * ((cPi - 1) * ∑ k ∈ Finset.range p.d, GPi k
            + ∑ k ∈ Finset.range p.d, GPc k - ∑ k ∈ Finset.range p.d, GP k) := by
    rw [← hdiff]
    unfold trGtW trGtA
    ring
  rw [hsplit]
  have hLinv : 0 < (p.L)⁻¹ := inv_pos.2 hL
  have hA : 0 ≤ p.L * Real.sqrt p.X := by positivity
  have hB : 0 ≤ p.L * S1 c p.X := by positivity
  have h0' : |trGtA p F - F.a * p.L * N| ≤ |C₀| * (p.L * Real.sqrt p.X) :=
    h0.trans (mul_le_mul_of_nonneg_right (le_abs_self _) hA)
  set K₁ := |cPi - 1| * (12 * π + 96 + 24 * cϱ ^ 2) with hK₁
  have hK₁0 : 0 ≤ K₁ := by positivity
  calc |(trGtA p F - F.a * p.L * N)
        + (p.L)⁻¹ * ((cPi - 1) * ∑ k ∈ Finset.range p.d, GPi k
            + ∑ k ∈ Finset.range p.d, GPc k - ∑ k ∈ Finset.range p.d, GP k)|
      ≤ |trGtA p F - F.a * p.L * N|
        + (p.L)⁻¹ * (|(cPi - 1) * ∑ k ∈ Finset.range p.d, GPi k|
            + |∑ k ∈ Finset.range p.d, GPc k| + |∑ k ∈ Finset.range p.d, GP k|) := by
        refine (abs_add_le _ _).trans (add_le_add le_rfl ?_)
        rw [abs_mul, abs_of_pos hLinv]
        refine mul_le_mul_of_nonneg_left ?_ hLinv.le
        exact (abs_sub _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ ≤ |C₀| * (p.L * Real.sqrt p.X)
        + (p.L)⁻¹ * (K₁ * (p.L ^ 2 * Real.sqrt p.X)
            + 1 / Real.log 2 * (p.L ^ 2 * S1 c p.X)
            + 3 / Real.log 2 * (p.L ^ 2 * Real.sqrt p.X)) := by
        gcongr
    _ = |C₀| * (p.L * Real.sqrt p.X) + K₁ * (p.L * Real.sqrt p.X)
        + 3 / Real.log 2 * (p.L * Real.sqrt p.X) + 1 / Real.log 2 * (p.L * S1 c p.X) := by
        field_simp
        ring
    _ ≤ (|C₀| + K₁ + 3 / Real.log 2 + 1 / Real.log 2)
        * (p.L * Real.sqrt p.X + p.L * S1 c p.X) := by
        have hk2 : 0 ≤ 3 / Real.log 2 := by positivity
        have hk3 : 0 ≤ 1 / Real.log 2 := by positivity
        nlinarith [mul_nonneg (abs_nonneg C₀) hB, mul_nonneg hK₁0 hB, mul_nonneg hk2 hB,
          mul_nonneg hk3 hA]

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Trace/Variant2299baaa53e4d81cbf5c4d8700a8099e988cebf54f669fd2384ed8f5b3824053.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e4e88dd0c9bddae4026b54fcadbe1c3177cf0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
