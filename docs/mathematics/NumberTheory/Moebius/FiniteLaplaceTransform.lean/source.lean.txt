/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.PrimeFilterLaplace

/-! The exact closed-inventory Laplace transform of the signed pickup.
Both endpoint sums and both nonzero denominator hypotheses are retained.
No improper transform, Euler product, or arithmetic bound is assumed. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.RiemannHypothesis.CCC
open MeasureTheory Set
open scoped BigOperators

def pickupDirichletPrefix (N : ℕ) (s : ℂ) : ℂ :=
  ∑ n ∈ Finset.Icc 1 N, (moebiusReal n : ℂ) * Complex.exp (-s * Real.log n)

def pickupWeightedPrefix (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, moebiusReal n * (Real.sqrt n)⁻¹

def pickupMertensPrefix (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, moebiusReal n

theorem pickupMertensPrefix_at_cutoff (T : ℝ) :
    pickupMertensPrefix ⌊Real.exp T⌋₊ = mertensPrefix (Real.exp T) := rfl

theorem finiteLaplace_exponential {z : ℂ} (hz : z ≠ 0) (a b : ℝ) :
    (∫ u in a..b, Complex.exp (-z*u)) =
      (Complex.exp (-z*a) - Complex.exp (-z*b)) / z := by
  rw [integral_exp_mul_complex (neg_ne_zero.mpr hz)]
  ring

theorem pickupResponseWindow_at_birth {n : ℕ} (hn : 1 ≤ n) (z : ℂ) :
    noteWindowLaplace (pickupResponse n) z (Real.log n) = 0 := by
  have ha : 0 ≤ Real.log (n:ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  unfold noteWindowLaplace
  rw [max_eq_right ha]
  calc
    _ = ∫ u in (0:ℝ)..Real.log n, (0:ℂ) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le ha] at hu
      by_cases h : Real.log n ≤ u
      · have he : u = Real.log n := le_antisymm hu.2 h
        simp [he, pickupResponse_at_event hn]
      · simp [pickupResponse, h]
    _ = 0 := intervalIntegral.integral_zero

/-- The individual active response, with the endpoint born exactly at T included. -/
theorem pickupResponseWindowLaplace {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (hnT : Real.log n ≤ T) {z s : ℂ} (hs : s = z+1/2)
    (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace (pickupResponse n) z T =
      Complex.exp (-s*Real.log n)/(z*s) -
        2*Complex.exp (-z*T)/z * (((Real.sqrt n)⁻¹ : ℝ) : ℂ) +
        2*Complex.exp (-s*T)/s := by
  have ha : 0 ≤ Real.log (n:ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have hT : 0 ≤ T := ha.trans hnT
  have hc : Continuous (fun u : ℝ ↦ Complex.exp (-z*u) * (pickupResponse n u : ℂ)) := by
    have he : Continuous (fun u : ℝ ↦ Complex.exp (-z*u)) := by fun_prop
    exact he.mul (Complex.continuous_ofReal.comp (pickupResponse_continuous hn))
  have hzint : (∫ u in (0:ℝ)..Real.log n,
      Complex.exp (-z*u)*(pickupResponse n u : ℂ)) = 0 := by
    simpa only [noteWindowLaplace, max_eq_right ha] using pickupResponseWindow_at_birth hn z
  have hsint : (∫ u in Real.log n..T,
      Complex.exp (-z*u)*(pickupResponse n u : ℂ)) =
      2 * ((((Real.sqrt n)⁻¹ : ℝ) : ℂ) *
        ((Complex.exp (-z*Real.log n)-Complex.exp (-z*T))/z) -
        (Complex.exp (-s*Real.log n)-Complex.exp (-s*T))/s) := by
    calc
      _ = ∫ u in Real.log n..T, 2 *
          ((((Real.sqrt n)⁻¹ : ℝ) : ℂ) * Complex.exp (-z*u) - Complex.exp (-s*u)) := by
        apply intervalIntegral.integral_congr
        intro u hu
        rw [uIcc_of_le hnT] at hu
        simp only [pickupResponse, if_pos hu.1, Complex.ofReal_mul,
          Complex.ofReal_sub, Complex.ofReal_ofNat, Complex.ofReal_exp]
        have he : Complex.exp (-z*u) * Complex.exp ((-u/2:ℝ):ℂ) =
            Complex.exp (-s*u) := by
          rw [← Complex.exp_add, hs]
          congr 1
          push_cast
          ring
        linear_combination -2 * he
      _ = _ := by
        rw [intervalIntegral.integral_const_mul, intervalIntegral.integral_sub,
          intervalIntegral.integral_const_mul, finiteLaplace_exponential hz,
          finiteLaplace_exponential hs0]
        · exact ((by fun_prop : Continuous (fun u : ℝ ↦ Complex.exp (-z*u))).const_mul _).intervalIntegrable _ _
        · exact (by fun_prop : Continuous (fun u : ℝ ↦ Complex.exp (-s*u))).intervalIntegrable _ _
  have he : (((Real.sqrt n)⁻¹ : ℝ) : ℂ) * Complex.exp (-z*Real.log n) =
      Complex.exp (-s*Real.log n) := by
    have hi := congrArg Complex.ofReal (pickup_exp_negative_log_half hn)
    have hcast : (((Real.sqrt n)⁻¹ : ℝ) : ℂ) =
        Complex.exp (-(Real.log n : ℂ)/2) := by simpa using hi.symm
    rw [hcast, ← Complex.exp_add, hs]
    congr 1
    ring
  unfold noteWindowLaplace
  rw [max_eq_right hT, ← intervalIntegral.integral_add_adjacent_intervals
    (hc.intervalIntegrable 0 (Real.log n)) (hc.intervalIntegrable (Real.log n) T),
    hzint, zero_add, hsint]
  field_simp [hz, hs0]
  simp only [one_div]
  linear_combination (norm := skip) 2*s*he + 2*Complex.exp (-s*Real.log n)*hs
  simp only [neg_mul, mul_comm]
  ring

/-- Finite integral linearity uses the actual signed inventory on the recording. -/
theorem noteWindowLaplace_fixed_inventory (z : ℂ) {T : ℝ} (hT : 0 ≤ T) :
    noteWindowLaplace wholePickup z T =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (moebiusReal n : ℂ) * noteWindowLaplace (pickupResponse n) z T := by
  unfold noteWindowLaplace
  rw [max_eq_right hT]
  calc
    _ = ∫ u in (0:ℝ)..T, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (moebiusReal n : ℂ) * (Complex.exp (-z*u)*(pickupResponse n u : ℂ)) := by
      apply intervalIntegral.integral_congr
      intro u hu
      rw [uIcc_of_le hT] at hu
      change Complex.exp (-z*u)*(wholePickup u : ℂ) =
        ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          (moebiusReal n : ℂ)*(Complex.exp (-z*u)*(pickupResponse n u : ℂ))
      rw [wholePickup_fixed_inventory hu.1 hu.2]
      simp only [Complex.ofReal_sum, Complex.ofReal_mul, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = _ := by
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro n _
        exact intervalIntegral.integral_const_mul _ _
      · intro n hn
        have hc : Continuous (fun u : ℝ ↦ Complex.exp (-z*u)*(pickupResponse n u : ℂ)) := by
          have he : Continuous (fun u : ℝ ↦ Complex.exp (-z*u)) := by fun_prop
          exact he.mul (Complex.continuous_ofReal.comp
            (pickupResponse_continuous (Finset.mem_Icc.mp hn).1))
        exact (hc.const_mul _).intervalIntegrable _ _

/-- Exact cutoff transform with D_N(s), A_N and M_N, retaining both signed endpoints. -/
theorem wholePickup_cutoff_laplace {T : ℝ} (hT : 0 ≤ T) {z s : ℂ}
    (hs : s = z+1/2) (hz : z ≠ 0) (hs0 : s ≠ 0) :
    noteWindowLaplace wholePickup z T =
      pickupDirichletPrefix ⌊Real.exp T⌋₊ s / (z*s) -
        2*Complex.exp (-z*T)/z * (pickupWeightedPrefix ⌊Real.exp T⌋₊ : ℂ) +
        2*Complex.exp (-s*T)/s * (pickupMertensPrefix ⌊Real.exp T⌋₊ : ℂ) := by
  rw [noteWindowLaplace_fixed_inventory z hT]
  calc
    _ = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        (((moebiusReal n : ℂ)*Complex.exp (-s*Real.log n))/(z*s) -
          (2*Complex.exp (-z*T)/z) * ((moebiusReal n : ℂ)*(((Real.sqrt n)⁻¹:ℝ):ℂ)) +
          (2*Complex.exp (-s*T)/s) * (moebiusReal n : ℂ)) := by
      apply Finset.sum_congr rfl
      intro n hn
      have hne := Finset.mem_Icc.mp hn
      rw [pickupResponseWindowLaplace hne.1
        ((pickup_log_le_iff_closed_cutoff hne.1 T).mpr hne.2) hs hz hs0]
      ring
    _ = _ := by
      simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib, ← Finset.sum_div,
        ← Finset.mul_sum, pickupDirichletPrefix, pickupWeightedPrefix,
        pickupMertensPrefix, Complex.ofReal_sum, Complex.ofReal_mul]

theorem noteWindowLaplace_zero (f : ℝ → ℝ) (z : ℂ) : noteWindowLaplace f z 0 = 0 := by
  simp [noteWindowLaplace]

/-- At the degenerate closed window, either endpoint omission is already false. -/
theorem cutoff_zero_not_without_weighted_endpoint :
    noteWindowLaplace wholePickup 1 0 ≠ pickupDirichletPrefix 1 (3/2) / (1*(3/2)) +
      2*Complex.exp (-(3/2)*0)/(3/2)*(pickupMertensPrefix 1 : ℂ) := by
  norm_num [noteWindowLaplace_zero, pickupDirichletPrefix, pickupMertensPrefix, moebiusReal]

theorem cutoff_zero_not_without_mertens_endpoint :
    noteWindowLaplace wholePickup 1 0 ≠ pickupDirichletPrefix 1 (3/2) / (1*(3/2)) -
      2*Complex.exp (-1*0)/1*(pickupWeightedPrefix 1 : ℂ) := by
  norm_num [noteWindowLaplace_zero, pickupDirichletPrefix, pickupWeightedPrefix, moebiusReal]

/-- The first unborn squarefree product is a nonzero debt at every complex s. -/
theorem cutoff_three_product_debt (s : ℂ) :
    (1-Complex.exp (-s*Real.log 2))*(1-Complex.exp (-s*Real.log 3)) =
      pickupDirichletPrefix 3 s + Complex.exp (-s*Real.log 6) := by
  have hm2 : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2)]
  have hm3 : moebiusReal 3 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)]
  have hI : Finset.Icc 1 3 = {1,2,3} := by decide
  have he : Complex.exp (-s*Real.log 2)*Complex.exp (-s*Real.log 3) =
      Complex.exp (-s*Real.log 6) := by
    rw [← Complex.exp_add, show (6:ℝ) = 2*3 by norm_num,
      Real.log_mul (by norm_num : (2:ℝ) ≠ 0) (by norm_num : (3:ℝ) ≠ 0),
      Complex.ofReal_add]
    congr 1
    ring
  have hm1 : moebiusReal 1 = 1 := by simp [moebiusReal]
  simp (disch := decide) only [pickupDirichletPrefix, hI, Finset.sum_insert,
    Finset.sum_singleton, hm1, hm2, hm3, Nat.cast_one, Real.log_one,
    Complex.ofReal_zero, Complex.ofReal_neg, Complex.ofReal_one,
    mul_zero, neg_zero, Complex.exp_zero, one_mul, neg_mul]
  linear_combination (norm := skip) he
  simp only [neg_mul]
  ring

theorem cutoff_three_not_raw_product (s : ℂ) :
    pickupDirichletPrefix 3 s ≠
      (1-Complex.exp (-s*Real.log 2))*(1-Complex.exp (-s*Real.log 3)) := by
  intro h
  have he := cutoff_three_product_debt s
  rw [← h] at he
  have hz : Complex.exp (-s*Real.log 6) = 0 := by linear_combination -he
  exact Complex.exp_ne_zero _ hz

end GRWTSK.RiemannHypothesis.CCC
