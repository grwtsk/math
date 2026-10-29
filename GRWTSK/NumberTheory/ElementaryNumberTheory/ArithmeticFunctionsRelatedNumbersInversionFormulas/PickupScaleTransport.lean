/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupSpinCutComparison

/-!
# Quantifier-safe depth and inverse-radius costs at the actual dyadic clock

Kakeya's all-positive inverse-radius losses have the correct outer scale when
rho_j = exp(-a*T_j), with a fixed positive a. A finite depth can be chosen after
the desired rate, but its constants must be uniform over the tested outer scale.
These elementary transfers do not import a Kakeya, SK, QAOA or SAT theorem.
In particular, the arithmetic/geometric readout bound remains explicit.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.PickupScaleTransport

open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupSpinCutComparison

/-- a is fixed before choosing either the loss exponent or the outer index. -/
def radius (a : ℝ) (j : ℕ) : ℝ := Real.exp (-a * dyadicTime j)

theorem radius_range {a : ℝ} (ha : 0 ≤ a) (j : ℕ) :
    0 < radius a j ∧ radius a j ≤ 1 := by
  constructor
  · exact Real.exp_pos _
  · apply Real.exp_le_one_iff.mpr
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr ha) (dyadicTime_nonnegative j)

/-- Exact physical scale conversion: no interchange of limits. -/
theorem radius_loss (a η : ℝ) (j : ℕ) :
    radius a j ^ (-η) = Real.exp ((a * η) * dyadicTime j) := by
  rw [Real.rpow_def_of_pos (Real.exp_pos _)]
  simp only [radius, Real.log_exp]
  congr 1
  ring

/-- Apply an actual all-positive-radius estimate to the combined SIGNED source
allowance. Its quantitative arithmetic/geometric supplier is not inferred from
an abstract tube-volume theorem or from optimizer convergence. -/
theorem dyadicBirthBound_of_radius_allowance (a : ℝ) (ha : 0 < a)
    (σ : ℕ → ℕ → Bool)
    (h : ∀ η : ℝ, 0 < η → ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
      trialCross (dyadicTime j) (σ j) + returnDefect (dyadicTime j) (σ j) ≤
        C * radius a j ^ (-η)) : DyadicBirthBound := by
  apply dyadicBirthBound_of_trial_and_return σ
  intro δ hδ
  obtain ⟨C, hC, hb⟩ := h (δ / a) (div_pos hδ ha)
  refine ⟨C, hC, ?_⟩
  intro j
  have he : a * (δ / a) = δ := by
    field_simp [ha.ne']
    <;> ring
  have hs := hb j
  rw [radius_loss, he, dyadic_rate] at hs
  exact hs

/-- Correct order: desired delta, then a single finite p, then uniform C and j.
The depth penalty r(p) tends to zero in this quantified sense. All source-return,
normalization and input-norm costs must be included in the displayed allowance. -/
theorem dyadicBirthBound_of_depth_radius_rates
    (a : ℝ) (ha : 0 < a) (r : ℕ → ℝ)
    (σ : ℕ → ℕ → ℕ → Bool)
    (hsmall : ∀ ε : ℝ, 0 < ε → ∃ p : ℕ, r p ≤ ε)
    (hbudget : ∀ p : ℕ, ∀ η : ℝ, 0 < η →
      ∃ C : ℝ, 0 ≤ C ∧ ∀ j : ℕ,
        trialCross (dyadicTime j) (σ p j) +
            returnDefect (dyadicTime j) (σ p j) ≤
          C * Real.exp ((r p + a * η) * dyadicTime j)) : DyadicBirthBound := by
  intro δ hδ
  obtain ⟨p, hp⟩ := hsmall (δ / 2) (by linarith)
  let η : ℝ := δ / (2 * a)
  have hη : 0 < η := div_pos hδ (mul_pos (by norm_num) ha)
  obtain ⟨C, hC, hb⟩ := hbudget p η hη
  have haη : a * η = δ / 2 := by
    dsimp [η]
    field_simp [ha.ne']
    <;> ring
  have hrate : r p + a * η ≤ δ := by rw [haη]; linarith
  refine ⟨C + 1 / 4, by linarith, ?_⟩
  intro j
  have hs := hb j
  rw [← source_return_exact (dyadicTime_nonnegative j) (σ p j)] at hs
  have he := (abs_le.mp
    (GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature.endpointSum_error
      (dyadicTime_nonnegative j))).2
  rw [endpoint_dyadic_eq_birthSum] at he
  have hexp := Real.exp_le_exp.mpr
    (mul_le_mul_of_nonneg_right hrate (dyadicTime_nonnegative j))
  have hprod := mul_le_mul_of_nonneg_left hexp hC
  rw [dyadic_rate δ j] at hprod
  have hone : 1 ≤ (2 : ℝ) ^ (δ * (j : ℝ)) := by
    rw [← dyadic_rate]
    exact Real.one_le_exp_iff.mpr (mul_nonneg hδ.le (dyadicTime_nonnegative j))
  nlinarith

/-- A per-spin tolerance must pay the actual system-size multiplier. -/
theorem extensive_error_iff (e C δ : ℝ) (j : ℕ) :
    Real.exp (dyadicTime j) * e ≤ C * Real.exp (δ * dyadicTime j) ↔
      e ≤ C * Real.exp ((δ - 1) * dyadicTime j) := by
  have hfactor : C * Real.exp (δ * dyadicTime j) =
      Real.exp (dyadicTime j) * (C * Real.exp ((δ - 1) * dyadicTime j)) := by
    calc
      C * Real.exp (δ * dyadicTime j) =
          C * Real.exp (dyadicTime j + (δ - 1) * dyadicTime j) := by
        congr 2
        ring
      _ = _ := by rw [Real.exp_add]; ring
  rw [hfactor]
  exact mul_le_mul_left (Real.exp_pos _)

/-- Finite-depth convergence at each j alone gives no uniform outer-index control. -/
def depthTail (p j : ℕ) : ℝ := if j ≤ p then 0 else 1

theorem depthTail_eventually_zero (j : ℕ) :
    ∀ p : ℕ, j ≤ p → depthTail p j = 0 := by
  intro p hp
  simp [depthTail, hp]

theorem depthTail_not_uniform (p : ℕ) : depthTail p (p + 1) = 1 := by
  simp [depthTail]

end GRWTSK.NumberTheory.Moebius.PickupScaleTransport
