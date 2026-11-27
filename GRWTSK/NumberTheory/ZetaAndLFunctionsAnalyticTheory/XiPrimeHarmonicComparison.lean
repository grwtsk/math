import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiDyadicPrimeBias
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeHarmonicKernel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPrimeHarmonicSharpTail
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-! # A strict all-order prefix bound for the ordinary-prime discrepancy

Partial summation first compares each weighted ordinary-prime sum to the right
endpoint quadrature for the measure `dy / y²`. The normalized harmonic kernel
is antitone, so the quadrature lies below the source's smooth integral.
-/

open Filter MeasureTheory
open scoped Topology
namespace GRWTSK.XiPrimeHarmonic
open GRWTSK.XiDyadicPrimeBias GRWTSK.XiPrimeHarmonicSharpTail

noncomputable section

/-- Multiplier relative to the base prime measure with mass `log p / p²`. -/
def densityMultiplier (N : ℕ) (y : ℝ) : ℝ := kernel N (2 * Real.log y) / Real.log y

private theorem row_eq_kernel {y : ℝ} (hy : 0 < y) (N : ℕ) :
    row N y = (y^2)⁻¹ * kernel N (2 * Real.log y) := by
  rw [kernel_at_two_log hy, Finset.mul_sum]
  unfold row
  apply Finset.sum_congr rfl
  intro i _
  simp only [sample, weight]
  ring

theorem atom_mul_eq (N : ℕ) {p : ℕ} (hp : p.Prime) :
    densityMultiplier N p * atom p = row N p := by
  have hy : 1 < (p : ℝ) := by exact_mod_cast hp.one_lt
  rw [row_eq_kernel (by linarith : 0 < (p : ℝ)), atom, ite_eq_left hp, densityMultiplier]
  field_simp [(Real.log_pos hy).ne']

private theorem row_density {y : ℝ} (hy : 1 < y) (N : ℕ) :
    row N y / Real.log y = densityMultiplier N y * (y^2)⁻¹ := by
  rw [row_eq_kernel (by linarith) N, densityMultiplier]
  ring

private theorem density_nonneg {y : ℝ} (hy : 1 < y) (N : ℕ) :
    0 ≤ densityMultiplier N y := by
  have hrow := (row_bounds hy N).1
  rw [row_eq_kernel (by linarith) N] at hrow
  exact div_nonneg (nonneg_of_mul_nonneg_right hrow (by positivity)) (Real.log_pos hy).le

private theorem density_antitone (N : ℕ) :
    AntitoneOn (densityMultiplier N) (Set.Ioi 1) := by
  intro x hx y hy hxy
  have hxl := Real.log_pos (show 1 < x from hx)
  have hyl := Real.log_pos (show 1 < y from hy)
  have hmono := normalized_kernel_antitone N
    (show 2*Real.log x ∈ Set.Ioi (0 : ℝ) from (mul_pos (by norm_num) hxl))
    (show 2*Real.log y ∈ Set.Ioi (0 : ℝ) from (mul_pos (by norm_num) hyl))
    (show 2 * Real.log x ≤ 2 * Real.log y from by
      linarith [Real.log_le_log (lt_trans zero_lt_one (show 1 < x from hx)) hxy])
  unfold densityMultiplier
  linarith only [show kernel N (2 * Real.log y)/Real.log y/2 ≤
      kernel N (2*Real.log x)/Real.log x/2 by simpa [div_div, mul_comm] using hmono]

private theorem row_density_integrable (N : ℕ) :
    IntegrableOn (fun y : ℝ => row N y / Real.log y) (Set.Ioi 1) := by
  have hi := (integrableOn_Ioi_rpow_of_lt (show (-2 : ℝ) < -1 by norm_num) zero_lt_one)
  have htwo : IntegrableOn (fun y : ℝ => 2*(y^2)⁻¹) (Set.Ioi 1) :=
    by
      apply Integrable.const_mul (c := (2 : ℝ))
      simpa [IntegrableOn] using hi
  apply htwo.mono' (by apply Measurable.aestronglyMeasurable; unfold row sample weight; fun_prop)
  filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with y hy
  have hpos := Real.log_pos (show 1 < y from hy)
  rw [Real.norm_eq_abs, abs_of_nonneg (div_nonneg (row_bounds hy N).1 hpos.le), div_le_iff₀ hpos]
  convert (row_bounds hy N).2 using 1
  unfold envelope
  ring

private theorem row_interval (N : ℕ) {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    IntervalIntegrable (fun y : ℝ => row N y / Real.log y) volume a b :=
  (intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mpr
    ((row_density_integrable N).mono_set (fun _ hy => ha.trans_lt hy.1))

private theorem one_cell (N j : ℕ) :
    densityMultiplier N (j+2 : ℕ) * (1/((j:ℝ)+1) - 1/((j:ℝ)+2)) ≤
      ∫ y in ((j:ℝ)+1)..((j:ℝ)+2), row N y / Real.log y := by
  let a := (j:ℝ)+1
  let b := (j:ℝ)+2
  have ha : 1 ≤ a := by dsimp [a]; linarith [Nat.cast_nonneg (α := ℝ) j]
  have hbase : 0 < a := by linarith
  have hab : a ≤ b := by dsimp [a,b]; linarith
  have hb : 1 < b := by dsimp [b]; linarith [Nat.cast_nonneg (α := ℝ) j]
  have hzero : (0:ℝ) ∉ Set.uIcc a b := by
    rw [Set.uIcc_of_le hab]
    intro h
    linarith [h.1]
  have hval := integral_zpow (a := a) (b := b) (n := (-2:ℤ)) (Or.inr ⟨by decide, hzero⟩)
  have hinv : (∫ y in a..b, (y^2)⁻¹) = 1/a - 1/b := by
    norm_num at hval
    convert hval using 1
    ring
  have hint : IntervalIntegrable (fun y : ℝ => (y^2)⁻¹) volume a b :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hab).mpr (by
      have hi := (integrableOn_Ioi_rpow_of_lt (show (-2 : ℝ) < -1 by norm_num) zero_lt_one)
      simpa using hi.mono_set (show Set.Ioc a b ⊆ Set.Ioi 1 from
        fun _ hy => ha.trans_lt hy.1))
  have comp := intervalIntegral.integral_mono_on_of_le_Ioo hab
    (hint.const_mul (densityMultiplier N b)) (row_interval N ha hab) (by
      intro x hx
      have hx1 : 1 < x := ha.trans_lt hx.1
      rw [row_density hx1 N]
      exact mul_le_mul_of_nonneg_right (density_antitone N hx1 hb hx.2.le) (by positivity))
  rw [intervalIntegral.integral_const_mul, hinv] at comp
  simpa only [Nat.cast_add, Nat.cast_ofNat] using comp

private theorem quadrature_le (N n : ℕ) :
    (∑ j ∈ Finset.range n,
      densityMultiplier N (j+2 : ℕ) * (1/((j:ℝ)+1) - 1/((j:ℝ)+2))) ≤
        ∫ y in (1:ℝ)..((n:ℝ)+1), row N y / Real.log y := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ]
    have h₁ : (1:ℝ) ≤ (n:ℝ)+1 := by linarith [Nat.cast_nonneg (α := ℝ) n]
    have h₂ : (n:ℝ)+1 ≤ (n:ℝ)+2 := by linarith
    convert (add_le_add ih (one_cell N n)).trans_eq
      (intervalIntegral.integral_add_adjacent_intervals (row_interval N le_rfl h₁) (row_interval N h₁ h₂)) using 2
    push_cast
    ring

/-- Finite prime sums have a uniform margin relative to the full density integral. -/
theorem finite_prime_comparison (N n : ℕ) :
    (∑ j ∈ Finset.range n, densityMultiplier N (j+2 : ℕ) * atom (j+2)) ≤
      (39/40) * ∫ y in Set.Ioi (1:ℝ), row N y / Real.log y := by
  have hcmp := weighted_prime_le_telescoping (fun j : ℕ => densityMultiplier N j)
    (fun j => density_nonneg (N := N) (by push_cast; linarith [Nat.cast_nonneg (α := ℝ) j]))
    (fun j => density_antitone N (by change (1:ℝ) < _; push_cast; linarith [Nat.cast_nonneg (α := ℝ) j])
      (by change (1:ℝ) < _; push_cast; linarith [Nat.cast_nonneg (α := ℝ) j])
      (by push_cast; linarith)) n
  have ha : (1:ℝ) ≤ (n:ℝ)+1 := by linarith [Nat.cast_nonneg (α := ℝ) n]
  have hq := quadrature_le N n
  rw [intervalIntegral.integral_of_le ha] at hq
  refine hcmp.trans (mul_le_mul_of_nonneg_left (hq.trans ?_) (by norm_num))
  apply setIntegral_mono_set (row_density_integrable N)
  · filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with y hy
    exact div_nonneg (row_bounds hy N).1 (Real.log_pos hy).le
  · exact Filter.Eventually.of_forall fun _ hy => hy.1

/-- The prime at two converts the quadrature margin into a uniform negative bound. -/
theorem harmonicPrefix_le_neg_one_div_208 {N : ℕ} (hN : 0 < N) : harmonicPrefix N ≤ -(1/208) := by
  let f : ℕ → ℝ := fun p ↦ densityMultiplier N p * atom p
  have hn (p : ℕ) : 0 ≤ f p := by
    by_cases hp : p.Prime
    · change 0 ≤ densityMultiplier N p * atom p
      rw [atom_mul_eq N hp]
      exact (row_bounds (by exact_mod_cast hp.one_lt) N).1
    · simp [f, atom, hp]
  have hz (p : ℕ) (hp : ¬p.Prime) : f p = 0 := by simp [f, atom, hp]
  have hf : Summable (fun j : ℕ ↦ f (j+2)) :=
    summable_of_sum_range_le (fun j ↦ hn (j+2)) (finite_prime_comparison N)
  have htotal : (∑' p : Nat.Primes, row N (p.val : ℝ)) = ∑' j : ℕ, f (j+2) := by
    calc
      _ = ∑' p : Nat.Primes, f p.val :=
        tsum_congr (fun p ↦ (atom_mul_eq N p.property).symm)
      _ = ∑' p : ℕ, f p := by
        apply tsum_subtype_eq_of_support_subset
        intro p hp
        by_contra h
        exact hp (hz p h)
      _ = _ := by
        have hsplit := (((summable_nat_add_iff 2).mp hf).sum_add_tsum_nat_add 2).symm
        simpa [Finset.sum_range_succ, hz 0 (by decide), hz 1 (by decide)] using hsplit
  have hrow : 3/16 ≤ row N 2 := by
    have hle : sample 0 2 ≤ row N 2 := by
      unfold row
      apply Finset.single_le_sum (f := fun j ↦ sample j 2) (fun j _ ↦ ?_) (Finset.mem_range.mpr hN)
      exact div_nonneg (weight_mem_Icc (by norm_num : (1:ℝ) ≤ 2) (j+1)).1 (by positivity)
    norm_num [sample, weight] at hle
    exact hle
  have hmass : (3/16 : ℝ) ≤ ∑' j : ℕ, f (j+2) := by
    apply le_trans hrow
    simpa only [f, zero_add, Nat.cast_ofNat, atom_mul_eq N Nat.prime_two] using
      hf.le_tsum 0 (fun j _ ↦ hn (j+2))
  have hle := Real.tsum_le_of_sum_range_le (fun j ↦ hn (j+2)) (finite_prime_comparison N)
  rw [prefix_eq_row, htotal]
  linarith

/-- Every positive-order harmonic prefix of the ordinary-prime bias is strictly negative. -/
theorem harmonicPrefix_neg {N : ℕ} (hN : 0 < N) : harmonicPrefix N < 0 :=
  (harmonicPrefix_le_neg_one_div_208 hN).trans_lt (by norm_num)

/-- Explicit strict separation of the limiting harmonic prefix from zero. -/
theorem primeLimit_le_neg_seven_tenths : primeLimit ≤ -(7/10) := by
  have htotal : (∑' p : Nat.Primes, Real.log (p.val:ℝ)/(p.val:ℝ)^2) = ∑' j : ℕ, atom j := by
    calc
      _ = ∑' p : Nat.Primes, atom p.val := by
        apply tsum_congr
        intro p
        simp [atom, p.property]
      _ = _ := by
        apply tsum_subtype_eq_of_support_subset
        intro p hp
        by_contra h
        change ¬Nat.Prime p at h
        exact hp (by simp [atom, h])
  have h := Real.tsum_le_of_sum_range_le atom_nonneg
    (fun n => (prefix_lt_thirteen_twentieths n).le)
  rw [primeLimit, htotal]
  linarith

end
end GRWTSK.XiPrimeHarmonic
