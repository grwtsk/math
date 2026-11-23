/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.RingTheory.Polynomial.Vieta
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# A necessary top-coefficient inequality for real-rooted Taylor sections

Vieta and the sum of squared deviations constrain the top three coefficients
of every polynomial that splits over the reals. Even factorial normalization
of log-convex moments is incompatible with this constraint in degree ≥ 3.
-/

open Polynomial MeasureTheory

namespace GRWTSK.NumberTheory.TaylorSectionNewtonObstruction

private theorem esymm_one (s : Multiset ℝ) : s.esymm 1 = s.sum := by
  simp [Multiset.esymm, Multiset.powersetCard_one, Multiset.map_map]

private theorem esymm_two_cons (a : ℝ) (s : Multiset ℝ) :
    (a ::ₘ s).esymm 2 = s.esymm 2 + a * s.sum := by
  simp [Multiset.esymm, Multiset.powersetCard_cons, Multiset.powersetCard_one,
    Multiset.map_map]
  simpa using (Multiset.sum_map_mul_left (s := s) (f := id) (a := a))

private theorem variance_nonneg (s : Multiset ℝ) (c : ℝ) :
    0 ≤ s.sum ^ 2 - 2 * s.esymm 2 - 2 * c * s.sum + (s.card : ℝ) * c ^ 2 := by
  induction s using Multiset.induction with
  | empty => simp [Multiset.esymm_of_card_lt (show (0 : Multiset ℝ).card < 2 by decide)]
  | cons a s ih =>
    rw [esymm_two_cons, Multiset.sum_cons, Multiset.card_cons, Nat.cast_add, Nat.cast_one]
    nlinarith [sq_nonneg (a-c)]

/-- Newton's inequality for the leading coefficient and the two just below it.
No restriction on signs or multiplicities of the real roots is needed. -/
theorem top_coefficients_of_splits (p : ℝ[X]) {n : ℕ} (hdeg : p.natDegree = n + 2)
    (hs : p.Splits) :
    2 * ((n : ℝ) + 2) * p.leadingCoeff * p.coeff n ≤
      ((n : ℝ) + 1) * p.coeff (n + 1) ^ 2 := by
  have hcard : p.roots.card = n + 2 := (splits_iff_card_roots.mp hs).trans hdeg
  have v := variance_nonneg p.roots (p.roots.sum / ((n : ℝ) + 2))
  rw [hcard, Nat.cast_add, Nat.cast_ofNat] at v
  have hn : 0 < (n : ℝ) + 2 := by positivity
  field_simp [hn.ne'] at v
  have v' : 0 ≤ ((n : ℝ) + 2) * (((n : ℝ) + 1) * p.roots.sum ^ 2 -
      2 * ((n : ℝ) + 2) * p.roots.esymm 2) := by nlinarith only [v]
  have H := (mul_nonneg_iff_of_pos_left hn).mp v'
  have h1 := coeff_eq_esymm_roots_of_splits hs (k := n + 1) (by omega)
  have h2 := coeff_eq_esymm_roots_of_splits hs (k := n) (by omega)
  rw [hdeg, show n + 2 - (n + 1) = 1 by omega, pow_one, esymm_one] at h1
  rw [hdeg, show n + 2 - n = 2 by omega] at h2
  rw [h1, h2]
  nlinarith only [mul_nonneg (sq_nonneg p.leadingCoeff) H]

/-- If the top three even factorial-weighted coefficients obey the moment
Cauchy–Schwarz inequality and the outer product is positive, the polynomial
of degree `n+2 ≥ 3` cannot split over the reals. Alternating coefficient
signs are allowed. -/
theorem not_splits_of_factorial_moment_bound (p : ℝ[X]) {n : ℕ} (hn : 0 < n)
    (hdeg : p.natDegree = n + 2) (hp : 0 < p.leadingCoeff * p.coeff n)
    (hm : (((2 * (n + 1)).factorial : ℝ) * p.coeff (n + 1)) ^ 2 ≤
      (((2 * (n + 2)).factorial : ℝ) * p.leadingCoeff) *
        (((2 * n).factorial : ℝ) * p.coeff n)) : ¬ p.Splits := by
  intro hs
  let F : ℝ := (2 * n).factorial
  let B : ℝ := (2 * (n : ℝ) + 2) * (2 * n + 1)
  let A : ℝ := (2 * (n : ℝ) + 4) * (2 * n + 3)
  have hF : 0 < F := by dsimp [F]; positivity
  have hB : 0 < B := by dsimp [B]; positivity
  have h1 : ((2 * (n + 1)).factorial : ℝ) = B * F := by
    rw [show 2 * (n + 1) = (2*n+1)+1 by omega, Nat.factorial_succ, Nat.factorial_succ]
    push_cast
    dsimp [B, F]
    ring
  have h2 : ((2 * (n + 2)).factorial : ℝ) = A * (B * F) := by
    rw [show 2 * (n + 2) = (2*(n+1)+1)+1 by omega, Nat.factorial_succ, Nat.factorial_succ]
    push_cast
    rw [h1]
    dsimp [A]
    ring
  rw [h1, h2] at hm
  change (B * F * p.coeff (n + 1)) ^ 2 ≤ A * (B * F) * p.leadingCoeff * (F * p.coeff n) at hm
  have hco : B * p.coeff (n + 1) ^ 2 ≤ A * (p.leadingCoeff * p.coeff n) := by
    apply (mul_le_mul_iff_right₀ (show 0 < B * F^2 by positivity)).mp
    nlinarith only [hm]
  have hgap : ((n : ℝ) + 1) * A < 2 * ((n : ℝ) + 2) * B := by
    have hn' : (1 : ℝ) ≤ n := by exact_mod_cast hn
    dsimp [A, B]
    nlinarith only [mul_pos (show 0 < 2 * ((n : ℝ) + 2) * (n + 1) by positivity)
      (show 0 < 2 * (n : ℝ) - 1 by linarith)]
  have necessary := top_coefficients_of_splits p hdeg hs
  nlinarith only [mul_le_mul_of_nonneg_left necessary hB.le,
    mul_le_mul_of_nonneg_left hco (show 0 ≤ (n : ℝ) + 1 by positivity),
    mul_lt_mul_of_pos_right hgap hp]

/-- A polynomial with the three leading coefficients of a cosine Taylor
section for a positive measure cannot split in degree at least three.
The choice of sign covers both the cosine section and the reflected variable.
A common positive normalization can be absorbed into the measure. -/
theorem not_splits_of_cosine_moments (p : ℝ[X]) (μ : Measure ℝ) (σ : ℝ)
    (hσ : σ ^ 2 = 1) {n : ℕ}
    (hn : 0 < n) (hdeg : p.natDegree = n + 2)
    (hf : MemLp (fun x : ℝ => |x| ^ n) 2 μ)
    (hg : MemLp (fun x : ℝ => |x| ^ (n + 2)) 2 μ)
    (hlow : 0 < ∫ x : ℝ, |x| ^ (2 * n) ∂μ)
    (hhigh : 0 < ∫ x : ℝ, |x| ^ (2 * (n + 2)) ∂μ)
    (hc : ∀ k, n ≤ k → k ≤ n + 2 → ((2 * k).factorial : ℝ) * p.coeff k =
      σ ^ k * ∫ x : ℝ, |x| ^ (2 * k) ∂μ) : ¬ p.Splits := by
  let m (k : ℕ) := ∫ x : ℝ, |x| ^ (2 * k) ∂μ
  have mp (k : ℕ) : 0 ≤ m k := integral_nonneg (fun x => pow_nonneg (abs_nonneg x) _)
  have H := integral_mul_le_Lp_mul_Lq_of_nonneg (μ := μ) Real.HolderConjugate.two_two
    (f := fun x : ℝ => |x| ^ n) (g := fun x : ℝ => |x| ^ (n + 2))
    (Filter.Eventually.of_forall (fun x => pow_nonneg (abs_nonneg x) _))
    (Filter.Eventually.of_forall (fun x => pow_nonneg (abs_nonneg x) _))
    (by simpa using hf) (by simpa using hg)
  have hcs : m (n + 1) ≤ Real.sqrt (m n) * Real.sqrt (m (n + 2)) := by
    simpa only [m, Real.rpow_two, ← pow_mul, ← pow_add, ← Real.sqrt_eq_rpow,
      show n + (n + 2) = 2 * (n + 1) by omega, Nat.mul_comm n 2,
      Nat.mul_comm (n + 2) 2] using H
  have hcs2 := pow_le_pow_left₀ (mp _) hcs 2
  rw [mul_pow, Real.sq_sqrt (mp _), Real.sq_sqrt (mp _)] at hcs2
  have sign_sq (k : ℕ) : (σ ^ k) ^ 2 = 1 := by
    rw [← pow_mul, Nat.mul_comm, pow_mul, hσ, one_pow]
  have h0 := hc n le_rfl (by omega)
  have h1 := hc (n + 1) (by omega) (by omega)
  have h2 := hc (n + 2) (by omega) le_rfl
  change _ = _ * m n at h0
  change _ = _ * m (n + 1) at h1
  change _ = _ * m (n + 2) at h2
  rw [← hdeg] at h2
  rw [coeff_natDegree, hdeg, pow_add] at h2
  rw [hσ, mul_one] at h2
  have hprod : (((2 * (n + 2)).factorial : ℝ) * p.leadingCoeff) *
      (((2 * n).factorial : ℝ) * p.coeff n) = m (n + 2) * m n := by
    rw [h2, h0]
    calc _ = (σ ^ n) ^ 2 * (m (n+2)*m n) := by ring
         _ = _ := by rw [sign_sq, one_mul]
  apply not_splits_of_factorial_moment_bound p hn hdeg
  · have pos : 0 < (((2 * (n + 2)).factorial : ℝ) * p.leadingCoeff) *
        (((2 * n).factorial : ℝ) * p.coeff n) := hprod.symm ▸ mul_pos hhigh hlow
    apply (mul_pos_iff_of_pos_left (show 0 < ((2*(n+2)).factorial : ℝ) *
      ((2*n).factorial : ℝ) by positivity)).mp
    nlinarith only [pos]
  · rw [h1, hprod, mul_pow, sign_sq, one_mul]
    exact hcs2.trans_eq (mul_comm _ _)

end GRWTSK.NumberTheory.TaylorSectionNewtonObstruction
