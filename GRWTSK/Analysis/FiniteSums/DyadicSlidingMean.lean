/- Copyright (c) 2026 grwtsk. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.Analysis.FiniteSums.ShortIntervalSampling
import GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement

/-!
# From averaged short intervals to an exact aligned dyadic level

The sampling cells partition the full origin interval. A common background
cancels in each two-child contrast; the root mean is not deleted. Fixed dyadic
origins need not avoid an exceptional set. Their squared contrasts are priced
by the actual centered L1 average over ALL origins, using bounded-input
translation. No arXiv estimate is imported as an axiom or assumed proved.
The dyadic-refinement dependency is the exact detached source in issue #1395.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Classical
namespace GRWTSK.Analysis.FiniteSums.DyadicSlidingMean
open GRWTSK.Analysis.FiniteSums.ShortIntervalSampling
open GRWTSK.Analysis.FiniteSums.DyadicBilinearRefinement

/-- Two consecutive length-H child sums at the q-th ordinary parent. -/
def gridContrast (H o q : ℕ) (f : ℕ → ℝ) : ℝ :=
  shortSum f (o + q * (2 * H)) H - shortSum f (o + q * (2 * H) + H) H

def gridPairing (H Q o : ℕ) (w f : ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.range Q, gridContrast H o q w * gridContrast H o q f / (2 * (H : ℝ))

def gridEnergy (H Q o : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ q ∈ Finset.range Q, gridContrast H o q f ^ 2 / (2 * (H : ℝ))

theorem gridEnergy_nonneg (H Q o : ℕ) (f : ℕ → ℝ) :
    0 ≤ gridEnergy H Q o f := by
  exact Finset.sum_nonneg (fun _ _ => div_nonneg (sq_nonneg _) (by positivity))

theorem gridPairing_self (H Q o : ℕ) (f : ℕ → ℝ) :
    gridPairing H Q o f f = gridEnergy H Q o f := by
  simp only [gridPairing, gridEnergy, pow_two]

/-- Nonzero common means cancel exactly in contrasts, not in the root mean. -/
theorem gridContrast_sub_const (H o q : ℕ) (f : ℕ → ℝ) (c : ℝ) :
    gridContrast H o q (fun n => f n - c) = gridContrast H o q f := by
  simp only [gridContrast, shortSum_sub_const]
  ring

theorem gridEnergy_sub_const (H Q o : ℕ) (f : ℕ → ℝ) (c : ℝ) :
    gridEnergy H Q o (fun n => f n - c) = gridEnergy H Q o f := by
  simp only [gridEnergy, gridContrast_sub_const]

/-- The adjacent sampling cells are disjoint even when chosen origins are exceptional. -/
theorem gridContrast_square_le_sliding (H o q : ℕ) (f : ℕ → ℝ) {B : ℝ}
    (hB : 0 ≤ B) (hf : ∀ n : ℕ, |f n| ≤ B) :
    gridContrast H o q f ^ 2 ≤
      16 * B * slidingL1 f (o + q * (2 * H)) (2 * H) H := by
  have hl := shortSum_square_le_sliding f (o + q * (2 * H)) H hB hf
  have hr := shortSum_square_le_sliding f (o + q * (2 * H) + H) H hB hf
  have hs := sq_nonneg (shortSum f (o + q * (2 * H)) H +
    shortSum f (o + q * (2 * H) + H) H)
  have hadd := slidingL1_add f (o + q * (2 * H)) H H H
  rw [show H + H = 2 * H by omega] at hadd
  rw [hadd]
  unfold gridContrast
  nlinarith

/-- Full level estimate; its origin interval has exactly Q*(2H) integer points. -/
theorem gridEnergy_le_sliding (H Q o : ℕ) (hH : 0 < H)
    (f : ℕ → ℝ) {B : ℝ} (hB : 0 ≤ B) (hf : ∀ n : ℕ, |f n| ≤ B) :
    gridEnergy H Q o f ≤
      (8 * B / (H : ℝ)) * slidingL1 f o (Q * (2 * H)) H := by
  have hHr : (0 : ℝ) < H := by exact_mod_cast hH
  have hsum : (∑ q ∈ Finset.range Q, gridContrast H o q f ^ 2) ≤
      16 * B * slidingL1 f o (Q * (2 * H)) H := by
    calc
      _ ≤ ∑ q ∈ Finset.range Q,
          16 * B * slidingL1 f (o + q * (2 * H)) (2 * H) H :=
        Finset.sum_le_sum (fun q _ => gridContrast_square_le_sliding H o q f hB hf)
      _ = _ := by rw [← Finset.mul_sum, sum_slidingL1_cells]
  unfold gridEnergy
  rw [← Finset.sum_div]
  calc
    _ ≤ (16 * B * slidingL1 f o (Q * (2 * H)) H) / (2 * (H : ℝ)) :=
      div_le_div_of_nonneg_right hsum (by positivity)
    _ = _ := by field_simp [hHr.ne'] <;> ring

/-- This is the interface to centered short-interval theorems, not an analytic theorem. -/
theorem gridEnergy_le_centeredSliding (H Q o : ℕ) (hH : 0 < H)
    (f : ℕ → ℝ) (c : ℝ) (hf : ∀ n : ℕ, |f n| ≤ 1) :
    gridEnergy H Q o f ≤
      (8 * (1 + |c|) / (H : ℝ)) * centeredSlidingL1 f c o (Q * (2 * H)) H := by
  rw [← gridEnergy_sub_const H Q o f c]
  apply gridEnergy_le_sliding H Q o hH (fun n => f n - c) (by positivity)
  intro n
  exact (abs_sub _ _).trans (add_le_add_right (hf n) _)

/-- The normalized loss is explicit; no factor counts the sampled origins. -/
theorem gridEnergy_le_of_centered_mean (H Q o : ℕ) (hH : 0 < H)
    (f : ℕ → ℝ) (c ρ : ℝ) (hf : ∀ n : ℕ, |f n| ≤ 1)
    (hmean : centeredSlidingL1 f c o (Q * (2 * H)) H ≤
      ρ * ((Q * (2 * H) : ℕ) : ℝ) * (H : ℝ)) :
    gridEnergy H Q o f ≤ 8 * (1 + |c|) * ρ * ((Q * (2 * H) : ℕ) : ℝ) := by
  have hHr : (0 : ℝ) < H := by exact_mod_cast hH
  apply (gridEnergy_le_centeredSliding H Q o hH f c hf).trans
  calc
    _ ≤ (8 * (1 + |c|) / (H : ℝ)) *
        (ρ * ((Q * (2 * H) : ℕ) : ℝ) * (H : ℝ)) :=
      mul_le_mul_of_nonneg_left hmean (by positivity)
    _ = _ := by field_simp [hHr.ne'] <;> ring

/-- Every bad origin is charged, including those not on the sampled grid. -/
theorem gridEnergy_le_of_exceptional_origins (H Q o : ℕ) (hH : 0 < H)
    (f : ℕ → ℝ) (c η : ℝ) (bad : Finset ℕ) (hη : 0 ≤ η)
    (hf : ∀ n : ℕ, |f n| ≤ 1)
    (hgood : ∀ r ∈ Finset.range (Q * (2 * H)), r ∉ bad →
      |shortSum f (o + r) H - (H : ℝ) * c| ≤ η * (H : ℝ)) :
    gridEnergy H Q o f ≤ 8 * (1 + |c|) *
      (η * ((Q * (2 * H) : ℕ) : ℝ) + (1 + |c|) *
        (((Finset.range (Q * (2 * H))).filter (fun r => r ∈ bad)).card : ℝ)) := by
  have hHr : (0 : ℝ) < H := by exact_mod_cast hH
  apply (gridEnergy_le_centeredSliding H Q o hH f c hf).trans
  have hm := centeredSlidingL1_le_exceptional f c η o (Q * (2 * H)) H bad hη hf hgood
  apply (mul_le_mul_of_nonneg_left hm (show 0 ≤ 8 * (1 + |c|) / (H : ℝ) by positivity)).trans
  apply le_of_eq
  field_simp [hHr.ne']
  <;> ring

/-- Source-matched Cauchy: coefficient contrasts are combined before this norm bound. -/
theorem gridPairing_sq_le_energies (H Q o : ℕ) (hH : 0 < H) (w f : ℕ → ℝ) :
    gridPairing H Q o w f ^ 2 ≤ gridEnergy H Q o w * gridEnergy H Q o f := by
  have hHr : (0 : ℝ) < H := by exact_mod_cast hH
  apply Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul (Finset.range Q)
    (r := fun q => gridContrast H o q w * gridContrast H o q f / (2 * (H : ℝ)))
    (f := fun q => gridContrast H o q w ^ 2 / (2 * (H : ℝ)))
    (g := fun q => gridContrast H o q f ^ 2 / (2 * (H : ℝ)))
  · intro _ _; exact div_nonneg (sq_nonneg _) (by positivity)
  · intro _ _; exact div_nonneg (sq_nonneg _) (by positivity)
  · intro _ _; apply le_of_eq; field_simp [hHr.ne'] <;> ring

theorem gridPairing_split (H Q R o : ℕ) (w f : ℕ → ℝ) :
    gridPairing H (Q + R) o w f =
      gridPairing H Q o w f + gridPairing H R (o + Q * (2 * H)) w f := by
  simp [gridPairing, gridContrast, Finset.sum_range_add, Nat.add_mul, Nat.add_assoc]

theorem localDetail_eq_single_grid (k o : ℕ) (w f : ℕ → ℝ) :
    localDetail k o w f = gridPairing (2 ^ k) 1 o w f := by
  simp [localDetail, gridPairing, gridContrast, blockContrast, blockSum, shortSum,
    pow_succ, Nat.cast_mul, Nat.mul_comm]

/-- A requested level above this finite subtree has no nodes. -/
theorem level_pairing_zero (m k o : ℕ) (w f : ℕ → ℝ) (hm : m ≤ k) :
    detailPairing (fun r _ => r = k + 1) m o w f = 0 := by
  induction m generalizing o with
  | zero => simp [detailPairing]
  | succ m ih =>
      have hne : m + 1 ≠ k + 1 := by omega
      simp only [detailPairing, if_neg hne]
      rw [ih o (by omega), ih (o + 2 ^ m) (by omega)]
      ring

/-- Exact enumeration of one existing dyadic level by disjoint ordinary parents. -/
theorem level_pairing_eq_grid (m k o : ℕ) (w f : ℕ → ℝ) (hk : k < m) :
    detailPairing (fun r _ => r = k + 1) m o w f =
      gridPairing (2 ^ k) (2 ^ (m - (k + 1))) o w f := by
  induction m generalizing o with
  | zero => omega
  | succ m ih =>
      by_cases hkm : k = m
      · subst k
        simp only [detailPairing, if_true, level_pairing_zero m m o w f le_rfl,
          level_pairing_zero m m (o + 2 ^ m) w f le_rfl, add_zero,
          Nat.add_sub_cancel_left, Nat.sub_self, pow_zero]
        exact localDetail_eq_single_grid m o w f
      · have hlt : k < m := by omega
        have hne : m + 1 ≠ k + 1 := by omega
        have hcount : 2 ^ (m + 1 - (k + 1)) =
            2 ^ (m - (k + 1)) + 2 ^ (m - (k + 1)) := by
          rw [show m + 1 - (k + 1) = (m - (k + 1)) + 1 by omega, pow_succ]
          omega
        have hoff : 2 ^ (m - (k + 1)) * (2 * 2 ^ k) = 2 ^ m := by
          calc
            _ = 2 ^ (m - (k + 1)) * 2 ^ (k + 1) := by rw [pow_succ]; ring
            _ = 2 ^ ((m - (k + 1)) + (k + 1)) := (pow_add _ _ _).symm
            _ = _ := by rw [Nat.sub_add_cancel (by omega : k + 1 ≤ m)]
        rw [detailPairing, if_neg hne, zero_add, ih o hlt, ih (o + 2 ^ m) hlt,
          hcount, gridPairing_split, hoff]

/-- Each level covers the original source length, including exact powers and casts. -/
theorem dyadic_grid_length (m k : ℕ) (hk : k < m) :
    2 ^ (m - (k + 1)) * (2 * 2 ^ k) = 2 ^ m := by
  calc
    _ = 2 ^ (m - (k + 1)) * 2 ^ (k + 1) := by rw [pow_succ]; ring
    _ = 2 ^ ((m - (k + 1)) + (k + 1)) := (pow_add _ _ _).symm
    _ = _ := by rw [Nat.sub_add_cancel (by omega : k + 1 ≤ m)]

end GRWTSK.Analysis.FiniteSums.DyadicSlidingMean
