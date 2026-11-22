/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FunctionsOfAComplexVariable.CompactOddFourierFilter

/-!
# Negative compact odd Fourier square at a nonreal spectral point

The index set may record a zero divisor with multiplicities, and need not
be invariant under negation or conjugation. The finite interpolation is
by distinct coordinate. Each actual point in the target sign-conjugation
orbit contributes its own multiplicity once. Points outside this orbit in
the fixed window contribute zero. An even convolution power keeps these
values and makes the sum outside the window absolutely smaller than the
unit contribution at the chosen point.

The local zeta argument in `WeilZetaOddCriterion` motivates the
construction. Identifying the spectral square with an arithmetic form for
a particular L-function requires the corresponding explicit formula.
-/

set_option autoImplicit false
noncomputable section
open Complex Filter MeasureTheory Set
open scoped BigOperators ComplexConjugate ContDiff Topology

namespace GRWTSK.ComplexAnalysis.CompactOddFourierFilter

variable {ι : Type*} (ordinate : ι → ℂ) (multiplicity : ι → ℕ)

/-- Inverse-square mass of the indexed spectrum, counted with multiplicity. -/
def inverseSquareMass (i : ι) : ℝ :=
  (multiplicity i : ℝ) / (1 + ‖ordinate i‖ ^ 2)

/-- Signed odd square at an indexed spectral point. -/
def oddSquareTerm (F : ℂ → ℂ) (i : ι) : ℂ :=
  (multiplicity i : ℂ) * (-(F (ordinate i) ^ 2))

/-- An inverse-square transform envelope bounds the complete restricted sum. -/
private theorem norm_zeroSquareTail_le
    (hMass : Summable (inverseSquareMass ordinate multiplicity)) (S : Set ι) {F : ℂ → ℂ} {D : ℝ}
    (hF : ∀ ρ ∈ S, ‖F (ordinate ρ)‖ ≤ D / (1 + ‖ordinate ρ‖ ^ 2)) :
    Summable (fun ρ => ‖(S.indicator (oddSquareTerm ordinate multiplicity F)) ρ‖) ∧
      ‖∑' ρ, (S.indicator (oddSquareTerm ordinate multiplicity F)) ρ‖ ≤ D ^ 2 * ∑' ρ, inverseSquareMass ordinate multiplicity ρ := by
  have hDom (ρ : ι) :
      ‖(S.indicator (oddSquareTerm ordinate multiplicity F)) ρ‖ ≤ D ^ 2 * inverseSquareMass ordinate multiplicity ρ := by
    let w := 1 + ‖ordinate ρ‖ ^ 2
    have hw₁ : 1 ≤ w := le_add_of_nonneg_right (sq_nonneg _)
    have hw : 0 < w := zero_lt_one.trans_le hw₁
    have hm : 0 ≤ (multiplicity ρ : ℝ) := Nat.cast_nonneg _
    by_cases hρ : ρ ∈ S
    · have hsq : ‖F (ordinate ρ)‖ ^ 2 ≤ (D / w) ^ 2 :=
        pow_le_pow_left₀ (norm_nonneg _) (hF ρ hρ) 2
      have hw₂ : w ≤ w ^ 2 := by
        nlinarith only [mul_nonneg (sub_nonneg.mpr hw₁) hw.le]
      have hFrac : (D / w) ^ 2 ≤ D ^ 2 / w := by
        rw [div_pow]
        exact div_le_div_of_nonneg_left (sq_nonneg _) hw hw₂
      calc
        _ = (multiplicity ρ : ℝ) * ‖F (ordinate ρ)‖ ^ 2 := by
          simp only [oddSquareTerm, Set.indicator_of_mem hρ, norm_mul, norm_neg,
            norm_pow, Complex.norm_natCast]
        _ ≤ (multiplicity ρ : ℝ) * (D ^ 2 / w) :=
          mul_le_mul_of_nonneg_left (hsq.trans hFrac) hm
        _ = _ := by unfold inverseSquareMass; dsimp [w]; ring
    · rw [Set.indicator_of_notMem hρ, norm_zero]
      exact mul_nonneg (sq_nonneg _) (div_nonneg hm hw.le)
  have hMaj := hMass.mul_left (D ^ 2)
  refine ⟨Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hDom hMaj, ?_⟩
  rw [← tsum_mul_left]
  exact tsum_of_norm_bounded hMaj.hasSum hDom

private def ordinateOrbit (a : ℂ) : Finset ℂ := by
  classical exact {a, -a, conj a, -conj a}

private theorem oddTransform_sq_of_mem_orbit {f : ℝ → ℝ} (hOdd : Function.Odd f)
    {a z : ℂ} (ha : angularFourier (realTest f) a = 1) (hz : z ∈ ordinateOrbit a) :
    angularFourier (realTest f) z ^ 2 = 1 := by
  classical
  have hNegConj : angularFourier (realTest f) (-conj a) = 1 := by
    rw [← real_angularFourier_conj_neg, ha, map_one]
  have hConj : angularFourier (realTest f) (conj a) = -1 := by
    rw [← neg_neg (conj a), realOdd_angularFourier_neg hOdd, hNegConj]
  simp only [ordinateOrbit, Finset.mem_insert, Finset.mem_singleton] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · simp [ha]
  · simp [realOdd_angularFourier_neg hOdd, ha]
  · simp [hConj]
  · simp [hNegConj]

private theorem exists_small_tail (D mass : ℝ) :
    ∃ n : ℕ, (D * (1 / 2 : ℝ) ^ (n + 1)) ^ 2 * mass < 1 / 2 := by
  have hPower := tendsto_pow_atTop_nhds_zero_of_abs_lt_one (r := (1 / 2 : ℝ)) (by norm_num)
  have hLim : Tendsto (fun n : ℕ => (D * (1 / 2 : ℝ) * (1 / 2 : ℝ) ^ n) ^ 2 * mass)
      atTop (𝓝 0) := by
    simpa using (((tendsto_const_nhds (x := D * (1 / 2 : ℝ))).mul hPower).pow 2).mul
      (tendsto_const_nhds (x := mass))
  obtain ⟨n, hn⟩ := (hLim.eventually (eventually_lt_nhds (by norm_num : (0 : ℝ) < 1 / 2))).exists
  refine ⟨n, ?_⟩
  rw [show (D * (1 / 2 : ℝ) ^ (n + 1)) = D * (1 / 2 : ℝ) * (1 / 2 : ℝ) ^ n by
    rw [pow_succ]; ring]
  exact hn

private theorem negative_of_finite_window (hMass : Summable (inverseSquareMass ordinate multiplicity))
    {f : ℝ → ℝ} (hfo : Function.Odd f) (s : Finset ι)
    {ρ₀ : ι} (hρ₀ : ρ₀ ∈ s) (hm₀ : 0 < multiplicity ρ₀) (hAt : angularFourier (realTest f) (ordinate ρ₀) = 1)
    (hOff : ∀ ρ ∈ s, ordinate ρ ∉ ordinateOrbit (ordinate ρ₀) →
      angularFourier (realTest f) (ordinate ρ) = 0) {D : ℝ}
    (hOuter : ∀ ρ ∉ s, ‖angularFourier (realTest f) (ordinate ρ)‖ ≤ D / (1 + ‖ordinate ρ‖ ^ 2))
    (hSmall : D ^ 2 * ∑' ρ, inverseSquareMass ordinate multiplicity ρ < 1 / 2) :
    ∃ v : ℂ, HasSum (oddSquareTerm ordinate multiplicity (angularFourier (realTest f))) v ∧
      v.re < 0 := by
  classical
  let F := angularFourier (realTest f)
  let term := oddSquareTerm ordinate multiplicity F
  let S := (s : Set ι)ᶜ
  have hTail := norm_zeroSquareTail_le ordinate multiplicity hMass S (F := F) (D := D) (by
    intro ρ hρ; exact hOuter ρ hρ)
  have hTailSum : HasSum (S.indicator term) (∑' ρ, S.indicator term ρ) :=
    hTail.1.of_norm.hasSum
  have hInside : HasSum ((s : Set ι).indicator term) (∑ ρ ∈ s, term ρ) := by
    have hs : HasSum ((s : Set ι).indicator term)
        (∑ ρ ∈ s, (s : Set ι).indicator term ρ) :=
      hasSum_sum_of_ne_finset_zero (fun ρ hρ => Set.indicator_of_notMem hρ _)
    convert hs using 1
    exact Finset.sum_congr rfl (fun ρ hρ => (Set.indicator_of_mem hρ _).symm)
  have hAll : HasSum term ((∑ ρ ∈ s, term ρ) + ∑' ρ, S.indicator term ρ) := by
    convert hInside.add hTailSum using 1
    funext ρ
    by_cases hρ : ρ ∈ (s : Set ι)
    · have hS : ρ ∉ S := by simpa only [S, Set.mem_compl_iff, not_not] using hρ
      rw [Set.indicator_of_mem hρ, Set.indicator_of_notMem hS, add_zero]
    · have hS : ρ ∈ S := hρ
      rw [Set.indicator_of_notMem hρ, Set.indicator_of_mem hS, zero_add]
  have hTermLe (ρ : ι) (hρ : ρ ∈ s) :
      (term ρ).re ≤ if ρ = ρ₀ then (-1 : ℝ) else 0 := by
    by_cases hEq : ρ = ρ₀
    · subst ρ
      have hm : (1 : ℝ) ≤ (multiplicity ρ₀ : ℝ) := by
        exact_mod_cast hm₀
      simp only [term, oddSquareTerm, F, hAt, one_pow, mul_neg, mul_one,
        Complex.neg_re, Complex.natCast_re]
      exact neg_le_neg hm
    · rw [ite_eq_right hEq]
      by_cases hOrbit : ordinate ρ ∈ ordinateOrbit (ordinate ρ₀)
      · have hSq := oddTransform_sq_of_mem_orbit hfo hAt hOrbit
        simp [term, oddSquareTerm, F, hSq]
      · simp [term, oddSquareTerm, F, hOff ρ hρ hOrbit]
  have hInsideLe : (∑ ρ ∈ s, term ρ).re ≤ -1 := by
    rw [Complex.re_sum]
    exact (Finset.sum_le_sum hTermLe).trans (by rw [Finset.sum_ite_eq', ite_eq_left hρ₀])
  have hTailLe : (∑' ρ, S.indicator term ρ).re < 1 / 2 :=
    (Complex.re_le_norm _).trans_lt (hTail.2.trans_lt hSmall)
  refine ⟨_, hAll, ?_⟩
  rw [Complex.add_re]
  linarith

/-- A nonreal spectral point of positive multiplicity forces a negative odd square
for some real compact smooth test, with an actual convergent sum. -/
theorem exists_negative_odd_square
    (strip : ∀ ρ, |(ordinate ρ).im| ≤ 1)
    (finiteWindow : ∀ R : ℝ, {ρ : ι | |(ordinate ρ).re| ≤ R}.Finite)
    (hMass : Summable (inverseSquareMass ordinate multiplicity))
    (ρ₀ : ι) (hm₀ : 0 < multiplicity ρ₀) (hOffRealAxis : (ordinate ρ₀).im ≠ 0) :
    ∃ f : ℝ → ℝ, ContDiff ℝ ∞ f ∧ HasCompactSupport f ∧ Function.Odd f ∧
      ∃ v : ℂ, HasSum (oddSquareTerm ordinate multiplicity (angularFourier (realTest f))) v ∧
        v.re < 0 := by
  classical
  let a := ordinate ρ₀
  have haIm : a.im ≠ 0 := hOffRealAxis
  obtain ⟨b, hbd, hbc, hbe, hbAt⟩ := exists_even_real_angularFourier_eq_one a haIm
  obtain ⟨D, hD, hbDecay⟩ := exists_angularFourier_decay hbd hbc
  let R := max (|a.re|) D + 1
  have hRa : |a.re| ≤ R := by linarith [le_max_left |a.re| D]
  have hRD : D ≤ R := by linarith [le_max_right |a.re| D]
  have hR : 0 ≤ R := (abs_nonneg _).trans hRa
  let s := (finiteWindow R).toFinset
  have hs (ρ : ι) : ρ ∈ s ↔ |(ordinate ρ).re| ≤ R := Set.Finite.mem_toFinset _
  have hρ₀ : ρ₀ ∈ s := (hs ρ₀).mpr hRa
  have hbSmall (ρ : ι) (hρ : ρ ∉ s) :
      ‖angularFourier (realTest b) (ordinate ρ)‖ ≤ 1 / 2 := by
    have hre : R < |(ordinate ρ).re| := lt_of_not_ge (fun h => hρ ((hs ρ).mpr h))
    have hnorm := (Complex.abs_re_le_norm (ordinate ρ)).trans_lt' hre
    refine (hbDecay _ (strip ρ)).trans ((div_le_iff₀ (by positivity)).mpr ?_)
    nlinarith only [hRD.trans hnorm.le, sq_nonneg (‖ordinate ρ‖ - 1)]
  let W := (s.image ordinate).filter fun z => z ∉ ordinateOrbit a
  let d := Real.pi / (2 * (1 + R))
  have hd : 0 < d := by unfold d; positivity
  have hShort (z : ℂ) (hz : |z.re| ≤ R) : |(d * z).re| < Real.pi := by
    simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero,
      abs_mul, abs_of_pos hd]
    unfold d
    rw [div_mul_eq_mul_div]
    apply (div_lt_iff₀ (by positivity)).mpr
    nlinarith only [mul_le_mul_of_nonneg_left hz Real.pi_pos.le,
      mul_nonneg Real.pi_pos.le hR, Real.pi_pos]
  have hW : ∀ w ∈ W, |(d * w).re| < Real.pi ∧
      w ≠ a ∧ w ≠ -a ∧ w ≠ conj a ∧ w ≠ -conj a := by
    intro w hw
    obtain ⟨hImage, hNotOrbit⟩ := Finset.mem_filter.mp hw
    obtain ⟨ρ, hρ, rfl⟩ := Finset.mem_image.mp hImage
    have hNot : ordinate ρ ≠ a ∧ ordinate ρ ≠ -a ∧ ordinate ρ ≠ conj a ∧
        ordinate ρ ≠ -conj a := by
      simpa only [ordinateOrbit, Finset.mem_insert, Finset.mem_singleton, not_or] using hNotOrbit
    exact ⟨hShort _ ((hs ρ).mp hρ), hNot⟩
  obtain ⟨g, hgd, hgc, hgo, hgAt, hgOff⟩ :=
    exists_odd_witness_on_finite_window hbd hbc hbe hd.ne' haIm hbAt (hShort a hRa) W hW
  obtain ⟨A, hA, hgDecay⟩ := exists_angularFourier_decay hgd hgc
  obtain ⟨n, hn⟩ := exists_small_tail A (∑' ρ, inverseSquareMass ordinate multiplicity ρ)
  let f := realConvolutionWithPower g b n
  obtain ⟨hfd, hfc, hfo, hfTransform⟩ := realConvolutionWithPower_spec hgd hgc hgo hbd hbc hbe n
  have hf (z : ℂ) : angularFourier (realTest f) z =
      angularFourier (realTest g) z * angularFourier (realTest b) z ^ (n + 1) := hfTransform z
  refine ⟨f, hfd, hfc, hfo, negative_of_finite_window ordinate multiplicity hMass hfo s hρ₀ hm₀ ?_ ?_ ?_ hn⟩
  · rw [hf, hgAt, hbAt, one_pow, mul_one]
  · intro ρ hρ hNot
    rw [hf, hgOff _ (Finset.mem_filter.mpr ⟨Finset.mem_image_of_mem ordinate hρ, hNot⟩), zero_mul]
  · intro ρ hρ
    rw [hf, norm_mul, norm_pow]
    have hBound := mul_le_mul (hgDecay _ (strip ρ))
      (pow_le_pow_left₀ (norm_nonneg _) (hbSmall ρ hρ) (n + 1)) (by positivity) (by positivity)
    convert hBound using 1
    ring

end GRWTSK.ComplexAnalysis.CompactOddFourierFilter
