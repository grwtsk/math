/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip

/-!
# A paid shared-prime sector of the actual larger-core extraction

The horizon, block stage and closed cutoff are frozen. A fresh prime is
extracted only from the larger index; its repeated-prime correction is kept.
The sector p > Z, p | m is reindexed m = p*r and independently bounded by a
reciprocal-square tail. At Z = floor(sqrt N) its kernel-free bound is 8 sqrt N.
The same argument on the ACTUAL block Gram pays the corresponding ordered
energy channel at exponent 5/8 on the dyadic schedule. This is not a bound for
the complementary short-prime or coprime sectors, not a bound on the whole R,
and not a new RH wrapper or a source-mass witness.
SOURCE_PROOF_CANDIDATE. Compilation/fresh replay/transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime

open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockTransfer
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip

/-- Both original prefix bounds and the strict original larger index are retained. -/
def inWindow (L X Y p q m : ℕ) : Prop :=
  p * q ≤ Y ∧ L < m ∧ m ≤ X ∧ m < p * q

instance windowDecidable (L X Y p q m : ℕ) : Decidable (inWindow L X Y p q m) :=
  inferInstanceAs (Decidable (p * q ≤ Y ∧ L < m ∧ m ≤ X ∧ m < p * q))

/-- The selected-divisor denominator belongs to p*q, never to q alone. -/
def atom (P : List ℕ) (N : ℕ) (G : ℕ → ℕ → ℝ) (p q m : ℕ) : ℝ :=
  (rough P m * correctedQuotient P p q / (omega P N (p * q) : ℝ)) * G m (p * q)

def primeSlice (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) (p : ℕ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 (N / p), ∑ m ∈ Finset.Icc 1 N,
    if inWindow L X Y p q m then atom P N G p q m else 0

def sharedSlice (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) (p : ℕ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 (N / p), ∑ m ∈ Finset.Icc 1 N,
    if inWindow L X Y p q m ∧ p ∣ m then atom P N G p q m else 0

def coprimeSlice (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) (p : ℕ) : ℝ :=
  ∑ q ∈ Finset.Icc 1 (N / p), ∑ m ∈ Finset.Icc 1 N,
    if inWindow L X Y p q m ∧ ¬p ∣ m then atom P N G p q m else 0

def total (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, primeSlice P N L X Y G p

def shortPart (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, if p ≤ Z then primeSlice P N L X Y G p else 0

def sharedPart (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, if Z < p then sharedSlice P N L X Y G p else 0

def coprimePart (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ p ∈ freshPrimes P N, if Z < p then coprimeSlice P N L X Y G p else 0

def inverseSqrtKernel (m n : ℕ) : ℝ :=
  (Real.sqrt (m : ℝ))⁻¹ * (Real.sqrt (n : ℝ))⁻¹

/-- No positivity or cancellation assumption enters this disjoint partition. -/
theorem primeSlice_split (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ) (p : ℕ) :
    primeSlice P N L X Y G p =
      sharedSlice P N L X Y G p + coprimeSlice P N L X Y G p := by
  unfold primeSlice sharedSlice coprimeSlice
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases hw : inWindow L X Y p q m <;> by_cases hd : p ∣ m <;> simp [hw, hd]

theorem total_partition (P : List ℕ) (N L X Y Z : ℕ) (G : ℕ → ℕ → ℝ) :
    total P N L X Y G = shortPart P N L X Y Z G +
      sharedPart P N L X Y Z G + coprimePart P N L X Y Z G := by
  unfold total shortPart sharedPart coprimePart
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  by_cases hp : p ≤ Z
  · simp [hp, show ¬Z < p by omega]
  · simp only [hp, show Z < p by omega, if_true, if_false, zero_add]
    exact primeSlice_split P N L X Y G p

/-- Return to the pre-existing kernel-free prefix, with no change of denominator. -/
theorem total_inverseSqrt_eq (P : List ℕ) (N L X Y : ℕ) :
    total P N L X Y inverseSqrtKernel = roughPrefixCorrelation P N L X Y := by
  unfold total primeSlice roughPrefixCorrelation quotientBilinear prefixWeight
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro q _
  by_cases hy : p * q ≤ Y
  · simp only [if_pos hy, Finset.sum_mul, Finset.sum_div]
    apply Finset.sum_congr rfl
    intro m _
    by_cases hm : L < m ∧ m ≤ X ∧ m < p * q
    · simp only [inWindow, hy, hm.1, hm.2.1, hm.2.2, and_self, if_true,
        atom, inverseSqrtKernel, div_eq_mul_inv, mul_inv_rev]
      ring
    · simp [inWindow, hy, hm]
  · simp [inWindow, hy]

/-- For full prefixes, the same total is the already extracted ACTUAL Gram tail. -/
theorem total_full_eq_quotient (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) :
    total P N L N N G = quotientBilinear P N (upperWeight P N L G) := by
  unfold total primeSlice quotientBilinear upperWeight
  apply Finset.sum_congr rfl
  intro p hp
  have hp0 := (fresh_mem hp).1.pos
  apply Finset.sum_congr rfl
  intro q hq
  have hpq : p * q ≤ N := by
    have h := (Nat.le_div_iff_mul_le hp0).mp (Finset.mem_Icc.mp hq).2
    simpa only [Nat.mul_comm] using h
  rw [Finset.sum_mul, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro m hm
  have hmN := (Finset.mem_Icc.mp hm).2
  by_cases hw : L < m ∧ m < p * q
  · simp only [inWindow, hpq, hmN, hw.1, hw.2, and_self, if_true, atom]
    ring
  · simp [inWindow, hpq, hmN, hw, atom]

/-- Both ordered orientations remain as -2 times the three prime sectors. -/
theorem upperTail_partition (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    (N L Z : ℕ) (G : ℕ → ℕ → ℝ) :
    upperTail P N L G = -2 *
      (shortPart P N L N N Z G + sharedPart P N L N N Z G +
        coprimePart P N L N N Z G) := by
  rw [upperTail_extraction P hP, ← total_full_eq_quotient, total_partition P N L N N Z G]

/-- The genuine prime criterion is recorded, not a replacement for the divisibility guard. -/
theorem coprime_guard {p m : ℕ} (hp : Nat.Prime p) :
    (¬p ∣ m) ↔ Nat.Coprime p m := hp.coprime_iff_not_dvd.symm

theorem corrected_abs_le_one (P : List ℕ) (p q : ℕ) :
    |correctedQuotient P p q| ≤ 1 := by
  rw [correctedQuotient_eq]
  split_ifs
  · norm_num
  · exact rough_abs_le_one P q

theorem omega_product_pos {P : List ℕ} {N p : ℕ}
    (hp : p ∈ freshPrimes P N) (q : ℕ) : 0 < omega P N (p * q) :=
  divisorCount_pos_of_mem hp ⟨q, rfl⟩

theorem normalized_coefficient_abs_le {P : List ℕ} {N p : ℕ}
    (hp : p ∈ freshPrimes P N) (q m : ℕ) :
    |rough P m * correctedQuotient P p q / (omega P N (p * q) : ℝ)| ≤ 1 := by
  have hw : (1 : ℝ) ≤ (omega P N (p * q) : ℝ) := by
    exact_mod_cast omega_product_pos hp q
  have hprod : |rough P m * correctedQuotient P p q| ≤ 1 := by
    rw [abs_mul]
    simpa using mul_le_mul (rough_abs_le_one P m) (corrected_abs_le_one P p q)
      (abs_nonneg _) (by norm_num : (0 : ℝ) ≤ 1)
  rw [abs_div, abs_of_nonneg (by positivity : (0 : ℝ) ≤ (omega P N (p * q) : ℝ))]
  apply (div_le_iff₀ (by linarith : (0 : ℝ) < (omega P N (p * q) : ℝ))).mpr
  simpa only [one_mul] using hprod.trans hw

/-- Exact reindexing of p|m: both quotient cutoffs are N/p; all other guards survive. -/
theorem sharedSlice_reindex (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ)
    {p : ℕ} (hp : 0 < p) :
    sharedSlice P N L X Y G p =
      ∑ q ∈ Finset.Icc 1 (N / p), ∑ r ∈ Finset.Icc 1 (N / p),
        if inWindow L X Y p q (p * r) then atom P N G p q (p * r) else 0 := by
  unfold sharedSlice
  apply Finset.sum_congr rfl
  intro q _
  let F : ℕ → ℝ := fun m =>
    if inWindow L X Y p q m then atom P N G p q m else 0
  have he := sum_divisible_window_eq_quotient 0 N p hp F
  simp only [zero_add, add_zero] at he
  calc
    _ = ∑ m ∈ Finset.Icc 1 N, if p ∣ m then F m else 0 := by
      apply Finset.sum_congr rfl
      intro m _
      by_cases hw : inWindow L X Y p q m <;> by_cases hd : p ∣ m <;> simp [F, hw, hd]
    _ = ∑ r ∈ Finset.Icc 1 (N / p), if 0 < p * r then F (p * r) else 0 := he
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r hr
      have hr0 : 0 < r := (Finset.mem_Icc.mp hr).1
      simp only [Nat.mul_pos hp hr0, if_true, F]

/-- The shared extracted prime contributes a genuine reciprocal p after square-root weights. -/
theorem inverseSqrtKernel_shared (p r q : ℕ) :
    inverseSqrtKernel (p * r) (p * q) =
      (p : ℝ)⁻¹ * (Real.sqrt (r : ℝ))⁻¹ * (Real.sqrt (q : ℝ))⁻¹ := by
  have he : (Real.sqrt (p : ℝ))⁻¹ * (Real.sqrt (p : ℝ))⁻¹ = (p : ℝ)⁻¹ := by
    rw [← mul_inv_rev, Real.mul_self_sqrt (Nat.cast_nonneg p)]
  simp only [inverseSqrtKernel, Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg p), mul_inv_rev]
  calc
    _ = ((Real.sqrt (p : ℝ))⁻¹ * (Real.sqrt (p : ℝ))⁻¹) *
        (Real.sqrt (r : ℝ))⁻¹ * (Real.sqrt (q : ℝ))⁻¹ := by ring
    _ = _ := by rw [he]

/-- Independent per-prime bound; the kernel hypothesis will be discharged for
both the literal inverse-square-root observation and the actual block Gram. -/
theorem sharedSlice_abs_le (P : List ℕ) (N L X Y : ℕ) (G : ℕ → ℕ → ℝ)
    {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K * inverseSqrtKernel m n)
    {p : ℕ} (hp : p ∈ freshPrimes P N) :
    |sharedSlice P N L X Y G p| ≤ 4 * K * (N : ℝ) / (p : ℝ)^2 := by
  have hp0 := (fresh_mem hp).1.pos
  have hpR : (0 : ℝ) < p := by exact_mod_cast hp0
  let M : ℕ := N / p
  let S : ℝ := ∑ r ∈ Finset.Icc 1 M, (Real.sqrt (r : ℝ))⁻¹
  have hS0 : 0 ≤ S := Finset.sum_nonneg (fun _ _ => by positivity)
  have hS : S ≤ 2 * Real.sqrt (M : ℝ) := sum_inverse_sqrt_le M
  have hS2 : S^2 ≤ 4 * (M : ℝ) := by
    have hs := (sq_le_sq₀ hS0 (by positivity)).mpr hS
    nlinarith [Real.sq_sqrt (Nat.cast_nonneg M : (0 : ℝ) ≤ M)]
  have hM : (M : ℝ) ≤ (N : ℝ) / p := by
    apply (le_div_iff₀ hpR).mpr
    exact_mod_cast Nat.div_mul_le_self N p
  rw [sharedSlice_reindex P N L X Y G hp0]
  have hmajor :
      |∑ q ∈ Finset.Icc 1 M, ∑ r ∈ Finset.Icc 1 M,
        if inWindow L X Y p q (p*r) then atom P N G p q (p*r) else 0| ≤
      ∑ q ∈ Finset.Icc 1 M, ∑ r ∈ Finset.Icc 1 M,
        (K / p) * (Real.sqrt (r : ℝ))⁻¹ * (Real.sqrt (q : ℝ))⁻¹ := by
    calc
      _ ≤ ∑ q ∈ Finset.Icc 1 M, |∑ r ∈ Finset.Icc 1 M,
          if inWindow L X Y p q (p*r) then atom P N G p q (p*r) else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ q ∈ Finset.Icc 1 M, ∑ r ∈ Finset.Icc 1 M,
          |if inWindow L X Y p q (p*r) then atom P N G p q (p*r) else 0| := by
        apply Finset.sum_le_sum
        intro q _
        exact Finset.abs_sum_le_sum_abs _ _
      _ ≤ _ := by
        apply Finset.sum_le_sum
        intro q hq
        apply Finset.sum_le_sum
        intro r hr
        by_cases hw : inWindow L X Y p q (p*r)
        · rw [if_pos hw, atom, abs_mul]
          have hc := normalized_coefficient_abs_le hp q (p*r)
          have hg := hG (p*r) (p*q)
            (Nat.mul_pos hp0 (Finset.mem_Icc.mp hr).1)
            (Nat.mul_pos hp0 (Finset.mem_Icc.mp hq).1)
          calc
            _ ≤ |G (p*r) (p*q)| := by
              simpa using mul_le_mul_of_nonneg_right hc (abs_nonneg (G (p*r) (p*q)))
            _ ≤ K * inverseSqrtKernel (p*r) (p*q) := hg
            _ = _ := by rw [inverseSqrtKernel_shared]; simp only [div_eq_mul_inv]; ring
        · rw [if_neg hw, abs_zero]
          positivity
  have hfactor :
      (∑ q ∈ Finset.Icc 1 M, ∑ r ∈ Finset.Icc 1 M,
        (K / p) * (Real.sqrt (r : ℝ))⁻¹ * (Real.sqrt (q : ℝ))⁻¹) = (K / p) * S^2 := by
    simp only [S, pow_two, Finset.mul_sum, Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro q _
    apply Finset.sum_congr rfl
    intro r _
    ring
  calc
    _ ≤ (K / p) * S^2 := by rw [hfactor] at hmajor; exact hmajor
    _ ≤ (K / p) * (4 * (M : ℝ)) :=
      mul_le_mul_of_nonneg_left hS2 (div_nonneg hK hpR.le)
    _ ≤ (K / p) * (4 * ((N : ℝ) / p)) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hM (by norm_num))
        (div_nonneg hK hpR.le)
    _ = _ := by field_simp [hpR.ne']; ring

/-- A finite integer tail, without a prime-counting theorem or an infinite sum. -/
theorem reciprocal_square_tail (Z N : ℕ) (hZ : 1 ≤ Z) :
    (∑ p ∈ Finset.Icc (Z+1) N, ((p : ℝ)^2)⁻¹) ≤ (Z : ℝ)⁻¹ := by
  have hZr : (0 : ℝ) < Z := by exact_mod_cast hZ
  have hstep (n : ℕ) (hn : 1 ≤ n) :
      (((n+1 : ℕ) : ℝ)^2)⁻¹ ≤ (n : ℝ)⁻¹ - ((n+1 : ℕ) : ℝ)⁻¹ := by
    have hnR : (0 : ℝ) < n := by exact_mod_cast hn
    have hn1 : (0 : ℝ) < (n : ℝ)+1 := by positivity
    push_cast
    calc
      (((n : ℝ)+1)^2)⁻¹ ≤ ((n : ℝ)*((n : ℝ)+1))⁻¹ := by
        simpa only [one_div] using one_div_le_one_div_of_le (mul_pos hnR hn1)
          (show (n : ℝ)*((n : ℝ)+1) ≤ ((n : ℝ)+1)^2 by nlinarith)
      _ = (n : ℝ)⁻¹ - ((n : ℝ)+1)⁻¹ := by
        field_simp [hnR.ne', hn1.ne']
        ring
  have htel (k : ℕ) :
      (∑ p ∈ Finset.Icc (Z+1) (Z+k), ((p : ℝ)^2)⁻¹) ≤
        (Z : ℝ)⁻¹ - ((Z+k : ℕ) : ℝ)⁻¹ := by
    induction k with
    | zero => simp
    | succ k ih =>
        rw [show Z+(k+1) = (Z+k)+1 by omega,
          Finset.sum_Icc_succ_top (by omega : Z+1 ≤ (Z+k)+1)]
        have hs := hstep (Z+k) (by omega)
        linarith
  by_cases hZN : Z ≤ N
  · have h := htel (N-Z)
    rw [show Z+(N-Z) = N by omega] at h
    exact h.trans (sub_le_self _ (by positivity))
  · have he : Finset.Icc (Z+1) N = ∅ := Finset.Icc_eq_empty_of_lt (by omega)
    rw [he, Finset.sum_empty]
    positivity

/-- Independently paid shared-prime sector; all prefixes are uniform. -/
theorem sharedPart_abs_le (P : List ℕ) (N L X Y Z : ℕ) (hZ : 1 ≤ Z)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K * inverseSqrtKernel m n) :
    |sharedPart P N L X Y Z G| ≤ 4 * K * (N : ℝ) / Z := by
  let Q := (freshPrimes P N).filter (fun p => Z < p)
  have hsub : Q ⊆ Finset.Icc (Z+1) N := by
    intro p hp
    obtain ⟨hf, hz⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_Icc.mpr ⟨by omega, (fresh_mem hf).2.2⟩
  have ht : (∑ p ∈ Q, ((p : ℝ)^2)⁻¹) ≤ (Z : ℝ)⁻¹ := by
    calc
      _ ≤ ∑ p ∈ Finset.Icc (Z+1) N, ((p : ℝ)^2)⁻¹ :=
        Finset.sum_le_sum_of_subset_of_nonneg hsub (fun _ _ _ => by positivity)
      _ ≤ _ := reciprocal_square_tail Z N hZ
  have he : sharedPart P N L X Y Z G = ∑ p ∈ Q, sharedSlice P N L X Y G p := by
    simp only [sharedPart, Q, Finset.sum_filter]
  rw [he]
  calc
    _ ≤ ∑ p ∈ Q, |sharedSlice P N L X Y G p| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ p ∈ Q, 4 * K * (N : ℝ) / (p : ℝ)^2 := by
      apply Finset.sum_le_sum
      intro p hp
      exact sharedSlice_abs_le P N L X Y G hK hG (Finset.mem_filter.mp hp).1
    _ = (4 * K * (N : ℝ)) * ∑ p ∈ Q, ((p : ℝ)^2)⁻¹ := by
      simp only [div_eq_mul_inv, Finset.mul_sum]
    _ ≤ (4 * K * (N : ℝ)) * (Z : ℝ)⁻¹ :=
      mul_le_mul_of_nonneg_left ht (by positivity)
    _ = _ := by rw [div_eq_mul_inv]

/-- This is a floor-square-root bound, not a replacement of a closed endpoint. -/
theorem cutoff_div_sqrt_le (N : ℕ) (hN : 1 ≤ N) :
    (N : ℝ) / (Nat.sqrt N : ℝ) ≤ 2 * Real.sqrt (N : ℝ) := by
  have hL : 1 ≤ Nat.sqrt N := Nat.le_sqrt.mpr (by simpa using hN)
  have hLr : (0 : ℝ) < Nat.sqrt N := by exact_mod_cast hL
  have hL1 : (1 : ℝ) ≤ Nat.sqrt N := by exact_mod_cast hL
  have hupper : (N : ℝ) < ((Nat.sqrt N : ℝ)+1)^2 := by
    exact_mod_cast Nat.lt_succ_sqrt' N
  have hs := Real.sq_sqrt (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
  have hs0 := Real.sqrt_nonneg (N : ℝ)
  have hroot : Real.sqrt (N : ℝ) ≤ (Nat.sqrt N : ℝ)+1 := by
    apply (sq_le_sq₀ hs0 (by positivity)).mp
    rw [Real.sq_sqrt (Nat.cast_nonneg N)]
    exact hupper.le
  have hsL : Real.sqrt (N : ℝ) ≤ 2 * (Nat.sqrt N : ℝ) := by linarith
  apply (div_le_iff₀ hLr).mpr
  nlinarith [mul_le_mul_of_nonneg_left hsL hs0]

/-- The complete long/shared PREFIX sector has a square-root allowance. -/
theorem sharedPrefix_long_bound (P : List ℕ) (N L X Y : ℕ) (hN : 1 ≤ N) :
    |sharedPart P N L X Y (Nat.sqrt N) inverseSqrtKernel| ≤ 8 * Real.sqrt (N : ℝ) := by
  have hL : 1 ≤ Nat.sqrt N := Nat.le_sqrt.mpr (by simpa using hN)
  have h := sharedPart_abs_le P N L X Y (Nat.sqrt N) hL inverseSqrtKernel
    (K := 1) (by norm_num) (by
      intro m n _ _
      rw [abs_of_nonneg (by unfold inverseSqrtKernel; positivity), one_mul])
  have hh := mul_le_mul_of_nonneg_left (cutoff_div_sqrt_le N hN) (by norm_num : (0 : ℝ) ≤ 4)
  calc
    _ ≤ 4 * (N : ℝ) / (Nat.sqrt N : ℝ) := by simpa using h
    _ ≤ 8 * Real.sqrt (N : ℝ) := by convert hh using 1 <;> ring

/-- Original ordered energy channel, including the extraction sign and both orientations. -/
def orderedShared (P : List ℕ) (T : ℝ) (L Z : ℕ) : ℝ :=
  -2 * sharedPart P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z (gram P T)

/-- A source-specific bound for this channel; no prefix-growth supplier is assumed. -/
theorem orderedShared_long_bound (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) (L : ℕ) (hN : 1 ≤ ⌊Real.exp T⌋₊) :
    |orderedShared P T L (Nat.sqrt ⌊Real.exp T⌋₊)| ≤
      64 * T * factor P^2 * Real.sqrt (⌊Real.exp T⌋₊ : ℝ) := by
  let N := ⌊Real.exp T⌋₊
  let K := 4 * T * factor P^2
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hL : 1 ≤ Nat.sqrt N := Nat.le_sqrt.mpr (by simpa using hN)
  have hb := sharedPart_abs_le P N L N N (Nat.sqrt N) hL (gram P T) hK (by
    intro m n hm hn
    simpa only [K, inverseSqrtKernel, mul_assoc] using gram_abs_le P hP hT hm hn)
  have hc := mul_le_mul_of_nonneg_left (cutoff_div_sqrt_le N hN)
    (show 0 ≤ 8*K by positivity)
  unfold orderedShared
  rw [abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  calc
    _ ≤ 2 * (4*K*(N : ℝ)/(Nat.sqrt N : ℝ)) :=
      mul_le_mul_of_nonneg_left hb (by norm_num)
    _ ≤ 16*K*Real.sqrt (N : ℝ) := by convert hc using 1 <;> ring
    _ = _ := by dsimp [K, N]; ring

/-- The already proved exp(4 sqrt j) supplier pays the scale cost. No discrepancy
schedule, diagonal decrement, or internal stage overlap is used as cancellation. -/
theorem orderedShared_five_eighths (j : ℕ) :
    |orderedShared (stages j) (dyadicTime j) (thinCutoff j) (thinCutoff j)| ≤
      (1024 * Real.exp (64 / Real.log 2)) * Real.exp ((5/8) * dyadicTime j) := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hN : 1 ≤ ⌊Real.exp T⌋₊ := by rw [dyadic_cutoff]; positivity
  have he : Real.sqrt (⌊Real.exp T⌋₊ : ℝ) = Real.exp (T/2) := by
    have hs := Real.sq_sqrt (Nat.cast_nonneg ⌊Real.exp T⌋₊ : (0 : ℝ) ≤ ⌊Real.exp T⌋₊)
    have ht : Real.exp (T/2)^2 = (⌊Real.exp T⌋₊ : ℝ) := by
      rw [pow_two, ← Real.exp_add]
      have hh : T/2+T/2 = T := by ring
      rw [hh, show ⌊Real.exp T⌋₊ = 2^j from dyadic_cutoff j, exp_dyadicTime j]
    apply le_antisymm
    · apply (sq_le_sq₀ (Real.sqrt_nonneg _) (Real.exp_pos _).le).mp
      linarith
    · apply (sq_le_sq₀ (Real.exp_pos _).le (Real.sqrt_nonneg _)).mp
      linarith
  have hb := orderedShared_long_bound (stages j) (stages_prime j) hT (thinCutoff j) hN
  have hz : Nat.sqrt ⌊Real.exp T⌋₊ = thinCutoff j := by rw [dyadic_cutoff]; rfl
  rw [hz, he] at hb
  calc
    _ ≤ 64 * (T * factor (stages j)^2) * Real.exp (T/2) := by convert hb using 1 <;> ring
    _ ≤ 64 * (16 * Real.exp (64/Real.log 2) * Real.exp (T/8)) * Real.exp (T/2) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (time_factor_le j) (by norm_num)) (Real.exp_pos _).le
    _ = _ := by
      have ht : Real.exp (T/8) * Real.exp (T/2) = Real.exp ((5/8)*T) := by
        rw [← Real.exp_add]; congr 1 <;> ring
      calc
        _ = (1024 * Real.exp (64/Real.log 2)) * (Real.exp (T/8) * Real.exp (T/2)) := by ring
        _ = _ := by rw [ht]

/-- The same reciprocal-square proof for the actual Gram at any threshold. -/
theorem orderedShared_threshold_bound (P : List ℕ) (hP : ∀ p ∈ P, Nat.Prime p)
    {T : ℝ} (hT : 0 ≤ T) (L Z : ℕ) (hZ : 1 ≤ Z) :
    |orderedShared P T L Z| ≤ 32 * T * factor P^2 * (⌊Real.exp T⌋₊ : ℝ) / Z := by
  have hb := sharedPart_abs_le P ⌊Real.exp T⌋₊ L ⌊Real.exp T⌋₊ ⌊Real.exp T⌋₊ Z hZ
    (gram P T) (K := 4*T*factor P^2) (by positivity) (by
      intro m n hm hn
      simpa only [inverseSqrtKernel, mul_assoc] using gram_abs_le P hP hT hm hn)
  unfold orderedShared
  rw [abs_mul, show |(-2 : ℝ)| = 2 by norm_num]
  have h := mul_le_mul_of_nonneg_left hb (by norm_num : (0 : ℝ) ≤ 2)
  convert h using 1 <;> ring

/-- An extraction threshold, NOT a change to the block prime schedule P_j. -/
def sharedThreshold (j : ℕ) : ℕ := 2 ^ ((j+3)/4)

theorem sharedThreshold_positive (j : ℕ) : 1 ≤ sharedThreshold j := by
  unfold sharedThreshold
  positivity

theorem sharedThreshold_lower (j : ℕ) :
    Real.exp (dyadicTime j / 4) ≤ (sharedThreshold j : ℝ) := by
  let k := (j+3)/4
  have hj : j ≤ 4*k := by dsimp [k]; omega
  have hjR : (j : ℝ) ≤ 4*(k : ℝ) := by exact_mod_cast hj
  have ht : dyadicTime j / 4 ≤ dyadicTime k := by
    simp only [dyadicTime, GRWTSK.Analysis.AsymptoticAnalysis.ArithmeticGridSubexponential.time]
    nlinarith [mul_le_mul_of_nonneg_right hjR log_two_positive.le]
  calc
    _ ≤ Real.exp (dyadicTime k) := Real.exp_le_exp.mpr ht
    _ = _ := exp_dyadicTime k

theorem cutoff_div_sharedThreshold (j : ℕ) :
    ((2^j : ℕ) : ℝ) / (sharedThreshold j : ℝ) ≤ Real.exp ((3/4)*dyadicTime j) := by
  have hz : (0 : ℝ) < sharedThreshold j := by exact_mod_cast sharedThreshold_positive j
  apply (div_le_iff₀ hz).mpr
  calc
    _ = Real.exp (dyadicTime j) := (exp_dyadicTime j).symm
    _ = Real.exp ((3/4)*dyadicTime j) * Real.exp (dyadicTime j / 4) := by
      rw [← Real.exp_add]
      congr 1
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (sharedThreshold_lower j) (Real.exp_pos _).le

/-- A larger paid sector: shared extracted primes above the explicit Z_j >= N^(1/4),
with the repeated-prime correction still present on Z_j < p <= sqrt N. -/
theorem orderedShared_threshold_seven_eighths (j : ℕ) :
    |orderedShared (stages j) (dyadicTime j) (thinCutoff j) (sharedThreshold j)| ≤
      (512 * Real.exp (64 / Real.log 2)) * Real.exp ((7/8)*dyadicTime j) := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hb := orderedShared_threshold_bound (stages j) (stages_prime j) hT
    (thinCutoff j) (sharedThreshold j) (sharedThreshold_positive j)
  rw [dyadic_cutoff] at hb
  have hq := mul_le_mul_of_nonneg_left (cutoff_div_sharedThreshold j)
    (show 0 ≤ 32*(T*factor (stages j)^2) by positivity)
  calc
    _ ≤ 32*(T*factor (stages j)^2)*(((2^j : ℕ) : ℝ)/(sharedThreshold j : ℝ)) :=
      by convert hb using 1 <;> ring
    _ ≤ 32*(T*factor (stages j)^2)*Real.exp ((3/4)*T) := hq
    _ ≤ 32*(16*Real.exp (64/Real.log 2)*Real.exp (T/8))*Real.exp ((3/4)*T) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (time_factor_le j) (by norm_num)) (Real.exp_pos _).le
    _ = _ := by
      have he : Real.exp (T/8)*Real.exp ((3/4)*T) = Real.exp ((7/8)*T) := by
        rw [← Real.exp_add]; congr 1 <;> ring
      calc
        _ = (512*Real.exp (64/Real.log 2))*(Real.exp (T/8)*Real.exp ((3/4)*T)) := by ring
        _ = _ := by rw [he]

end GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
