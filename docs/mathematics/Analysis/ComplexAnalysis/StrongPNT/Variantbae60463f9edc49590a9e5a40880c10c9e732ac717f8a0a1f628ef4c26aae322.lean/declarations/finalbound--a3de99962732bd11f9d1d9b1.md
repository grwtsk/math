# FinalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:036a2936-e4dd-d902-ccf6-c01cfdb60593",
  "kind": "theorem",
  "lexical_name": "FinalBound",
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
  "slug": "finalbound--a3de99962732bd11f9d1d9b1",
  "source": {
    "blob": "febb261e8c76e0d4aec8c8de1ca02559ac821fcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1484,
    "line": 982,
    "path": "GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3de99962732bd11f9d1d9b1d498acd77d721f2f4cc0795e272ba63e4b5fc32a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:036a2936-e4dd-d902-ccf6-c01cfdb60593`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–1484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FinalBound {B r' r R' R : ℝ} {f : ℂ → ℂ} {z : ℂ}
    (one_lt_B : 1 < B) (r'_pos : 0 < r') (r'_lt_r : r' < r) (r_lt_one : r < 1) (r_lt_R' : r < R') (R'_lt_R : R' < R) (R_lt_one : R < 1)
    (hfAnalytic : AnalyticOnNhd ℂ f (Metric.closedBall (0 : ℂ) 1)) (hf0_eq_one : f 0 = 1)
    (finiteZeros : (SetOfZeros 1 f).Finite) (fz_bound : ∀ z : ℂ, ‖z‖ ≤ R → ‖f z‖ ≤ B)
    (hz : z ∈ Metric.closedBall (0 : ℂ) r' \ SetOfZeros R' f) :
    ‖(deriv f z / f z) - ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, analyticOrderNatAt f ρ / (z - ρ)‖ ≤
      (16 * r ^ 2 / (r - r') ^ 3 + 1 / ((R ^ 2 / R' - R') * Real.log (R / R'))) * Real.log B := by
  have r'_lt_one : r' < 1 := lt_trans r'_lt_r r_lt_one
  have r_pos : 0 < r := lt_trans r'_pos r'_lt_r
  have R'_pos : 0 < R' := lt_trans r_pos r_lt_R'
  have R_pos : 0 < R := lt_trans R'_pos R'_lt_R
  have r_lt_R : r < R := lt_trans r_lt_R' R'_lt_R
  have r'_lt_R : r' < R := lt_trans r'_lt_r r_lt_R
  have rFiniteZeros: (SetOfZeros r f).Finite := finiteSetOfZeros_mono r_lt_one finiteZeros
  have zNotInZeros : ¬(z ∈ SetOfZeros r f) := (fun hmem => hz.2 ⟨hmem.1.trans r_lt_R'.le, hmem.2⟩)
  have z_norm : ‖z‖ ≤ r' := by simpa [Metric.mem_closedBall, dist_zero_right] using hz.1
  have ρ_mem : ∀ ρ ∈ rFiniteZeros.toFinset, ‖ρ‖ ≤ r ∧ f ρ = 0 := fun ρ hρ => rFiniteZeros.mem_toFinset.mp hρ
  have ρ_ne_zero : ∀ ρ ∈ rFiniteZeros.toFinset, ρ ≠ 0 := fun ρ hρ h => one_ne_zero (hf0_eq_one ▸ h ▸ (ρ_mem ρ hρ).2)
  have blaschke_sub_ne : ∀ ρ ∈ rFiniteZeros.toFinset, (↑R : ℂ) - z * (starRingEnd ℂ) ρ / ↑R ≠ 0 := by
    intro ρ hρ h
    have : ‖z * (starRingEnd ℂ) ρ / (↑R : ℂ)‖ < R := by
      rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos R_pos, div_lt_iff₀ R_pos, norm_mul, norm_conj]
      exact mul_lt_mul (z_norm.trans_lt r'_lt_R) ((ρ_mem ρ hρ).1.trans_lt r_lt_R).le
        (norm_pos_iff.mpr (ρ_ne_zero ρ hρ)) R_pos.le
    rw [← sub_eq_zero.mp h] at this
    simp [Complex.norm_real, abs_of_pos R_pos] at this
  have fz_ne : f z ≠ 0 := fun h => zNotInZeros ⟨z_norm.trans r'_lt_r.le, h⟩
  have blaschke_prod_ne : ∀ ρ ∈ rFiniteZeros.toFinset, ((↑R : ℂ) - z * (starRingEnd ℂ) ρ / ↑R) ^ analyticOrderNatAt f ρ ≠ 0 := fun ρ hρ => pow_ne_zero _ (blaschke_sub_ne ρ hρ)
  have hDiff_blaschke : ∀ ρ ∈ rFiniteZeros.toFinset, DifferentiableAt ℂ (fun w => ((↑R : ℂ) - w * (starRingEnd ℂ) ρ / ↑R) ^ analyticOrderNatAt f ρ) z := fun ρ _ => ((differentiableAt_const _).sub ((differentiableAt_id.mul_const _).div_const _)).pow _
  have hDiff_sub : ∀ ρ ∈ rFiniteZeros.toFinset, DifferentiableAt ℂ (fun w => (w - (ρ : ℂ)) ^ analyticOrderNatAt f ρ) z := fun ρ _ => (differentiableAt_id.sub (differentiableAt_const _)).pow _
  have hpos : 0 < R ^ 2 / R' - R' := by
    rw [sub_pos, lt_div_iff₀ R'_pos, ← sq]
    apply pow_lt_pow_left₀ R'_lt_R R'_pos.le two_ne_zero
  have LfBound := JBlaschkeDerivBound one_lt_B r'_pos r'_lt_r r_pos r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros fz_bound hz.1
  have zerosBound : ↑(∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, analyticOrderNatAt f ρ) ≤ 1 / Real.log (R / R') * Real.log B := by
    apply (ZerosBound r_pos r_lt_one r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros fz_bound).trans
    refine mul_le_mul_of_nonneg_right (one_div_le_one_div_of_le ?_ ?_) (Real.log_nonneg (le_of_lt one_lt_B))
    · rw [← Real.log_one, Real.log_lt_log_iff zero_lt_one (div_pos R_pos R'_pos), one_lt_div R'_pos]
      exact R'_lt_R
    · rw [Real.log_le_log_iff (div_pos R_pos R'_pos) (div_pos R_pos r_pos)]
      exact div_le_div_of_nonneg_left (le_of_lt R_pos) r_pos (le_of_lt r_lt_R')
  suffices h1 : ‖deriv f z / f z - ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - ρ)‖ ≤ ‖deriv (JBlaschke r'_pos r'_lt_r r_pos r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros) z‖ + 1 / (R ^ 2 / R' - R') * ↑(∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, analyticOrderNatAt f ρ) by
    calc ‖deriv f z / f z - ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - ρ)‖
      ≤ ‖deriv (JBlaschke r'_pos r'_lt_r r_pos r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros) z‖ + 1 / (R ^ 2 / R' - R') * ↑(∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, analyticOrderNatAt f ρ) := h1
    _ ≤ 16 * Real.log B * r ^ 2 / (r - r') ^ 3 + 1 / (R ^ 2 / R' - R') * (1 / Real.log (R / R') * Real.log B) := by
      linarith [mul_le_mul_of_nonneg_left zerosBound (div_nonneg zero_le_one (le_of_lt hpos))]
    _ = (16 * r ^ 2 / (r - r') ^ 3 + 1 / ((R ^ 2 / R' - R') * Real.log (R / R'))) * Real.log B := by
      field_simp
  suffices h2 : deriv f z / f z - ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - ρ) =
    deriv (JBlaschke r'_pos r'_lt_r r_pos r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros) z - ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - R ^ 2 / conj ρ) by
    rw [h2, sub_eq_add_neg]
    apply norm_add_le_of_le (le_rfl)
    simp only [norm_neg, cast_sum, Finset.mul_sum, one_div_mul_eq_div]
    apply (norm_sum_le _ _).trans (Finset.sum_le_sum (fun ρ hρ => ?_))
    rw [norm_div, RCLike.norm_natCast]
    apply div_le_div_of_nonneg_left (Nat.cast_nonneg _) hpos
    simp only [mem_diff, Metric.mem_closedBall, dist_zero_right, SetOfZeros, Finite.mem_toFinset, mem_setOf_eq] at hρ hz
    rw [norm_sub_rev]
    calc R ^ 2 / R' - R'
        ≤ ‖↑R ^ 2 / conj ρ‖ - ‖z‖ := by
          refine sub_le_sub ?_ (hz.1.trans (r'_lt_r.le.trans r_lt_R'.le))
          rw [norm_div, norm_pow, norm_real, norm_eq_abs, abs_of_nonneg (le_of_lt R_pos)]
          apply div_le_div_of_nonneg_left (sq_nonneg R) (norm_pos_iff.mpr (star_ne_zero.mpr (fun h => one_ne_zero (hf0_eq_one ▸ h ▸ hρ.2))))
          rw [norm_star]
          linarith [hρ.1]
      _ ≤ ‖↑R ^ 2 / conj ρ - z‖ := norm_sub_norm_le _ _
  suffices h3 : deriv (BlaschkeB r R f) z / BlaschkeB r R f z = deriv f z / f z
    + ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - R ^ 2 / conj ρ)
    - ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - ρ) by
    let blaschkeAnalytic := BlaschkeAnalytic r_pos r_lt_R R_lt_one finiteZeros hfAnalytic (hf0_eq_one ▸ one_ne_zero)
    let blaschkeNonzero := BlaschkeNonzero r_pos r_lt_R R_lt_one finiteZeros hfAnalytic (hf0_eq_one ▸ one_ne_zero)
    let logOfAnalytic := LogOfAnalyticFunction' r'_pos r'_lt_r r_lt_R blaschkeAnalytic blaschkeNonzero
    set JB := logOfAnalytic.choose with JB_def
    obtain ⟨JB_Analytic, JB_0_eq_0, deriv_JB_eq, JB_re⟩ := logOfAnalytic.choose_spec
    rw [← JB_def] at JB_Analytic JB_0_eq_0 deriv_JB_eq JB_re
    have JB_def' : JB = (JBlaschke r'_pos r'_lt_r r_pos r_lt_R R_lt_one hfAnalytic hf0_eq_one finiteZeros) := by
      unfold JBlaschke
      rw [JB_def]
    rw [eq_sub_iff_add_eq, sub_add_eq_add_sub, ← h3, ← JB_def', eq_comm]
    exact deriv_JB_eq z hz.1
  suffices h4 : BlaschkeB r R f z = f z * ∏ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ((R - z * conj ρ / R) / (z - ρ)) ^ (analyticOrderNatAt f ρ) by
    have sum1LD : ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, logDeriv (fun z ↦ (R - z * conj ρ / R) ^ ↑(analyticOrderNatAt f ρ)) z = ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - R ^ 2 / conj ρ) := by
      refine Finset.sum_congr rfl (fun ρ hρ => ?_)
      rw [← logDeriv_pow, logDeriv_fun_pow, logDeriv_fun_pow, logDeriv_id', mul_eq_mul_left_iff]
      · left
        simp only [logDeriv, Pi.div_apply]
        rw [deriv_fun_sub (differentiableAt_const _) ?_, deriv_div_const, deriv_mul_const (differentiableAt_fun_id)]
        · simp only [deriv_const', deriv_id'', one_mul, zero_sub]
          rw [div_eq_div_iff (blaschke_sub_ne ρ hρ), one_mul, neg_mul, mul_sub, mul_div, neg_sub, mul_comm _ z, ← mul_div_assoc, sub_left_inj]
          · field_simp
            exact mul_div_cancel_left₀ _ (star_ne_zero.mpr (ρ_ne_zero ρ hρ))
          · intro h; apply blaschke_sub_ne ρ hρ
            have hconj : (starRingEnd ℂ) ρ ≠ 0 := star_ne_zero.mpr (ρ_ne_zero ρ hρ)
            have hR : (↑R : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (ne_of_gt R_pos)
            rw [sub_eq_zero.mp h, div_mul_cancel₀ _ hconj, sq, mul_div_cancel_right₀ _ hR, sub_self]
        · simp only [differentiableAt_fun_id, differentiableAt_const, DifferentiableAt.fun_mul,
          DifferentiableAt.div_const]
      · simp only [differentiableAt_fun_id]
      · simp only [differentiableAt_const, DifferentiableAt.fun_sub_iff_right,
          differentiableAt_fun_id, DifferentiableAt.fun_mul, DifferentiableAt.div_const]
    have sum2LD : ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, logDeriv (fun z ↦ (z - ρ) ^ ↑(analyticOrderNatAt f ρ)) z =  ∑ ρ ∈ (finiteSetOfZeros_mono r_lt_one finiteZeros).toFinset, ↑(analyticOrderNatAt f ρ) / (z - ρ) := by
      refine Finset.sum_congr rfl (fun ρ _ => ?_)
      have : (fun z ↦ (z - ρ) ^ analyticOrderNatAt f ρ) =
        (fun x ↦ x ^ analyticOrderNatAt f ρ) ∘ (fun z ↦ z - ρ) := by rfl
      rw[← logDeriv_pow, this, logDeriv_comp]
      · simp only [logDeriv_pow, differentiableAt_fun_id, differentiableAt_const, deriv_fun_sub,
          deriv_id'', deriv_const', sub_zero, mul_one]
      · simp only [differentiableAt_fun_id, DifferentiableAt.fun_pow]
      · simp only [differentiableAt_fun_id, differentiableAt_const, DifferentiableAt.fun_sub]
    unfold BlaschkeB Cf
    simp only [rFiniteZeros, ↓reduceDIte, dite_eq_ite, ite_mul, ← logDeriv_apply, ← sum1LD, ← sum2LD]
    rw [← logDeriv_prod blaschke_prod_ne hDiff_blaschke,
      ← logDeriv_prod ?_ hDiff_sub,
      ← logDeriv_mul _ fz_ne (Finset.prod_ne_zero_iff.mpr blaschke_prod_ne) ((hfAnalytic z (Metric.closedBall_subset_closedBall r'_lt_one.le hz.1)).differentiableAt) (DifferentiableAt.fun_finset_prod hDiff_blaschke),
      ← logDeriv_div _ ?_ ?_ ?_ (DifferentiableAt.fun_finset_prod hDiff_sub)]
    · have h_eq : ∀ᶠ w in nhds z, (if w ∈ SetOfZeros r f then (ZeroFactor f w / ∏ ρ ∈ rFiniteZeros.toFinset \ {w}, (w - ρ) ^ analyticOrderNatAt f ρ) * ∏ ρ ∈ rFiniteZeros.toFinset, (R - w * (starRingEnd ℂ) ρ / R) ^ analyticOrderNatAt f ρ else (f w / ∏ ρ ∈ rFiniteZeros.toFinset, (w - ρ) ^ analyticOrderNatAt f ρ) * ∏ ρ ∈ rFiniteZeros.toFinset, (R - w * (starRingEnd ℂ) ρ / R) ^ analyticOrderNatAt f ρ) = (f w * ∏ ρ ∈ rFiniteZeros.toFinset, (R - w * (starRingEnd ℂ) ρ / R) ^ analyticOrderNatAt f ρ) / ∏ ρ ∈ rFiniteZeros.toFinset, (w - ρ) ^ analyticOrderNatAt f ρ := by
        filter_upwards [(isOpen_compl_iff.mpr rFiniteZeros.isClosed).mem_nhds zNotInZeros] with w hw using by rw [if_neg hw]; ring
      simp only [logDeriv, Pi.div_apply]
      congr 1
      · apply Filter.EventuallyEq.deriv_eq h_eq
      · convert h_eq.self_of_nhds using 1
    · exact mul_ne_zero fz_ne (Finset.prod_ne_zero_iff.mpr blaschke_prod_ne)
    · simp only [ne_eq, Finset.prod_eq_zero_iff, Finite.mem_toFinset, pow_eq_zero_iff',
        sub_eq_zero, ↓existsAndEq, zNotInZeros, true_and, false_and, not_false_eq_true]
    · exact ((hfAnalytic z (Metric.closedBall_subset_closedBall r'_lt_one.le hz.1)).differentiableAt).mul (DifferentiableAt.fun_finset_prod hDiff_blaschke)
    · exact (fun ρ hρ => pow_ne_zero _ (sub_ne_zero.mpr fun h => zNotInZeros (h ▸ rFiniteZeros.mem_toFinset.mp hρ)))
  simp only [BlaschkeB, Cf, rFiniteZeros, ↓reduceDIte, zNotInZeros, div_mul_eq_mul_div, mul_div_assoc, ← Finset.prod_div_distrib, div_pow]



blueprint_comment /--
\begin{theorem}[ZetaFixedLowerBound]\label{ZetaFixedLowerBound}
    For all $t\in\mathbb{R}$ one has
    $$|\zeta(3/2+it)|\geq\frac{\zeta(3)}{\zeta(3/2)}.$$
\end{theorem}
-/

blueprint_comment /--
\begin{proof}
    From the Euler product expansion of $\zeta$, we have that for $\Re s>1$
    $$\zeta(s)=\prod_p\frac{1}{1-p^{-s}}.$$
    Thus, we have that
    $$\frac{\zeta(2s)}{\zeta(s)}=\prod_p\frac{1-p^{-s}}{1-p^{-2s}}=\prod_p\frac{1}{1+p^{-s}}.$$
    Now note that $|1-p^{-(3/2+it)}|\leq 1+|p^{-(3/2+it)}|=1+p^{-3/2}$. Thus,
    $$|\zeta(3/2+it)|=\prod_p\frac{1}{|1-p^{-(3/2+it)}|}
      \geq\prod_p\frac{1}{1+p^{-3/2}}=\frac{\zeta(3)}{\zeta(3/2)}$$
    for all $t\in\mathbb{R}$ as desired.
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[ZetaAltFormula]\label{ZetaAltFormula}
    Let
    $$\zeta_0(s)=1+\frac{1}{s-1}-s\int_1^\infty\{x\}\,x^{-s}\,\frac{dx}{x}.$$
    We have that $\zeta(s)=\zeta_0(s)$ for $\sigma>1$.
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
    Note that for $\sigma>1$ we have
    $$\zeta(s)=\sum_{n=1}^\infty\frac{1}{n^s}
      =\sum_{n=1}^\infty\frac{n}{n^s}-\sum_{n=1}^\infty\frac{n-1}{n^s}
      =\sum_{n=1}^\infty\frac{n}{n^s}-\sum_{n=0}^\infty\frac{n}{(n+1)^s}
      =\sum_{n=1}^\infty\frac{n}{n^s}-\sum_{n=1}^\infty\frac{n}{(n+1)^s}.$$
    Thus
    $$\zeta(s)=\sum_{n=1}^\infty n\,(n^{-s}-(n+1)^{-s}).$$
    Now we note that
    $$s\int_n^{n+1}x^{-s}\,\frac{dx}{x}
      =s\left(-\frac{1}{s}\,x^{-s}\right)_n^{n+1}=n^{-s}-(n+1)^{-s}.$$
    So, substituting this we have
    $$\zeta(s)=\sum_{n=1}^\infty n\,(n^{-s}-(n+1)^{-s})
      =s\sum_{n=1}^\infty n\int_n^{n+1}x^{-s}\,\frac{dx}{x}
      =s\int_1^\infty\lfloor x\rfloor\,x^{-s}\,\frac{dx}{x}.$$
    But noting that $\lfloor x\rfloor =x-\{x\}$ we have that
    $$\zeta(s)=s\int_1^\infty\lfloor x\rfloor\,x^{-s}\,\frac{dx}{x}
      =s\int_1^\infty x^{-s}\,dx-s\int_1^\infty \{x\}\,x^{-s}\,\frac{dx}{x}.$$
    Evaluating the first integral completes the result.
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[ZetaAltFormulaAnalytic]\label{ZetaAltFormulaAnalytic}
    We have that $\zeta_0(s)$ is analytic for all $s\in S$ where
    $S=\{s\in\mathbb{C}:\Re s>0,\,s\neq 1\}$.
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
    Note that we have
    $$\left|\int_1^\infty\{x\}\,x^{-s}\,\frac{dx}{x}\right|
      \leq\int_1^\infty|\{x\}\,x^{-s-1}|\,dx
      \leq\int_1^\infty x^{-\sigma-1}\,dx=\frac{1}{\sigma}.$$
    So this integral converges uniformly on compact subsets of $S$, which tells us that
    it is analytic on $S$. So it immediately follows that $\zeta_0(s)$ is analytic on $S$
    as well, since $S$ avoids the pole at $s=1$ coming from the $(s-1)^{-1}$ term.
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[ZetaExtend]\label{ZetaExtend}
    We have that
    $$\zeta(s)=1+\frac{1}{s-1}-s\int_1^\infty\{x\}\,x^{-s}\,\frac{dx}{x}$$
    for all $s\in S$.
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
    This is an immediate consequence of the identity theorem.
\end{proof}
-/



blueprint_comment /--
\begin{theorem}[GlobalBound]\label{GlobalBound}
    For all $s\in\mathbb{C}$ with $|s|\leq 1$ and $t\in\mathbb{R}$ with $|t|\geq 2$, we have that
    $$|\zeta(s+3/2+it)|\leq 7+2\,|t|.$$
\end{theorem}
-/

blueprint_comment /--
\begin{proof}
\uses{ZetaExtend}
    For the sake of clearer proof writing let $z=s+3/2+it$. Since $|s|\leq 1$ we know that
    $1/2\leq\mathfrak{R}z$; additionally, as $|t|\geq 2$, we know $1\leq|\mathfrak{I}z|$.
    So, $z\in S$. Thus, from Lemma \ref{ZetaExtend} we know that
    $$|\zeta(z)|\leq 1+\frac{1}{|z-1|}
      +|z|\cdot\left|\int_1^\infty\{x\}\,x^{-z}\,\frac{dx}{x}\right|$$
    by applying the triangle inequality. Now note that $|z-1|\geq 1$. Likewise,
    $$|z|\cdot\left|\int_1^\infty\{x\}\,x^{-z}\,\frac{dx}{x}\right|
      \leq|z|\int_1^\infty|\{x\}\,x^{-z-1}|\,dx
      \leq|z|\int_1^\infty x^{-\Re z-1}\,dx=\frac{|z|}{\Re z}\leq 2\,|z|.$$
    Thus we have that,
    $$|\zeta(s+3/2+it)|=|\zeta(z)|\leq 1+1+2\,|z|=2+2\,|s+3/2+it|
      \leq2+2\,|s|+3+2\,|it|\leq 7+2\,|t|.$$
\end{proof}
-/



blueprint_comment /--
\begin{theorem}[LogDerivZetaFinalBound]\label{LogDerivZetaFinalBound}
    Let $t\in\mathbb{R}$ with $|t|\geq 2$ and $0 < r' < r < R' < R<1$. If
    $f(z)=\zeta(z+3/2+it)$, then for all
    $z\in\overline{\mathbb{D}_{r'}}\setminus\mathcal{K}_f(R')$ we have that
    $$\left|\frac{f'}{f}(z)-\sum_{\rho\in\mathcal{K}_f(R')}\frac{m_f(\rho)}{z-\rho}\right|
      \ll\left(\frac{16r^2}{(r-r')^3}+\frac{1}{(R^2/R'-R')\,\log(R/R')}\right)\log|t|.$$
\end{theorem}
-/

blueprint_comment /--
\begin{proof}
\uses{ZetaFixedLowerBound, GlobalBound, FinalBound}
    Let $g(z)=\zeta(z+3/2+it)/\zeta(3/2+it)$. Note that $g(0)=1$ and for $|z|\leq R$
    $$|g(z)|=\frac{|\zeta(z+3/2+it)|}{|\zeta(3/2+it)|}
      \leq\frac{\zeta(3/2)}{\zeta(3)}\cdot(7+2\,|t|)\leq\frac{13\,\zeta(3/2)}{3\,\zeta(3)}\,|t|$$
    by Theorems \ref{ZetaFixedLowerBound} and \ref{GlobalBound}. Thus by Theorem
    \ref{FinalBound} we have that
    $$\left|\frac{g'}{g}(z)-\sum_{\rho\in\mathcal{K}_g(R')}\frac{m_g(\rho)}{z-\rho}\right|
      \leq\left(\frac{16r^2}{(r-r')^3}+\frac{1}{(R^2/R'-R')\,\log(R/R')}\right)
      \left(\log|t|+\log\left(\frac{13\,\zeta(3/2)}{3\,\zeta(3)}\right)\right).$$
    Now note that $f'/f=g'/g$, $\mathcal{K}_f(R')=\mathcal{K}_g(R')$, and
    $m_g(\rho)=m_f(\rho)$ for all $\rho\in\mathcal{K}_f(R')$. Thus we have that,
    $$\left|\frac{f'}{f}(z)-\sum_{\rho\in\mathcal{K}_f(R')}\frac{m_f(\rho)}{z-\rho}\right|
      \ll\left(\frac{16r^2}{(r-r')^3}+\frac{1}{(R^2/R'-R')\,\log(R/R')}\right)\log|t|$$
    where the implied constant $C$ is taken to be
    $$C\geq 1+\frac{\log((13\,\zeta(3/2))/(3\,\zeta(3)))}{\log 2}.$$
\end{proof}
-/



blueprint_comment /--
\begin{definition}[ZeroWindows]\label{ZeroWindows}
    Let $\mathcal{Z}_t=\{\rho\in\mathbb{C}:\zeta(\rho)=0,\,|\rho-(3/2+it)|\leq 5/6\}$.
\end{definition}
-/



blueprint_comment /--
\begin{lemma}[SumBoundI]\label{SumBoundI}
    For all $\delta\in (0,1)$ and $t\in\mathbb{R}$ with $|t|\geq 2$ we have
    $$\left|\frac{\zeta'}{\zeta}(1+\delta+it)
      -\sum_{\rho\in\mathcal{Z}_t}\frac{m_\zeta(\rho)}{1+\delta+it-\rho}\right|\ll\log|t|.$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
\uses{LogDerivZetaFinalBound}
    We apply Theorem \ref{LogDerivZetaFinalBound} where $r'=2/3$, $r=3/4$, $R'=5/6$, and
    $R=8/9$. Thus, for all $z\in\overline{\mathbb{D}_{2/3}}\setminus\mathcal{K}_f(5/6)$
    we have that
    $$\left|\frac{\zeta'}{\zeta}(z+3/2+it)
      -\sum_{\rho\in\mathcal{K}_f(5/6)}\frac{m_f(\rho)}{z-\rho}\right|\ll\log|t|$$
    where $f(z)=\zeta(z+3/2+it)$ for $t\in\mathbb{R}$ with $|t|\geq 3$. Now if we let
    $z=-1/2+\delta$, then $z\in(-1/2,1/2)\subseteq\overline{\mathbb{D}_{2/3}}$.
    Additionally, $f(z)=\zeta(1+\delta+it)$, where $1+\delta+it$ lies in the zero-free
    region where $\sigma>1$. Thus, $z\not\in\mathcal{K}_f(5/6)$. So,
    $$\left|\frac{\zeta'}{\zeta}(1+\delta+it)
      -\sum_{\rho\in\mathcal{K}_f(5/6)}\frac{m_f(\rho)}{-1/2+\delta-\rho}\right|
      \ll\log|t|.$$
    But now note that if $\rho\in\mathcal{K}_f(5/6)$, then $\zeta(\rho+3/2+it)=0$ and
    $|\rho|\leq 5/6$. Thus, $\rho+3/2+it\in\mathcal{Z}_t$. Additionally, note that
    $m_f(\rho)=m_\zeta(\rho+3/2+it)$. So changing variables using these facts gives us
    that
    $$\left|\frac{\zeta'}{\zeta}(1+\delta+it)
      -\sum_{\rho\in\mathcal{Z}_t}\frac{m_\zeta(\rho)}{1+\delta+it-\rho}\right|
      \ll\log|t|.$$
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[ShiftTwoBound]\label{ShiftTwoBound}
    For all $\delta\in (0,1)$ and $t\in\mathbb{R}$ with $|t|\geq 2$ we have
    $$-\Re \left(\frac{\zeta'}{\zeta}(1+\delta+2it)\right)\ll\log|t|.$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
\uses{SumBoundI}
    Note that, for $\rho\in\mathcal{Z}_{2t}$
    \begin{align*}
        \Re \left(\frac{1}{1+\delta+2it-\rho}\right)
          &=\Re \left(\frac{1+\delta-2it-\overline{\rho}}
            {(1+\delta+2it-\rho)(1+\delta-2it-\overline{\rho})}\right) \\
          &=\frac{\Re (1+\delta-2it-\overline{\rho})}{|1+\delta+2it-\rho|^2}
            =\frac{1+\delta-\Re \rho}{(1+\delta-\Re \rho)^2+(2t-\mathfrak{I}\rho)^2}.
    \end{align*}
    Now since $\rho\in\mathcal{Z}_{2t}$, we have that $|\rho-(3/2+2it)|\leq 5/6$. So,
    we have $\Re \rho\in(2/3,7/3)$ and $\mathfrak{I}\rho\in(2t-5/6,2t+5/6)$. Thus, we
    have that
    $$1/3<1+\delta-\Re \rho\qquad\text{and}\qquad
      (1+\delta-\Re \rho)^2+(2t-\mathfrak{I}\rho)^2<16/9+25/36=89/36.$$
    Which implies that
    \begin{equation}\label{pickupPoint4}
        0\leq\frac{12}{89}
          <\frac{1+\delta-\Re \rho}{(1+\delta-\Re \rho)^2+(2t-\mathfrak{I}\rho)^2}
          =\Re \left(\frac{1}{1+\delta+2it-\rho}\right).
    \end{equation}
    Note that, from Lemma \ref{SumBoundI}, we have
    $$\sum_{\rho\in\mathcal{Z}_{2t}}m_\zeta(\rho)\,
      \Re \left(\frac{1}{1+\delta+2it-\rho}\right)
      -\Re \left(\frac{\zeta'}{\zeta}(1+\delta+2it)\right)
      \leq\left|\frac{\zeta'}{\zeta}(1+\delta+2it)
      -\sum_{\rho\in\mathcal{Z}_{2t}}\frac{m_\zeta(\rho)}{1+\delta+2it-\rho}\right|
      \ll\log|2t|.$$
    Since $m_\zeta(\rho)\geq 0$ for all $\rho\in\mathcal{Z}_{2t}$, the inequality from
    Equation (\ref{pickupPoint4}) tells us that by subtracting the sum from both sides
    we have
    $$-\Re \left(\frac{\zeta'}{\zeta}(1+\delta+2it)\right)\ll\log|2t|.$$
    Noting that $\log|2t|=\log(2)+\log|t|\leq2\log|t|$ completes the proof.
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[ShiftOneBound]\label{ShiftOneBound}
    There exists $C>0$ such that for all $\delta\in(0,1)$ and $t\in\mathbb{R}$ with
    $|t|\geq 3$; if $\zeta(\rho)=0$ with $\rho=\sigma+it$, then
    $$-\Re \left(\frac{\zeta'}{\zeta}(1+\delta+it)\right)
      \leq -\frac{1}{1+\delta-\sigma}+C\log|t|.$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
\uses{SumBoundI}
    Note that for $\rho'\in\mathcal{Z}_t$
    \begin{align*}
        \Re \left(\frac{1}{1+\delta+it-\rho'}\right)
          &=\Re \left(\frac{1+\delta-it-\overline{\rho'}}
            {(1+\delta+it-\rho')(1+\delta-it-\overline{\rho'})}\right) \\
          &=\frac{\Re (1+\delta-it-\overline{\rho'})}{|1+\delta+it-\rho'|^2}
            =\frac{1+\delta-\Re \rho'}{(1+\delta-\Re \rho')^2+(t-\mathfrak{I}\rho')^2}.
    \end{align*}
    Now since $\rho'\in\mathcal{Z}_t$, we have that $|\rho-(3/2+it)|\leq 5/6$. So, we
    have $\Re \rho'\in(2/3,7/3)$ and $\mathfrak{I}\rho'\in(t-5/6,t+5/6)$. Thus we have
    that
    $$1/3<1+\delta-\Re \rho'\qquad\text{and}\qquad
      (1+\delta-\Re \rho')^2+(t-\mathfrak{I}\rho')^2<16/9+25/36=89/36.$$
    Which implies that
    \begin{equation}\label{pickupPoint5}
        0\leq\frac{12}{89}
          <\frac{1+\delta-\Re \rho'}{(1+\delta-\Re \rho')^2+(t-\mathfrak{I}\rho')^2}
          =\Re \left(\frac{1}{1+\delta+it-\rho'}\right).
    \end{equation}
    Note that, from Lemma \ref{SumBoundI}, we have
    $$\sum_{\rho\in\mathcal{Z}_t}m_\zeta(\rho)\,
      \Re \left(\frac{1}{1+\delta+it-\rho}\right)
      -\Re \left(\frac{\zeta'}{\zeta}(1+\delta+it)\right)
      \leq\left|\frac{\zeta'}{\zeta}(1+\delta+it)
      -\sum_{\rho\in\mathcal{Z}_t}\frac{m_\zeta(\rho)}{1+\delta+it-\rho}\right|
      \ll\log|t|.$$
    Since $m_\zeta(\rho)\geq 0$ for all $\rho'\in\mathcal{Z}_t$, the inequality from
    Equation (\ref{pickupPoint5}) tells us that by subtracting the sum over all
    $\rho'\in\mathcal{Z}_t\setminus\{\rho\}$ from both sides we have
    $$\frac{m_\zeta(\rho)}{\Re (1+\delta+it-\rho)}
      -\Re \left(\frac{\zeta'}{\zeta}(1+\delta+it)\right)\ll\log|t|.$$
    But of course we have that $\Re (1+\delta+it-\rho)=1+\delta-\sigma$. So subtracting
    this term from both sides and recalling the implied constant we have
    $$-\Re \left(\frac{\zeta'}{\zeta}(1+\delta+it)\right)
      \leq -\frac{m_\zeta(\rho)}{1+\delta-\sigma}+C\log|t|.$$
    We have that $\sigma\leq 1$ since $\zeta$ is zero free on the right half plane
    $\sigma>1$. Thus $0<1+\delta-\sigma$. Noting this in combination with the fact that
    $1\leq m_\zeta(\rho)$ completes the proof.
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[ShiftZeroBound]\label{ShiftZeroBound}
    For all $\delta\in(0,1)$ we have
    $$-\Re \left(\frac{\zeta'}{\zeta}(1+\delta)\right)\leq\frac{1}{\delta}+O(1).$$
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
\uses{riemannZetaLogDerivResidue}
    From Theorem \ref{riemannZetaLogDerivResidue} we know that
    $$-\frac{\zeta'}{\zeta}(s)=\frac{1}{s-1}+O(1).$$
    Changing variables $s\mapsto 1+\delta$ and applying the triangle inequality we have that
    $$-\Re \left(\frac{\zeta'}{\zeta}(1+\delta)\right)\leq\left|
      -\frac{\zeta'}{\zeta}(1+\delta)\right|\leq\frac{1}{\delta}+O(1).$$
\end{proof}
-/



blueprint_comment /--
\begin{lemma}[ThreeFourOneTrigIdentity]\label{ThreeFourOneTrigIdentity}
    We have that
    $$0\leq 3+4\cos\theta+\cos2\theta$$
    for all $\theta\in\mathbb{R}$.
\end{lemma}
-/

blueprint_comment /--
\begin{proof}
    We know that $\cos(2\theta)=2\cos^2\theta-1$, thus
    $$3+4\cos\theta+\cos2\theta=2+4\cos\theta+2\cos^2\theta=2\,(1+\cos\theta)^2.$$
    Noting that $0\leq 1+\cos\theta$ completes the proof.
\end{proof}
-/



@[blueprint
  (title := "ZeroInequality")
  (statement := /--
    There exists a constant $0 < E<1$ such that for all $\rho=\sigma+it$ with $\zeta(\rho)=0$
    and $|t|\geq 2$, one has
    $$\sigma\leq 1-\frac{E}{\log|t|}.$$
  -/)
  (proof := /--
    From Theorem \ref{LogDerivativeDirichlet} when $\Re s>1$ we have
    $$-\frac{\zeta'}{\zeta}(s)=\sum_{1\leq n}\frac{\Lambda(n)}{n^s}.$$
    Thus,
    $$-3\,\frac{\zeta'}{\zeta}(1+\delta)
        -4\,\frac{\zeta'}{\zeta}(1+\delta+it)
        -\frac{\zeta'}{\zeta}(1+\delta+2it)
        =\sum_{1\leq n}\Lambda(n)\,n^{-(1+\delta)}\left(3+4n^{-it}+n^{-2it}\right).$$
    Now applying Euler's identity
    \begin{align*}
        -3\,\Re \left(\frac{\zeta'}{\zeta}(1+\delta)\right)&
            -4\,\Re \left(\frac{\zeta'}{\zeta}(1+\delta+it)\right)
            -\Re \left(\frac{\zeta'}{\zeta}(1+\delta+2it)\right) \\
        &\qquad\qquad\qquad=\sum_{1\leq n}\Lambda(n)\,n^{-(1+\delta)}
            \left(3+4\cos(-it\log n)+\cos(-2it\log n)\right)
    \end{align*}
    By Lemma \ref{ThreeFourOneTrigIdentity} we know that the series on the right hand side
    is bounded below by $0$, and by Lemmas \ref{ShiftTwoBound}, \ref{ShiftOneBound},
    and \ref{ShiftZeroBound} we have an upper bound on the left hand side. So,
    $$0\leq\frac{3}{\delta}+3A-\frac{4}{1+\delta-\sigma}+4B\log|t|+C\log|t|$$
    where $A$, $B$, and $C$ are the implied constants coming from Lemmas
    \ref{ShiftZeroBound}, \ref{ShiftOneBound}, and \ref{ShiftTwoBound} respectively.
    By choosing $D\geq 3A/\log 2+4B+C$ we have
    $$\frac{4}{1+\delta-\sigma}\leq\frac{3}{\delta}+D\log|t|$$
    by some manipulation. Now if we choose $\delta=(2D\log|t|)^{-1}$ then we have
    $$\frac{4}{1-\sigma+1/(2D\log|t|)}\leq7D\log|t|.$$
    So with some manipulation we have that
    $$\sigma\leq 1-\frac{1}{14D\log|t|}.$$
    This is exactly the desired result with the constant $E=(14D)^{-1}$
  -/)
  (proofUses := ["ShiftTwoBound", "LogDerivativeDirichlet", "ShiftOneBound",
    "ThreeFourOneTrigIdentity", "ShiftZeroBound"])
  (latexEnv := "theorem")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/StrongPNT/Variantbae60463f9edc49590a9e5a40880c10c9e732ac717f8a0a1f628ef4c26aae322.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `febb261e8c76e0d4aec8c8de1ca02559ac821fcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
