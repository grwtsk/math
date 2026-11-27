import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDyadicPrimeBias

/-!
# Strict descent for the first doubling block of the prime discrepancy

At index two the ordinary-prime sum has an elementary upper bound.
A polynomial in inverse powers gives a lower bound for the density integral.
Together they settle the first block directly.
-/

open MeasureTheory
open GRWTSK.XiDyadicPrimeBias

namespace GRWTSK.XiPrimeFirstDyadicBlock

noncomputable section

private def term (p : ℕ) : ℝ := if p.Prime then weight 2 p else 0
private def partialMass (n : ℕ) : ℝ := ∑ p ∈ Finset.range n, term p

private theorem term_nonneg (p : ℕ) : 0 ≤ term p := by
  unfold term
  split_ifs with hp
  · exact (weight_mem_Icc (by exact_mod_cast hp.one_lt.le) 2).1
  · exact le_rfl

private theorem odd_prefix_bound (n : ℕ) :
    partialMass (2*n+4) + 1/(4*((n:ℝ)+2)) ≤ 9/64 + 1/9 + 1/8 := by
  induction n with
  | zero =>
    norm_num [partialMass, term, weight, Finset.sum_range_succ, Nat.prime_three, Nat.prime_two]
  | succ n ih =>
    have he : ¬ (2*n+4).Prime := by
      rw [show 2*n+4 = 2*(n+2) by omega]
      exact Nat.not_prime_mul (by decide) (by omega)
    have ht : term (2*n+5) ≤ 1/(2*(n:ℝ)+5)^2 := by
      unfold term
      split_ifs
      · simpa [one_div] using (weight_mem_Icc (y := ((2*n+5 : ℕ) : ℝ))
            (by exact_mod_cast (show 1 ≤ 2*n+5 by omega)) 2).2
      · positivity
    have hd : 1/(2*(n:ℝ)+5)^2 + 1/(4*((n:ℝ)+3)) ≤ 1/(4*((n:ℝ)+2)) := by
      field_simp
      nlinarith [Nat.cast_nonneg (α := ℝ) n]
    have hs : partialMass (2*(n+1)+4) = partialMass (2*n+4) + term (2*n+5) := by
      rw [show 2*(n+1)+4 = ((2*n+4)+1)+1 by omega]
      simp [partialMass, Finset.sum_range_succ, term, he, Nat.add_assoc]
    rw [hs, Nat.cast_succ, show (n:ℝ)+1+2 = n+3 by ring]
    linarith

/-- Upper bound for the ordinary-prime contribution at order two. -/
theorem prime_sum_two_le :
    (∑' p : Nat.Primes, weight 2 (p.val:ℝ)) ≤ 9/64 + 1/9 + 1/8 := by
  have hm : Monotone partialMass := by
    apply monotone_nat_of_le_succ
    intro n
    simp only [partialMass, Finset.sum_range_succ]
    exact le_add_of_nonneg_right (term_nonneg n)
  have h : ∀ n, partialMass n ≤ 9/64 + 1/9 + 1/8 := fun n => by
    have ht : (0:ℝ) ≤ 1/(4*((n:ℝ)+2)) := by positivity
    linarith [odd_prefix_bound n, hm (show n ≤ 2*n+4 by omega)]
  calc
    _ = ∑' p : Nat.Primes, term p.val := tsum_congr fun p => by simp [term, p.property]
    _ = ∑' p : ℕ, term p := by
      apply tsum_subtype_eq_of_support_subset
      intro p hp
      by_contra h
      change ¬Nat.Prime p at h
      exact hp (by simp [term, h])
    _ ≤ _ := Real.tsum_le_of_sum_range_le term_nonneg h

private def power (n : ℕ) (x : ℝ) : ℝ := x^(-(n:ℝ))

private theorem integrable_power (n : ℕ) (h : 1 < n) :
    IntegrableOn (power n) (Set.Ioi (1:ℝ)) :=
  integrableOn_Ioi_rpow_of_lt (by exact_mod_cast (show -(n:ℤ) < -1 by omega)) zero_lt_one

private theorem integral_power (n : ℕ) (h : 1 < n) :
    ∫ x in Set.Ioi (1:ℝ), power n x = 1/((n:ℝ)-1) := by
  unfold power
  rw [integral_Ioi_rpow_of_lt (by exact_mod_cast (show -(n:ℤ) < -1 by omega)) zero_lt_one,
    Real.one_rpow]
  rw [show -(n:ℝ)+1 = -((n:ℝ)-1) by ring, neg_div_neg_eq]

private theorem integrable_two :
    IntegrableOn (fun y : ℝ => weight 2 y / Real.log y) (Set.Ioi 1) := by
  have hi := (integrableOn_Ioi_rpow_of_lt (show (-2 : ℝ) < -1 by norm_num) zero_lt_one)
  have hfour : IntegrableOn (fun y : ℝ => 4*(y^2)⁻¹) (Set.Ioi 1) := by
    apply Integrable.const_mul (c := (4 : ℝ))
    simpa [IntegrableOn] using hi
  apply hfour.mono' (by apply Measurable.aestronglyMeasurable; unfold weight; fun_prop)
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with y hy
  have hpos := Real.log_pos (show 1 < y from hy)
  have hs := sample_hasSum hy
  have h := hs.summable.le_tsum 1 fun k _ => div_nonneg (weight_mem_Icc hy.le _).1 (by positivity)
  rw [hs.tsum_eq] at h
  rw [Real.norm_eq_abs, abs_of_nonneg (div_nonneg (weight_mem_Icc hy.le _).1 hpos.le),
    div_le_iff₀ hpos]
  norm_num [sample, envelope, div_eq_mul_inv] at h
  linarith

/-- The density integral exceeds the corresponding prime-sum upper bound. -/
theorem density_two_ge :
    (23:ℝ)/60 ≤ ∫ y in Set.Ioi (1:ℝ), weight 2 y / Real.log y := by
  let f : ℝ → ℝ := fun y => power 3 y + power 4 y - power 5 y - power 6 y
  have h3 := integrable_power 3 (by decide)
  have h4 := integrable_power 4 (by decide)
  have h5 := integrable_power 5 (by decide)
  have h6 := integrable_power 6 (by decide)
  have val : ∫ y in Set.Ioi (1:ℝ), f y = 23/60 := by
    change ∫ y in Set.Ioi (1:ℝ), (power 3 + power 4 - power 5 - power 6) y = 23/60
    rw [integral_sub' ((h3.add h4).sub h5) h6, integral_sub' (h3.add h4) h5,
      integral_add' h3 h4, integral_power 3 (by decide), integral_power 4 (by decide),
      integral_power 5 (by decide), integral_power 6 (by decide)]
    norm_num
  rw [← val]
  apply setIntegral_mono_on (((h3.add h4).sub h5).sub h6) integrable_two measurableSet_Ioi
  intro y hy
  have hy1 : 1 < y := hy
  have h0 : 0 < y := by linarith
  calc
    f y = weight 2 y / (y-1) := by
      simp [f, power, weight]
      field_simp [sub_ne_zero.mpr hy1.ne', h0.ne']
      ring
    _ ≤ _ := div_le_div_of_nonneg_left (weight_mem_Icc hy1.le 2).1 (Real.log_pos hy1)
      (Real.log_le_sub_one_of_pos h0)

/-- The first doubling block decreases strictly for the actual prime discrepancy. -/
theorem first_doubling_strict : harmonicPrefix 2 < harmonicPrefix 1 := by
  have h : primeBias 2 < 0 := by
    unfold primeBias
    linarith [prime_sum_two_le, density_two_ge]
  simp [harmonicPrefix, Finset.sum_range_succ]
  linarith

end

end GRWTSK.XiPrimeFirstDyadicBlock
