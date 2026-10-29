import FormalResearch.RiemannHypothesis.XiSectionObstruction

/-!
# Raw xi Taylor sections cannot have shrinking spectral strips

A Gaussian-weight estimate on the literal theta source bounds `n! * a_n`.
At arbitrarily large ranks the adjacent coefficient ratio is therefore large.
The exact root sums, with multiplicities, and a strip quadratic inequality
force nonreal section zeros to remain a definite distance from the real axis
at arbitrarily large ranks. This refutes the raw-section candidate for a
vanishing normalized metric-adjoint defect, not the Riemann hypothesis.
-/

namespace FormalResearch.RiemannHypothesis.XiSectionObstruction

open XiToeplitz ThetaPositiveLift XiReconstruction Polynomial
open Filter MeasureTheory Set
open scoped Topology

noncomputable section


/-- An actual-source Gaussian weight is absorbed with an explicit exponential majorant. -/
theorem thetaPhi_gaussian_weight_le {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * Real.exp (4 * t ^ 2) ≤ thetaPhiDecayConstant * Real.exp (-t) := by
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hpi := mul_le_mul_of_nonneg_right Real.pi_gt_three.le (Real.exp_pos (4 * t)).le
  have hdebt : 10 * t + 4 * t ^ 2 ≤ (Real.pi / 2) * Real.exp (4 * t) := by
    nlinarith [sq_nonneg (4 * t - 1)]
  calc
    _ ≤ (thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) * Real.exp (4 * t ^ 2) :=
      mul_le_mul_of_nonneg_right (thetaPhi_le_superexp ht) (Real.exp_pos _).le
    _ = thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t) + 4 * t ^ 2) := by
      rw [Real.exp_add]; ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by linarith))
      thetaPhiDecayConstant_positive.le

/-- The source coefficients satisfy a uniform factorial bound with the existing explicit theta
constant. -/
theorem coefficient_factorial_bound (n : ℕ) :
    coefficient n * (n.factorial : ℝ) ≤ 8 * thetaPhiDecayConstant := by
  have hfac : (n.factorial : ℝ) ^ 2 ≤ ((2 * n).factorial : ℝ) := by
    exact_mod_cast (show n.factorial ^ 2 ≤ (2 * n).factorial by
      rw [pow_two, two_mul]
      exact Nat.le_of_dvd (Nat.factorial_pos _)
        (Nat.factorial_mul_factorial_dvd_factorial_add n n))
  have hfpos : (0 : ℝ) < n.factorial := by positivity
  have hi : thetaMoment n ≤ (n.factorial : ℝ) * thetaPhiDecayConstant := by
    have hbound : ∀ᵐ t ∂volume.restrict (Ioi (0 : ℝ)),
        thetaPhi t * (2 * t) ^ (2 * n) ≤
          (n.factorial : ℝ) * (thetaPhiDecayConstant * Real.exp (-t)) := by
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have ht0 : 0 ≤ t := ht.le
      have hp := Real.pow_div_factorial_le_exp (4 * t ^ 2) (by positivity) n
      have hp' : (2 * t) ^ (2 * n) ≤
          (n.factorial : ℝ) * Real.exp (4 * t ^ 2) := by
        have := (div_le_iff₀ hfpos).mp hp
        rw [show (2 * t) ^ (2 * n) = (4 * t ^ 2) ^ n by
          rw [pow_mul]; congr 1; ring]
        nlinarith
      calc
        _ ≤ thetaPhi t * ((n.factorial : ℝ) * Real.exp (4 * t ^ 2)) :=
          mul_le_mul_of_nonneg_left hp' (thetaPhi_positive t ht0).le
        _ = (n.factorial : ℝ) * (thetaPhi t * Real.exp (4 * t ^ 2)) := by ring
        _ ≤ _ := mul_le_mul_of_nonneg_left (thetaPhi_gaussian_weight_le ht0) hfpos.le
    have h := integral_mono_ae (thetaMoment_integrable n)
      (((integrableOn_exp_neg_Ioi 0).const_mul thetaPhiDecayConstant).const_mul
        (n.factorial : ℝ)) hbound
    simpa only [thetaMoment, integral_const_mul, integral_exp_neg_Ioi_zero, mul_one] using h
  have hcpos := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n
  have hc := coefficient_mul_factorial n
  have hh := mul_le_mul_of_nonneg_left hfac hcpos.le
  have htotal : coefficient n * (n.factorial : ℝ) ^ 2 ≤
      8 * ((n.factorial : ℝ) * thetaPhiDecayConstant) := by
    calc
      _ ≤ coefficient n * ((2 * n).factorial : ℝ) := hh
      _ = 8 * thetaMoment n := hc
      _ ≤ _ := mul_le_mul_of_nonneg_left hi (by norm_num)
  apply (mul_le_mul_iff_left₀ hfpos).mp
  nlinarith

/-- At arbitrarily large ranks, factorial-normalized coefficients cannot more than double at
every step. -/
theorem coefficient_ratio_frequently_large (N : ℕ) :
    ∃ n : ℕ, N ≤ n ∧ coefficient (n + 1) * (n + 1 : ℕ) ≤ 2 * coefficient n := by
  by_contra! h
  let b : ℕ → ℝ := fun n => coefficient n * (n.factorial : ℝ)
  have hbpos : 0 < b N := mul_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula N) (by positivity)
  have hstep (n : ℕ) (hn : N ≤ n) : 2 * b n < b (n + 1) := by
    have hh := mul_lt_mul_of_pos_right (h n hn) (by positivity : (0 : ℝ) < n.factorial)
    simpa [b, Nat.factorial_succ, Nat.cast_mul, Nat.cast_add, Nat.cast_one, mul_assoc] using hh
  have hg (k : ℕ) : b N * (2 : ℝ) ^ k ≤ b (N + k) := by
    induction k with
    | zero => simp
    | succ k ih =>
      have hs := hstep (N + k) (by omega)
      rw [pow_succ]
      change b N * (2 ^ k * 2) ≤ b (N + k + 1)
      nlinarith
  obtain ⟨k, hk⟩ := pow_unbounded_of_one_lt
    (8 * thetaPhiDecayConstant / b N) (by norm_num : (1 : ℝ) < 2)
  have hh := (div_lt_iff₀ hbpos).mp hk
  have hu := coefficient_factorial_bound (N + k)
  have hl := hg k
  change b (N + k) ≤ 8 * thetaPhiDecayConstant at hu
  nlinarith


private lemma re_multiset_sum (s : Multiset ℂ) : s.sum.re = (s.map Complex.re).sum := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons x s ih => simp [ih]

private lemma esymm_one_eq_sum (s : Multiset ℂ) : s.esymm 1 = s.sum := by
  simp [Multiset.esymm, Multiset.powersetCard_one]

private lemma multiset_cs (s : Multiset ℝ) :
    s.sum ^ 2 ≤ (s.card : ℝ) * (s.map (· ^ 2)).sum := by
  have heq (x : ℝ) : (s.map (fun y => (y + x) ^ 2)).sum =
      (s.card : ℝ) * (x * x) + (2 * s.sum) * x + (s.map (· ^ 2)).sum := by
    induction s using Multiset.induction_on with
    | empty => simp
    | cons y s ih =>
      simp only [Multiset.map_cons, Multiset.sum_cons, Multiset.card_cons,
        Nat.cast_add, Nat.cast_one, ih]
      ring
  have h := discrim_le_zero (a := (s.card : ℝ)) (b := 2 * s.sum)
    (c := (s.map (· ^ 2)).sum) (fun x => by
      rw [← heq]
      exact Multiset.sum_nonneg (by
        intro y hy
        obtain ⟨z, _, rfl⟩ := Multiset.mem_map.mp hy
        positivity))
  unfold discrim at h
  nlinarith

private lemma sum_strip_lower (s : Multiset ℂ) (δ : ℝ)
    (h : ∀ w ∈ s, w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2 ≤ (w ^ 2).re) :
    ((s.map (fun w => w.re ^ 2)).sum) + 4 * δ * s.sum.re -
      (s.card : ℝ) * (4 * δ ^ 2) ≤ ((s.map (· ^ 2)).sum).re := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons w s ih =>
    have hw := h w (Multiset.mem_cons_self _ _)
    have hs := ih (fun z hz => h z (Multiset.mem_cons_of_mem hz))
    simp only [Multiset.map_cons, Multiset.sum_cons, Multiset.card_cons,
      Nat.cast_add, Nat.cast_one, Complex.add_re]
    linarith

/-- The first root sum retains multiplicities and the actual leading coefficient. -/
theorem sectionPolynomial_roots_sum (n : ℕ) :
    (sectionPolynomial (n + 1)).roots.sum =
      -((coefficient n / coefficient (n + 1) : ℝ) : ℂ) := by
  have h := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 1)))
    (k := n) (by rw [sectionPolynomial_natDegree]; omega)
  rw [sectionPolynomial_coeff _ _ (by omega), sectionPolynomial_natDegree,
    sectionPolynomial_leadingCoeff] at h
  simp only [Nat.add_sub_cancel_left, pow_one, mul_neg_one, esymm_one_eq_sum] at h
  have ha : (coefficient (n + 1) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 1)).ne'
  push_cast
  field_simp
  linear_combination h

/-- Any strip containing every spectral zero must satisfy this rank-dependent source coefficient
inequality. -/
theorem spectralSection_strip_necessary (n : ℕ) (hn : 2 ≤ n) (δ : ℝ) (hδ : 0 ≤ δ)
    (hstrip : ∀ z : ℂ, spectralSection (n + 2) z = 0 → z.im ^ 2 ≤ δ) :
    coefficient (n + 1) < 5 * (n + 2 : ℕ) * δ * coefficient (n + 2) := by
  let s := (sectionPolynomial (n + 2)).roots
  have hcard : s.card = n + 2 := by
    change (sectionPolynomial (n + 2)).roots.card = n + 2
    rw [Polynomial.splits_iff_card_roots.mp (IsAlgClosed.splits _),
      sectionPolynomial_natDegree]
  let A : ℝ := coefficient (n + 1) / coefficient (n + 2)
  have hsum : s.sum.re = -A := by
    have h := sectionPolynomial_roots_sum (n + 1)
    change s.sum = -((A : ℝ) : ℂ) at h
    rw [h, Complex.neg_re, Complex.ofReal_re]
  have hpair (w : ℂ) (hw : w ∈ s) :
      w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2 ≤ (w ^ 2).re := by
    obtain ⟨z, hz⟩ := IsAlgClosed.exists_pow_nat_eq (-w) (by norm_num : 0 < (2 : ℕ))
    have hzw : -z ^ 2 = w := by rw [hz, neg_neg]
    have hp : spectralSection (n + 2) z = 0 := by
      rw [← sectionPolynomial_eval, hzw]
      exact Polynomial.isRoot_of_mem_roots hw
    have him := hstrip z hp
    have hid : (w ^ 2).re - (w.re ^ 2 + 4 * δ * w.re - 4 * δ ^ 2) =
        4 * (z.re ^ 2 + δ) * (δ - z.im ^ 2) := by
      rw [← hzw]
      simp only [pow_two, Complex.mul_re, Complex.mul_im, Complex.neg_re, Complex.neg_im]
      ring
    have hh : 0 ≤ 4 * (z.re ^ 2 + δ) * (δ - z.im ^ 2) :=
      mul_nonneg (by positivity) (sub_nonneg.mpr him)
    linarith
  have hlow := sum_strip_lower s δ hpair
  have hcs := multiset_cs (s.map Complex.re)
  rw [Multiset.card_map, ← re_multiset_sum, hsum, hcard, Multiset.map_map] at hcs
  have hneg := sectionPolynomial_roots_square_sum_re_neg n hn
  change ((s.map (· ^ 2)).sum).re < 0 at hneg
  rw [hsum, hcard] at hlow
  let B : ℝ := (n + 2 : ℕ) * δ
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hA : 0 < A := div_pos
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 1))
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2))
  have hquad : A ^ 2 < 4 * B * A + 4 * B ^ 2 := by
    have hh := mul_lt_mul_of_pos_left (hlow.trans_lt hneg)
      (by positivity : (0 : ℝ) < (n + 2 : ℕ))
    dsimp [B]
    dsimp only [Function.comp_def] at hcs
    nlinarith
  have hAB : A < 5 * B := by
    by_contra! hab
    have hh := mul_nonneg (sub_nonneg.mpr hab) (show 0 ≤ A + B by positivity)
    nlinarith [sq_nonneg B]
  have hapos := coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2)
  have hh := (div_lt_iff₀ hapos).mp hAB
  simpa [A, B, mul_assoc] using hh

/-- Arbitrarily large raw source sections have a zero at squared distance
strictly greater than `1/10` from the real spectral axis. -/
theorem spectralSection_zeros_away_frequently (N : ℕ) :
    ∃ n : ℕ, N ≤ n ∧ 4 ≤ n ∧ ∃ z : ℂ,
      spectralSection n z = 0 ∧ (1 : ℝ) / 10 < z.im ^ 2 := by
  obtain ⟨k, hk, hcoef⟩ := coefficient_ratio_frequently_large (max N 3)
  have hkN : N ≤ k := (le_max_left _ _).trans hk
  have hk3 : 3 ≤ k := (le_max_right _ _).trans hk
  refine ⟨k + 1, by omega, by omega, ?_⟩
  by_contra! h
  have hh := spectralSection_strip_necessary (k - 1) (by omega) (1 / 10)
    (by norm_num) (by simpa only [show k - 1 + 2 = k + 1 by omega] using h)
  rw [show k - 1 + 1 = k by omega, show k - 1 + 2 = k + 1 by omega] at hh
  nlinarith

/-- No real sequence tending to zero can eventually bound the squared
imaginary parts of all zeros of the raw spectral Taylor sections. -/
theorem spectralSection_no_vanishing_strip (δ : ℕ → ℝ)
    (hδ : Tendsto δ atTop (𝓝 0)) :
    ¬ ∀ᶠ n in atTop, ∀ z : ℂ, spectralSection n z = 0 → z.im ^ 2 ≤ δ n := by
  intro h
  have hsmall : ∀ᶠ n in atTop, δ n < (1 : ℝ) / 10 :=
    hδ.eventually (eventually_lt_nhds (by norm_num))
  obtain ⟨N, hN⟩ := eventually_atTop.mp (h.and hsmall)
  obtain ⟨n, hn, _, z, hz, him⟩ := spectralSection_zeros_away_frequently N
  exact (hN n hn).2.not_ge (him.le.trans ((hN n hn).1 z hz))

end
end FormalResearch.RiemannHypothesis.XiSectionObstruction
