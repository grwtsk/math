/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib results retain their upstream attribution and licenses. -/
import GRWTSK.Analysis.FiniteSums.PrimeBlockKernel

/-!
# Exact finite-period discrepancy with no hidden uniformity in the period

The mean and discrepancy radius are computed from one literal period.
All bounds retain that period; a scheduled growing period is not treated as fixed.
SOURCE_PROOF_CANDIDATE / compilation, kernel replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.FiniteSums.PeriodicPrefixDiscrepancy
open GRWTSK.Analysis.FiniteSums.PrimeBlockKernel

def mean (a : ℕ → ℝ) (L : ℕ) : ℝ := prefix a L / (L:ℝ)
def discrepancy (a : ℕ → ℝ) (L r : ℕ) : ℝ := prefix a r - mean a L*(r:ℝ)
def radius (a : ℕ → ℝ) (L : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 L, |a n-mean a L|

theorem prefix_period (a : ℕ → ℝ) (L : ℕ) (hper : ∀ n, a (n+L)=a n) (n : ℕ) :
    prefix a (n+L) = prefix a n+prefix a L := by
  induction n with
  | zero => simp [prefix]
  | succ n ih =>
      have hs := sum_closed_step a (n+L)
      have ht := sum_closed_step a n
      change prefix a ((n+1)+L) = prefix a (n+1)+prefix a L
      rw [show (n+1)+L=(n+L)+1 by omega]
      change (∑ k ∈ Finset.Icc 1 ((n+L)+1), a k) = _
      rw [hs]
      change prefix a (n+L)+a (n+L+1) = prefix a (n+1)+prefix a L
      rw [ih, show n+L+1=(n+1)+L by omega, hper]
      change _ = (∑ k ∈ Finset.Icc 1 (n+1), a k)+prefix a L
      rw [ht]
      ring

theorem prefix_blocks (a : ℕ → ℝ) (L : ℕ) (hper : ∀ n, a (n+L)=a n) (q r : ℕ) :
    prefix a (L*q+r) = (q:ℝ)*prefix a L+prefix a r := by
  induction q with
  | zero => simp
  | succ q ih =>
      rw [show L*(q+1)+r=(L*q+r)+L by ring, prefix_period a L hper, ih]
      push_cast
      ring

/-- Exact, even when the period is larger than the requested prefix. -/
theorem prefix_decomposition (a : ℕ → ℝ) {L : ℕ} (hL : 0 < L)
    (hper : ∀ n, a (n+L)=a n) (N : ℕ) :
    prefix a N = mean a L*(N:ℝ)+discrepancy a L (N%L) := by
  have hn : N=L*(N/L)+N%L := by
    simpa only [Nat.add_comm] using (Nat.mod_add_div N L).symm
  calc
    prefix a N = (N/L:ℕ)*prefix a L+prefix a (N%L) := by
      conv_lhs => rw [hn]
      exact prefix_blocks a L hper _ _
    _ = _ := by
      unfold mean discrepancy
      have hnr : (N:ℝ)=(L:ℝ)*(N/L:ℕ)+(N%L:ℕ) := by exact_mod_cast hn
      rw [hnr]
      field_simp [show (L:ℝ) ≠ 0 by exact_mod_cast (Nat.ne_of_gt hL)]
      ring

theorem discrepancy_eq_centered_sum (a : ℕ → ℝ) (L r : ℕ) :
    discrepancy a L r = ∑ n ∈ Finset.Icc 1 r, (a n-mean a L) := by
  simp [discrepancy, prefix, Finset.sum_sub_distrib, Nat.card_Icc]

theorem discrepancy_le_radius (a : ℕ → ℝ) (L r : ℕ) (hr : r ≤ L) :
    |discrepancy a L r| ≤ radius a L := by
  rw [discrepancy_eq_centered_sum]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1, (Finset.mem_Icc.mp hn).2.trans hr⟩
  · intro n _ _; exact abs_nonneg _

theorem prefix_error (a : ℕ → ℝ) {L : ℕ} (hL : 0 < L)
    (hper : ∀ n, a (n+L)=a n) (N : ℕ) :
    |prefix a N-mean a L*(N:ℝ)| ≤ radius a L := by
  rw [prefix_decomposition a hL hper]
  simpa using discrepancy_le_radius a L (N%L) (Nat.mod_lt N hL).le

/-- Explicit cost: no O_P(1) is silently used for P=P(T). -/
theorem mean_and_radius_bounds (a : ℕ → ℝ) {L : ℕ} (hL : 0 < L)
    (ha : ∀ n ∈ Finset.Icc 1 L, |a n| ≤ 1) :
    |mean a L| ≤ 1 ∧ radius a L ≤ 2*(L:ℝ) := by
  have hLR : (0:ℝ)<L := by exact_mod_cast hL
  have hp : |prefix a L| ≤ (L:ℝ) := by
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    calc
      (∑ n ∈ Finset.Icc 1 L, |a n|) ≤ ∑ _n ∈ Finset.Icc 1 L, (1:ℝ) :=
        Finset.sum_le_sum ha
      _ = (L:ℝ) := by simp [Nat.card_Icc]
  have hm : |mean a L| ≤ 1 := by
    rw [mean, abs_div, abs_of_pos hLR]
    exact (div_le_one hLR).mpr hp
  refine ⟨hm, ?_⟩
  calc
    radius a L ≤ ∑ _n ∈ Finset.Icc 1 L, (2:ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      exact (abs_sub _ _).trans (by linarith [ha n hn])
    _ = 2*(L:ℝ) := by simp [Nat.card_Icc]; ring

/-- The signed discrepancy can be transported by any nonnegative decreasing source weights. -/
theorem weighted_error (a w : ℕ → ℝ) {L : ℕ} (hL : 0 < L)
    (hper : ∀ n, a (n+L)=a n) (N : ℕ)
    (hmono : ∀ n ∈ Finset.Icc 1 N, 0 ≤ w n-w (n+1))
    (hend : w (N+1)=0) :
    |(∑ n ∈ Finset.Icc 1 N, a n*w n)-mean a L*(∑ n ∈ Finset.Icc 1 N, w n)| ≤
      radius a L*w 1 := by
  have hp (n : ℕ) : |prefix (fun k => a k-mean a L) n| ≤ radius a L := by
    have he : prefix (fun k => a k-mean a L) n = prefix a n-mean a L*(n:ℝ) := by
      simp [prefix, Finset.sum_sub_distrib, Nat.card_Icc, mul_comm]
    rw [he]
    exact prefix_error a hL hper n
  have hu := affine_prefix_bound (fun k => a k-mean a L) w N 0 (radius a L)
    (fun n _ => by simpa using (abs_le.mp (hp n)).2) hmono hend
  have hl := affine_prefix_bound (fun k => -(a k-mean a L)) w N 0 (radius a L)
    (fun n _ => by
      have hn : prefix (fun k => -(a k-mean a L)) n = -prefix (fun k => a k-mean a L) n := by
        simp [prefix, Finset.sum_neg_distrib]
      rw [hn]
      have hb := (abs_le.mp (hp n)).1
      simpa using (neg_le_neg hb)) hmono hend
  have he : (∑ n ∈ Finset.Icc 1 N, (a n-mean a L)*w n) =
      (∑ n ∈ Finset.Icc 1 N, a n*w n)-mean a L*(∑ n ∈ Finset.Icc 1 N, w n) := by
    simp only [sub_mul, Finset.sum_sub_distrib, Finset.mul_sum]
  rw [he] at hu
  have hen : (∑ n ∈ Finset.Icc 1 N, -(a n-mean a L)*w n) =
      -((∑ n ∈ Finset.Icc 1 N, a n*w n)-mean a L*(∑ n ∈ Finset.Icc 1 N, w n)) := by
    rw [← he, ← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro n _; ring
  rw [hen] at hl
  exact abs_le.mpr ⟨by linarith, by simpa using hu⟩

end GRWTSK.Analysis.FiniteSums.PeriodicPrefixDiscrepancy
