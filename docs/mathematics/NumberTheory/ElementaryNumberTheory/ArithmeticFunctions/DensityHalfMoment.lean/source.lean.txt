/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.DensityHalfPrimeFactor
import Mathlib.NumberTheory.EulerProduct.Basic
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Complete half-moment of the actual positive density correction

Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI Codex.
Finite inventories provide the summability proof before the global Euler limit.
All prime powers, squareful terms and infinite omitted tails are retained.
-/
noncomputable section
set_option autoImplicit false
namespace GRWTSK.NumberTheory.ArithmeticFunctions

def densityCorrectionHalf (n : ℕ) : ℝ :=
  densityMoebiusCorrection n / Real.sqrt (n : ℝ)
def reciprocalThreeHalf (n : ℕ) : ℝ := 1 / (n : ℝ) ^ ((3 : ℝ) / 2)

theorem density_half_nonneg (n : ℕ) : 0 ≤ densityCorrectionHalf n :=
  div_nonneg (density_moebius_correction_nonneg n) (Real.sqrt_nonneg _)

theorem density_half_one : densityCorrectionHalf 1 = 1 := by
  simp [densityCorrectionHalf, density_moebius_correction_one]

theorem density_half_mul {m n : ℕ} (h : m.Coprime n) :
    densityCorrectionHalf (m*n) = densityCorrectionHalf m * densityCorrectionHalf n := by
  simp only [densityCorrectionHalf, Nat.cast_mul,
    density_moebius_correction_multiplicative.map_mul_of_coprime h,
    Real.sqrt_mul (Nat.cast_nonneg m), div_mul_div_comm]

theorem density_half_sqrt_pow (x : ℝ) (hx : 0 ≤ x) (k : ℕ) :
    Real.sqrt (x^k) = Real.sqrt x ^ k := by
  induction k with
  | zero => simp
  | succ k ih => rw [pow_succ, Real.sqrt_mul (pow_nonneg hx k), ih, pow_succ]

theorem density_half_prime_hasSum {p : ℕ} (hp : p.Prime) :
    HasSum (fun k : ℕ => densityCorrectionHalf (p^k))
      (1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1))) := by
  have hs : HasSum (fun k : ℕ => densityCorrectionHalf (p^(k+1)))
      (1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1))) := by
    simpa only [densityCorrectionHalf, Nat.cast_pow,
      density_half_sqrt_pow (p : ℝ) (Nat.cast_nonneg p)] using density_correction_prime_half_hasSum hp
  have ht := (hasSum_nat_add_iff (f := fun k : ℕ => densityCorrectionHalf (p^k))
    (g := 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1))) 1).mp hs
  simpa [densityCorrectionHalf, density_moebius_correction_one, add_comm] using ht

theorem reciprocal_three_half_summable : Summable reciprocalThreeHalf :=
  Real.summable_one_div_nat_rpow.mpr (by norm_num : 1 < (3 : ℝ)/2)

theorem reciprocal_three_half_sqrt (n : ℕ) :
    reciprocalThreeHalf n = 1 / ((n : ℝ)*Real.sqrt (n : ℝ)) := by
  unfold reciprocalThreeHalf
  have he : (n : ℝ)^((3 : ℝ)/2) = (n : ℝ)*Real.sqrt (n : ℝ) := by
    rw [Real.sqrt_eq_rpow]
    calc
      _ = (n : ℝ)^((1 : ℝ)+1/2) := by norm_num
      _ = _ := by rw [Real.rpow_add_of_nonneg (Nat.cast_nonneg n)
        (by norm_num : 0 ≤ (1 : ℝ)) (by norm_num : 0 ≤ (1 : ℝ)/2), Real.rpow_one]
  rw [he]

theorem density_half_prime_mass_le {p : ℕ} (hp : p.Prime) :
    1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1)) ≤ 4 * reciprocalThreeHalf p := by
  have hp2 : (2 : ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hs0 := Real.sqrt_nonneg (p : ℝ)
  have hs2 := Real.sq_sqrt (show 0 ≤ (p : ℝ) by positivity)
  have hs : (4 : ℝ)/3 ≤ Real.sqrt (p : ℝ) := by nlinarith
  have hd : 0 < ((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1) :=
    mul_pos (by linarith) (by linarith)
  have he : 0 < (p : ℝ)*Real.sqrt (p : ℝ) := mul_pos (by linarith) (by linarith)
  rw [reciprocal_three_half_sqrt, ← mul_div_assoc, mul_one]
  apply (div_le_div_iff₀ hd he).mpr
  nlinarith [mul_nonneg (show 0 ≤ (p : ℝ) by linarith)
    (show 0 ≤ 3*Real.sqrt (p : ℝ)-4 by linarith)]

theorem density_half_factored_hasSum (s : Finset ℕ) :
    HasSum (fun n : Nat.factoredNumbers s => densityCorrectionHalf n)
      (∏ p ∈ s with p.Prime, (1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1)))) := by
  have h := EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_tsum
    density_half_one (fun h => density_half_mul h)
    (fun hp => (density_half_prime_hasSum hp).summable.norm) s
  have he : (∏ p ∈ s with p.Prime, ∑' k : ℕ, densityCorrectionHalf (p^k)) =
      (∏ p ∈ s with p.Prime, (1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1)))) := by
    apply Finset.prod_congr rfl
    intro p hp
    exact (density_half_prime_hasSum (Finset.mem_filter.mp hp).2).tsum_eq
  rw [he] at h
  exact h.2

theorem density_half_factored_bound (s : Finset ℕ) :
    (∑' n : Nat.factoredNumbers s, densityCorrectionHalf n) ≤
      Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := by
  rw [(density_half_factored_hasSum s).tsum_eq]
  calc
    _ ≤ ∏ p ∈ s with p.Prime, Real.exp (4 * reciprocalThreeHalf p) := by
      apply Finset.prod_le_prod
      · intro p hp
        have hp1 : (1 : ℝ) < p := by exact_mod_cast (Finset.mem_filter.mp hp).2.one_lt
        have hs1 : 1 < Real.sqrt (p : ℝ) := by
          simpa only [Real.sqrt_one] using
            (Real.sqrt_lt_sqrt_iff (show 0 ≤ (1 : ℝ) by norm_num)).mpr hp1
        exact add_nonneg (by norm_num) (one_div_nonneg.mpr
          (mul_nonneg (by positivity) (by linarith)))
      · intro p hp
        exact (add_le_add (le_refl 1) (density_half_prime_mass_le (Finset.mem_filter.mp hp).2)).trans
          (by simpa only [add_comm] using Real.add_one_le_exp (4 * reciprocalThreeHalf p))
    _ = Real.exp (4 * ∑ p ∈ s with p.Prime, reciprocalThreeHalf p) := by
      rw [← Real.exp_sum, Finset.mul_sum]
    _ ≤ Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := by
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonneg_left
        (reciprocal_three_half_summable.sum_le_tsum _ (fun _ _ => by unfold reciprocalThreeHalf; positivity))
        (by norm_num)

theorem density_half_range_bound (N : ℕ) :
    (∑ n ∈ Finset.range N, densityCorrectionHalf n) ≤
      Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := by
  let s := Finset.range N
  let P := Nat.factoredNumbers s
  have hf := density_half_factored_hasSum s
  have hi : Summable (P.indicator densityCorrectionHalf) :=
    summable_subtype_iff_indicator.mp hf.summable
  have he : (∑ n ∈ Finset.range N, densityCorrectionHalf n) =
      ∑ n ∈ Finset.range N, P.indicator densityCorrectionHalf n := by
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hn0 : n=0
    · subst n
      have h0 : (0 : ℕ) ∉ P := fun h => (Nat.ne_zero_of_mem_factoredNumbers h) rfl
      rw [Set.indicator_of_notMem h0]
      simp [densityCorrectionHalf]
    · exact (Set.indicator_of_mem (Nat.mem_factoredNumbers_iff_forall_le.mpr
        ⟨hn0, fun p hpn _ _ => Finset.mem_range.mpr (lt_of_le_of_lt hpn (Finset.mem_range.mp hn))⟩)
        densityCorrectionHalf).symm
  rw [he]
  calc
    _ ≤ ∑' n : ℕ, P.indicator densityCorrectionHalf n :=
      hi.sum_le_tsum _ (fun n _ => Set.indicator_nonneg (fun n _ => density_half_nonneg n) n)
    _ = ∑' n : P, densityCorrectionHalf n := (tsum_subtype P _).symm
    _ ≤ Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) := density_half_factored_bound s

theorem density_half_summable : Summable densityCorrectionHalf :=
  summable_of_sum_range_le density_half_nonneg density_half_range_bound

theorem density_half_tsum_bound : (∑' n : ℕ, densityCorrectionHalf n) ≤
    Real.exp (4 * ∑' n : ℕ, reciprocalThreeHalf n) :=
  Real.tsum_le_of_sum_range_le density_half_nonneg density_half_range_bound

theorem density_half_euler_hasProd :
    HasProd (fun p : Nat.Primes => 1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1)))
      (∑' n : ℕ, densityCorrectionHalf n) := by
  have h := EulerProduct.eulerProduct_hasProd density_half_one
    (fun h => density_half_mul h) density_half_summable.norm
    (by simp [densityCorrectionHalf])
  have he : (fun p : Nat.Primes => ∑' k : ℕ, densityCorrectionHalf (p.val^k)) =
      (fun p : Nat.Primes => 1 + 1 / (((p : ℝ)+1)*(Real.sqrt (p : ℝ)-1))) := by
    funext p
    exact (density_half_prime_hasSum p.property).tsum_eq
  rw [he] at h
  exact h

theorem density_positive_half_summable :
    Summable (fun n : ℕ => densityMoebiusCorrection (n+1) / Real.sqrt ((n+1 : ℕ) : ℝ)) := by
  exact (summable_nat_add_iff (f := densityCorrectionHalf) 1).mpr density_half_summable

end GRWTSK.NumberTheory.ArithmeticFunctions
