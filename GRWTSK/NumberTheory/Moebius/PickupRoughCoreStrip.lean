/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction

/-!
# An independently paid thin strip of the actual distinct-core energy

Both orientations of pairs whose smaller core is <= sqrt(2^j) have an absolute
7/8-rate allowance with one displayed constant independent of j. This is a
proper region of the actual interaction, not a new diagonal or stage credit.
The complementary upperTail remains completely signed and unbounded here.
SOURCE_PROOF_CANDIDATE / compilation, fresh kernel replay, axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction

/-- A literal rectangular inventory, with the strict larger-core comparison inside. -/
def thinSum (P : List ℕ) (N M : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 1 N, rough P n *
    ∑ m ∈ Finset.Icc 1 M, if m < n then rough P m * G m n else 0

def thinInteraction (P : List ℕ) (T : ℝ) (M : ℕ) : ℝ :=
  thinSum P ⌊Real.exp T⌋₊ M (gram P T)

def thinCutoff (j : ℕ) : ℕ := Nat.sqrt (2 ^ j)

/-- Exact disjoint partition of the ORIGINAL ordered interaction. -/
theorem thinSum_add_upperTail (P : List ℕ) (N M : ℕ) (hM : M ≤ N)
    (G : ℕ → ℕ → ℝ) :
    thinSum P N M G + upperTail P N M G = upperTail P N 0 G := by
  have hfilter : (Finset.Icc 1 N).filter (fun m => m ≤ M) = Finset.Icc 1 M := by
    ext m
    simp only [Finset.mem_filter, Finset.mem_Icc]
    omega
  have hrow (n : ℕ) :
      (∑ m ∈ Finset.Icc 1 M, if m < n then rough P m * G m n else 0) +
      upperWeight P N M G n = upperWeight P N 0 G n := by
    rw [← hfilter, Finset.sum_filter]
    unfold upperWeight
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    have hmpos : 0 < m := (Finset.mem_Icc.mp hm).1
    by_cases hlow : m ≤ M <;> by_cases hmn : m < n <;>
      simp [hlow, hmn, hmpos, show M < m ↔ ¬ m ≤ M by omega]
  unfold thinSum upperTail
  rw [← mul_add, ← Finset.sum_add_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro n _
  rw [← mul_add, hrow]

theorem interaction_eq_thin_add_tail (P : List ℕ) (T : ℝ) (M : ℕ)
    (hM : M ≤ ⌊Real.exp T⌋₊) :
    interaction P T = thinInteraction P T M + upperTail P ⌊Real.exp T⌋₊ M (gram P T) := by
  rw [interaction, ordered_eq_upperTail P _ _ (gram_symmetric P T)]
  exact (thinSum_add_upperTail P _ M hM (gram P T)).symm

theorem rough_abs_le_one (P : List ℕ) (n : ℕ) : |rough P n| ≤ 1 := by
  induction P with
  | nil =>
      change |moebiusReal n| ≤ 1
      unfold moebiusReal
      exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := n))
  | cons p P ih =>
      by_cases hp : p ∣ n <;> simp only [rough, hp, if_true, if_false]
      · norm_num
      · exact ih

theorem response_le_inverse_sqrt (n : ℕ) (u : ℝ) :
    pickupResponse n u ≤ 2 * (Real.sqrt (n : ℝ))⁻¹ := by
  unfold pickupResponse
  split_ifs
  · linarith [Real.exp_pos (-u / 2)]
  · positivity

/-- Independent product-kernel bound; signs of either block are unrestricted. -/
theorem gram_abs_le (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) :
    |gram P T m n| ≤ 4 * T * factor P ^ 2 *
      (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹ := by
  have hf0 := factor_nonnegative P
  have hc := block_continuous P hP ⌊Real.exp T⌋₊ m hm
  have hd := block_continuous P hP ⌊Real.exp T⌋₊ n hn
  have hpoint (u : ℝ) :
      |block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ n u| ≤
      4 * factor P ^ 2 * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹ := by
    have hm' := (block_abs_le P hP _ m hm u).trans
      (mul_le_mul_of_nonneg_left (response_le_inverse_sqrt m u) (factor_nonnegative P))
    have hn' := (block_abs_le P hP _ n hn u).trans
      (mul_le_mul_of_nonneg_left (response_le_inverse_sqrt n u) (factor_nonnegative P))
    have hh := mul_le_mul hm' hn' (abs_nonneg _)
      (mul_nonneg hf0 (by positivity))
    rw [abs_mul]
    convert hh using 1 <;> ring
  calc
    |gram P T m n| ≤ ∫ u in (0 : ℝ)..T,
        |block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ n u| :=
      intervalIntegral.abs_integral_le_integral_abs hT
    _ ≤ ∫ _u in (0 : ℝ)..T,
        4 * factor P ^ 2 * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹ :=
      intervalIntegral.integral_mono_on hT ((hc.mul hd).abs.intervalIntegrable _ _)
        (continuous_const.intervalIntegrable _ _) (fun u _ => hpoint u)
    _ = _ := by simp [intervalIntegral.integral_const]; ring

theorem atom_abs_le (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) {m n : ℕ} (hm : 1 ≤ m) (hn : 1 ≤ n) :
    |rough P n * (rough P m * gram P T m n)| ≤
      4 * T * factor P ^ 2 * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹ := by
  have ha : |rough P n * rough P m| ≤ 1 := by
    rw [abs_mul]
    simpa using mul_le_mul (rough_abs_le_one P n) (rough_abs_le_one P m)
      (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  calc
    _ = |rough P n * rough P m| * |gram P T m n| := by rw [← mul_assoc, abs_mul]
    _ ≤ |gram P T m n| := by simpa using mul_le_mul_of_nonneg_right ha (abs_nonneg _)
    _ ≤ _ := gram_abs_le P hP hT hm hn

/-- Telescoping elementary bound; no prime counting or discrepancy estimate. -/
theorem sum_inverse_sqrt_le (N : ℕ) :
    (∑ m ∈ Finset.Icc 1 N, (Real.sqrt (m : ℝ))⁻¹) ≤ 2 * Real.sqrt (N : ℝ) := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]
      have hi := inverse_sqrt_increment N
      linarith

theorem thinInteraction_abs_le (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) (M : ℕ) :
    |thinInteraction P T M| ≤ 32 * T * factor P ^ 2 *
      Real.sqrt (M : ℝ) * Real.sqrt (⌊Real.exp T⌋₊ : ℝ) := by
  let N := ⌊Real.exp T⌋₊
  have hmajor :
      |∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 M,
        rough P n * (if m < n then rough P m * gram P T m n else 0)| ≤
      ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 M,
        4 * T * factor P ^ 2 * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹ := by
    calc
      _ ≤ ∑ n ∈ Finset.Icc 1 N, |∑ m ∈ Finset.Icc 1 M,
          rough P n * (if m < n then rough P m * gram P T m n else 0)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 M,
          |rough P n * (if m < n then rough P m * gram P T m n else 0)| := by
        apply Finset.sum_le_sum
        intro n _
        exact Finset.abs_sum_le_sum_abs _ _
      _ ≤ _ := by
        apply Finset.sum_le_sum
        intro n hn
        apply Finset.sum_le_sum
        intro m hm
        by_cases hmn : m < n
        · simpa only [if_pos hmn] using
            atom_abs_le P hP hT (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1
        · simp only [if_neg hmn, mul_zero, abs_zero]
          positivity
  have hfactor : (∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 M,
        4 * T * factor P ^ 2 * (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹) =
      4 * T * factor P ^ 2 *
        (∑ m ∈ Finset.Icc 1 M, (Real.sqrt (m : ℝ))⁻¹) *
        (∑ n ∈ Finset.Icc 1 N, (Real.sqrt (n : ℝ))⁻¹) := by
    simp only [Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n _
    apply Finset.sum_congr rfl
    intro m _
    ring
  have hprod := mul_le_mul (sum_inverse_sqrt_le M) (sum_inverse_sqrt_le N)
    (Finset.sum_nonneg (fun _ _ => inv_nonneg.mpr (Real.sqrt_nonneg _)))
    (by positivity : 0 ≤ 2 * Real.sqrt (M : ℝ))
  have hb := mul_le_mul_of_nonneg_left hprod
    (by positivity : 0 ≤ 4 * T * factor P ^ 2)
  rw [hfactor] at hmajor
  unfold thinInteraction thinSum
  simp only [abs_mul, abs_ofNat, Finset.mul_sum]
  change 2 * |∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 M,
    rough P n * (if m < n then rough P m * gram P T m n else 0)| ≤ _
  nlinarith

/-- Fixed explicit payment for the inherited subexponential stage amplitude. -/
theorem time_factor_le (j : ℕ) :
    dyadicTime j * factor (stages j) ^ 2 ≤
      16 * Real.exp (64 / Real.log 2) * Real.exp (dyadicTime j / 8) := by
  have hT := dyadicTime_nonnegative j
  have hf : factor (stages j) ^ 2 ≤
      Real.exp (64 / Real.log 2) * Real.exp (dyadicTime j / 16) := by
    apply (stages_factor_square_le j).trans
    convert sqrt_exponent_bound 4 (1 / 16) (by norm_num) (by norm_num) j using 1 <;>
      congr 1 <;> field_simp <;> ring
  have ht : dyadicTime j ≤ 16 * Real.exp (dyadicTime j / 16) := by
    have he := Real.add_one_le_exp (dyadicTime j / 16)
    linarith
  have hh := mul_le_mul ht hf (sq_nonneg _) (by positivity : 0 ≤ 16 * Real.exp (dyadicTime j / 16))
  calc
    _ ≤ (16 * Real.exp (dyadicTime j / 16)) *
        (Real.exp (64 / Real.log 2) * Real.exp (dyadicTime j / 16)) := hh
    _ = _ := by
      have he : Real.exp (dyadicTime j / 16) * Real.exp (dyadicTime j / 16) =
          Real.exp (dyadicTime j / 8) := by rw [← Real.exp_add]; congr 1 <;> ring
      calc
        _ = 16 * Real.exp (64 / Real.log 2) *
          (Real.exp (dyadicTime j / 16) * Real.exp (dyadicTime j / 16)) := by ring
        _ = _ := by rw [he]

/-- The actual thin strip has a fixed exponent below one, independently of any
bilinear cancellation assumption. It is NOT the entire distinct-core sum. -/
theorem thinInteraction_seven_eighths (j : ℕ) :
    |thinInteraction (stages j) (dyadicTime j) (thinCutoff j)| ≤
      (512 * Real.exp (64 / Real.log 2)) * Real.exp ((7 / 8) * dyadicTime j) := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hN : (Nat.sqrt (2 ^ j) : ℝ)^2 ≤ Real.exp T := by
    rw [show Real.exp T = ((2 ^ j : ℕ) : ℝ) from exp_dyadicTime j]
    exact_mod_cast Nat.sqrt_le' (2 ^ j)
  have he2 : Real.exp (T / 2)^2 = Real.exp T := by
    rw [pow_two, ← Real.exp_add]; congr 1 <;> ring
  have he4 : Real.exp (T / 4)^2 = Real.exp (T / 2) := by
    rw [pow_two, ← Real.exp_add]; congr 1 <;> ring
  have hM : (Nat.sqrt (2 ^ j) : ℝ) ≤ Real.exp (T / 2) :=
    (sq_le_sq₀ (Nat.cast_nonneg _) (Real.exp_pos _).le).mp (by rwa [he2])
  have hsM : Real.sqrt (thinCutoff j : ℝ) ≤ Real.exp (T / 4) := by
    apply (sq_le_sq₀ (Real.sqrt_nonneg _) (Real.exp_pos _).le).mp
    rw [Real.sq_sqrt (Nat.cast_nonneg _), he4]
    exact hM
  have hsN : Real.sqrt (⌊Real.exp T⌋₊ : ℝ) ≤ Real.exp (T / 2) := by
    apply (sq_le_sq₀ (Real.sqrt_nonneg _) (Real.exp_pos _).le).mp
    rw [Real.sq_sqrt (Nat.cast_nonneg _), he2, show ⌊Real.exp T⌋₊ = 2 ^ j from dyadic_cutoff j,
      show Real.exp T = ((2 ^ j : ℕ) : ℝ) from exp_dyadicTime j]
  have hp := mul_le_mul hsM hsN (Real.sqrt_nonneg _) (Real.exp_pos _).le
  have hf := time_factor_le j
  calc
    _ ≤ 32 * T * factor (stages j)^2 *
        Real.sqrt (thinCutoff j : ℝ) * Real.sqrt (⌊Real.exp T⌋₊ : ℝ) :=
      thinInteraction_abs_le (stages j) (stages_prime j) hT (thinCutoff j)
    _ ≤ 32 * (T * factor (stages j)^2) * (Real.exp (T / 4) * Real.exp (T / 2)) := by
      nlinarith [mul_le_mul_of_nonneg_left hp (by positivity : 0 ≤ 32 * T * factor (stages j)^2)]
    _ ≤ 32 * (16 * Real.exp (64 / Real.log 2) * Real.exp (T / 8)) *
        (Real.exp (T / 4) * Real.exp (T / 2)) := by
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left hf (by norm_num : (0 : ℝ) ≤ 32)) (by positivity)
    _ = _ := by
      have he : Real.exp (T / 8) * (Real.exp (T / 4) * Real.exp (T / 2)) =
          Real.exp ((7 / 8) * T) := by rw [← Real.exp_add, ← Real.exp_add]; congr 1 <;> ring
      calc
        _ = (512 * Real.exp (64 / Real.log 2)) *
          (Real.exp (T / 8) * (Real.exp (T / 4) * Real.exp (T / 2))) := by ring
        _ = _ := by rw [he]

end GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
