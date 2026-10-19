import FormalResearch.RiemannHypothesis.XiReconstruction
import FormalResearch.RiemannHypothesis.XiSectionObstruction
import Mathlib.RingTheory.Polynomial.Vieta
namespace FormalResearch.RiemannHypothesis.XiSectionObstruction
open XiToeplitz ThetaPositiveLift XiReconstruction Polynomial
noncomputable section

def sectionPolynomial (n : ℕ) : ℂ[X] :=
  ∑ k ∈ Finset.range (n + 1), C (coefficient k : ℂ) * X ^ k

theorem sectionPolynomial_eval (n : ℕ) (z : ℂ) :
    (sectionPolynomial n).eval (-z ^ 2) = spectralSection n z := by
  simp [sectionPolynomial, spectralSection, Polynomial.eval_finsetSum]

theorem sectionPolynomial_coeff (n k : ℕ) (hk : k ≤ n) :
    (sectionPolynomial n).coeff k = (coefficient k : ℂ) := by
  simp [sectionPolynomial, Polynomial.finsetSum_coeff, Finset.mem_range.mpr (by omega : k < n + 1)]

theorem sectionPolynomial_natDegree (n : ℕ) : (sectionPolynomial n).natDegree = n := by
  apply Polynomial.natDegree_eq_of_le_of_coeff_ne_zero
  · apply Polynomial.natDegree_sum_le_of_forall_le
    intro k hk
    exact (Polynomial.natDegree_C_mul_X_pow_le _ _).trans (by simpa using hk)
  · rw [sectionPolynomial_coeff n n le_rfl]
    exact Complex.ofReal_ne_zero.mpr
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula n).ne'

theorem sectionPolynomial_leadingCoeff (n : ℕ) :
    (sectionPolynomial n).leadingCoeff = (coefficient n : ℂ) := by
  rw [Polynomial.leadingCoeff, sectionPolynomial_natDegree, sectionPolynomial_coeff n n le_rfl]

private lemma esymm_cons_succ (s : Multiset ℂ) (x : ℂ) (n : ℕ) :
    (x ::ₘ s).esymm (n + 1) = x * s.esymm n + s.esymm (n + 1) := by
  simp [Multiset.esymm, Multiset.powersetCard_cons, Multiset.sum_map_mul_left, add_comm]

private lemma roots_square_sum (s : Multiset ℂ) :
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rw [Multiset.map_cons, Multiset.sum_cons, ih,
      esymm_cons_succ s x 0, esymm_cons_succ s x 1]
    have h0 : s.esymm 0 = 1 := by simp [Multiset.esymm]
    rw [h0]
    ring

theorem sectionPolynomial_roots_square_sum (n : ℕ) :
    (((sectionPolynomial (n + 2)).roots.map (· ^ 2)).sum) =
      (((coefficient (n + 1) ^ 2 - 2 * coefficient n * coefficient (n + 2)) /
        coefficient (n + 2) ^ 2 : ℝ) : ℂ) := by
  have h1 := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 2)))
    (k := n + 1) (by rw [sectionPolynomial_natDegree]; omega)
  have h2 := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 2)))
    (k := n) (by rw [sectionPolynomial_natDegree]; omega)
  rw [sectionPolynomial_coeff _ _ (by omega), sectionPolynomial_natDegree,
    sectionPolynomial_leadingCoeff] at h1 h2
  simp only [show n + 2 - (n + 1) = 1 by omega, show n + 2 - n = 2 by omega,
    pow_one, neg_sq, one_pow, mul_neg_one, mul_one] at h1 h2
  have ha : (coefficient (n + 2) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2)).ne'
  rw [roots_square_sum]
  push_cast
  field_simp
  linear_combination h1 * ((sectionPolynomial (n + 2)).roots.esymm 1 *
    (coefficient (n + 2) : ℂ) - (coefficient (n + 1) : ℂ)) +
    2 * h2 * (coefficient (n + 2) : ℂ)

theorem sectionPolynomial_roots_square_sum_re_neg (n : ℕ) (hn : 2 ≤ n) :
    (((sectionPolynomial (n + 2)).roots.map (· ^ 2)).sum).re < 0 := by
  rw [sectionPolynomial_roots_square_sum, Complex.ofReal_re]
  apply div_neg_of_neg_of_pos
  · exact sub_neg.mpr (coefficient_fourth_obstruction n hn)
  · exact sq_pos_of_pos
      (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 2))

private lemma roots_square_sum_re_nonneg (s : Multiset ℂ)
    (h : ∀ z ∈ s, z.im = 0) : 0 ≤ ((s.map (· ^ 2)).sum).re := by
  induction s using Multiset.induction_on with
  | empty => simp
  | cons x s ih =>
    have hx := h x (Multiset.mem_cons_self _ _)
    have hs := ih (fun z hz => h z (Multiset.mem_cons_of_mem hz))
    simp only [Multiset.map_cons, Multiset.sum_cons, Complex.add_re, pow_two,
      Complex.mul_re, hx, mul_zero, sub_zero]
    exact add_nonneg (mul_self_nonneg _) (by simpa only [pow_two] using hs)

theorem sectionPolynomial_has_nonreal_root (n : ℕ) (hn : 2 ≤ n) :
    ∃ w ∈ (sectionPolynomial (n + 2)).roots, w.im ≠ 0 := by
  by_contra! h
  exact (sectionPolynomial_roots_square_sum_re_neg n hn).not_ge
    (roots_square_sum_re_nonneg _ h)

theorem spectralSection_has_nonreal_zero (n : ℕ) (hn : 4 ≤ n) :
    ∃ z : ℂ, spectralSection n z = 0 ∧ z.im ≠ 0 := by
  obtain ⟨w, hw, hwi⟩ := sectionPolynomial_has_nonreal_root (n - 2) (by omega)
  rw [show n - 2 + 2 = n by omega] at hw
  obtain ⟨z, hz⟩ := IsAlgClosed.exists_pow_nat_eq (-w) (by norm_num : 0 < (2 : ℕ))
  have hzw : -z ^ 2 = w := by rw [hz, neg_neg]
  refine ⟨z, ?_, ?_⟩
  · rw [← sectionPolynomial_eval, hzw]
    exact (Polynomial.isRoot_of_mem_roots hw)
  · intro hzi
    apply hwi
    have him := congrArg Complex.im hzw
    simpa [pow_two, Complex.mul_im, hzi] using him.symm

end
end FormalResearch.RiemannHypothesis.XiSectionObstruction
