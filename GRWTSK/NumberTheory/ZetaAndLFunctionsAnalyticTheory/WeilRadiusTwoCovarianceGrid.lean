/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSeedCovariance

/-!
# Reciprocal gridding error in the radius-two covariance seed

Each of the twelve moments pairs a reciprocal kernel with a signal
power. A uniform grid error is paid against the absolute signal sum,
with separate budgets for powers zero, one, and two. The exact
covariance moment identities transfer these budgets to the two
generators and the covariance diagonal. Signal observation errors
and verification of the grid or its finite products are separate.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCovarianceGrid

open RadiusTwoSeedCovariance

variable {κ : Type*} [Fintype κ]

/-- Moment indices are reciprocal power followed by signal power. -/
structure Moments where
  toeplitz : ℕ → ℕ → ℝ
  hankel : ℕ → ℕ → ℝ

/-- The exact three scalar evaluations of the stored moment families. -/
def evaluate (m u W : ℝ) (M : Moments) : ℝ × ℝ × ℝ :=
  let T := M.toeplitz
  let J := M.hankel
  ( (W/2) * (T 1 2 + J 1 2 + u * (J 1 1 - T 1 1)),
    (W/2) * (T 1 1 - J 1 1 - u * (T 1 0 + J 1 0)),
    (W/4) * (T 2 2 + J 2 2 + 2*u * (J 2 1 - T 2 1) +
      u^2 * (T 2 0 + J 2 0) + (T 1 2 + J 1 2 - u^2 * (T 1 0 + J 1 0))/m) )

/-- Exact sums of the supplied grid entries times the supplied signal powers. -/
def griddedMoments (U : κ → ℝ) (gridT gridJ : ℕ → κ → ℝ) : Moments where
  toeplitz p r := ∑ k, (U k)^r * gridT p k
  hankel p r := ∑ k, (U k)^r * gridJ p k

/-- The total unweighted kernel error budget for 800000 receiving rows. -/
def gridBudget : ℝ := 800000 / (2:ℝ)^56

/-- One reciprocal moment with signal power r costs at most 9^r times
the total unweighted grid budget. In particular the powers zero, one,
and two have separate multipliers 1, 9, and 81. -/
theorem moment_error (hcard : Fintype.card κ = 800000) (r : ℕ)
    (U kernel grid : κ → ℝ) (hU : ∀ k, |U k| ≤ 9)
    (hGrid : ∀ k, |kernel k - grid k| ≤ (2:ℝ)⁻¹^56) :
    |(∑ k, (U k)^r * kernel k) - ∑ k, (U k)^r * grid k| ≤ gridBudget * 9^r := by
  refine (abs_gridded_moment_error (fun k => (U k)^r) kernel grid _ hGrid).trans ?_
  have hSum : (∑ k, |(U k)^r|) ≤ (800000:ℝ) * 9^r := by
    calc
      _ ≤ ∑ _ : κ, (9:ℝ)^r := Finset.sum_le_sum fun k _ => by
        rw [abs_pow]
        exact pow_le_pow_left₀ (abs_nonneg _) (hU k) _
      _ = _ := by rw [Finset.sum_const, Finset.card_univ, hcard, nsmul_eq_mul]; norm_num
  calc
    _ ≤ (2:ℝ)⁻¹^56 * ((800000:ℝ) * 9^r) :=
      mul_le_mul_of_nonneg_left hSum (by positivity)
    _ = _ := by unfold gridBudget; rw [inv_pow, div_eq_mul_inv]; ring

private theorem add_error {a a' b b' A B : ℝ}
    (ha : |a-a'| ≤ A) (hb : |b-b'| ≤ B) :
    |a+b-(a'+b')| ≤ A+B := by
  rw [show a+b-(a'+b') = (a-a')+(b-b') by ring]
  exact (abs_add_le _ _).trans (add_le_add ha hb)

private theorem sub_error {a a' b b' A B : ℝ}
    (ha : |a-a'| ≤ A) (hb : |b-b'| ≤ B) :
    |a-b-(a'-b')| ≤ A+B := by
  rw [show a-b-(a'-b') = (a-a') + -(b-b') by ring]
  exact (abs_add_le _ _).trans (by rw [abs_neg]; exact add_le_add ha hb)

private theorem mul_error {a a' A : ℝ} (c : ℝ) (ha : |a-a'| ≤ A) :
    |c*a-c*a'| ≤ |c| * A := by
  rw [← mul_sub, abs_mul]
  exact mul_le_mul_of_nonneg_left ha (abs_nonneg _)

private theorem div_error {a a' A : ℝ} {m : ℝ} (hm : 0 < m) (ha : |a-a'| ≤ A) :
    |a/m-a'/m| ≤ A/m := by
  rw [← sub_div, abs_div, abs_of_pos hm]
  exact div_le_div_of_nonneg_right ha hm.le

private theorem evaluations_error (m u : ℝ) (hm : 65 ≤ m) (hu : |u| ≤ 9)
    (exactM observed : Moments)
    (hT : ∀ p r, p = 1 ∨ p = 2 → |exactM.toeplitz p r - observed.toeplitz p r| ≤ gridBudget * 9^r)
    (hJ : ∀ p r, p = 1 ∨ p = 2 → |exactM.hankel p r - observed.hankel p r| ≤ gridBudget * 9^r) :
    let exactV := evaluate m u (100/39) exactM
    let observedV := evaluate m u (100/39) observed
    |exactV.1-observedV.1| ≤ (10:ℝ)⁻¹^8 ∧
      |exactV.2.1-observedV.2.1| ≤ (10:ℝ)⁻¹^8 ∧
      |exactV.2.2-observedV.2.2| ≤ (10:ℝ)⁻¹^8 := by
  have hm0 : 0 < m := (by norm_num : (0:ℝ) < 65).trans_le hm
  have he : 0 ≤ gridBudget := by unfold gridBudget; positivity
  have he0 : 0 ≤ gridBudget*9^0 + gridBudget*9^0 := by positivity
  have he1 : 0 ≤ gridBudget*9^1 + gridBudget*9^1 := by positivity
  have hu2 : |u^2| ≤ 81 := by
    rw [abs_pow]
    exact (pow_le_pow_left₀ (abs_nonneg _) hu 2).trans_eq (by norm_num)
  have h2u : |2*u| ≤ 18 := by rw [abs_mul]; norm_num; linarith only [hu]
  have hT₁ (r : ℕ) := hT 1 r (Or.inl rfl)
  have hT₂ (r : ℕ) := hT 2 r (Or.inr rfl)
  have hJ₁ (r : ℕ) := hJ 1 r (Or.inl rfl)
  have hJ₂ (r : ℕ) := hJ 2 r (Or.inr rfl)
  dsimp only [evaluate]
  refine ⟨?_, ?_, ?_⟩
  · have h₁ := mul_error ((100/39:ℝ)/2)
      (add_error (add_error (hT₁ 2) (hJ₁ 2)) (mul_error u (sub_error (hJ₁ 1) (hT₁ 1))))
    refine h₁.trans ?_
    rw [abs_of_nonneg (by norm_num : 0 ≤ ((100/39:ℝ)/2))]
    refine (mul_le_mul_of_nonneg_left (add_le_add le_rfl
      (mul_le_mul_of_nonneg_right hu he1)) (by norm_num)).trans ?_
    norm_num [gridBudget]
  · have h₂ := mul_error ((100/39:ℝ)/2)
      (sub_error (sub_error (hT₁ 1) (hJ₁ 1)) (mul_error u (add_error (hT₁ 0) (hJ₁ 0))))
    refine h₂.trans ?_
    rw [abs_of_nonneg (by norm_num : 0 ≤ ((100/39:ℝ)/2))]
    refine (mul_le_mul_of_nonneg_left (add_le_add le_rfl
      (mul_le_mul_of_nonneg_right hu he0)) (by norm_num)).trans ?_
    norm_num [gridBudget]
  · have h₃ := mul_error ((100/39:ℝ)/4) (add_error
      (add_error (add_error (add_error (hT₂ 2) (hJ₂ 2))
        (mul_error (2*u) (sub_error (hJ₂ 1) (hT₂ 1))))
        (mul_error (u^2) (add_error (hT₂ 0) (hJ₂ 0))))
      (div_error hm0 (sub_error (add_error (hT₁ 2) (hJ₁ 2))
        (mul_error (u^2) (add_error (hT₁ 0) (hJ₁ 0))))))
    refine h₃.trans ?_
    rw [abs_of_nonneg (by norm_num : 0 ≤ ((100/39:ℝ)/4))]
    apply (mul_le_mul_of_nonneg_left _ (by norm_num)).trans
      (by norm_num [gridBudget] : ((100/39:ℝ)/4) *
        ((gridBudget*9^2 + gridBudget*9^2 + 18*(gridBudget*9^1 + gridBudget*9^1)) +
          81*(gridBudget*9^0 + gridBudget*9^0) +
          (gridBudget*9^2 + gridBudget*9^2 + 81*(gridBudget*9^0 + gridBudget*9^0))/65) ≤ _)
    refine add_le_add (add_le_add (add_le_add le_rfl
      (mul_le_mul_of_nonneg_right h2u he1))
      (mul_le_mul_of_nonneg_right hu2 he0)) ?_
    refine (div_le_div_of_nonneg_right (add_le_add le_rfl
      (mul_le_mul_of_nonneg_right hu2 he0)) hm0.le).trans ?_
    exact div_le_div_of_nonneg_left (by positivity) (by norm_num) hm


/-- The integer grid digit for positive distance d, divided by the grid scale. -/
def reciprocalGrid56 (p d : ℕ) : ℝ := ((2^56 / d^p : ℕ):ℝ) / (2:ℝ)^56

/-- Positive reciprocal kernel gridding is outward within one grid unit. -/
theorem reciprocalGrid56_error (p : ℕ) {d : ℕ} (hd : 0 < d) :
    |((d:ℝ)^p)⁻¹ - reciprocalGrid56 p d| ≤ (2:ℝ)⁻¹^56 := by
  let s : ℕ := 2^56
  let D : ℕ := d^p
  let a : ℕ := s/D
  have hDP : 0 < D := pow_pos hd p
  have hD : 0 < (D:ℝ) := Nat.cast_pos.mpr hDP
  have hs : 0 < (s:ℝ) := Nat.cast_pos.mpr (by dsimp [s]; positivity)
  have hsPow : (s:ℝ) = (2:ℝ)^56 := by dsimp only [s]; norm_cast
  have hloNat : a*D ≤ s := Nat.div_mul_le_self _ _
  have hhiNat : s < (a+1)*D := (Nat.div_lt_iff_lt_mul hDP).mp (Nat.lt_succ_self a)
  have hlo : (a:ℝ) ≤ (s:ℝ)/(D:ℝ) := (le_div_iff₀ hD).mpr (by exact_mod_cast hloNat)
  have hhi : (s:ℝ)/(D:ℝ) < (a:ℝ)+1 := (div_lt_iff₀ hD).mpr (by exact_mod_cast hhiNat)
  have hInv : (D:ℝ)⁻¹ = ((s:ℝ)/(D:ℝ))/(s:ℝ) := by field_simp [hs.ne', hD.ne']
  unfold reciprocalGrid56
  rw [← Nat.cast_pow, ← hsPow]
  change |(D:ℝ)⁻¹ - (a:ℝ)/(s:ℝ)| ≤ _
  rw [hInv, ← sub_div, abs_of_nonneg (div_nonneg (sub_nonneg.mpr hlo) hs.le),
    inv_pow, ← one_div, ← hsPow]
  exact div_le_div_of_nonneg_right (by linarith only [hhi]) hs.le

/-- Restore the sign of the first Toeplitz reciprocal after gridding
its positive integer distance. The squared reciprocal stays positive. -/
theorem signedToeplitzGrid56_error {m n p : ℕ} (hmn : m < n) (hp : p = 1 ∨ p = 2) :
    |(((m:ℝ)-n)^p)⁻¹ - (-1:ℝ)^p * reciprocalGrid56 p (n-m)| ≤ (2:ℝ)⁻¹^56 := by
  have hd : 0 < n-m := Nat.sub_pos_of_lt hmn
  have hcast : (m:ℝ)-n = -((n-m:ℕ):ℝ) := by rw [Nat.cast_sub hmn.le]; ring
  rw [hcast]
  rcases hp with rfl | rfl
  · rw [pow_one, pow_one, inv_neg, neg_one_mul]
    rw [show -(((n-m:ℕ):ℝ)⁻¹) - -reciprocalGrid56 1 (n-m) =
      -((((n-m:ℕ):ℝ)⁻¹) - reciprocalGrid56 1 (n-m)) by ring, abs_neg]
    simpa only [pow_one] using reciprocalGrid56_error 1 hd
  · simpa only [neg_sq, one_pow, one_mul] using reciprocalGrid56_error 2 hd

/-- A supplied 56-bit reciprocal grid incurs error at most 10^(-8)
in each literal covariance component at weight 100/39. The input
signals are held fixed and may themselves be observed centers. -/
theorem covariance_grid_error (hcard : Fintype.card κ = 800000) (m u : ℝ)
    (n U : κ → ℝ) (gridT gridJ : ℕ → κ → ℝ)
    (hm : 65 ≤ m) (hn : ∀ k, m < n k) (hu : |u| ≤ 9) (hU : ∀ k, |U k| ≤ 9)
    (hT : ∀ p k, p = 1 ∨ p = 2 → |((m-n k)^p)⁻¹ - gridT p k| ≤ (2:ℝ)⁻¹^56)
    (hJ : ∀ p k, p = 1 ∨ p = 2 → |((m+n k)^p)⁻¹ - gridJ p k| ≤ (2:ℝ)⁻¹^56) :
    let W : ℝ := 100/39
    let v := evaluate m u W (griddedMoments U gridT gridJ)
    |(∑ k, W * cross m (n k) u (U k) * U k) - v.1| ≤ (10:ℝ)⁻¹^8 ∧
      |(∑ k, W * normalizedCross m (n k) u (U k)) - v.2.1| ≤ (10:ℝ)⁻¹^8 ∧
      |(∑ k, W * (cross m (n k) u (U k))^2) - v.2.2| ≤ (10:ℝ)⁻¹^8 := by
  let E : Moments := ⟨fun p r => toeplitz p m n (fun k => (U k)^r),
    fun p r => hankel p m n (fun k => (U k)^r)⟩
  have h := evaluations_error m u hm hu E (griddedMoments U gridT gridJ)
    (fun p r hp => by
      simpa only [E, toeplitz, griddedMoments, div_eq_mul_inv] using
        moment_error hcard r U (fun k => ((m-n k)^p)⁻¹) (gridT p) hU (fun k => hT p k hp))
    (fun p r hp => by
      simpa only [E, hankel, griddedMoments, div_eq_mul_inv] using
        moment_error hcard r U (fun k => ((m+n k)^p)⁻¹) (gridJ p) hU (fun k => hJ p k hp))
  obtain ⟨h₁, h₂, h₃⟩ := covariance_eq_moments m u (100/39) n U
    ((by norm_num : (0:ℝ) < 65).trans_le hm) hn
  dsimp only
  rw [h₁, h₂, h₃]
  simpa only [evaluate, E, pow_zero, pow_one] using h

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoCovarianceGrid
