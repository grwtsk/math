/- Copyright (c) 2026 grwtsk. MIT.
Mathlib integration and arithmetic-function results retain their original authorship
and Apache-2.0 license. Other imported GRWTSK sources retain their licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensSignedAbelRamareCofactor
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# The actual Ramare coefficient as a mixture of multiplicative deformations

The method is the integral representation used in Lemma 4.3 of Siddarth
Menon, arXiv:2607.15574v1. Only the exact finite/multiplicative/integral
identities are proved here. That paper's Halasz estimate, prime-range
conditions, pretentious-distance bounds and uniform parameter estimates
are NOT imported. This works for every finite selected prime set.
The shifted factor in the original prefix remains unchanged and is NOT
asserted multiplicative. Raw and repeated prefixes keep their own guards.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.NumberTheory.Moebius.RamareMultiplicativeMixture
open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelRamareCofactor

/-- For fixed y, deform only the selected-prime values, retaining the actual Mobius function. -/
def primeDamped (P : Finset ℕ) (y : ℝ) (n : ℕ) : ℝ :=
  moebiusReal n * y ^ divisorCount P n

theorem selectedDivisors_mul (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) (m n : ℕ) :
    selectedDivisors P (m*n) = selectedDivisors P m ∪ selectedDivisors P n := by
  ext p
  simp only [selectedDivisors, Finset.mem_filter, Finset.mem_union]
  by_cases hp : p ∈ P
  · simp only [hp, true_and]
    exact (hP p hp).dvd_mul
  · simp [hp]

/-- The count is additive only under coprimality; repeated primes do not count twice. -/
theorem divisorCount_mul_of_coprime (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {m n : ℕ} (hcop : Nat.Coprime m n) :
    divisorCount P (m*n) = divisorCount P m + divisorCount P n := by
  have hdis : Disjoint (selectedDivisors P m) (selectedDivisors P n) := by
    apply Finset.disjoint_left.mpr
    intro p hm hn
    have hpm := Finset.mem_filter.mp hm
    have hpn := Finset.mem_filter.mp hn
    have hd : p ∣ Nat.gcd m n := Nat.dvd_gcd hpm.2 hpn.2
    change Nat.gcd m n = 1 at hcop
    rw [hcop] at hd
    exact (hP p hpm.1).ne_one (Nat.dvd_one.mp hd)
  unfold divisorCount
  rw [selectedDivisors_mul P hP, Finset.card_union_of_disjoint hdis]

/-- A fixed damping parameter gives ordinary multiplicativity at coprime positive arguments. -/
theorem primeDamped_multiplicative (P : Finset ℕ)
    (hP : ∀ p ∈ P, Nat.Prime p) (y : ℝ) {m n : ℕ}
    (_hm : 0 < m) (_hn : 0 < n) (hcop : Nat.Coprime m n) :
    primeDamped P y (m*n) = primeDamped P y m * primeDamped P y n := by
  have hmu : moebiusReal (m*n) = moebiusReal m * moebiusReal n := by
    unfold moebiusReal
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
      Int.cast_mul]
  simp only [primeDamped, divisorCount_mul_of_coprime P hP hcop, pow_add, hmu]
  ring

/-- One-boundedness is uniform over the full closed parameter interval. -/
theorem primeDamped_abs_le_one (P : Finset ℕ) {y : ℝ} (hy : 0 ≤ y ∧ y ≤ 1) (n : ℕ) :
    |primeDamped P y n| ≤ 1 := by
  have hpow : y ^ divisorCount P n ≤ 1 := pow_le_one₀ hy.1 hy.2
  simp only [primeDamped, abs_mul, abs_pow, abs_of_nonneg hy.1]
  exact (mul_le_mul (moebiusReal_abs_le_one n) hpow
    (pow_nonneg hy.1 _) zero_le_one).trans_eq (mul_one 1)

/-- Pinned Mathlib polynomial integration supplies the normalization exactly. -/
theorem integral_primeDamped (P : Finset ℕ) (n : ℕ) :
    (∫ y in (0 : ℝ)..1, primeDamped P y n) = ramareCofactor P n := by
  by_cases hn : n = 0
  · subst n
    simp [primeDamped, moebiusReal, ramareCofactor]
  · unfold primeDamped
    rw [intervalIntegral.integral_const_mul, integral_pow]
    simp [ramareCofactor, hn, mul_div_assoc]

/-- The actual coefficient is the average of multiplicative one-bounded deformations. -/
theorem ramareCofactor_eq_mixture (P : Finset ℕ) (n : ℕ) :
    ramareCofactor P n = ∫ y in (0 : ℝ)..1, primeDamped P y n :=
  (integral_primeDamped P n).symm

/-- The two source prefix types are handled with one literal guard parameter. -/
def dampedPrefix (P : Finset ℕ) (keep : ℕ → ℕ → Prop)
    (h N : ℕ) (f : ℕ → ℝ) (y : ℝ) : ℝ :=
  ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N+h)/p),
    if h < p*m ∧ keep p m then f (p*m-h) * primeDamped P y m else 0

theorem integral_dampedPrefix (P : Finset ℕ) (keep : ℕ → ℕ → Prop)
    (h N : ℕ) (f : ℕ → ℝ) :
    (∫ y in (0 : ℝ)..1, dampedPrefix P keep h N f y) =
      ∑ p ∈ P, ∑ m ∈ Finset.Icc 1 ((N+h)/p),
        if h < p*m ∧ keep p m then f (p*m-h) * ramareCofactor P m else 0 := by
  have hc (p m : ℕ) : Continuous (fun y : ℝ =>
      if h < p*m ∧ keep p m then f (p*m-h) * primeDamped P y m else 0) := by
    by_cases hs : h < p*m ∧ keep p m
    · simp only [if_pos hs, primeDamped]
      fun_prop
    · simp only [if_neg hs]
      exact continuous_const
  have hcp (p : ℕ) : Continuous (fun y : ℝ =>
      ∑ m ∈ Finset.Icc 1 ((N+h)/p),
        if h < p*m ∧ keep p m then f (p*m-h) * primeDamped P y m else 0) := by
    apply continuous_finset_sum
    intro m _
    exact hc p m
  unfold dampedPrefix
  rw [intervalIntegral.integral_finsetSum (fun p _ => (hcp p).intervalIntegrable 0 1)]
  apply Finset.sum_congr rfl
  intro p _
  rw [intervalIntegral.integral_finsetSum (fun m _ => (hc p m).intervalIntegrable 0 1)]
  apply Finset.sum_congr rfl
  intro m _
  by_cases hs : h < p*m ∧ keep p m
  · simp only [if_pos hs, intervalIntegral.integral_const_mul, integral_primeDamped]
  · simp [hs]

/-- Every floor, lower cutoff and shifted input remains in the actual raw prefix. -/
theorem ramarePrefix_eq_mixture (P : Finset ℕ) (h N : ℕ) (f : ℕ → ℝ) :
    ramarePrefix P h N f =
      ∫ y in (0 : ℝ)..1, dampedPrefix P (fun _ _ => True) h N f y := by
  rw [integral_dampedPrefix]
  simp only [ramarePrefix, and_true]

/-- Repeated-prime terms are transported separately, not deleted. -/
theorem ramareRepeatedPrefix_eq_mixture (P : Finset ℕ) (h N : ℕ) (f : ℕ → ℝ) :
    ramareRepeatedPrefix P h N f =
      ∫ y in (0 : ℝ)..1, dampedPrefix P (fun p m => p ∣ m) h N f y := by
  rw [integral_dampedPrefix]
  rfl

/-- A genuinely UNIFORM parameter estimate transfers; existence of a favorable y does not. -/
theorem abs_ramarePrefix_le_of_uniform_damping (P : Finset ℕ) (h N : ℕ) (f : ℕ → ℝ)
    {B : ℝ} (hB : ∀ y : ℝ, 0 ≤ y → y ≤ 1 →
      |dampedPrefix P (fun _ _ => True) h N f y| ≤ B) :
    |ramarePrefix P h N f| ≤ B := by
  rw [ramarePrefix_eq_mixture]
  have hn := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (0 : ℝ)) (b := (1 : ℝ)) (C := B)
    (f := fun y => dampedPrefix P (fun _ _ => True) h N f y) (by
      intro y hy
      rw [Set.uIoc_of_le (by norm_num : (0 : ℝ) ≤ 1)] at hy
      simpa only [Real.norm_eq_abs] using hB y hy.1.le hy.2)
  simpa only [Real.norm_eq_abs, sub_zero, abs_one, mul_one] using hn

end GRWTSK.NumberTheory.Moebius.RamareMultiplicativeMixture
