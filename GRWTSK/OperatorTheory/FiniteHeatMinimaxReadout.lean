/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Minimax recovery for bounded diagonal heat observations

A coordinate has signal bound X, measured value p*x + e, and error
bound N. With p ≥ 0 its exact worst-case recovery radius is min(X,N/p)
for p > 0, and X at erasure. The lower bound applies to nonlinear
decoders because two opposite inputs can give the same zero observation.
No statistical noise model or source-transfer premise is used.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.OperatorTheory.FiniteHeatMinimaxReadout

/-- The largest positive signal that can be hidden by admissible noise. -/
def radius (p X N : ℝ) : ℝ := if p = 0 then X else min X (N / p)

/-- Invert the actual multiplier where the noise budget permits improvement.
At erasure or above that noise budget, report zero. -/
def estimate (p X N y : ℝ) : ℝ := if p = 0 ∨ p * X ≤ N then 0 else y / p

theorem radius_bounds {p X N : ℝ} (hp : 0 ≤ p) (hX : 0 ≤ X) (hN : 0 ≤ N) :
    0 ≤ radius p X N ∧ radius p X N ≤ X ∧ p * radius p X N ≤ N := by
  by_cases zero : p = 0
  · simp [radius, zero, hX, hN]
  · have positive : 0 < p := lt_of_le_of_ne hp (Ne.symm zero)
    rw [radius, ite_eq_right zero]
    refine ⟨le_min hX (div_nonneg hN hp), min_le_left _ _, ?_⟩
    rw [mul_comm]
    exact (le_div_iff₀ positive).mp (min_le_right _ _)

theorem estimate_error_le {p X N x e : ℝ} (hp : 0 ≤ p)
    (signal : |x| ≤ X) (noise : |e| ≤ N) :
    |estimate p X N (p * x + e) - x| ≤ radius p X N := by
  by_cases zero : p = 0
  · simpa [estimate, radius, zero] using signal
  · have positive : 0 < p := lt_of_le_of_ne hp (Ne.symm zero)
    by_cases large : p * X ≤ N
    · have bound : X ≤ N / p := (le_div_iff₀ positive).2 (by rwa [mul_comm])
      simpa [estimate, radius, zero, large, min_eq_left bound] using signal
    · have bound : N / p ≤ X := (div_le_iff₀ positive).2 (by
        simpa [mul_comm] using (le_of_lt (lt_of_not_ge large)))
      rw [estimate, ite_eq_right (not_or.mpr ⟨zero, large⟩), radius, ite_eq_right zero, min_eq_right bound]
      have eq : (p * x + e) / p - x = e / p := by field_simp; ring
      rw [eq, abs_div, abs_of_pos positive]
      exact div_le_div_of_nonneg_right noise hp

/-- Every decoder incurs this error on an admissible input and noise pair.
Both alternatives in the proof generate the very same observation. -/
theorem exists_error_ge_radius (decoder : ℝ → ℝ) {p X N : ℝ}
    (hp : 0 ≤ p) (hX : 0 ≤ X) (hN : 0 ≤ N) :
    ∃ x e : ℝ, |x| ≤ X ∧ |e| ≤ N ∧ p * x + e = 0 ∧
      radius p X N ≤ |decoder (p * x + e) - x| := by
  let r := radius p X N
  obtain ⟨nonneg, small, hidden⟩ := radius_bounds hp hX hN
  change 0 ≤ r at nonneg
  change r ≤ X at small
  change p * r ≤ N at hidden
  have prod : 0 ≤ p * r := mul_nonneg hp nonneg
  by_cases sign : 0 ≤ decoder 0
  · refine ⟨-r, p * r, by simpa [abs_of_nonneg nonneg] using small,
      by rwa [abs_of_nonneg prod], by ring, ?_⟩
    rw [show p * -r + p * r = 0 by ring, sub_neg_eq_add, abs_of_nonneg (add_nonneg sign nonneg)]
    show r ≤ decoder 0 + r
    linarith
  · refine ⟨r, -(p * r), by rwa [abs_of_nonneg nonneg],
      by simpa [abs_of_nonneg prod] using hidden, by ring, ?_⟩
    rw [add_neg_cancel, abs_of_nonpos (by linarith)]
    show r ≤ -(decoder 0 - r)
    linarith

/-- For the actual Euler multiplier used by the finite heat schedule, the
sharp formula applies mode by mode, also when a unit exposure erases it. -/
theorem euler_mode_minimax {J : Type*} [Fintype J] (exposure : J → ℝ)
    (upper : ∀ j, exposure j ≤ 1) {X N : ℝ} (hX : 0 ≤ X) (hN : 0 ≤ N) :
    let p := ∏ j, (1 - exposure j)
    (∀ x e : ℝ, |x| ≤ X → |e| ≤ N → |estimate p X N (p * x + e) - x| ≤ radius p X N) ∧
    (∀ decode : ℝ → ℝ, ∃ x e : ℝ, |x| ≤ X ∧ |e| ≤ N ∧
      p * x + e = 0 ∧ radius p X N ≤ |decode (p * x + e) - x|) := by
  intro p
  have hp : 0 ≤ p := Finset.prod_nonneg fun j _ => sub_nonneg.mpr (upper j)
  exact ⟨fun _ _ => estimate_error_le hp, fun decode => exists_error_ge_radius decode hp hX hN⟩

/-- The exact worst-case radius of a weighted readout under independent
coordinate bounds. The lower bound permits an arbitrary decoder of the
entire observation vector. -/
theorem weighted_minimax {I : Type*} [Fintype I]
    (p X N w : I → ℝ) (hp : ∀ i, 0 ≤ p i) (hX : ∀ i, 0 ≤ X i) (hN : ∀ i, 0 ≤ N i) :
    let R := ∑ i, |w i| * radius (p i) (X i) (N i)
    (∀ x e : I → ℝ, (∀ i, |x i| ≤ X i) → (∀ i, |e i| ≤ N i) →
      |(∑ i, w i * estimate (p i) (X i) (N i) (p i * x i + e i)) - ∑ i, w i * x i| ≤ R) ∧
    (∀ decode : (I → ℝ) → ℝ, ∃ x e : I → ℝ,
      (∀ i, |x i| ≤ X i) ∧ (∀ i, |e i| ≤ N i) ∧
      (∀ i, p i * x i + e i = 0) ∧ R ≤ |decode (fun i => p i * x i + e i) - ∑ i, w i * x i|) := by
  intro R
  constructor
  · intro x e signal noise
    rw [← Finset.sum_sub_distrib]
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    apply Finset.sum_le_sum
    intro i _
    rw [← mul_sub, abs_mul]
    exact mul_le_mul_of_nonneg_left (estimate_error_le (hp i) (signal i) (noise i)) (abs_nonneg _)
  · intro decode
    let r i := radius (p i) (X i) (N i)
    let z i := if 0 ≤ w i then r i else -r i
    have bounds (i : I) : 0 ≤ r i ∧ r i ≤ X i ∧ p i * r i ≤ N i :=
      radius_bounds (hp i) (hX i) (hN i)
    have magnitude (i : I) : |z i| = r i := by
      unfold z
      split <;> simp [abs_of_nonneg (bounds i).1]
    have aligned (i : I) : w i * z i = |w i| * r i := by
      by_cases hi : 0 ≤ w i
      · simp [z, hi, abs_of_nonneg hi]
      · rw [abs_of_neg (lt_of_not_ge hi)]
        simp only [z, ite_eq_right hi, mul_neg, neg_mul]
    have sumZ : (∑ i, w i * z i) = R := Finset.sum_congr rfl (fun i _ => aligned i)
    have nonnegR : 0 ≤ R :=
      Finset.sum_nonneg fun i _ => mul_nonneg (abs_nonneg _) (bounds i).1
    let zero : I → ℝ := fun _ => 0
    let choose : ℝ := if 0 ≤ decode zero then -1 else 1
    let x i := choose * z i
    let e i := -(p i * x i)
    have absChoose : |choose| = 1 := by unfold choose; split <;> norm_num
    have absX (i : I) : |x i| = r i := by
      rw [show x i = choose * z i by rfl, abs_mul, absChoose, one_mul, magnitude]
    have masked : (fun i => p i * x i + e i) = zero := by
      funext i
      exact add_neg_cancel _
    have sumX : (∑ i, w i * x i) = choose * R := by
      simp only [x, mul_left_comm (w _) choose, ← Finset.mul_sum, sumZ]
    refine ⟨x, e, fun i => ?_, fun i => ?_, congrFun masked, ?_⟩
    · rw [absX]
      exact (bounds i).2.1
    · rw [show e i = -(p i * x i) by rfl, abs_neg, abs_mul, abs_of_nonneg (hp i), absX]
      exact (bounds i).2.2
    · rw [masked, sumX]
      unfold choose
      split
      · rename_i sign
        rw [neg_one_mul, sub_neg_eq_add, abs_of_nonneg (add_nonneg sign nonnegR)]
        linarith
      · rename_i sign
        rw [one_mul, abs_of_nonpos (by linarith)]
        linarith

/-- A single half-exposure remains invertible. With unit noise and unit
signal budget its exact inverse nevertheless exceeds the minimax error. -/
theorem half_exposure_inverse_control :
    radius (1 / 2) 1 1 = 1 ∧ estimate (1 / 2) 1 1 1 = 0 ∧
      |(1 : ℝ) / (1 / 2) - 0| > radius (1 / 2) 1 1 := by
  norm_num [radius, estimate, min_eq_left]

end GRWTSK.OperatorTheory.FiniteHeatMinimaxReadout
