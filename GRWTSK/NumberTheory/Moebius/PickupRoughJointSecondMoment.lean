/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRoughQuotientSplit
import GRWTSK.Analysis.FiniteSums.FinitePowerMoments

/-!
# A two-parameter second moment of the JOINT remaining arithmetic expression

The small-prime sector and the whole long-prime coprime channel are combined
before squaring. The repeated-prime correction becomes an explicit p not-dvd q
guard, using the proved divisor-count insertion. Both parameters and every
cross term remain. No size bound for the full mean or its off-diagonal is
asserted. The source prime stage, cutoff, horizon and Gram are unchanged.
SOURCE_PROOF_CANDIDATE / compilation, kernel and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughJointSecondMoment

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughQuotientPrimeLayer
open GRWTSK.Analysis.FiniteSums.FinitePowerMoments

/-- Repeated primes vanish only after their explicit correction is included. -/
theorem corrected_ratio {P : List ℕ} {N p : ℕ}
    (hp : p ∈ freshPrimes P N) (q : ℕ) :
    correctedQuotient P p q / (omega P N (p*q) : ℝ) =
      if p ∣ q then 0 else rough P q / ((omega P N q : ℝ)+1) := by
  by_cases hd : p ∣ q
  · simp [correctedQuotient_eq, hd]
  · rw [correctedQuotient_eq, if_neg hd, if_neg hd, omega_product hp hd]
    push_cast <;> rfl

/-- The original rough coefficient is multiplicative only at coprime indices. -/
theorem rough_mul_coprime (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {m n : ℕ} (hmn : Nat.Coprime m n) :
    rough P (m*n) = rough P m * rough P n := by
  induction P with
  | nil =>
      change (moebiusReal (m*n)) = moebiusReal m * moebiusReal n
      unfold moebiusReal
      rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hmn]
      push_cast <;> rfl
  | cons p P ih =>
      have hp := hP p (by simp)
      have ht : ∀ r ∈ P, Nat.Prime r := fun r hr => hP r (by simp [hr])
      have hd : p ∣ m*n ↔ p ∣ m ∨ p ∣ n := hp.dvd_mul
      by_cases hm : p ∣ m <;> by_cases hn : p ∣ n <;>
        simp [rough, hd, hm, hn, ih ht]

/-- Count additivity refers to the same frozen extraction inventory. -/
theorem omega_coprime (P : List ℕ) (N : ℕ) {m n : ℕ} (hmn : Nat.Coprime m n) :
    omega P N (m*n) = omega P N m + omega P N n := by
  let Q := freshPrimes P N
  have he : FinitePrimeDivisorExtraction.selectedDivisors Q (m*n) =
      FinitePrimeDivisorExtraction.selectedDivisors Q m ∪
        FinitePrimeDivisorExtraction.selectedDivisors Q n := by
    ext p
    simp only [FinitePrimeDivisorExtraction.selectedDivisors,
      Finset.mem_filter, Finset.mem_union]
    by_cases hp : p ∈ Q
    · have hprime := (fresh_mem hp).1
      simp [hp, hprime.dvd_mul]
    · simp [hp]
  have hd : Disjoint (FinitePrimeDivisorExtraction.selectedDivisors Q m)
      (FinitePrimeDivisorExtraction.selectedDivisors Q n) := by
    apply Finset.disjoint_left.mpr
    intro p hpm hpn
    obtain ⟨hp, hm⟩ := Finset.mem_filter.mp hpm
    have hn := (Finset.mem_filter.mp hpn).2
    have hg : p ∣ Nat.gcd m n := Nat.dvd_gcd hm hn
    rw [hmn.gcd_eq_one] at hg
    exact (fresh_mem hp).1.not_dvd_one hg
  unfold omega FinitePrimeDivisorExtraction.divisorCount
  change (FinitePrimeDivisorExtraction.selectedDivisors Q (m*n)).card = _
  rw [he, Finset.card_union_of_disjoint hd]

theorem auxiliary_multiplicative (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N : ℕ) {m n : ℕ} (hmn : Nat.Coprime m n) (t : ℝ) :
    rough P (m*n)*t^(omega P N (m*n)) =
      (rough P m*t^(omega P N m))*(rough P n*t^(omega P N n)) := by
  rw [rough_mul_coprime P hP hmn, omega_coprime P N hmn, pow_add]
  ring

/-- Averaging multiplicative coefficients does NOT make their average multiplicative.
The exact defect is the same centered kernel appearing in the second moment. -/
theorem integrated_weight_defect (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N : ℕ) {m n : ℕ} (hmn : Nat.Coprime m n) :
    rough P (m*n)/((omega P N (m*n) : ℝ)+1) -
      (rough P m/((omega P N m : ℝ)+1))*(rough P n/((omega P N n : ℝ)+1)) =
      rough P m*rough P n*covariance (omega P N m) (omega P N n) := by
  rw [rough_mul_coprime P hP hmn, omega_coprime P N hmn]
  push_cast
  unfold covariance
  ring

/-- Z partitions extraction primes only; it does not alter the block stage. -/
def joint (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  shortPart P N L X Y Z G + coprimePart P N L X Y Z G

/-- All small-prime and long-coprime contributions at the SAME quotient q.
The original larger index p*q and every closed cutoff are retained. -/
def column (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) (q : ℕ) : ℝ :=
  ∑ p ∈ freshPrimes P N, ∑ m ∈ Finset.Icc 1 N,
    if q ≤ N/p ∧ ¬p ∣ q ∧ inWindow L X Y p q m ∧ (p ≤ Z ∨ ¬p ∣ m)
    then rough P m * G m (p*q) else 0

/-- Prime-first expansion, before changing any arithmetic normalization. -/
theorem joint_prime_first (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    joint P N L X Y Z G =
      ∑ p ∈ freshPrimes P N, ∑ q ∈ Finset.Icc 1 (N/p),
        ∑ m ∈ Finset.Icc 1 N,
          if inWindow L X Y p q m ∧ (p ≤ Z ∨ ¬p ∣ m)
          then atom P N G p q m else 0 := by
  unfold joint shortPart coprimePart primeSlice coprimeSlice
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : p ≤ Z
  · simp [hp, show ¬Z < p by omega]
  · simp [hp, show Z < p by omega]

/-- Exact quotient-column return. This proves the weight transformation even
in the short-prime sector, without deleting its repeated-prime guard. -/
theorem joint_eq_columns (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    joint P N L X Y Z G =
      ∑ q ∈ Finset.Icc 1 N, rough P q * column P N L X Y Z G q /
        ((omega P N q : ℝ)+1) := by
  rw [joint_prime_first]
  have hfilter (p : ℕ) : (Finset.Icc 1 N).filter (fun q => q ≤ N/p) =
      Finset.Icc 1 (N/p) := by
    ext q
    simp only [Finset.mem_filter, Finset.mem_Icc]
    have h := Nat.div_le_self N p
    omega
  have hrow (p : ℕ) (hp : p ∈ freshPrimes P N) :
      (∑ q ∈ Finset.Icc 1 (N/p), ∑ m ∈ Finset.Icc 1 N,
        if inWindow L X Y p q m ∧ (p ≤ Z ∨ ¬p ∣ m)
        then atom P N G p q m else 0) =
      ∑ q ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if q ≤ N/p ∧ ¬p ∣ q ∧ inWindow L X Y p q m ∧ (p ≤ Z ∨ ¬p ∣ m)
        then rough P q * (rough P m * G m (p*q)) / ((omega P N q : ℝ)+1)
        else 0 := by
    rw [← hfilter p, Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro q _
    by_cases hq : q ≤ N/p
    · simp only [if_pos hq]
      apply Finset.sum_congr rfl
      intro m _
      have he : atom P N G p q m = rough P m *
          (correctedQuotient P p q / (omega P N (p*q) : ℝ)) * G m (p*q) := by
        unfold atom
        ring
      by_cases hw : inWindow L X Y p q m ∧ (p ≤ Z ∨ ¬p ∣ m)
      · rw [if_pos hw, he, corrected_ratio hp]
        by_cases hd : p ∣ q <;> simp [hq, hw.1, hw.2, hd] <;> ring
      · have hn : ¬ (¬p ∣ q ∧ inWindow L X Y p q m ∧ (p ≤ Z ∨ ¬p ∣ m)) := by
          intro h
          exact hw h.2
        simp [hw, hq, hn]
    · simp [hq]
  calc
    _ = ∑ p ∈ freshPrimes P N, ∑ q ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if q ≤ N/p ∧ ¬p ∣ q ∧ inWindow L X Y p q m ∧ (p ≤ Z ∨ ¬p ∣ m)
        then rough P q * (rough P m * G m (p*q)) / ((omega P N q : ℝ)+1)
        else 0 := Finset.sum_congr rfl hrow
    _ = _ := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro q _
      simp only [column, Finset.mul_sum, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro p _
      apply Finset.sum_congr rfl
      intro m _
      split_ifs <;> simp

/-- Source coefficient of the auxiliary polynomial, not an assigned residual. -/
def jointCoefficient (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) (q : ℕ) : ℝ :=
  rough P q * column P N L X Y Z G q

theorem joint_eq_integral (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    joint P N L X Y Z G =
      ∫ t in (0 : ℝ)..1, polynomial (Finset.Icc 1 N)
        (jointCoefficient P N L X Y Z G) (omega P N) t := by
  rw [integral_polynomial, joint_eq_columns]
  rfl

/-- Two auxiliary parameters and all joint small/low/high cross terms. -/
theorem joint_second_moment (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    (joint P N L X Y Z G)^2 =
      ∫ t in (0 : ℝ)..1, ∫ s in (0 : ℝ)..1,
        polynomial (Finset.Icc 1 N) (jointCoefficient P N L X Y Z G) (omega P N) t *
        polynomial (Finset.Icc 1 N) (jointCoefficient P N L X Y Z G) (omega P N) s := by
  rw [two_parameter_moment, joint_eq_columns]
  rfl

theorem joint_square_expansion (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    (joint P N L X Y Z G)^2 = ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
      jointCoefficient P N L X Y Z G q * jointCoefficient P N L X Y Z G r /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) := by
  rw [joint_eq_columns]
  exact mean_square_expansion (Finset.Icc 1 N) (jointCoefficient P N L X Y Z G) (omega P N)

/-- The source-identified centered correlation is computed exactly. -/
theorem joint_centered_moment (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    (∫ t in (0 : ℝ)..1,
      (polynomial (Finset.Icc 1 N) (jointCoefficient P N L X Y Z G) (omega P N) t -
        joint P N L X Y Z G)^2) =
      ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        jointCoefficient P N L X Y Z G q * jointCoefficient P N L X Y Z G r *
          covariance (omega P N q) (omega P N r) := by
  have hm : joint P N L X Y Z G =
      mean (Finset.Icc 1 N) (jointCoefficient P N L X Y Z G) (omega P N) :=
    joint_eq_columns P N L X Y Z G
  rw [hm]
  exact centered_moment _ _ _

/-- The low-q arithmetic is used on the JOINT column, not on separate channels. -/
theorem low_monomial (j N q : ℕ) (hq : q ∈ Finset.Icc 1 N) (hsize : q ≤ j^2)
    (C t : ℝ) :
    rough (stages j) q * C * t^(omega (stages j) N q) =
      (if q=1 then C else 0) -
        (if Nat.Prime q ∧ j<q then C*t else 0) := by
  by_cases hu : q=1
  · subst q
    simp [rough_one (stages j) (stages_prime j), omega_one]
  have hq1 : 1 < q := by have := (Finset.mem_Icc.mp hq).1; omega
  by_cases hpr : Nat.Prime q
  · by_cases hj : q ≤ j
    · rw [rough_at_prime j q hpr, if_pos hj]
      simp [hu, show ¬j<q by omega]
    · have hf : q ∈ freshPrimes (stages j) N := by
        rw [freshPrimes_stages]
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨by omega, (Finset.mem_Icc.mp hq).2⟩, hpr⟩
      rw [rough_at_prime j q hpr, if_neg hj, omega_prime hf]
      simp [hu, hpr, show j<q by omega]
  · rw [rough_composite_small_zero hq1 hsize hpr]
    simp [hu, hpr]

/-- The low quotient polynomial is unit minus t times the JOINT prime column.
All small-prime/high-prime cross terms are present in that column. -/
theorem joint_polynomial_low_high (j N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) (t : ℝ) :
    polynomial (Finset.Icc 1 N) (jointCoefficient (stages j) N L X Y Z G)
      (omega (stages j) N) t =
      (∑ q ∈ Finset.Icc 1 N, if q ≤ j^2 ∧ q=1 then
        column (stages j) N L X Y Z G q else 0) -
      t*(∑ q ∈ Finset.Icc 1 N, if q ≤ j^2 ∧ Nat.Prime q ∧ j<q then
        column (stages j) N L X Y Z G q else 0) +
      polynomial (Finset.Icc 1 N)
        (fun q => if j^2<q then jointCoefficient (stages j) N L X Y Z G q else 0)
        (omega (stages j) N) t := by
  unfold polynomial
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q hq
  by_cases hlow : q ≤ j^2
  · have he := low_monomial j N q hq hlow (column (stages j) N L X Y Z G q) t
    change rough (stages j) q * column (stages j) N L X Y Z G q *
      t ^ omega (stages j) N q = _
    rw [he]
    simp only [hlow, show ¬j^2<q by omega, true_and, if_false, zero_mul, add_zero]
    split_ifs <;> ring
  · have hh : j^2<q := by omega
    simp [hlow, hh, jointCoefficient]

/-- The mean is tied back to the original interaction, including both orientations. -/
theorem interaction_joint (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (T : ℝ) (L Z : ℕ) (hL : L ≤ ⌊Real.exp T⌋₊) :
    interaction P T = thinInteraction P T L -
      2*sharedPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T) -
      2*joint P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T) := by
  rw [interaction_eq_thin_add_tail P T L hL,
    upperTail_partition P hP ⌊Real.exp T⌋₊ L Z (gram P T)]
  unfold joint
  ring

/-- Positivity pays the upper side of the joint mean. The required LOWER side
is not supplied by this theorem, nor by a centered covariance identity. -/
theorem joint_upper_from_square (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) (L Z : ℕ) (hL : L ≤ ⌊Real.exp T⌋₊) :
    2*joint P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T) ≤
      diagonal P T + |thinInteraction P T L| +
        2*|sharedPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T)| := by
  have hq := block_quadratic_identity P hP T (rough P)
  rw [complete_gram_split] at hq
  have hn : 0 ≤ diagonal P T + interaction P T := by
    change 0 ≤ (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, rough P m^2 * gram P T m m) +
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        if m ≠ n then rough P m*rough P n*gram P T m n else 0
    rw [← hq]
    rw [intervalIntegral.integral_of_le hT]
    exact MeasureTheory.integral_nonneg (fun _ => sq_nonneg _)
  rw [interaction_joint P hP T L Z hL] at hn
  have ht := le_abs_self (thinInteraction P T L)
  have hs := neg_abs_le
    (sharedPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T))
  linarith

/-- Exact gcd fibers, before any absolute values or claim of orthogonality. -/
theorem sum_gcd_fibers (N : ℕ) (f : ℕ → ℕ → ℝ) :
    (∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, f q r) =
      ∑ d ∈ Finset.Icc 1 N, ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r=d then f q r else 0 := by
  symm
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro q hq
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro r hr
  have hq0 : 0 < q := (Finset.mem_Icc.mp hq).1
  have hg : Nat.gcd q r ∈ Finset.Icc 1 N := by
    refine Finset.mem_Icc.mpr ⟨Nat.gcd_pos_of_pos_left r hq0, ?_⟩
    exact (Nat.le_of_dvd hq0 (Nat.gcd_dvd_left q r)).trans (Finset.mem_Icc.mp hq).2
  simp [hg, eq_comm]

/-- Exact mean-square grouping; q=r and every off-diagonal fiber remain. -/
theorem joint_square_gcd (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    (joint P N L X Y Z G)^2 =
      ∑ d ∈ Finset.Icc 1 N, ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r=d then
          jointCoefficient P N L X Y Z G q * jointCoefficient P N L X Y Z G r /
            (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1)) else 0 := by
  rw [joint_square_expansion]
  exact sum_gcd_fibers N _

end GRWTSK.NumberTheory.Moebius.PickupRoughJointSecondMoment
