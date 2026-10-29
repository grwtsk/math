/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.MeasureAndIntegration.PickupRoughJointSecondMoment
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# An independently paid small-gcd SHORT/LONG mixed family

Expand the actual columns before estimating: the long extracted prime k may
divide the smaller core in the SHORT column, while the LONG column still has
k not dividing its own smaller core. This is NOT the previously paid shared
sector within one column. Both corrected quotient weights, all closed cutoffs,
and the gcd/off-diagonal guard remain in the source sum. The cross-divisibility
restriction supplies a second reciprocal k after the quotient count.

No growth bound for the complementary mixed family, the full moment, W, R,
or RH is asserted. No covariance or supplier interface is introduced.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay, axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupRoughMixedCrossPrime

open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
open GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughJointSecondMoment

def shortRow (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (p q : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (p*q),
    if L < m ∧ m < p*q then atom P N G p q m else 0

def longRow (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (p q : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (p*q),
    if L < m ∧ m < p*q ∧ ¬p ∣ m then atom P N G p q m else 0

/-- k belongs to the OTHER column. Its divisibility guard is not p|q. -/
def hitRow (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (p q k : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (p*q),
    if L < m ∧ m < p*q ∧ k ∣ m then atom P N G p q m else 0

def avoidRow (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (p q k : ℕ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 (p*q),
    if L < m ∧ m < p*q ∧ ¬k ∣ m then atom P N G p q m else 0

/-- Exact source partition; no sign is imposed on either row. -/
theorem shortRow_split (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ) (p q k : ℕ) :
    shortRow P N L G p q = hitRow P N L G p q k + avoidRow P N L G p q k := by
  unfold shortRow hitRow avoidRow
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases h : L < m ∧ m < p*q <;> by_cases hd : k ∣ m <;> simp [h, hd]

/-- The SHORT column has no unit-quotient core above L. The long unit row remains. -/
theorem shortRow_unit_zero (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {p : ℕ} (hp : p ≤ L) : shortRow P N L G p 1 = 0 := by
  unfold shortRow
  apply Finset.sum_eq_zero
  intro m _
  have hnot : ¬(L < m ∧ m < p*1) := by omega
  simp only [if_neg hnot]

/-- The reindexed row is the original CLOSED-N row on its original quotient range. -/
theorem shortRow_original (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {p q : ℕ} (hp : 0 < p) (hq : q ≤ N/p) :
    shortRow P N L G p q = ∑ m ∈ Finset.Icc 1 N,
      if inWindow L N N p q m then atom P N G p q m else 0 := by
  have hn : p*q ≤ N := by
    simpa only [Nat.mul_comm] using (Nat.le_div_iff_mul_le hp).mp hq
  have hsub : Finset.Icc 1 (p*q) ⊆ Finset.Icc 1 N := by
    intro m hm
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, (Finset.mem_Icc.mp hm).2.trans hn⟩
  unfold shortRow
  calc
    _ = ∑ m ∈ Finset.Icc 1 N, if L < m ∧ m < p*q then atom P N G p q m else 0 := by
      apply Finset.sum_subset hsub
      intro m hm hout
      have hnot : ¬m < p*q := by
        intro h
        exact hout (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, h.le⟩)
      simp [hnot]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro m hm
      simp only [inWindow, hn, (Finset.mem_Icc.mp hm).2, true_and, and_true]

/-- Same reindexing for the original long-prime coprime row. -/
theorem longRow_original (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {p q : ℕ} (hp : 0 < p) (hq : q ≤ N/p) :
    longRow P N L G p q = ∑ m ∈ Finset.Icc 1 N,
      if inWindow L N N p q m ∧ ¬p ∣ m then atom P N G p q m else 0 := by
  have hn : p*q ≤ N := by
    simpa only [Nat.mul_comm] using (Nat.le_div_iff_mul_le hp).mp hq
  have hsub : Finset.Icc 1 (p*q) ⊆ Finset.Icc 1 N := by
    intro m hm
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, (Finset.mem_Icc.mp hm).2.trans hn⟩
  unfold longRow
  calc
    _ = ∑ m ∈ Finset.Icc 1 N,
        if L < m ∧ m < p*q ∧ ¬p ∣ m then atom P N G p q m else 0 := by
      apply Finset.sum_subset hsub
      intro m hm hout
      have hnot : ¬m < p*q := by
        intro h
        exact hout (Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hm).1, h.le⟩)
      simp [hnot]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro m hm
      simp only [inWindow, hn, (Finset.mem_Icc.mp hm).2, true_and, and_true, and_assoc]

/-- No quotient coefficient is replaced: these are the existing two source sectors. -/
theorem source_sectors_rows (P : List ℕ) (N L Z : ℕ) (G : ℕ → ℕ → ℝ) :
    shortPart P N L N N Z G =
      (∑ p ∈ (freshPrimes P N).filter (fun p => p ≤ Z),
        ∑ q ∈ Finset.Icc 1 (N/p), shortRow P N L G p q) ∧
    coprimePart P N L N N Z G =
      (∑ p ∈ (freshPrimes P N).filter (fun p => Z < p),
        ∑ q ∈ Finset.Icc 1 (N/p), longRow P N L G p q) := by
  constructor
  · simp only [shortPart, Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro p hp
    by_cases hz : p ≤ Z
    · simp only [if_pos hz, primeSlice]
      apply Finset.sum_congr rfl
      intro q hq
      exact (shortRow_original P N L G (fresh_mem hp).1.pos (Finset.mem_Icc.mp hq).2).symm
    · simp [hz]
  · simp only [coprimePart, Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro p hp
    by_cases hz : Z < p
    · simp only [if_pos hz, coprimeSlice]
      apply Finset.sum_congr rfl
      intro q hq
      exact (longRow_original P N L G (fresh_mem hp).1.pos (Finset.mem_Icc.mp hq).2).symm
    · simp [hz]

/-- On the repeat-free support, the product is literally FOUR rough-Mobius factors.
The two original divisor weights become two different proved insertion weights. -/
theorem atom_product_four (P : List ℕ) (N : ℕ) (G : ℕ → ℕ → ℝ)
    {p k q r : ℕ} (hp : p ∈ freshPrimes P N) (hk : k ∈ freshPrimes P N)
    (hpq : ¬p ∣ q) (hkr : ¬k ∣ r) (m n : ℕ) :
    atom P N G p q m * atom P N G k r n =
      (rough P q * rough P r * rough P m * rough P n /
        (((omega P N q : ℝ)+1)*((omega P N r : ℝ)+1))) *
        G m (p*q) * G n (k*r) := by
  have hp' := corrected_ratio hp q
  have hk' := corrected_ratio hk r
  rw [if_neg hpq] at hp'
  rw [if_neg hkr] at hk'
  have he (s t v : ℕ) : atom P N G s t v =
      rough P v * (correctedQuotient P s t / (omega P N (s*t) : ℝ)) * G v (s*t) := by
    unfold atom
    ring
  rw [he, he, hp', hk']
  ring

/-- Actual off-diagonal short/long cross moment, restricted to gcd <= D.
D=1 is the requested coprime fiber; no probabilistic orthogonality is used. -/
def mixedFull (P : List ℕ) (N L Z D : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ p ∈ (freshPrimes P N).filter (fun p => p ≤ Z),
    ∑ k ∈ (freshPrimes P N).filter (fun k => Z < k),
      ∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/k),
        if Nat.gcd q r ≤ D ∧ q ≠ r
        then shortRow P N L G p q * longRow P N L G k r else 0

/-- The long prime divides the OTHER smaller core, not its own core. -/
def mixedHit (P : List ℕ) (N L Z D : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ p ∈ (freshPrimes P N).filter (fun p => p ≤ Z),
    ∑ k ∈ (freshPrimes P N).filter (fun k => Z < k),
      ∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/k),
        if Nat.gcd q r ≤ D ∧ q ≠ r
        then hitRow P N L G p q k * longRow P N L G k r else 0

def mixedAvoid (P : List ℕ) (N L Z D : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ p ∈ (freshPrimes P N).filter (fun p => p ≤ Z),
    ∑ k ∈ (freshPrimes P N).filter (fun k => Z < k),
      ∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/k),
        if Nat.gcd q r ≤ D ∧ q ≠ r
        then avoidRow P N L G p q k * longRow P N L G k r else 0

theorem mixed_partition (P : List ℕ) (N L Z D : ℕ) (G : ℕ → ℕ → ℝ) :
    mixedFull P N L Z D G = mixedHit P N L Z D G + mixedAvoid P N L Z D G := by
  unfold mixedFull mixedHit mixedAvoid
  rw [← mul_add]
  congr 1
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro k _
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro r _
  split_ifs
  · rw [shortRow_split P N L G p q k]
    ring
  · ring

/-- The prime-first mixed family equals the off-diagonal product of the ACTUAL
short and long quotient columns. This is a finite rearrangement, not decorrelation. -/
theorem mixedFull_quotient_columns (P : List ℕ) (N L Z D : ℕ) (G : ℕ → ℕ → ℝ) :
    mixedFull P N L Z D G =
      2*∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N,
        if Nat.gcd q r ≤ D ∧ q ≠ r then
          (∑ p ∈ (freshPrimes P N).filter (fun p => p ≤ Z),
            if q ≤ N/p then shortRow P N L G p q else 0) *
          (∑ k ∈ (freshPrimes P N).filter (fun k => Z < k),
            if r ≤ N/k then longRow P N L G k r else 0)
        else 0 := by
  let S := (freshPrimes P N).filter (fun p => p ≤ Z)
  let V := (freshPrimes P N).filter (fun k => Z < k)
  let f := fun p k q r => if q ≤ N/p ∧ r ≤ N/k ∧ Nat.gcd q r ≤ D ∧ q ≠ r
    then shortRow P N L G p q * longRow P N L G k r else 0
  have hfilter (p : ℕ) : (Finset.Icc 1 N).filter (fun q => q ≤ N/p) = Finset.Icc 1 (N/p) := by
    ext q
    simp only [Finset.mem_filter, Finset.mem_Icc]
    have h := Nat.div_le_self N p
    omega
  have he (p k : ℕ) :
      (∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/k),
        if Nat.gcd q r ≤ D ∧ q ≠ r then shortRow P N L G p q * longRow P N L G k r else 0) =
      ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, f p k q r := by
    rw [← hfilter p, Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro q _
    by_cases hq : q ≤ N/p
    · rw [if_pos hq, ← hfilter k, Finset.sum_filter]
      apply Finset.sum_congr rfl
      intro r _
      by_cases hr : r ≤ N/k <;> simp [f, hq, hr]
    · simp [f, hq]
  unfold mixedFull
  congr 1
  simp_rw [he]
  calc
    (∑ p ∈ S, ∑ k ∈ V, ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, f p k q r) =
        ∑ p ∈ S, ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, ∑ k ∈ V, f p k q r := by
      apply Finset.sum_congr rfl
      intro p _
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro q _
      rw [Finset.sum_comm]
    _ = ∑ q ∈ Finset.Icc 1 N, ∑ r ∈ Finset.Icc 1 N, ∑ p ∈ S, ∑ k ∈ V, f p k q r := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro q _
      rw [Finset.sum_comm]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro q _
      apply Finset.sum_congr rfl
      intro r _
      by_cases hc : Nat.gcd q r ≤ D ∧ q ≠ r
      · rw [if_pos hc, Finset.sum_mul_sum]
        apply Finset.sum_congr rfl
        intro p _
        apply Finset.sum_congr rfl
        intro k _
        by_cases hq : q ≤ N/p <;> by_cases hr : r ≤ N/k <;> simp [f, hc, hq, hr]
      · simp [f, hc]

/-- Exact cross-column reindex m=k*h, including the strict m<p*q window. -/
theorem hitRow_reindex (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    (p q k : ℕ) (hk : 0 < k) :
    hitRow P N L G p q k = ∑ h ∈ Finset.Icc 1 (p*q/k),
      if L < k*h ∧ k*h < p*q then atom P N G p q (k*h) else 0 := by
  let f : ℕ → ℝ := fun m => if L < m ∧ m < p*q then atom P N G p q m else 0
  have he := sum_divisible_window_eq_quotient 0 (p*q) k hk f
  simp only [zero_add, add_zero] at he
  unfold hitRow
  calc
    _ = ∑ m ∈ Finset.Icc 1 (p*q), if k ∣ m then f m else 0 := by
      apply Finset.sum_congr rfl
      intro m _
      by_cases hw : L < m ∧ m < p*q <;> by_cases hd : k ∣ m <;> simp [f, hw, hd]
    _ = _ := by
      rw [he]
      apply Finset.sum_congr rfl
      intro h hh
      have hh0 : 0 < h := (Finset.mem_Icc.mp hh).1
      simp [f, Nat.mul_pos hk hh0]

/-- All division is by a positive integer here; the finite quotient cutoff is exact. -/
theorem divisible_inverse_sqrt_sum (M k : ℕ) (hk : 0 < k) :
    (∑ m ∈ Finset.Icc 1 M, if k ∣ m then (Real.sqrt (m : ℝ))⁻¹ else 0) ≤
      2 * Real.sqrt (M : ℝ) / (k : ℝ) := by
  have hkR : (0 : ℝ) < k := by exact_mod_cast hk
  have hs : 0 < Real.sqrt (k : ℝ) := Real.sqrt_pos.mpr hkR
  have he := sum_divisible_window_eq_quotient 0 M k hk (fun m => (Real.sqrt (m : ℝ))⁻¹)
  simp only [zero_add, add_zero] at he
  have hid : (∑ m ∈ Finset.Icc 1 M, if k ∣ m then (Real.sqrt (m : ℝ))⁻¹ else 0) =
      (Real.sqrt (k : ℝ))⁻¹ * ∑ h ∈ Finset.Icc 1 (M/k), (Real.sqrt (h : ℝ))⁻¹ := by
    rw [he, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro h hh
    have hh0 : 0 < h := (Finset.mem_Icc.mp hh).1
    simp [Nat.mul_pos hk hh0, Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg k), mul_inv_rev,
      mul_comm]
  have hprod : Real.sqrt (k : ℝ) * Real.sqrt ((M/k : ℕ) : ℝ) ≤ Real.sqrt (M : ℝ) := by
    rw [← Real.sqrt_mul (Nat.cast_nonneg k)]
    apply Real.sqrt_le_sqrt
    exact_mod_cast (show k*(M/k) ≤ M by simpa only [Nat.mul_comm] using Nat.div_mul_le_self M k)
  have hs2 := Real.sq_sqrt hkR.le
  have hnorm : (Real.sqrt (k : ℝ))⁻¹ * (2 * Real.sqrt ((M/k : ℕ) : ℝ)) =
      (2 / (k : ℝ)) * (Real.sqrt (k : ℝ) * Real.sqrt ((M/k : ℕ) : ℝ)) := by
    have hm := congrArg (fun z : ℝ => 2*z*Real.sqrt ((M/k : ℕ) : ℝ)) hs2
    field_simp [hs.ne', hkR.ne']
    <;> nlinarith [hm]
  rw [hid]
  calc
    _ ≤ (Real.sqrt (k : ℝ))⁻¹ * (2 * Real.sqrt ((M/k : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (sum_inverse_sqrt_le (M/k)) (inv_nonneg.mpr hs.le)
    _ = _ := hnorm
    _ ≤ (2 / (k : ℝ)) * Real.sqrt (M : ℝ) := mul_le_mul_of_nonneg_left hprod (by positivity)
    _ = _ := by ring

/-- A normalized actual atom has no larger modulus than its actual Gram entry. -/
theorem atom_kernel_bound (P : List ℕ) (N : ℕ) (G : ℕ → ℕ → ℝ)
    {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K * inverseSqrtKernel m n)
    {p q m : ℕ} (hp : p ∈ freshPrimes P N) (hq : 1 ≤ q) (hm : 1 ≤ m) :
    |atom P N G p q m| ≤ K * inverseSqrtKernel m (p*q) := by
  unfold atom
  rw [abs_mul]
  calc
    _ ≤ 1 * |G m (p*q)| :=
      mul_le_mul_of_nonneg_right (normalized_coefficient_abs_le hp q m) (abs_nonneg _)
    _ ≤ _ := by simpa only [one_mul] using hG m (p*q) hm (by nlinarith [(fresh_mem hp).1.one_le])

/-- A whole long row costs 2K, including q=1; no coefficient cancellation is used. -/
theorem longRow_abs_le (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K * inverseSqrtKernel m n)
    {p q : ℕ} (hp : p ∈ freshPrimes P N) (hq : 1 ≤ q) :
    |longRow P N L G p q| ≤ 2*K := by
  have hn : 0 < p*q := Nat.mul_pos (fresh_mem hp).1.pos hq
  have hs : 0 < Real.sqrt ((p*q : ℕ) : ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast hn)
  unfold longRow
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 (p*q),
        |if L < m ∧ m < p*q ∧ ¬p ∣ m then atom P N G p q m else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Icc 1 (p*q), K * inverseSqrtKernel m (p*q) := by
      apply Finset.sum_le_sum
      intro m hm
      split_ifs
      · exact atom_kernel_bound P N G hK hG hp hq (Finset.mem_Icc.mp hm).1
      · simp only [abs_zero]
        unfold inverseSqrtKernel
        positivity
    _ = (K * (Real.sqrt ((p*q : ℕ) : ℝ))⁻¹) *
        ∑ m ∈ Finset.Icc 1 (p*q), (Real.sqrt (m : ℝ))⁻¹ := by
      simp only [inverseSqrtKernel, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      ring
    _ ≤ (K * (Real.sqrt ((p*q : ℕ) : ℝ))⁻¹) *
        (2 * Real.sqrt ((p*q : ℕ) : ℝ)) :=
      mul_le_mul_of_nonneg_left (sum_inverse_sqrt_le (p*q)) (by positivity)
    _ = 2*K := by field_simp [hs.ne'] <;> ring

/-- Divisibility by the OTHER long prime saves 1/k in the entire short row. -/
theorem hitRow_abs_le (P : List ℕ) (N L : ℕ) (G : ℕ → ℕ → ℝ)
    {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K * inverseSqrtKernel m n)
    {p q : ℕ} (hp : p ∈ freshPrimes P N) (hq : 1 ≤ q) (k : ℕ) (hk : 0 < k) :
    |hitRow P N L G p q k| ≤ 2*K/(k : ℝ) := by
  have hn : 0 < p*q := Nat.mul_pos (fresh_mem hp).1.pos hq
  have hs : 0 < Real.sqrt ((p*q : ℕ) : ℝ) := Real.sqrt_pos.mpr (by exact_mod_cast hn)
  have hkR : (0 : ℝ) < k := by exact_mod_cast hk
  unfold hitRow
  calc
    _ ≤ ∑ m ∈ Finset.Icc 1 (p*q),
        |if L < m ∧ m < p*q ∧ k ∣ m then atom P N G p q m else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ Finset.Icc 1 (p*q),
        if k ∣ m then K * inverseSqrtKernel m (p*q) else 0 := by
      apply Finset.sum_le_sum
      intro m hm
      by_cases hd : k ∣ m
      · rw [if_pos hd]
        split_ifs
        · exact atom_kernel_bound P N G hK hG hp hq (Finset.mem_Icc.mp hm).1
        · simp only [abs_zero]
          unfold inverseSqrtKernel
          positivity
      · simp [hd]
    _ = (K * (Real.sqrt ((p*q : ℕ) : ℝ))⁻¹) *
        ∑ m ∈ Finset.Icc 1 (p*q), if k ∣ m then (Real.sqrt (m : ℝ))⁻¹ else 0 := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro m _
      by_cases hd : k ∣ m <;> simp [hd, inverseSqrtKernel] <;> ring
    _ ≤ (K * (Real.sqrt ((p*q : ℕ) : ℝ))⁻¹) *
        (2 * Real.sqrt ((p*q : ℕ) : ℝ) / k) :=
      mul_le_mul_of_nonneg_left (divisible_inverse_sqrt_sum (p*q) k hk) (by positivity)
    _ = 2*K/k := by field_simp [hs.ne', hkR.ne'] <;> ring

/-- Exact finite harmonic allowance; no prime-density input is required. -/
theorem reciprocal_sum_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹) ≤ 1 + Real.log (N : ℝ) := by
  simpa only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast] using
    harmonic_le_one_add_log N

/-- All p,k,q,r costs are included, and the gcd/off-diagonal guard is kept in the sum. -/
theorem mixedHit_abs_le (P : List ℕ) (N L Z D : ℕ) (hZ : 1 ≤ Z)
    (G : ℕ → ℕ → ℝ) {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K * inverseSqrtKernel m n) :
    |mixedHit P N L Z D G| ≤
      8*K^2*(N : ℝ)^2*(∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹)/(Z : ℝ) := by
  let S := (freshPrimes P N).filter (fun p => p ≤ Z)
  let V := (freshPrimes P N).filter (fun k => Z < k)
  have hS : S ⊆ Finset.Icc 1 N := by
    intro p hp
    have h := fresh_mem (Finset.mem_filter.mp hp).1
    exact Finset.mem_Icc.mpr ⟨h.1.one_le, h.2.2⟩
  have hV : V ⊆ Finset.Icc (Z+1) N := by
    intro k hk
    obtain ⟨hf, hz⟩ := Finset.mem_filter.mp hk
    exact Finset.mem_Icc.mpr ⟨by omega, (fresh_mem hf).2.2⟩
  have htail : (∑ k ∈ V, ((k : ℝ)^2)⁻¹) ≤ (Z : ℝ)⁻¹ := by
    exact (Finset.sum_le_sum_of_subset_of_nonneg hV (fun _ _ _ => by positivity)).trans
      (reciprocal_square_tail Z N hZ)
  have hhead : (∑ p ∈ S, (p : ℝ)⁻¹) ≤ ∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹ :=
    Finset.sum_le_sum_of_subset_of_nonneg hS (fun _ _ _ => by positivity)
  have hcell (p : ℕ) (hp : p ∈ S) (k : ℕ) (hk : k ∈ V) :
      |∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/k),
        if Nat.gcd q r ≤ D ∧ q ≠ r
        then hitRow P N L G p q k * longRow P N L G k r else 0| ≤
      4*K^2*(N : ℝ)^2/((p : ℝ)*(k : ℝ)^2) := by
    have hpf := (Finset.mem_filter.mp hp).1
    have hkf := (Finset.mem_filter.mp hk).1
    have hp0 := (fresh_mem hpf).1.pos
    have hk0 := (fresh_mem hkf).1.pos
    have hpR : (0 : ℝ) < p := by exact_mod_cast hp0
    have hkR : (0 : ℝ) < k := by exact_mod_cast hk0
    have hfloorp : ((N/p : ℕ) : ℝ) ≤ (N : ℝ)/p := by
      apply (le_div_iff₀ hpR).mpr
      exact_mod_cast Nat.div_mul_le_self N p
    have hfloork : ((N/k : ℕ) : ℝ) ≤ (N : ℝ)/k := by
      apply (le_div_iff₀ hkR).mpr
      exact_mod_cast Nat.div_mul_le_self N k
    calc
      _ ≤ ∑ q ∈ Finset.Icc 1 (N/p),
          |∑ r ∈ Finset.Icc 1 (N/k), if Nat.gcd q r ≤ D ∧ q ≠ r
            then hitRow P N L G p q k * longRow P N L G k r else 0| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ q ∈ Finset.Icc 1 (N/p), ∑ r ∈ Finset.Icc 1 (N/k),
          (2*K/k)*(2*K) := by
        apply Finset.sum_le_sum
        intro q hq
        apply (Finset.abs_sum_le_sum_abs _ _).trans
        apply Finset.sum_le_sum
        intro r hr
        split_ifs
        · rw [abs_mul]
          exact mul_le_mul
            (hitRow_abs_le P N L G hK hG hpf (Finset.mem_Icc.mp hq).1 k hk0)
            (longRow_abs_le P N L G hK hG hkf (Finset.mem_Icc.mp hr).1)
            (abs_nonneg _) (by positivity)
        · simp only [abs_zero]
          positivity
      _ = (((N/p : ℕ) : ℝ)*((N/k : ℕ) : ℝ)) * ((2*K/k)*(2*K)) := by
        simp only [Finset.sum_const, Nat.card_Icc, Nat.add_sub_cancel, nsmul_eq_mul]
        ring
      _ ≤ ((N : ℝ)/p*((N : ℝ)/k))*((2*K/k)*(2*K)) := by
        apply mul_le_mul_of_nonneg_right _ (by positivity)
        exact mul_le_mul hfloorp hfloork (Nat.cast_nonneg _) (by positivity)
      _ = _ := by field_simp [hpR.ne', hkR.ne'] <;> ring
  have hsum : |∑ p ∈ S, ∑ k ∈ V, ∑ q ∈ Finset.Icc 1 (N/p),
        ∑ r ∈ Finset.Icc 1 (N/k), if Nat.gcd q r ≤ D ∧ q ≠ r
          then hitRow P N L G p q k * longRow P N L G k r else 0| ≤
      4*K^2*(N : ℝ)^2*(∑ p ∈ S, (p : ℝ)⁻¹)*(∑ k ∈ V, ((k : ℝ)^2)⁻¹) := by
    calc
      _ ≤ ∑ p ∈ S, |∑ k ∈ V, ∑ q ∈ Finset.Icc 1 (N/p),
          ∑ r ∈ Finset.Icc 1 (N/k), if Nat.gcd q r ≤ D ∧ q ≠ r
            then hitRow P N L G p q k * longRow P N L G k r else 0| := Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ p ∈ S, ∑ k ∈ V, 4*K^2*(N : ℝ)^2/((p : ℝ)*(k : ℝ)^2) := by
        apply Finset.sum_le_sum
        intro p hp
        exact (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum (hcell p hp))
      _ = _ := by simp only [div_eq_mul_inv, mul_inv_rev, Finset.mul_sum, Finset.sum_mul]; ring
  have hcost := mul_le_mul hhead htail
    (Finset.sum_nonneg (fun _ _ => by positivity))
    (Finset.sum_nonneg (fun _ _ => by positivity))
  have he := mul_le_mul_of_nonneg_left hcost (show 0 ≤ 4*K^2*(N : ℝ)^2 by positivity)
  have hb : |∑ p ∈ S, ∑ k ∈ V, ∑ q ∈ Finset.Icc 1 (N/p),
        ∑ r ∈ Finset.Icc 1 (N/k), if Nat.gcd q r ≤ D ∧ q ≠ r
          then hitRow P N L G p q k * longRow P N L G k r else 0| ≤
      4*K^2*(N : ℝ)^2*(∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹)/(Z : ℝ) := by
    apply hsum.trans
    simpa only [div_eq_mul_inv, mul_assoc] using he
  unfold mixedHit
  change |2*(∑ p ∈ S, ∑ k ∈ V, ∑ q ∈ Finset.Icc 1 (N/p),
      ∑ r ∈ Finset.Icc 1 (N/k), if Nat.gcd q r ≤ D ∧ q ≠ r
        then hitRow P N L G p q k * longRow P N L G k r else 0)| ≤ _
  rw [abs_mul, show |(2 : ℝ)| = 2 by norm_num]
  nlinarith

/-- Explicit uniform payment used below; no asymptotic notation or free stage count. -/
theorem time_harmonic_factor_le (j : ℕ) :
    dyadicTime j * factor (stages j)^2 * (1+dyadicTime j) ≤
      600 * Real.exp (96 / Real.log 2) * Real.exp (dyadicTime j/8) := by
  let T := dyadicTime j
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hf : factor (stages j)^2 ≤ Real.exp (96/Real.log 2)*Real.exp (T/24) := by
    apply (stages_factor_square_le j).trans
    convert sqrt_exponent_bound 4 (1/24) (by norm_num) (by norm_num) j using 1 <;>
      congr 1 <;> field_simp <;> ring
  have hx := Real.add_one_le_exp (T/24)
  have ht : T ≤ 24*Real.exp (T/24) := by linarith
  have h1 : 1+T ≤ 25*Real.exp (T/24) := by
    have hge : 1 ≤ Real.exp (T/24) := by linarith
    linarith
  have hh := mul_le_mul ht hf (sq_nonneg _) (by positivity : 0 ≤ 24*Real.exp (T/24))
  have hh' := mul_le_mul hh h1 (by linarith : 0 ≤ 1+T) (by positivity)
  calc
    _ ≤ (24*Real.exp (T/24))*(Real.exp (96/Real.log 2)*Real.exp (T/24))*
        (25*Real.exp (T/24)) := hh'
    _ = _ := by
      have he : Real.exp (T/24)*Real.exp (T/24)*Real.exp (T/24) = Real.exp (T/8) := by
        rw [← Real.exp_add, ← Real.exp_add]
        congr 1
        ring
      calc
        _ = 600*Real.exp (96/Real.log 2)*
            (Real.exp (T/24)*Real.exp (T/24)*Real.exp (T/24)) := by ring
        _ = _ := by rw [he]

/-- Source-specific moment estimate on the previously unpaid cross-column family.
D=1 pays the coprime quotient fiber; D=L pays it throughout the small-gcd region. -/
theorem mixedHit_dyadic_seven_fourths (j D : ℕ) :
    |mixedHit (stages j) (2^j) (thinCutoff j) (thinCutoff j) D
        (gram (stages j) (dyadicTime j))| ≤
      (92160000 * Real.exp (192/Real.log 2)) * Real.exp ((7/4)*dyadicTime j) := by
  let T := dyadicTime j
  let N : ℕ := 2^j
  let L := Nat.sqrt N
  let K : ℝ := 4*T*factor (stages j)^2
  let H : ℝ := ∑ n ∈ Finset.Icc 1 N, (n : ℝ)⁻¹
  have hT : 0 ≤ T := dyadicTime_nonnegative j
  have hN : 1 ≤ N := by dsimp [N]; positivity
  have hL : 1 ≤ L := Nat.le_sqrt.mpr (by simpa using hN)
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hH0 : 0 ≤ H := Finset.sum_nonneg (fun _ _ => by positivity)
  have hH : H ≤ 1+T := by
    have h := reciprocal_sum_le N
    rw [show Real.log (N : ℝ) = T from log_dyadic_cutoff j] at h
    exact h
  have hb := mixedHit_abs_le (stages j) N L L D hL (gram (stages j) T) hK (by
    intro m n hm hn
    simpa only [K, inverseSqrtKernel, mul_assoc] using gram_abs_le (stages j) (stages_prime j) hT hm hn)
  have hr := cutoff_div_sqrt_le N hN
  have hsqrt : Real.sqrt (N : ℝ) = Real.exp (T/2) := by
    have he : Real.exp (T/2)^2 = (N : ℝ) := by
      rw [pow_two, ← Real.exp_add, show T/2+T/2=T by ring]
      exact exp_dyadicTime j
    have hs := Real.sq_sqrt (Nat.cast_nonneg N : (0 : ℝ) ≤ N)
    apply le_antisymm
    · exact (sq_le_sq₀ (Real.sqrt_nonneg _) (Real.exp_pos _).le).mp (by linarith)
    · exact (sq_le_sq₀ (Real.exp_pos _).le (Real.sqrt_nonneg _)).mp (by linarith)
  have hcoarse : |mixedHit (stages j) N L L D (gram (stages j) T)| ≤
      256*(T*factor (stages j)^2*(1+T))^2 * ((N : ℝ)*Real.sqrt (N : ℝ)) := by
    have hh : H ≤ (1+T)^2 := by nlinarith
    calc
      _ ≤ 8*K^2*(N : ℝ)*((N : ℝ)/L)*H := by convert hb using 1 <;> ring
      _ ≤ 8*K^2*(N : ℝ)*(2*Real.sqrt (N : ℝ))*H := by gcongr <;> first | assumption | positivity
      _ ≤ 8*K^2*(N : ℝ)*(2*Real.sqrt (N : ℝ))*(1+T)^2 := by gcongr <;> first | assumption | positivity
      _ = _ := by dsimp [K]; ring
  have htime := time_harmonic_factor_le j
  have hsq := (sq_le_sq₀ (by positivity : 0 ≤ T*factor (stages j)^2*(1+T))
    (by positivity : 0 ≤ 600*Real.exp (96/Real.log 2)*Real.exp (T/8))).mpr htime
  calc
    _ ≤ 256*(T*factor (stages j)^2*(1+T))^2*((N : ℝ)*Real.sqrt (N : ℝ)) := hcoarse
    _ ≤ 256*(600*Real.exp (96/Real.log 2)*Real.exp (T/8))^2*
        ((N : ℝ)*Real.sqrt (N : ℝ)) := by gcongr <;> first | assumption | positivity
    _ = _ := by
      rw [hsqrt, show (N : ℝ) = Real.exp T from (exp_dyadicTime j).symm]
      have he : Real.exp (96/Real.log 2)^2 * Real.exp (T/8)^2 *
          (Real.exp T*Real.exp (T/2)) =
          Real.exp (192/Real.log 2)*Real.exp ((7/4)*T) := by
        simp only [pow_two]
        rw [← Real.exp_add, ← Real.exp_add, ← Real.exp_add, ← Real.exp_add, ← Real.exp_add,
          ← Real.exp_add]
        congr 1
        ring
      calc
        _ = 92160000*(Real.exp (96/Real.log 2)^2*Real.exp (T/8)^2*
            (Real.exp T*Real.exp (T/2))) := by ring
        _ = _ := by rw [he]; ring

end GRWTSK.NumberTheory.Moebius.PickupRoughMixedCrossPrime
