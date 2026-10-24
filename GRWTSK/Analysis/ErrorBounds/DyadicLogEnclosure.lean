/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.IntervalMellinElementary
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Tactic.NormNum

set_option autoImplicit false

/-!
# Dyadic reduction of the existing finite reciprocal logarithm enclosure

Reuse the existing grid values rather than invent a second logarithm evaluator.
The scale is checked by exact power inequalities; its existence is elementary.
A shared log-two error is multiplied by the scale, never averaged as independent
noise. All declarations are source candidates: NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure

open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinElementary
open GRWTSK.Analysis.ComplexAnalysis.IntervalMellinQuadrature
open GRWTSK.Analysis.ErrorBounds.FiniteLogEnclosure
noncomputable section

/-- Exact mantissa; at rational t this is rational arithmetic. -/
def dyadicMantissa (t : ℝ) (k : ℕ) : ℝ := t / (2 : ℝ) ^ k

/-- The reusable log-two grid and the mantissa grid may have different resolutions. -/
def reducedLogCenter (t : ℝ) (k L₂ Lr : ℕ) : ℝ :=
  (k : ℝ) * logCenter 2 L₂ + logCenter (dyadicMantissa t k) Lr

/-- The same log-two uncertainty occurs k times, so its radius is charged k times. -/
def reducedLogRadius (t : ℝ) (k L₂ Lr : ℕ) : ℝ :=
  (k : ℝ) * logRadius 2 L₂ + logRadius (dyadicMantissa t k) Lr

/-- A scale always exists for t>=1; this is not a qualified executable selector. -/
theorem exists_dyadic_scale {t : ℝ} (ht : 1 ≤ t) :
    ∃ k : ℕ, (2 : ℝ) ^ k ≤ t ∧ t < (2 : ℝ) ^ (k + 1) :=
  exists_nat_pow_near ht (by norm_num)

theorem dyadicMantissa_ge_one {t : ℝ} {k : ℕ} (hk : (2 : ℝ) ^ k ≤ t) :
    1 ≤ dyadicMantissa t k := by
  have hp : 0 < (2 : ℝ) ^ k := pow_pos (by norm_num) k
  exact (le_div_iff₀ hp).mpr (by simpa using hk)

/-- Both endpoints of [1,2] are permitted; no uniqueness of the scale is required. -/
theorem dyadicMantissa_le_two {t : ℝ} {k : ℕ} (hk : t ≤ (2 : ℝ) ^ (k + 1)) :
    dyadicMantissa t k ≤ 2 := by
  have hp : 0 < (2 : ℝ) ^ k := pow_pos (by norm_num) k
  apply (div_le_iff₀ hp).mpr
  simpa only [pow_succ, mul_comm] using hk

/-- Reconstruction is exact, not an approximate relation between named endpoints. -/
theorem dyadic_reconstruct (t : ℝ) (k : ℕ) :
    (2 : ℝ) ^ k * dyadicMantissa t k = t := by
  unfold dyadicMantissa
  field_simp [pow_ne_zero k (by norm_num : (2 : ℝ) ≠ 0)]

/-- The logarithm identity is proved before propagating the finite errors. -/
theorem log_dyadic_reconstruct {t : ℝ} (ht : 0 < t) (k : ℕ) :
    Real.log t = (k : ℝ) * Real.log 2 + Real.log (dyadicMantissa t k) := by
  rw [dyadicMantissa, Real.log_div ht.ne'
    (pow_ne_zero k (by norm_num : (2 : ℝ) ≠ 0)), Real.log_pow]
  ring

/-- Reciprocal enclosures of [1,t] have nonnegative centers, a needed sign fact. -/
theorem grid_logCenter_nonneg {t : ℝ} (ht : 1 ≤ t) (L : ℕ) (hL : 0 < L) :
    0 ≤ logCenter t L := by
  have hx := uniformNodes_monotone ht L
  have h0 : 0 < uniformNodes 1 t L 0 := by simp
  have hlo := lower_nonneg (uniformNodes 1 t L) hx h0 L
  have hhi := (chain_bounds (uniformNodes 1 t L) hx h0 L).2
  simp only [uniformNodes_end 1 t L hL, uniformNodes_zero, Real.log_one, sub_zero] at hhi
  exact div_nonneg (add_nonneg hlo ((Real.log_nonneg ht).trans hhi)) (by norm_num)

theorem reducedLogCenter_nonneg {t : ℝ} (k L₂ Lr : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    0 ≤ reducedLogCenter t k L₂ Lr := by
  exact add_nonneg
    (mul_nonneg (Nat.cast_nonneg k) (grid_logCenter_nonneg (by norm_num) L₂ hL₂))
    (grid_logCenter_nonneg (dyadicMantissa_ge_one hk) Lr hLr)

/-- Error transport uses the independently proved log identity and both grids. -/
theorem reducedLogCenter_error {t : ℝ} (ht : 1 ≤ t) (k L₂ Lr : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    |Real.log t - reducedLogCenter t k L₂ Lr| ≤ reducedLogRadius t k L₂ Lr := by
  have htwo := logCenter_error (show (1 : ℝ) ≤ 2 by norm_num) L₂ hL₂
  have hr := logCenter_error (dyadicMantissa_ge_one hk) Lr hLr
  calc
    _ = |(k : ℝ) * (Real.log 2 - logCenter 2 L₂) +
        (Real.log (dyadicMantissa t k) - logCenter (dyadicMantissa t k) Lr)| := by
      rw [log_dyadic_reconstruct (zero_lt_one.trans_le ht) k]
      unfold reducedLogCenter
      congr 1
      ring
    _ ≤ |(k : ℝ) * (Real.log 2 - logCenter 2 L₂)| +
        |Real.log (dyadicMantissa t k) - logCenter (dyadicMantissa t k) Lr| := abs_add_le _ _
    _ = (k : ℝ) * |Real.log 2 - logCenter 2 L₂| +
        |Real.log (dyadicMantissa t k) - logCenter (dyadicMantissa t k) Lr| := by
      rw [abs_mul, abs_of_nonneg (Nat.cast_nonneg k)]
    _ ≤ _ := add_le_add (mul_le_mul_of_nonneg_left htwo (Nat.cast_nonneg k)) hr

theorem reducedLogRadius_nonneg {t : ℝ} (k L₂ Lr : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    0 ≤ reducedLogRadius t k L₂ Lr := by
  exact add_nonneg
    (mul_nonneg (Nat.cast_nonneg k) (logRadius_nonneg (by norm_num) L₂ hL₂))
    (logRadius_nonneg (dyadicMantissa_ge_one hk) Lr hLr)

theorem logRadius_two (L : ℕ) (hL : 0 < L) :
    logRadius 2 L = 1 / (4 * (L : ℝ)) := by
  rw [logRadius_eq (show (1 : ℝ) ≤ 2 by norm_num) L hL]
  norm_num; ring

/-- On the reduced domain the grid radius is at most 1/(4L), independently of t. -/
theorem reduced_grid_radius_le {r : ℝ} (hr : 1 ≤ r) (hr₂ : r ≤ 2)
    (L : ℕ) (hL : 0 < L) : logRadius r L ≤ 1 / (4 * (L : ℝ)) := by
  have hLpos : (0 : ℝ) < L := by exact_mod_cast hL
  have hrpos : 0 < r := zero_lt_one.trans_le hr
  have hpoly : (r - 1) ^ 2 ≤ r / 2 := by
    have hp := mul_nonpos_of_nonneg_of_nonpos
      (show 0 ≤ 2 * r - 1 by linarith) (show r - 2 ≤ 0 by linarith)
    nlinarith
  calc
    logRadius r L = (r - 1) ^ 2 / (2 * (L : ℝ) * r) := logRadius_eq hr L hL
    _ ≤ (r / 2) / (2 * (L : ℝ) * r) :=
      div_le_div_of_nonneg_right hpoly (by positivity)
    _ = 1 / (4 * (L : ℝ)) := by
      field_simp [ne_of_gt hLpos, ne_of_gt hrpos]; ring

/-- Explicit finite radius: all terms are rational at rational input. -/
theorem reducedLogRadius_eq {t : ℝ} (k L₂ Lr : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    reducedLogRadius t k L₂ Lr = (k : ℝ) / (4 * (L₂ : ℝ)) +
      (dyadicMantissa t k - 1) ^ 2 / (2 * (Lr : ℝ) * dyadicMantissa t k) := by
  rw [reducedLogRadius, logRadius_two L₂ hL₂,
    logRadius_eq (dyadicMantissa_ge_one hk) Lr hLr]
  ring

/-- Only the binary scale, not the original magnitude t, enters this allowance. -/
theorem reducedLogRadius_le {t : ℝ} (k L₂ Lr : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hk₂ : t ≤ (2 : ℝ) ^ (k + 1))
    (hL₂ : 0 < L₂) (hLr : 0 < Lr) :
    reducedLogRadius t k L₂ Lr ≤ (k : ℝ) / (4 * (L₂ : ℝ)) + 1 / (4 * (Lr : ℝ)) := by
  have h := reduced_grid_radius_le (dyadicMantissa_ge_one hk)
    (dyadicMantissa_le_two hk₂) Lr hLr
  calc
    reducedLogRadius t k L₂ Lr = (k : ℝ) / (4 * (L₂ : ℝ)) +
        logRadius (dyadicMantissa t k) Lr := by
      rw [reducedLogRadius, logRadius_two L₂ hL₂]
      ring
    _ ≤ _ := add_le_add (le_refl _) h

theorem reducedLogRadius_common_le {t : ℝ} (k L : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hk₂ : t ≤ (2 : ℝ) ^ (k + 1)) (hL : 0 < L) :
    reducedLogRadius t k L L ≤ ((k : ℝ) + 1) / (4 * (L : ℝ)) := by
  have h := reducedLogRadius_le k L L hk hk₂ hL hL
  calc
    _ ≤ (k : ℝ) / (4 * (L : ℝ)) + 1 / (4 * (L : ℝ)) := h
    _ = _ := by ring

/-- A finite arithmetic precision condition, not an interchange of limits. -/
theorem reducedLog_precision {t ε : ℝ} (ht : 1 ≤ t) (k L : ℕ)
    (hk : (2 : ℝ) ^ k ≤ t) (hk₂ : t ≤ (2 : ℝ) ^ (k + 1)) (hL : 0 < L)
    (hprecision : (k : ℝ) + 1 ≤ 4 * (L : ℝ) * ε) :
    |Real.log t - reducedLogCenter t k L L| ≤ ε := by
  apply (reducedLogCenter_error ht k L L hk hL hL).trans
  apply (reducedLogRadius_common_le k L hk hk₂ hL).trans
  exact (div_le_iff₀ (by positivity : (0 : ℝ) < 4 * (L : ℝ))).mpr
    (by nlinarith [hprecision])

@[simp] theorem dyadicMantissa_at_power (k : ℕ) :
    dyadicMantissa ((2 : ℝ) ^ k) k = 1 := by
  simp [dyadicMantissa, pow_ne_zero k (by norm_num : (2 : ℝ) ≠ 0)]

/-- A unit mantissa does not remove the uncertainty in the repeated log-two term. -/
theorem power_radius (k L₂ Lr : ℕ) (hL₂ : 0 < L₂) :
    reducedLogRadius ((2 : ℝ) ^ k) k L₂ Lr = (k : ℝ) / (4 * (L₂ : ℝ)) := by
  rw [reducedLogRadius, dyadicMantissa_at_power, (log_one_control Lr).2,
    logRadius_two L₂ hL₂]
  ring

theorem shared_log_two_error_control : reducedLogRadius 16 4 1 1 = 1 := by
  have h := power_radius 4 1 1 (by decide)
  norm_num at h
  exact h

theorem dyadicMantissa_at_next_power (k : ℕ) :
    dyadicMantissa ((2 : ℝ) ^ (k + 1)) k = 2 := by
  unfold dyadicMantissa
  rw [pow_succ]
  field_simp [pow_ne_zero k (by norm_num : (2 : ℝ) ≠ 0)]

/-- Closed reduced endpoints permit two scales at a power of two; equal grids agree exactly. -/
theorem scale_boundary_consistent (k L : ℕ) :
    reducedLogCenter ((2 : ℝ) ^ (k + 1)) k L L =
      reducedLogCenter ((2 : ℝ) ^ (k + 1)) (k + 1) L L ∧
    reducedLogRadius ((2 : ℝ) ^ (k + 1)) k L L =
      reducedLogRadius ((2 : ℝ) ^ (k + 1)) (k + 1) L L := by
  simp only [reducedLogCenter, reducedLogRadius, dyadicMantissa_at_next_power,
    dyadicMantissa_at_power, (log_one_control L).1, (log_one_control L).2,
    Nat.cast_add, Nat.cast_one]
  constructor <;> ring

/-- Dropping the reduced-domain guard invalidates the uniform quarter-radius bound. -/
theorem unreduced_radius_control : (1 / 4 : ℝ) < logRadius 4 1 := by
  rw [logRadius_eq (show (1 : ℝ) ≤ 4 by norm_num) 1 (by decide)]
  norm_num

/-- Using k=0 at t=4 does not satisfy the reduced-domain upper guard. -/
theorem wrong_scale_control : ¬ (4 : ℝ) ≤ (2 : ℝ) ^ (0 + 1 : ℕ) := by norm_num

end
end GRWTSK.Analysis.ErrorBounds.DyadicLogEnclosure
