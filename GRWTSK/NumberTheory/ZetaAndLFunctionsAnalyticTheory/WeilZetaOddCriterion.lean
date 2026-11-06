/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import WeilZetaOddTransform

/-!
# Forward Weil criterion for the literal real odd zeta form

Yoshida's odd-test criterion is classical. See H. Yoshida, *On Hermitian
forms attached to zeta functions* (1992), Proposition 1, as discussed in
M. Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3,
Section 1.1, which states the criterion for nonzero odd smooth compactly
supported tests. The criterion below uses real compact `C²` tests and the
actual Zeta23 zero carrier and multiplicities from the pinned formula.

An off-line zero has a nonreal ordinate. Normalize an even bump at that
ordinate and choose a finite real-part window outside which the transform
is bounded by one half. Construct an odd compact witness that is one at
that ordinate and zero on the remaining inner zeros outside its
sign-conjugation orbit. The odd square summand on the selected orbit is
negative with its original multiplicity. Convolution with even powers
preserves the finite filter, and the inverse-square envelope bounds the
entire outer sum by a decaying geometric factor times its summable mass.
Thus at least one actual compact test has negative zero sum. This argument
also covers the purely imaginary ordinate and the collapsed two-point
orbit without counting any zero twice.

The positivity premise, or a proof of all literal stages, is still
required to conclude Mathlib RH. A separate source review checked the
carrier, odd square sign, collapsed orbit and uniform tail estimate.
-/

set_option autoImplicit false
noncomputable section
open Complex Filter MeasureTheory Set Zeta23
open scoped BigOperators ComplexConjugate Topology

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RealWeilSource

/-- The actual multiplicity weighted by the inverse square of the ordinate. -/
def zeroInverseSqWeight (ρ : zetaZeroConfig.carrier) : ℝ :=
  (zetaZeroConfig.mult (ρ : ℂ) : ℝ) / (1 + ‖gammaOf (ρ : ℂ)‖ ^ 2)

theorem zeroInverseSqWeight_summable : Summable zeroInverseSqWeight := by
  change Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
    (zeroMult (ρ : ℂ) : ℝ) / (1 + ‖gammaOf (ρ : ℂ)‖ ^ 2))
  simpa only [Complex.normSq_eq_norm_sq] using WeilEF.zero_sum_inv_sq zetaSeam

/-- The odd square summand restricted to a tail of the actual zero carrier. -/
def zeroSquareTailTerm (S : Set zetaZeroConfig.carrier) (F : ℂ → ℂ) :
    zetaZeroConfig.carrier → ℂ :=
  S.indicator (fun ρ => (zetaZeroConfig.mult (ρ : ℂ) : ℂ) * (-(F (gammaOf (ρ : ℂ)) ^ 2)))

/-- The tail is absolutely summable and its norm is bounded by the square of
the transform envelope times the full inverse-square zero mass. -/
theorem norm_zeroSquareTail_le (S : Set zetaZeroConfig.carrier) {F : ℂ → ℂ} {D : ℝ}
    (hF : ∀ ρ ∈ S, ‖F (gammaOf (ρ : ℂ))‖ ≤ D / (1 + ‖gammaOf (ρ : ℂ)‖ ^ 2)) :
    Summable (fun ρ => ‖zeroSquareTailTerm S F ρ‖) ∧
      ‖∑' ρ, zeroSquareTailTerm S F ρ‖ ≤ D ^ 2 * ∑' ρ, zeroInverseSqWeight ρ := by
  have hDom (ρ : zetaZeroConfig.carrier) :
      ‖zeroSquareTailTerm S F ρ‖ ≤ D ^ 2 * zeroInverseSqWeight ρ := by
    let w := 1 + ‖gammaOf (ρ : ℂ)‖ ^ 2
    have hw₁ : 1 ≤ w := le_add_of_nonneg_right (sq_nonneg _)
    have hw : 0 < w := zero_lt_one.trans_le hw₁
    have hm : 0 ≤ (zetaZeroConfig.mult (ρ : ℂ) : ℝ) := Nat.cast_nonneg _
    by_cases hρ : ρ ∈ S
    · have hsq : ‖F (gammaOf (ρ : ℂ))‖ ^ 2 ≤ (D / w) ^ 2 :=
        pow_le_pow_left₀ (norm_nonneg _) (hF ρ hρ) 2
      have hw₂ : w ≤ w ^ 2 := by
        nlinarith only [mul_nonneg (sub_nonneg.mpr hw₁) hw.le]
      have hFrac : (D / w) ^ 2 ≤ D ^ 2 / w := by
        rw [div_pow]
        exact div_le_div_of_nonneg_left (sq_nonneg _) hw hw₂
      calc
        _ = (zetaZeroConfig.mult (ρ : ℂ) : ℝ) * ‖F (gammaOf (ρ : ℂ))‖ ^ 2 := by
          simp only [zeroSquareTailTerm, Set.indicator_of_mem hρ, norm_mul, norm_neg,
            norm_pow, Complex.norm_natCast]
        _ ≤ (zetaZeroConfig.mult (ρ : ℂ) : ℝ) * (D ^ 2 / w) :=
          mul_le_mul_of_nonneg_left (hsq.trans hFrac) hm
        _ = _ := by unfold zeroInverseSqWeight; dsimp [w]; ring
    · rw [zeroSquareTailTerm, Set.indicator_of_notMem hρ, norm_zero]
      exact mul_nonneg (sq_nonneg _) (div_nonneg hm hw.le)
  have hMaj := zeroInverseSqWeight_summable.mul_left (D ^ 2)
  refine ⟨Summable.of_nonneg_of_le (fun _ => norm_nonneg _) hDom hMaj, ?_⟩
  rw [← tsum_mul_left]
  exact tsum_of_norm_bounded hMaj.hasSum hDom

private abbrev ZetaZero := zetaZeroConfig.carrier
private abbrev ordinate (ρ : ZetaZero) := gammaOf (ρ : ℂ)

private def ordinateOrbit (a : ℂ) : Finset ℂ := by
  classical exact {a, -a, conj a, -conj a}

private theorem oddTransform_sq_of_mem_orbit {f : ℝ → ℝ} (hOdd : Function.Odd f)
    {a z : ℂ} (ha : paperFT (realTest f) a = 1) (hz : z ∈ ordinateOrbit a) :
    paperFT (realTest f) z ^ 2 = 1 := by
  classical
  have hNegConj : paperFT (realTest f) (-conj a) = 1 := by
    rw [← real_paperFT_conj_neg, ha, map_one]
  have hConj : paperFT (realTest f) (conj a) = -1 := by
    rw [← neg_neg (conj a), realOdd_paperFT_neg hOdd, hNegConj]
  simp only [ordinateOrbit, Finset.mem_insert, Finset.mem_singleton] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · simp [ha]
  · simp [realOdd_paperFT_neg hOdd, ha]
  · simp [hConj]
  · simp [hNegConj]

private theorem finite_ordinateWindow (R : ℝ) :
    {ρ : ZetaZero | |(ordinate ρ).re| ≤ R}.Finite := by
  refine ((zetaZeroConfig.finite_window (-R - 1) R).preimage
    Subtype.val_injective.injOn).subset ?_
  intro ρ hρ
  change |(ordinate ρ).re| ≤ R at hρ
  have hRe := abs_le.mp hρ
  rw [WeilEF.gammaOf_re] at hRe
  exact ⟨ρ.property, by linarith [hRe.1], hRe.2⟩

private theorem ordinate_strip (ρ : ZetaZero) : |(ordinate ρ).im| ≤ 1 :=
  (WeilEF.abs_gammaOf_im_le (zetaZeroConfig.strip ρ ρ.property)).trans (by norm_num)

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

private theorem negative_of_finite_window {f : ℝ → ℝ} (hfd : ContDiff ℝ 2 f)
    (hfc : HasCompactSupport f) (hfo : Function.Odd f) (s : Finset ZetaZero)
    {ρ₀ : ZetaZero} (hρ₀ : ρ₀ ∈ s) (hAt : paperFT (realTest f) (ordinate ρ₀) = 1)
    (hOff : ∀ ρ ∈ s, ordinate ρ ∉ ordinateOrbit (ordinate ρ₀) →
      paperFT (realTest f) (ordinate ρ) = 0) {D : ℝ}
    (hOuter : ∀ ρ ∉ s, ‖paperFT (realTest f) (ordinate ρ)‖ ≤ D / (1 + ‖ordinate ρ‖ ^ 2))
    (hSmall : D ^ 2 * ∑' ρ, zeroInverseSqWeight ρ < 1 / 2) :
    (∑' ρ : ZetaZero, (zetaZeroConfig.mult ρ : ℂ) * paperFT (testKernel f) (ordinate ρ)).re < 0 := by
  classical
  let F := paperFT (realTest f)
  let term : ZetaZero → ℂ := fun ρ => (zetaZeroConfig.mult ρ : ℂ) * (-(F (ordinate ρ) ^ 2))
  have hTerm : (fun ρ : ZetaZero =>
      (zetaZeroConfig.mult ρ : ℂ) * paperFT (testKernel f) (ordinate ρ)) = term := by
    funext ρ
    rw [paperFT_testKernel_of_real_odd hfd.continuous hfc hfo]
  let S := (s : Set ZetaZero)ᶜ
  have hTail := norm_zeroSquareTail_le S (F := F) (D := D) (by
    intro ρ hρ; exact hOuter ρ hρ)
  have hTailSum : HasSum (S.indicator term) (∑' ρ, S.indicator term ρ) :=
    hTail.1.of_norm.hasSum
  have hInside : HasSum ((s : Set ZetaZero).indicator term) (∑ ρ ∈ s, term ρ) := by
    have hs : HasSum ((s : Set ZetaZero).indicator term)
        (∑ ρ ∈ s, (s : Set ZetaZero).indicator term ρ) :=
      hasSum_sum_of_ne_finset_zero (fun ρ hρ => Set.indicator_of_notMem hρ _)
    convert hs using 1
    exact Finset.sum_congr rfl (fun ρ hρ => (Set.indicator_of_mem hρ _).symm)
  have hAll : HasSum term ((∑ ρ ∈ s, term ρ) + ∑' ρ, S.indicator term ρ) := by
    convert hInside.add hTailSum using 1
    funext ρ
    by_cases hρ : ρ ∈ (s : Set ZetaZero)
    · have hS : ρ ∉ S := by simpa only [S, Set.mem_compl_iff, not_not] using hρ
      rw [Set.indicator_of_mem hρ, Set.indicator_of_notMem hS, add_zero]
    · have hS : ρ ∈ S := hρ
      rw [Set.indicator_of_notMem hρ, Set.indicator_of_mem hS, zero_add]
  have hTermLe (ρ : ZetaZero) (hρ : ρ ∈ s) :
      (term ρ).re ≤ if ρ = ρ₀ then (-1 : ℝ) else 0 := by
    by_cases hEq : ρ = ρ₀
    · subst ρ
      have hm : (1 : ℝ) ≤ (zetaZeroConfig.mult ρ₀ : ℝ) := by
        exact_mod_cast zetaZeroConfig.one_le_mult ρ₀ ρ₀.property
      simp only [term, F, hAt, one_pow, mul_neg, mul_one,
        Complex.neg_re, Complex.natCast_re]
      exact neg_le_neg hm
    · rw [ite_eq_right hEq]
      by_cases hOrbit : ordinate ρ ∈ ordinateOrbit (ordinate ρ₀)
      · have hSq := oddTransform_sq_of_mem_orbit hfo hAt hOrbit
        simp [term, F, hSq]
      · simp [term, F, hOff ρ hρ hOrbit]
  have hInsideLe : (∑ ρ ∈ s, term ρ).re ≤ -1 := by
    rw [Complex.re_sum]
    exact (Finset.sum_le_sum hTermLe).trans (by rw [Finset.sum_ite_eq', ite_eq_left hρ₀])
  have hTailLe : (∑' ρ, S.indicator term ρ).re < 1 / 2 :=
    (Complex.re_le_norm _).trans_lt (hTail.2.trans_lt hSmall)
  rw [hTerm, hAll.tsum_eq, Complex.add_re]
  linarith

/-- Any off-line zero of the actual zeta carrier supplies a compact smooth
real odd test with strictly negative zero sum. -/
theorem exists_negative_real_odd_zeta_zeroSum (ρ₀ : zetaZeroConfig.carrier)
    (hOffLine : (ρ₀ : ℂ).re ≠ 1 / 2) :
    ∃ f : ℝ → ℝ, ContDiff ℝ 2 f ∧ HasCompactSupport f ∧ Function.Odd f ∧
      (∑' ρ : zetaZeroConfig.carrier,
        (zetaZeroConfig.mult ρ : ℂ) * paperFT (testKernel f) (gammaOf ρ)).re < 0 := by
  classical
  let a := ordinate ρ₀
  have haIm : a.im ≠ 0 := by
    change (gammaOf (ρ₀ : ℂ)).im ≠ 0
    rw [WeilEF.gammaOf_im]
    intro h
    exact hOffLine (sub_eq_zero.mp h).symm
  obtain ⟨b, hbd, hbc, hbe, hbAt⟩ := exists_even_real_paperFT_eq_one a haIm
  obtain ⟨D, hD, hbDecay⟩ := exists_paperFT_decay hbd hbc
  let R := max (|a.re|) D + 1
  have hRa : |a.re| ≤ R := by linarith [le_max_left |a.re| D]
  have hRD : D ≤ R := by linarith [le_max_right |a.re| D]
  have hR : 0 ≤ R := (abs_nonneg _).trans hRa
  let s := (finite_ordinateWindow R).toFinset
  have hs (ρ : ZetaZero) : ρ ∈ s ↔ |(ordinate ρ).re| ≤ R := Set.Finite.mem_toFinset _
  have hρ₀ : ρ₀ ∈ s := (hs ρ₀).mpr hRa
  have hbSmall (ρ : ZetaZero) (hρ : ρ ∉ s) :
      ‖paperFT (realTest b) (ordinate ρ)‖ ≤ 1 / 2 := by
    have hre : R < |(ordinate ρ).re| := lt_of_not_ge (fun h => hρ ((hs ρ).mpr h))
    have hnorm := (Complex.abs_re_le_norm (ordinate ρ)).trans_lt' hre
    refine (hbDecay _ (ordinate_strip ρ)).trans ((div_le_iff₀ (by positivity)).mpr ?_)
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
  obtain ⟨A, hA, hgDecay⟩ := exists_paperFT_decay hgd hgc
  obtain ⟨n, hn⟩ := exists_small_tail A (∑' ρ, zeroInverseSqWeight ρ)
  let f := realConvolutionWithPower g b n
  obtain ⟨hfd, hfc, hfo, hfTransform⟩ := realConvolutionWithPower_spec hgd hgc hgo hbd hbc hbe n
  have hf (z : ℂ) : paperFT (realTest f) z =
      paperFT (realTest g) z * paperFT (realTest b) z ^ (n + 1) := hfTransform z
  refine ⟨f, hfd, hfc, hfo, negative_of_finite_window hfd hfc hfo s hρ₀ ?_ ?_ ?_ hn⟩
  · rw [hf, hgAt, hbAt, one_pow, mul_one]
  · intro ρ hρ hNot
    rw [hf, hgOff _ (Finset.mem_filter.mpr ⟨Finset.mem_image_of_mem ordinate hρ, hNot⟩), zero_mul]
  · intro ρ hρ
    rw [hf, norm_mul, norm_pow]
    have hBound := mul_le_mul (hgDecay _ (ordinate_strip ρ))
      (pow_le_pow_left₀ (norm_nonneg _) (hbSmall ρ hρ) (n + 1)) (by positivity) (by positivity)
    convert hBound using 1
    ring

/-- The forward real odd-test criterion on the actual zeta zero sum. -/
theorem riemannHypothesis_of_real_odd_zeta_zeroSum_nonneg
    (hPositive : ∀ {f : ℝ → ℝ}, ContDiff ℝ 2 f → HasCompactSupport f → Function.Odd f →
      0 ≤ (∑' ρ : zetaZeroConfig.carrier,
        (zetaZeroConfig.mult ρ : ℂ) * paperFT (testKernel f) (gammaOf ρ)).re) :
    _root_.RiemannHypothesis := by
  apply riemannHypothesis_iff_zetaZeroConfig_onLine.mpr
  intro ρ
  by_contra hOff
  obtain ⟨f, hfd, hfc, hfo, hNeg⟩ := exists_negative_real_odd_zeta_zeroSum ρ hOff
  exact (not_lt_of_ge (hPositive hfd hfc hfo)) hNeg

/-- A proof of every literal dyadic stage implies Mathlib RH. -/
theorem riemannHypothesis_of_literal_odd_stageLower
    (hStages : ∀ j : ℕ, OddLiteralCofinal.StageLower j) : _root_.RiemannHypothesis :=
  riemannHypothesis_of_real_odd_zeta_zeroSum_nonneg (zetaZeroSum_nonneg_of_stageLower hStages)

/-- The exact arithmetic form is nonnegative on all compact real odd tests
if and only if Mathlib's Riemann hypothesis holds. -/
theorem riemannHypothesis_iff_literal_odd_nonneg : _root_.RiemannHypothesis ↔
    ∀ {T : ℝ} {f : ℝ → ℝ}, 0 < T → ContDiff ℝ 2 f → HasCompactSupport f → Function.Odd f →
      (∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) →
      0 ≤ OddLiteralWindow.shiftedOddWeilEnergy T 0 f := by
  constructor
  · intro hRH T f hT hfd hfc hfo hs
    exact literalOdd_nonneg_of_riemannHypothesis hRH hfd hfc hfo hs
  · intro hPositive
    apply riemannHypothesis_of_real_odd_zeta_zeroSum_nonneg
    intro f hfd hfc hfo
    obtain ⟨T, hT, hSupport⟩ := hfc.isCompact.isBounded.subset_closedBall_lt 0 (0 : ℝ)
    have hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0 :=
      Filter.Eventually.of_forall fun t ht => by
        by_contra hne
        have htSupport := hSupport (subset_tsupport f hne)
        exact ht (by simpa only [Real.closedBall_eq_Icc, zero_sub, zero_add] using htSupport)
    rw [(literalOdd_zeta_zeroSum hfd hfc hfo hs).2, Complex.ofReal_re]
    exact hPositive hT hfd hfc hfo hs

end GRWTSK.NumberTheory.WeilQuadraticForm.RealWeilSource
