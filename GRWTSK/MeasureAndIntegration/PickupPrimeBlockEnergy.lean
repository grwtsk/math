/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.GeneralTopology.PickupPrimeBlockSource

/-!
# Signed prime-stage energy accounting with an independent diagonal bound

The source energy is unchanged by regrouping. Adding a fresh prime transfers a
SIGNED same-core interaction between the diagonal and the distinct-core sum.
The transfer has opposite signs in those two places; it is never credited twice.
Pointwise nonnegative blocks are NOT required, including after the prime 5.
The block-diagonal estimate is proved from the actual responses and is uniform
in the selected primes and horizon. It is not a full-source growth estimate.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.MertensSignedPairDescent
open GRWTSK.NumberTheory.Moebius.PickupOptimizationGap
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

/-- This factor is prescribed by the selected primes, independently of source energy. -/
def factor : List ℕ → ℝ
  | [] => 1
  | p :: P => (1 + (Real.sqrt (p : ℝ))⁻¹) * factor P

theorem factor_nonnegative (P : List ℕ) : 0 ≤ factor P := by
  induction P with
  | nil => norm_num [factor]
  | cons p P ih =>
      exact mul_nonneg (add_nonneg zero_le_one (inv_nonneg.mpr (Real.sqrt_nonneg _))) ih

theorem inverse_sqrt_le_one {p : ℕ} (hp : 1 ≤ p) : (Real.sqrt (p : ℝ))⁻¹ ≤ 1 := by
  have hR : (1 : ℝ) ≤ p := by exact_mod_cast hp
  have hs : (1 : ℝ) ≤ Real.sqrt (p : ℝ) := by
    simpa only [Real.sqrt_one] using Real.sqrt_le_sqrt hR
  have hspos : 0 < Real.sqrt (p : ℝ) := lt_of_lt_of_le zero_lt_one hs
  simpa only [one_div] using (div_le_one hspos).mpr hs

/-- The genuine causal response loses at least the inverse square-root factor on dilation. -/
theorem response_dilate_le {p m : ℕ} (hp : 1 ≤ p) (hm : 1 ≤ m) (u : ℝ) :
    pickupResponse (p * m) u ≤ (Real.sqrt (p : ℝ))⁻¹ * pickupResponse m u := by
  have hpm : m ≤ p * m := by nlinarith
  have hmR : (0 : ℝ) < m := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hm)
  have hlog : Real.log (m : ℝ) ≤ Real.log ((p * m : ℕ) : ℝ) :=
    Real.log_le_log hmR (by exact_mod_cast hpm)
  have hb0 : 0 ≤ (Real.sqrt (p : ℝ))⁻¹ := inv_nonneg.mpr (Real.sqrt_nonneg _)
  have hb1 := inverse_sqrt_le_one hp
  by_cases hu : Real.log ((p * m : ℕ) : ℝ) ≤ u
  · have hum : Real.log (m : ℝ) ≤ u := hlog.trans hu
    simp only [pickupResponse, if_pos hu, if_pos hum]
    rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg p), mul_inv_rev]
    have he := mul_nonneg (sub_nonneg.mpr hb1) (Real.exp_pos (-u / 2)).le
    nlinarith
  · simp only [pickupResponse, if_neg hu]
    exact mul_nonneg hb0 (response_nonneg hm u)

/-- Exact signs stay in the block; absolute values enter only this auxiliary majorant. -/
theorem block_abs_le (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N m : ℕ) (hm : 1 ≤ m) (u : ℝ) :
    |block P N m u| ≤ factor P * pickupResponse m u := by
  induction P generalizing m with
  | nil =>
      by_cases h : m ≤ N
      · simp [block, factor, h, abs_of_nonneg (response_nonneg hm u)]
      · simp only [block, factor, if_neg h, abs_zero, one_mul]
        exact response_nonneg hm u
  | cons p P ih =>
      have hp := hP p (by simp)
      have htail : ∀ q ∈ P, Nat.Prime q := fun q hq => hP q (by simp [hq])
      have hm' : 1 ≤ p * m := by nlinarith [hp.two_le]
      have h1 := ih htail m hm
      have h2 := ih htail (p * m) hm'
      have hscale := mul_le_mul_of_nonneg_left
        (response_dilate_le hp.one_lt.le hm u) (factor_nonnegative P)
      calc
        |block (p :: P) N m u| ≤ |block P N m u| + |block P N (p * m) u| := abs_sub _ _
        _ ≤ factor P * pickupResponse m u +
            factor P * ((Real.sqrt (p : ℝ))⁻¹ * pickupResponse m u) :=
          add_le_add h1 (h2.trans hscale)
        _ = factor (p :: P) * pickupResponse m u := by simp only [factor]; ring

/-- A convenient bound not requiring any prime counting theorem. -/
theorem factor_le_exp_length (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    factor P ≤ Real.exp (P.length : ℝ) := by
  induction P with
  | nil => simp [factor]
  | cons p P ih =>
      have hp := hP p (by simp)
      have htail : ∀ q ∈ P, Nat.Prime q := fun q hq => hP q (by simp [hq])
      have he : 1 + (Real.sqrt (p : ℝ))⁻¹ ≤ Real.exp 1 := by
        have hb := inverse_sqrt_le_one hp.one_lt.le
        have hh := Real.add_one_le_exp (1 : ℝ)
        linarith
      calc
        factor (p :: P) ≤ Real.exp 1 * Real.exp (P.length : ℝ) :=
          mul_le_mul he (ih htail) (factor_nonnegative P) (Real.exp_pos 1).le
        _ = Real.exp ((p :: P).length : ℝ) := by
          rw [← Real.exp_add]
          congr 1
          simp only [List.length_cons, Nat.cast_add, Nat.cast_one]
          ring

def gram (P : List ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  ∫ u in (0 : ℝ)..T,
    block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ n u

def diagonal (P : List ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, rough P m ^ 2 * gram P T m m

/-- All ordered DISTINCT rough-core interactions; this is not an arbitrary remainder. -/
def interaction (P : List ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    if m ≠ n then rough P m * rough P n * gram P T m n else 0

/-- The signed same-core interaction transferred by one fresh-prime insertion. -/
def credit (P : List ℕ) (p : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    rough (p :: P) m ^ 2 * gram P T m (p * m)

theorem gram_symmetric (P : List ℕ) (T : ℝ) (m n : ℕ) :
    gram P T m n = gram P T n m := by
  unfold gram
  apply intervalIntegral.integral_congr
  intro u _
  exact mul_comm _ _

theorem gram_diagonal_nonnegative (P : List ℕ) {T : ℝ} (hT : 0 ≤ T) (m : ℕ) :
    0 ≤ gram P T m m := by
  rw [gram, intervalIntegral.integral_of_le hT]
  exact integral_nonneg (fun u => mul_self_nonneg _)

theorem diagonal_nonnegative (P : List ℕ) {T : ℝ} (hT : 0 ≤ T) :
    0 ≤ diagonal P T :=
  Finset.sum_nonneg (fun m _ => mul_nonneg (sq_nonneg _) (gram_diagonal_nonnegative P hT m))

theorem gram_support (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (T : ℝ) (m n : ℕ) (hm : ⌊Real.exp T⌋₊ < m) : gram P T m n = 0 := by
  unfold gram
  simp_rw [block_support P (fun p hp => (hP p hp).one_lt.le) _ m hm]
  simp

/-- Actual square integral for arbitrary coefficients in the same source block family. -/
theorem block_quadratic_identity (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (T : ℝ) (a : ℕ → ℝ) :
    (∫ u in (0 : ℝ)..T, (pairing ⌊Real.exp T⌋₊ a (fun m => block P ⌊Real.exp T⌋₊ m u)) ^ 2) =
      ∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊, ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        a m * a n * gram P T m n := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hc (m : ℕ) (hm : m ∈ S) (n : ℕ) (hn : n ∈ S) :
      Continuous (fun u => a m * a n *
        (block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ n u)) :=
    continuous_const.mul ((block_continuous P hP _ m (Finset.mem_Icc.mp hm).1).mul
      (block_continuous P hP _ n (Finset.mem_Icc.mp hn).1))
  calc
    _ = ∫ u in (0 : ℝ)..T, ∑ m ∈ S, ∑ n ∈ S,
        a m * a n * (block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ n u) := by
      apply intervalIntegral.integral_congr
      intro u _
      unfold pairing
      rw [pow_two, Finset.sum_mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      apply Finset.sum_congr rfl
      intro n _
      ring
    _ = _ := by
      rw [intervalIntegral.integral_finsetSum]
      · apply Finset.sum_congr rfl
        intro m hm
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro n _
          exact intervalIntegral.integral_const_mul _ _
        · intro n hn
          exact (hc m hm n hn).intervalIntegrable _ _
      · intro m hm
        apply Continuous.intervalIntegrable
        apply continuous_finsetSum
        intro n hn
        exact hc m hm n hn

/-- The unchanged native energy, with all within-block and between-block terms. -/
theorem source_energy_split (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (hnd : P.Nodup) {T : ℝ} (hT : 0 ≤ T) :
    pickupEnergy T = diagonal P T + interaction P T := by
  have hi := block_quadratic_identity P hP T (rough P)
  have hs (u : ℝ) := original_eq_rough_blocks P hP hnd ⌊Real.exp T⌋₊ u
  simp_rw [← hs] at hi
  rw [response_gram_quadratic_identity] at hi
  change pickupFullGram T = _ at hi
  rw [pickup_full_gram_split, ← pickupEnergy_eq_diagonal_add_cross hT] at hi
  rw [hi, complete_gram_split]
  rfl

/-- No sign of the individual prime-stage blocks is used. -/
theorem gram_diagonal_le (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) {m : ℕ} (hm : 1 ≤ m) :
    gram P T m m ≤ factor P ^ 2 * pickupResponseGram T m m := by
  have hc := block_continuous P hP ⌊Real.exp T⌋₊ m hm
  have hr := pickupResponse_continuous hm
  have hpoint (u : ℝ) :
      block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ m u ≤
        factor P ^ 2 * (pickupResponse m u * pickupResponse m u) := by
    have ha := block_abs_le P hP ⌊Real.exp T⌋₊ m hm u
    have hb0 := mul_nonneg (factor_nonnegative P) (response_nonneg hm u)
    have hs := (sq_le_sq₀ (abs_nonneg _) hb0).mpr ha
    rw [sq_abs, mul_pow] at hs
    convert hs using 1 <;> ring
  have he := intervalIntegral.integral_mono_on hT ((hc.mul hc).intervalIntegrable _ _)
    ((continuous_const.mul (hr.mul hr)).intervalIntegrable _ _)
    (fun u _ => hpoint u)
  simpa only [gram, pickupResponseGram, intervalIntegral.integral_const_mul] using he

/-- An independent, explicitly stage-dependent bound for the actual block diagonal. -/
theorem diagonal_le_factor_sq (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) : diagonal P T ≤ factor P ^ 2 * pickupDiagonal T := by
  unfold diagonal pickupDiagonal
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro m hm
  have hm1 := (Finset.mem_Icc.mp hm).1
  have hg := responseGram_nonneg hm1 hm1 hT
  calc
    rough P m ^ 2 * gram P T m m ≤
        rough P m ^ 2 * (factor P ^ 2 * pickupResponseGram T m m) :=
      mul_le_mul_of_nonneg_left (gram_diagonal_le P hP hT hm1) (sq_nonneg _)
    _ ≤ moebiusReal m ^ 2 * (factor P ^ 2 * pickupResponseGram T m m) :=
      mul_le_mul_of_nonneg_right (rough_sq_le P m) (mul_nonneg (sq_nonneg _) hg)
    _ = _ := by ring

theorem gram_cons_diagonal (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (p : ℕ) (hp : Nat.Prime p) (T : ℝ) (m : ℕ) (hm : 1 ≤ m) :
    gram (p :: P) T m m = gram P T m m + gram P T (p * m) (p * m) -
      2 * gram P T m (p * m) := by
  have hm' : 1 ≤ p * m := by nlinarith [hp.two_le]
  have hc := block_continuous P hP ⌊Real.exp T⌋₊ m hm
  have hd := block_continuous P hP ⌊Real.exp T⌋₊ (p * m) hm'
  unfold gram
  calc
    _ = ∫ u in (0 : ℝ)..T,
        (block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ m u +
          block P ⌊Real.exp T⌋₊ (p * m) u * block P ⌊Real.exp T⌋₊ (p * m) u) -
          2 * (block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ (p * m) u) := by
      apply intervalIntegral.integral_congr
      intro u _
      simp only [block]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_sub
        (((hc.mul hc).add (hd.mul hd)).intervalIntegrable _ _)
        ((continuous_const.mul (hc.mul hd)).intervalIntegrable _ _),
        intervalIntegral.integral_add ((hc.mul hc).intervalIntegrable _ _)
          ((hd.mul hd).intervalIntegrable _ _), intervalIntegral.integral_const_mul]

/-- The source diagonal changes by a SIGNED overlap, not an assumed positive credit. -/
theorem diagonal_step (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) (hfresh : p ∉ P) (T : ℝ) :
    diagonal (p :: P) T = diagonal P T - 2 * credit P p T := by
  let S := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hold : diagonal P T =
      (∑ m ∈ S, rough (p :: P) m ^ 2 * gram P T m m) +
      ∑ m ∈ S, rough (p :: P) m ^ 2 * gram P T (p * m) (p * m) := by
    unfold diagonal
    simp_rw [rough_square_split P hP p hp hfresh, add_mul]
    rw [Finset.sum_add_distrib]
    congr 1
    exact pairing_quotient ⌊Real.exp T⌋₊ p hp.pos
      (fun m => rough (p :: P) m ^ 2) (fun m => gram P T m m)
      (fun m hm => gram_support P hP T m m hm)
  have hnew : diagonal (p :: P) T =
      (∑ m ∈ S, rough (p :: P) m ^ 2 * gram P T m m) +
      (∑ m ∈ S, rough (p :: P) m ^ 2 * gram P T (p * m) (p * m)) -
        2 * credit P p T := by
    unfold diagonal credit
    rw [Finset.mul_sum, ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro m hm
    rw [gram_cons_diagonal P hP p hp T m (Finset.mem_Icc.mp hm).1]
    ring
  rw [hnew, hold]

/-- Regrouping transfers the same overlap with the OPPOSITE sign to distinct cores. -/
theorem interaction_step (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hnd : P.Nodup) (p : ℕ) (hp : Nat.Prime p) (hfresh : p ∉ P)
    {T : ℝ} (hT : 0 ≤ T) :
    interaction (p :: P) T = interaction P T + 2 * credit P p T := by
  have hnew := source_energy_split (p :: P)
    (by intro q hq; rcases List.mem_cons.mp hq with rfl | hq; exact hp; exact hP q hq)
    (List.nodup_cons.mpr ⟨hfresh, hnd⟩) hT
  have hold := source_energy_split P hP hnd hT
  rw [diagonal_step P hP p hp hfresh] at hnew
  linarith

end GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
