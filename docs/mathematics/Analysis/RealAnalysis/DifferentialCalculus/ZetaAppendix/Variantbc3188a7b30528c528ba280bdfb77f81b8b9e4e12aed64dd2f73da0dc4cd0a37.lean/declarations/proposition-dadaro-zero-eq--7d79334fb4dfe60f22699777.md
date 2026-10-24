# proposition_dadaro_zero_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeea72f1-771e-c253-87b5-e7ef5b5ddd1d",
  "kind": "lemma",
  "lexical_name": "proposition_dadaro_zero_eq",
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
  "slug": "proposition-dadaro-zero-eq--7d79334fb4dfe60f22699777",
  "source": {
    "blob": "8d4e5744caad9c4a9cac4d9b39a2102c21fd6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4412,
    "line": 4145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d79334fb4dfe60f22699777f1da2cce13c3268ad414b8bb885748351bb76a57",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeea72f1-771e-c253-87b5-e7ef5b5ddd1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4145–4412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma proposition_dadaro_zero_eq {s : ℂ} (hs1 : s ≠ 1) (hsigma : 0 = s.re) {a : ℝ} (ha : 0 < a)
    (ha' : a.IsHalfInteger) (haτ : a > |s.im| / (2 * π)) :
    let ϑ : ℝ := s.im / (2 * π * a)
    let C : ℝ :=
      if ϑ ≠ 0 then
        s.re / 2 * ((1 / (Complex.sin (π * ϑ) ^ 2 : ℂ)).re - (1 / ((π * ϑ) ^ 2 : ℂ)).re) +
          |ϑ| / (2 * π ^ 2) * ((1 / ((1 - |ϑ|) ^ 3 : ℝ)) + 2 * (riemannZeta 3).re - 1)
      else
        s.re / 6
    let c : ℂ :=
      if ϑ ≠ 0 then
        I / 2 * ((1 / Complex.sin (π * ϑ) : ℂ) - (1 / (π * ϑ : ℂ)))
      else
        0
    ∃ E : ℂ, riemannZeta s =
      ∑ n ∈ Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) -
      (a ^ (1 - s) : ℂ) / (1 - s) - c * (a ^ (-s) : ℂ) + E ∧
      ‖E‖ ≤ C / (a ^ (s.re + 1 : ℝ)) := by
  intro ϑ C c
  have h_continuous_extension :
    ContinuousAt (fun σ : ℝ => riemannZeta (σ + I * s.im)) 0 ∧
    ContinuousAt (fun σ : ℝ => ∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-(σ + I * s.im))) 0 ∧
    ContinuousAt (fun σ : ℝ => ↑a ^ (1 - (σ + I * s.im)) / (1 - (σ + I * s.im))) 0 ∧
    ContinuousAt (fun σ : ℝ => c * ↑a ^ (-(σ + I * s.im))) 0 := by
    have hs_zero : (↑(0 : ℝ) + I * ↑s.im : ℂ) = s := by
      apply Complex.ext <;> simp [hsigma.symm]
    repeat' constructor
    · rw [show (fun σ : ℝ ↦ riemannZeta (↑σ + I * ↑s.im))= riemannZeta ∘ (fun σ : ℝ ↦ ↑σ + I * ↑s.im)
        by ext σ; simp]
      apply ContinuousAt.comp (g := riemannZeta) (f := fun σ : ℝ ↦ ↑σ + I * ↑s.im)
      · exact hs_zero.symm ▸ (differentiableAt_riemannZeta hs1).continuousAt
      · fun_prop
    · apply tendsto_finsetSum
      intro i hi
      simp only [Finset.mem_Icc] at hi
      apply ContinuousAt.cpow
      · exact continuousAt_const
      · fun_prop
      · left; norm_cast
        linarith
    · apply ContinuousAt.div
      · apply ContinuousAt.cpow
        · exact continuousAt_const
        · fun_prop
        · left; norm_cast
      · fun_prop
      · exact hs_zero.symm ▸ sub_ne_zero.mpr hs1.symm
    · apply ContinuousAt.mul
      · exact continuousAt_const
      · apply ContinuousAt.cpow
        · exact continuousAt_const
        · fun_prop
        · left; norm_cast
  have h_nearby_approximation : ∀ σ ∈ Set.Ioo (0 : ℝ) 1,
    ∃ E_σ : ℂ,
      riemannZeta (σ + I * s.im) =
        ∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-(σ + I * s.im)) -
        ↑a ^ (1 - (σ + I * s.im)) / (1 - (σ + I * s.im)) -
        c * ↑a ^ (-(σ + I * s.im)) + E_σ ∧
      ‖E_σ‖ ≤ (if ϑ ≠ 0 then
          σ / 2 * ((1 / Complex.sin (π * ϑ : ℂ) ^ 2).re - (1 / (π * ϑ : ℂ) ^ 2).re) +
            |ϑ| / (2 * π ^ 2) * (1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1)
        else σ / 6) / a ^ (σ + 1) := by
    intro σ hσ
    obtain ⟨hσ_pos, hσ_lt_one⟩ := hσ
    set s_σ : ℂ := ↑σ + I * ↑s.im with hs_σ_def
    have hs_σ_ne_one : s_σ ≠ 1 := by
      rw [ne_eq, Complex.ext_iff, not_and_or]
      left
      rw [hs_σ_def]
      simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, zero_mul,
        Complex.I_im, Complex.ofReal_im, one_mul, sub_self, Complex.one_re]
      linarith
    have hs_σ_re_pos : 0 < s_σ.re := by
      rw [hs_σ_def]
      simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re,
                zero_mul, Complex.I_im, Complex.ofReal_im, one_mul, sub_self, add_zero, hσ_pos]
    have hs_σ_im_bound : a > |s_σ.im| / (2 * π) := by
      rw [hs_σ_def]
      simp only [Complex.add_im, Complex.ofReal_im, zero_add, Complex.mul_im,
                Complex.I_re, Complex.ofReal_re, mul_zero, Complex.I_im, one_mul]
      exact haτ
    obtain ⟨E_σ, hE_eq, hE_bound⟩ :=
      proposition_dadaro_zero_lt hs_σ_ne_one hs_σ_re_pos ha ha' hs_σ_im_bound
    use E_σ
    constructor
    · convert hE_eq using 2
      simp only [c, ϑ, s_σ]
      simp only [Complex.add_im, Complex.ofReal_im, zero_add, Complex.mul_im, Complex.I_re,
        Complex.ofReal_re, mul_zero, Complex.I_im, one_mul]
    · have hϑ_match : s_σ.im / (2 * π * a) = ϑ := by
        rw [hs_σ_def]
        simp only [Complex.add_im, Complex.ofReal_im, zero_add, Complex.mul_im,
                  Complex.I_re, Complex.ofReal_re, mul_zero, Complex.I_im, one_mul]
        rfl
      have hre_match : s_σ.re = σ := by
        rw [hs_σ_def]
        simp
      convert hE_bound using 2
      · simp only [← hϑ_match, ← hre_match]
      · simp only [hre_match]
  rw [show s.re + 1 = 1 by rw [← hsigma]; norm_num]
  have hs_canonical : s = I * s.im := by
    apply Complex.ext
    · simp [hsigma.symm]
    · simp
  rw [hs_canonical]
  let σ_n : ℕ → ℝ := fun n => 1 / (n + 2 : ℝ)
  have hσ_n_mem : ∀ n, σ_n n ∈ Set.Ioo (0 : ℝ) 1 := by
    intro n
    constructor
    · simp only [one_div, inv_pos, σ_n]; positivity
    · simp only [one_div, σ_n]
      rw [inv_lt_one₀]
      · linarith
      · positivity
  have hE_n : ∀ n, ∃ E_n : ℂ,
    riemannZeta (↑(σ_n n) + I * ↑s.im) =
      ∑ k ∈ Finset.Icc 1 ⌊a⌋₊, (k : ℂ) ^ (-(↑(σ_n n) + I * ↑s.im)) -
      ↑a ^ (1 - (↑(σ_n n) + I * ↑s.im)) / (1 - (↑(σ_n n) + I * ↑s.im)) -
      c * ↑a ^ (-(↑(σ_n n) + I * ↑s.im)) + E_n ∧
    ‖E_n‖ ≤ (if ϑ ≠ 0 then
        σ_n n / 2 * ((1 / Complex.sin (π * ϑ : ℂ) ^ 2).re - (1 / (π * ϑ : ℂ) ^ 2).re) +
          |ϑ| / (2 * π ^ 2) * (1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1)
      else σ_n n / 6) / a ^ (σ_n n + 1) := fun n ↦
    h_nearby_approximation (σ_n n) (hσ_n_mem n)
  choose E_n hE_n_eq hE_n_bound using hE_n
  have h_lim_σ : Tendsto σ_n atTop (𝓝 0) := by
    simp only [one_div, σ_n]
    apply tendsto_inv_atTop_zero.comp
    apply Filter.tendsto_atTop_add_const_right
    exact tendsto_natCast_atTop_atTop
  let E := riemannZeta (I * s.im) - (∑ k ∈ Finset.Icc 1 ⌊a⌋₊, (k : ℂ) ^ (-(I * s.im) : ℂ) -
             ↑a ^ (1 - (I * s.im) : ℂ) / (1 - (I * s.im) : ℂ) - c * ↑a ^ (-(I * s.im) : ℂ))
  have hE_converges : Filter.Tendsto E_n Filter.atTop (𝓝 E) := by
    have : Tendsto (fun n ↦ riemannZeta (↑(σ_n n) + I * ↑s.im) -
        (∑ k ∈ Finset.Icc 1 ⌊a⌋₊, (k : ℂ) ^ (-(↑(σ_n n) + I * ↑s.im) : ℂ) -
          ↑a ^ (1 - (↑(σ_n n) + I * ↑s.im) : ℂ) / (1 - (↑(σ_n n) + I * ↑s.im) : ℂ) -
        c * ↑a ^ (-(↑(σ_n n) + I * ↑s.im) : ℂ))) atTop (𝓝 E) := by
      have h1 : Tendsto (fun n ↦ riemannZeta (↑(σ_n n) + I * ↑s.im)) atTop
          (𝓝 (riemannZeta (I * ↑s.im))) := by
        convert h_continuous_extension.1.tendsto.comp h_lim_σ using 1; simp [zero_add]
      have h2 : Tendsto (fun n ↦ ∑ k ∈ Finset.Icc 1 ⌊a⌋₊, (k : ℂ) ^ (-(↑(σ_n n) + I * ↑s.im) : ℂ))
          atTop (𝓝 (∑ k ∈ Finset.Icc 1 ⌊a⌋₊, (k : ℂ) ^ (-(I * s.im) : ℂ))) := by
        convert h_continuous_extension.2.1.tendsto.comp h_lim_σ using 1
        simp [zero_add]
      have h3 : Tendsto (fun n ↦ ↑a ^ (1 - (↑(σ_n n) + I * ↑s.im) : ℂ) /
          (1 - (↑(σ_n n) + I * ↑s.im) : ℂ)) atTop
          (𝓝 (↑a ^ (1 - (I * s.im) : ℂ) / (1 - (I * s.im) : ℂ))) := by
        convert h_continuous_extension.2.2.1.tendsto.comp h_lim_σ using 1
        simp [zero_add]
      have h4 : Tendsto (fun n ↦ c * ↑a ^ (-(↑(σ_n n) + I * ↑s.im) : ℂ)) atTop
          (𝓝 (c * ↑a ^ (-(I * s.im) : ℂ))) := by
        convert h_continuous_extension.2.2.2.tendsto.comp h_lim_σ using 1
        simp [zero_add]
      exact Tendsto.sub h1 (Tendsto.sub (Tendsto.sub h2 h3) h4)
    exact this.congr (fun n ↦ by rw [hE_n_eq n]; ring)
  have hnormE_converges : Tendsto (fun n ↦ ‖E_n n‖) atTop (𝓝 ‖E‖) := by
    apply Filter.Tendsto.norm hE_converges
  let bound_n : ℕ → ℝ := fun n =>
    (if ϑ ≠ 0 then
        σ_n n / 2 * ((1 / Complex.sin (π * ϑ : ℂ) ^ 2).re - (1 / (π * ϑ : ℂ) ^ 2).re) +
        |ϑ| / (2 * π ^ 2) * (1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1)
      else σ_n n / 6) / a ^ (σ_n n + 1)
  have h_bound_converges : Tendsto bound_n atTop (𝓝 (C / a)) := by
    by_cases hϑ : ϑ = 0
    · simp only [hϑ, ne_eq, not_true_eq_false, ↓reduceIte, bound_n]
      have h_num : Tendsto (fun n ↦ σ_n n / 6) atTop (𝓝 0) := by
        simpa using h_lim_σ.div_const 6
      have h_den : Tendsto (fun n ↦ a ^ (σ_n n + 1)) atTop (𝓝 a) := by
        convert Tendsto.rpow tendsto_const_nhds (h_lim_σ.add tendsto_const_nhds) (Or.inl ha.ne')
        simp
      rw [show C = 0 by simp [C, hϑ, hsigma.symm, zero_div]]
      apply h_num.div h_den ha.ne'
    · simp only [ne_eq, hϑ, not_false_eq_true, ↓reduceIte, one_div, inv_re, map_pow, map_mul,
      normSq_ofReal, bound_n]
      have hC : C = |ϑ| / (2 * π ^ 2) * (1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1) := by
        simp only [ite_not, hϑ, ↓reduceIte, one_div, inv_re, map_pow, map_mul, normSq_ofReal,
          add_eq_right, mul_eq_zero, div_eq_zero_iff, OfNat.ofNat_ne_zero, or_false, C]
        rw [← hsigma]; simp
      have hnum : Tendsto (fun n ↦ σ_n n / 2 * ((1 / Complex.sin (π * ϑ : ℂ) ^ 2).re - (1 / (π * ϑ : ℂ) ^ 2).re) +
          C) atTop (𝓝 C) := by
        nth_rw 2 [← zero_add C]
        apply Tendsto.add
        · convert (h_lim_σ.div_const 2).mul_const ((1 / Complex.sin (π * ϑ : ℂ) ^ 2).re - (1 / (π * ϑ : ℂ) ^ 2).re)
          simp
        · exact tendsto_const_nhds
      have hden : Tendsto (fun n ↦ a ^ (σ_n n + 1)) atTop (𝓝 a) := by
        convert Tendsto.rpow tendsto_const_nhds (h_lim_σ.add tendsto_const_nhds) (Or.inl ha.ne')
        simp
      convert hnum.div hden (by positivity) using 1
      · ext n; dsimp; congr 1; rw [hC]
        have h_sin : (1 / Complex.sin ((π : ℂ) * (ϑ : ℂ)) ^ 2).re =
            (Complex.sin ((π : ℂ) * (ϑ : ℂ)) ^ 2).re / normSq (Complex.sin ((π : ℂ) * (ϑ : ℂ))) ^ 2 := by
          simp
        have h_th : (1 / ((π : ℂ) * (ϑ : ℂ)) ^ 2).re = (((π : ℂ) * (ϑ : ℂ)) ^ 2).re / (π * π * (ϑ * ϑ)) ^ 2 := by simp
        simp only [h_sin, h_th]; ring
  have h_norm_continuous : Tendsto (fun n => ‖E_n n‖) atTop (𝓝 ‖E‖) := hE_converges.norm
  have h_norm_bounded : ∀ n, ‖E_n n‖ ≤ bound_n n := by
    intro n
    simp_rw [bound_n]
    exact hE_n_bound n
  use E
  constructor
  · have h_lhs : Filter.Tendsto (fun n => riemannZeta (↑(σ_n n) + I * ↑s.im))
      Filter.atTop (𝓝 (riemannZeta (I * ↑s.im))) := by
      have h_lim_σ : Tendsto σ_n atTop (𝓝 0) := by
        simp only [one_div, σ_n]
        apply tendsto_inv_atTop_zero.comp
        apply Filter.tendsto_atTop_add_const_right
        exact tendsto_natCast_atTop_atTop
      have h_cont := h_continuous_extension.1.tendsto
      convert h_cont.comp h_lim_σ using 1
      · ext n; simp
    have h_rhs : Filter.Tendsto (fun n =>
        ∑ k ∈ Finset.Icc 1 ⌊a⌋₊, (k : ℂ) ^ (-(↑(σ_n n) + I * ↑s.im)) -
        ↑a ^ (1 - (↑(σ_n n) + I * ↑s.im)) / (1 - (↑(σ_n n) + I * ↑s.im)) -
        c * ↑a ^ (-(↑(σ_n n) + I * ↑s.im)))
      Filter.atTop (𝓝 (∑ k ∈ Finset.Icc 1 ⌊a⌋₊, (k : ℂ) ^ (-(I * ↑s.im)) -
        ↑a ^ (1 - I * ↑s.im) / (1 - I * ↑s.im) - c * ↑a ^ (-(I * ↑s.im)))) := by
      have h1 := h_continuous_extension.2.1.tendsto.comp h_lim_σ
      have h2 := h_continuous_extension.2.2.1.tendsto.comp h_lim_σ
      have h3 := h_continuous_extension.2.2.2.tendsto.comp h_lim_σ
      convert (h1.sub h2).sub h3 using 1
      ext n; simp
    simp [E]
  · exact le_of_tendsto_of_tendsto h_norm_continuous (by simp [h_bound_converges])
      (Filter.Eventually.of_forall h_norm_bounded)


@[blueprint
  "prop:dadaro"
  (title := "Approximation of zeta(s) by a partial sum")
  (statement := /--
Let $s = \sigma + i \tau$, $\sigma\geq 0$, $\tau\in \mathbb{R}$, with $s\ne 1$.
Let $a\in \mathbb{Z} + \frac{1}{2}$ with $a>\frac{|\tau|}{2\pi}$. Then
\begin{equation}\label{eq:abadlondie}
  \zeta(s) = \sum_{n\leq a} \frac{1}{n^s} - \frac{a^{1-s}}{1-s} + c_\vartheta a^{-s}
  + O^*\left(\frac{C_{\sigma,\vartheta}}{a^{\sigma+1}}\right),
\end{equation}
where $\vartheta = \frac{\tau}{2\pi a}$,
$c_\vartheta = \frac{i}{2} \left(\frac{1}{\sin \pi \vartheta} - \frac{1}{\pi \vartheta}\right)$
for $\vartheta\ne 0$, $c_0 =0$, and $C_{\sigma,\vartheta}$ is as in \eqref{eq:defcsigth}.
-/)
  (proof := /--
Assume first that $\sigma>0$. Let $b\in \mathbb{Z}+\frac{1}{2}$ with $b>a$, and define
$f(y) = \frac{1_{[a,b]}(y)}{y^s}$.
By Lemma~\ref{lem:abadtoabsum} and Lemma~\ref{lem:abadusepoisson},
$$\sum_{n\leq a} \frac{1}{n^s} = \zeta(s) + \frac{a^{1-s}}{1-s}
  - \lim_{N\to \infty} \sum_{n=1}^N (\widehat{f}(n) + \widehat{f}(-n))
  + O^*\left(\frac{2 |s|}{\sigma b^\sigma}\right).$$
We apply Lemma~\ref{lem:abadsumas} to estimate
$\lim_{N\to \infty} \sum_{n=1}^N (\widehat{f}(n) + \widehat{f}(-n))$. We obtain
\[\sum_{n\leq a} \frac{1}{n^s} = \zeta(s) + \frac{a^{1-s}}{1-s} -
\frac{a^{-s} g(\vartheta)}{2 i} + O^*\left(\frac{C_{\sigma,\vartheta}}{a^{\sigma+1}}\right)
+ \frac{b^{-s} g(\vartheta_-)}{2 i} + O^*\left(\frac{2 |s|}{\sigma b^\sigma}\right),
\]
where $\vartheta_- = \frac{\tau}{2\pi b}$ and $g(t)$ is as in Lemma~\ref{lem:abadsumas},
and so $-\frac{g(\vartheta)}{2 i} = c_\vartheta$.
We let $b\to \infty$ through the half-integers, and obtain \eqref{eq:abadlondie},
since $b^{-\sigma}\to 0$, $\vartheta_-\to 0$ and $g(\vartheta_-)\to g(0) = 0$
as $b\to \infty$.

Finally, the case $\sigma=0$ follows since all terms in \eqref{eq:abadlondie} extend
continuously to $\sigma=0$.
-/)
  (latexEnv := "proposition")
  (discussion := 573)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantbc3188a7b30528c528ba280bdfb77f81b8b9e4e12aed64dd2f73da0dc4cd0a37.lean#L4145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4e5744caad9c4a9cac4d9b39a2102c21fd6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
