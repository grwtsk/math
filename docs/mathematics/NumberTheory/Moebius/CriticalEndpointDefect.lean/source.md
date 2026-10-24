# Complete source: GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46e1eead76aacda6818a266dc3399c9fae01743b` · SHA-256 `8478486699fbf58aa11053cc78e110e12f4421d0ee3274767ea0b2cbf0c2cb73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth

/-!
# Endpoint defect on critical logarithmic cells

On the `n`th logarithmic cell, split the exact signed flux at its left
endpoint.  The resulting endpoint defect is one half of the actual pickup at
`log n`.  The remaining Mertens term is multiplied by the oscillation of
`exp (-u/2)` across just one cell; this small deterministic drift will be paid
unconditionally rather than by a Mertens power saving.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks
open GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth
open GRWTSK.Analysis.Integration.ExponentialInterval

/-- Difference between the weighted prefix and the left-endpoint-scaled
Mertens prefix. -/
def criticalEndpointDefect (n : ℕ) : ℝ :=
  pickupWeightedPrefix n -
    (Real.sqrt n)⁻¹ * pickupMertensPrefix n

/-- The endpoint defect is exactly half of the accumulated pickup at the left
endpoint of the cell. -/
theorem criticalEndpointDefect_eq_half_wholePickup {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointDefect n = wholePickup (Real.log (n : ℝ)) / 2 := by
  unfold criticalEndpointDefect
  rw [pickupWeightedPrefix_eq_mertens_add_wholePickup hn]
  ring

/-- Exact split of the cell flux into its left-endpoint defect and the small
deterministic drift of the Mertens coefficient. -/
theorem prefixFlux_eq_endpointDefect_add_drift (u : ℝ) (n : ℕ) :
    pickupWeightedPrefix n - Real.exp (-u / 2) * pickupMertensPrefix n =
      criticalEndpointDefect n +
        ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) * pickupMertensPrefix n := by
  unfold criticalEndpointDefect
  ring

/-- Weighted square drift of the Mertens coefficient across one logarithmic
cell. -/
def criticalEndpointDrift (n : ℕ) : ℝ :=
  ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
    Real.exp (-u) *
      ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2

/-- Oscillation of the half-exponential between the two cell endpoints. -/
def criticalEndpointGap (n : ℕ) : ℝ :=
  (Real.sqrt n)⁻¹ - (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹

/-- The endpoint drift is nonnegative. -/
theorem criticalEndpointDrift_nonneg {n : ℕ} (hn : 1 ≤ n) :
    0 ≤ criticalEndpointDrift n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  unfold criticalEndpointDrift
  apply intervalIntegral.integral_nonneg_of_forall
    (Real.log_le_log hnpos (by exact_mod_cast Nat.le_succ n))
  intro u
  positivity

/-- The half-exponential drift on a cell is bounded by its endpoint gap. -/
theorem endpointCoefficient_drift_le_gap {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hu : u ∈ Set.Icc (Real.log (n : ℝ))
      (Real.log ((n + 1 : ℕ) : ℝ))) :
    0 ≤ (Real.sqrt n)⁻¹ - Real.exp (-u / 2) ∧
      (Real.sqrt n)⁻¹ - Real.exp (-u / 2) ≤ criticalEndpointGap n := by
  have hs : 1 ≤ n + 1 := by omega
  have hlo : Real.exp (-u / 2) ≤ (Real.sqrt n)⁻¹ := by
    rw [← pickup_exp_negative_log_half hn]
    exact Real.exp_le_exp.mpr (by linarith [hu.1])
  have hhi : (Real.sqrt ((n + 1 : ℕ) : ℝ))⁻¹ ≤ Real.exp (-u / 2) := by
    rw [← pickup_exp_negative_log_half hs]
    exact Real.exp_le_exp.mpr (by linarith [hu.2])
  constructor
  · linarith
  · unfold criticalEndpointGap
    linarith

/-- The integrated drift is at most the cell mass times the squared endpoint
gap. -/
theorem criticalEndpointDrift_le_gap_sq_mul_drop {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointDrift n ≤
      criticalEndpointGap n ^ 2 * exponentialLogDrop 1 n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_le_log hnpos (by exact_mod_cast Nat.le_succ n)
  have hf : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2) := by
    fun_prop
  have hg : Continuous (fun u : ℝ =>
      Real.exp (-u) * criticalEndpointGap n ^ 2) := by
    fun_prop
  unfold criticalEndpointDrift
  calc
    (∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
        Real.exp (-u) *
          ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2) ≤
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) * criticalEndpointGap n ^ 2 := by
      apply intervalIntegral.integral_mono_on hlog
        (hf.intervalIntegrable _ _) (hg.intervalIntegrable _ _)
      intro u hu
      have hd := endpointCoefficient_drift_le_gap hn hu
      have hgap : 0 ≤ criticalEndpointGap n := hd.1.trans hd.2
      exact mul_le_mul_of_nonneg_left
        ((sq_le_sq₀ hd.1 hgap).2 hd.2) (Real.exp_pos _).le
    _ = criticalEndpointGap n ^ 2 * exponentialLogDrop 1 n := by
      rw [show (fun u : ℝ => Real.exp (-u) * criticalEndpointGap n ^ 2) =
          (fun u : ℝ => criticalEndpointGap n ^ 2 * Real.exp (-(1 : ℝ) * u)) by
        funext u
        rw [show -(1 : ℝ) * u = -u by ring]
        ring,
        intervalIntegral.integral_const_mul,
        integral_exp_neg_mul (by norm_num : (1 : ℝ) ≠ 0)]
      unfold exponentialLogDrop
      ring

/-- The endpoint gap is of cubic-half order. -/
theorem criticalEndpointGap_le {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n ≤
      1 / ((n : ℝ) * Real.sqrt n) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  let a : ℝ := Real.sqrt n
  let b : ℝ := Real.sqrt ((n + 1 : ℕ) : ℝ)
  have ha : 0 < a := by dsimp [a]; positivity
  have hb : 0 < b := by dsimp [b]; positivity
  have hab : a ≤ b := by
    dsimp [a, b]
    exact Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ n)
  have ha2 : a ^ 2 = (n : ℝ) := by
    dsimp [a]
    exact Real.sq_sqrt hnpos.le
  have hb2 : b ^ 2 = ((n + 1 : ℕ) : ℝ) := by
    dsimp [b]
    exact Real.sq_sqrt hspos.le
  have hconj : (b - a) * (a + b) = 1 := by
    have hdiff : b ^ 2 - a ^ 2 = 1 := by
      rw [hb2, ha2]
      norm_num
    nlinarith
  have hgap : a⁻¹ - b⁻¹ = 1 / (a * b * (a + b)) := by
    field_simp [ha.ne', hb.ne', (add_pos ha hb).ne']
    nlinarith [hconj]
  have hdenom : (n : ℝ) * a ≤ a * b * (a + b) := by
    rw [← ha2]
    have habmul : a * a ≤ a * b :=
      mul_le_mul_of_nonneg_left hab ha.le
    have hasum : a ≤ a + b := le_add_of_nonneg_right hb.le
    calc
      a ^ 2 * a = (a * a) * a := by ring
      _ ≤ (a * b) * a :=
        mul_le_mul_of_nonneg_right habmul ha.le
      _ ≤ a * b * (a + b) :=
        mul_le_mul_of_nonneg_left hasum (mul_nonneg ha.le hb.le)
  unfold criticalEndpointGap
  change a⁻¹ - b⁻¹ ≤ 1 / ((n : ℝ) * a)
  rw [hgap]
  exact one_div_le_one_div_of_le (mul_pos hnpos ha) hdenom

theorem criticalEndpointGap_nonneg {n : ℕ} (hn : 1 ≤ n) :
    0 ≤ criticalEndpointGap n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hab : Real.sqrt (n : ℝ) ≤ Real.sqrt ((n + 1 : ℕ) : ℝ) :=
    Real.sqrt_le_sqrt (by exact_mod_cast Nat.le_succ n)
  unfold criticalEndpointGap
  apply sub_nonneg.mpr
  simpa only [one_div] using
    one_div_le_one_div_of_le (Real.sqrt_pos.mpr hnpos) hab

/-- Squaring the endpoint-gap estimate gives the cubic decay needed for the
trivial linear Mertens bound. -/
theorem criticalEndpointGap_sq_le {n : ℕ} (hn : 1 ≤ n) :
    criticalEndpointGap n ^ 2 ≤ 1 / (n : ℝ) ^ 3 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hspos : 0 < Real.sqrt (n : ℝ) := Real.sqrt_pos.mpr hnpos
  have h := (sq_le_sq₀ (criticalEndpointGap_nonneg hn)
    (by positivity : 0 ≤ 1 / ((n : ℝ) * Real.sqrt n))).2
      (criticalEndpointGap_le hn)
  calc
    criticalEndpointGap n ^ 2 ≤
        (1 / ((n : ℝ) * Real.sqrt n)) ^ 2 := h
    _ = 1 / (n : ℝ) ^ 3 := by
      rw [div_pow]
      field_simp [hspos.ne', hnpos.ne', Real.sq_sqrt hnpos.le]
      exact (Real.sq_sqrt hnpos.le).symm

/-- The cell mass has quadratic decay. -/
theorem exponentialLogDrop_one_le_inv_sq {n : ℕ} (hn : 1 ≤ n) :
    exponentialLogDrop 1 n ≤ 1 / (n : ℝ) ^ 2 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have h := exponentialLogDrop_le_rpow (a := (1 : ℝ)) (by norm_num) hn
  calc
    exponentialLogDrop 1 n ≤ (n : ℝ) ^ (-(2 : ℝ)) := by
      norm_num at h ⊢
      exact h
    _ = 1 / (n : ℝ) ^ 2 := by
      rw [Real.rpow_neg hnpos.le, Real.rpow_two]
      simp only [one_div]

/-- Even the trivial bound `|M_n| ≤ n` makes the within-cell Mertens drift
cubically summable. -/
theorem mertens_drift_error_le_inv_cube {n : ℕ} (hn : 1 ≤ n) :
    8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n ≤
      8 / (n : ℝ) ^ 3 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hMabs := pickupMertensPrefix_abs_le_natCast n
  have hM2 : pickupMertensPrefix n ^ 2 ≤ (n : ℝ) ^ 2 := by
    have h := (sq_le_sq₀ (abs_nonneg (pickupMertensPrefix n)) hnpos.le).2 hMabs
    simpa only [sq_abs] using h
  have hdrift : criticalEndpointDrift n ≤
      (1 / (n : ℝ) ^ 3) * (1 / (n : ℝ) ^ 2) := by
    calc
      criticalEndpointDrift n ≤
          criticalEndpointGap n ^ 2 * exponentialLogDrop 1 n :=
        criticalEndpointDrift_le_gap_sq_mul_drop hn
      _ ≤ (1 / (n : ℝ) ^ 3) * (1 / (n : ℝ) ^ 2) := by
        exact mul_le_mul (criticalEndpointGap_sq_le hn)
          (exponentialLogDrop_one_le_inv_sq hn)
          (exponentialLogDrop_nonneg (by norm_num) n)
          (by positivity)
  have hdrift0 : 0 ≤ criticalEndpointDrift n := criticalEndpointDrift_nonneg hn
  calc
    8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n ≤
        8 * (n : ℝ) ^ 2 *
          ((1 / (n : ℝ) ^ 3) * (1 / (n : ℝ) ^ 2)) := by
      gcongr
    _ = 8 / (n : ℝ) ^ 3 := by
      field_simp [hnpos.ne']

/-- The signed endpoint-defect square with the exact mass of its logarithmic
cell. -/
def criticalEndpointDefectEnergy (n : ℕ) : ℝ :=
  criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n

/-- The exact mass of the `n`th logarithmic cell is `1 / (n(n+1))`. -/
theorem exponentialLogDrop_one_eq_inv_mul_succ {n : ℕ} (hn : 1 ≤ n) :
    exponentialLogDrop 1 n =
      1 / ((n : ℝ) * ((n + 1 : ℕ) : ℝ)) := by
  rw [exponentialLogDrop_eq_rpow hn]
  have hn0 : (0 : ℝ) ≤ n := by positivity
  have hs0 : (0 : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by positivity
  rw [Real.rpow_neg hn0, Real.rpow_neg hs0]
  norm_num [Real.rpow_one]
  field_simp
  ring

/-- Positive majorant consisting of the signed endpoint-defect energy and the
within-cell Mertens drift. -/
def criticalEndpointDefectMajorant (n : ℕ) : ℝ :=
  8 * criticalEndpointDefectEnergy n +
    8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n

theorem criticalEndpointDefectMajorant_nonneg (n : ℕ) :
    0 ≤ criticalEndpointDefectMajorant n := by
  cases n with
  | zero => simp [criticalEndpointDefectMajorant, criticalEndpointDefectEnergy,
      criticalEndpointDefect, criticalEndpointDrift, pickupWeightedPrefix,
      pickupMertensPrefix, exponentialLogDrop]
  | succ n =>
      have hn : 1 ≤ n + 1 := by omega
      unfold criticalEndpointDefectMajorant criticalEndpointDefectEnergy
      exact add_nonneg
        (mul_nonneg (by norm_num)
          (mul_nonneg (sq_nonneg _)
            (exponentialLogDrop_nonneg (by norm_num) _)))
        (mul_nonneg (mul_nonneg (by norm_num) (sq_nonneg _))
          (criticalEndpointDrift_nonneg hn))

/-- The only conditional series in the endpoint-defect route. -/
def CriticalEndpointDefectSummable : Prop :=
  Summable criticalEndpointDefectEnergy

/-- The within-cell Mertens drift is unconditionally summable; no arithmetic
cancellation beyond `|M_n| ≤ n` is used. -/
theorem summable_mertens_drift_error :
    Summable (fun n : ℕ =>
      8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n) := by
  have hs : Summable (fun n : ℕ => 8 * (n : ℝ) ^ (-(3 : ℝ))) :=
    (Real.summable_nat_rpow.mpr (by norm_num)).mul_left 8
  apply hs.of_nonneg_of_le
  · intro n
    cases n with
    | zero =>
        simp [criticalEndpointDrift, pickupMertensPrefix]
    | succ n =>
        exact mul_nonneg
          (mul_nonneg (by norm_num) (sq_nonneg _))
          (criticalEndpointDrift_nonneg (by omega))
  · intro n
    cases n with
    | zero =>
        simp [criticalEndpointDrift, pickupMertensPrefix]
    | succ n =>
        have hn : 1 ≤ n + 1 := by omega
        have h := mertens_drift_error_le_inv_cube hn
        calc
          8 * pickupMertensPrefix (n + 1) ^ 2 * criticalEndpointDrift (n + 1) ≤
              8 / ((n + 1 : ℕ) : ℝ) ^ 3 := h
          _ = 8 * ((n + 1 : ℕ) : ℝ) ^ (-(3 : ℝ)) := by
            rw [Real.rpow_neg (by positivity :
              (0 : ℝ) ≤ (n + 1 : ℕ))]
            norm_num [Real.rpow_natCast, div_eq_mul_inv]

theorem summable_endpointDefectMajorant
    (hQ : CriticalEndpointDefectSummable) :
    Summable criticalEndpointDefectMajorant := by
  unfold CriticalEndpointDefectSummable at hQ
  unfold criticalEndpointDefectMajorant
  exact hQ.mul_left 8 |>.add summable_mertens_drift_error

/-- Separating the endpoint defect from the within-cell drift costs only the
elementary inequality `(a+b)^2 ≤ 2a^2+2b^2`. -/
theorem criticalIntervalBlock_le_endpointDefect_add_drift {n : ℕ}
    (hn : 1 ≤ n) :
    criticalIntervalBlock n ≤
      8 * criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n +
        8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_le_log hnpos (by exact_mod_cast Nat.le_succ n)
  unfold criticalIntervalBlock
  have hf : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (2 * (pickupWeightedPrefix n -
          Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2) := by
    fun_prop
  have hg : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (8 * criticalEndpointDefect n ^ 2 +
          8 * pickupMertensPrefix n ^ 2 *
            ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2)) := by
    fun_prop
  calc
    (∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
        Real.exp (-u) *
          (2 * (pickupWeightedPrefix n -
            Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2) ≤
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) *
            (8 * criticalEndpointDefect n ^ 2 +
              8 * pickupMertensPrefix n ^ 2 *
                ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2) := by
      apply intervalIntegral.integral_mono_on hlog
        (hf.intervalIntegrable _ _) (hg.intervalIntegrable _ _)
      intro u _hu
      rw [prefixFlux_eq_endpointDefect_add_drift]
      have hs := sq_nonneg (criticalEndpointDefect n -
        ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) * pickupMertensPrefix n)
      have hexp : 0 ≤ Real.exp (-u) := (Real.exp_pos _).le
      nlinarith
    _ = 8 * criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n +
          8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n := by
      rw [show (fun u : ℝ => Real.exp (-u) *
          (8 * criticalEndpointDefect n ^ 2 +
            8 * pickupMertensPrefix n ^ 2 *
              ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2)) =
          (fun u : ℝ =>
            8 * criticalEndpointDefect n ^ 2 * Real.exp (-u) +
              8 * pickupMertensPrefix n ^ 2 *
                (Real.exp (-u) *
                  ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2)) by
        funext u
        ring]
      rw [intervalIntegral.integral_add,
        intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const_mul]
      · unfold exponentialLogDrop criticalEndpointDrift
        rw [show (fun x : ℝ => Real.exp (-x)) =
            (fun x : ℝ => Real.exp (-(1 : ℝ) * x)) by
          funext x
          congr 1
          ring,
          integral_exp_neg_mul (by norm_num : (1 : ℝ) ≠ 0)]
        ring
      all_goals
        apply Continuous.intervalIntegrable
        fun_prop

/-- Conversely, the endpoint-defect energy is controlled by the exact cell
block plus the same unconditionally summable drift. -/
theorem criticalEndpointDefectEnergy_le_block_add_drift {n : ℕ}
    (hn : 1 ≤ n) :
    criticalEndpointDefectEnergy n ≤
      (1 / 2) * criticalIntervalBlock n +
        2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast hn
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_le_log hnpos (by exact_mod_cast Nat.le_succ n)
  have hQ : Continuous (fun u : ℝ =>
      Real.exp (-u) * criticalEndpointDefect n ^ 2) := by
    fun_prop
  have hR : Continuous (fun u : ℝ =>
      Real.exp (-u) *
        (2 * (pickupWeightedPrefix n -
          Real.exp (-u / 2) * pickupMertensPrefix n) ^ 2 +
        2 * (((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) *
          pickupMertensPrefix n) ^ 2)) := by
    fun_prop
  unfold criticalEndpointDefectEnergy
  calc
    criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n =
        ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
          Real.exp (-u) * criticalEndpointDefect n ^ 2 := by
      rw [show (fun u : ℝ => Real.exp (-u) * criticalEndpointDefect n ^ 2) =
          (fun u : ℝ => criticalEndpointDefect n ^ 2 *
            Real.exp (-(1 : ℝ) * u)) by
        funext u
        rw [show -(1 : ℝ) * u = -u by ring]
        ring,
        intervalIntegral.integral_const_mul,
        integral_exp_neg_mul (by norm_num : (1 : ℝ) ≠ 0)]
      unfold exponentialLogDrop
      ring
    _ ≤ ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
        Real.exp (-u) *
          (2 * (pickupWeightedPrefix n -
            Real.exp (-u / 2) * pickupMertensPrefix n) ^ 2 +
          2 * (((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) *
            pickupMertensPrefix n) ^ 2) := by
      apply intervalIntegral.integral_mono_on hlog
        (hQ.intervalIntegrable _ _) (hR.intervalIntegrable _ _)
      intro u _hu
      have hsplit := prefixFlux_eq_endpointDefect_add_drift u n
      have hexp : 0 ≤ Real.exp (-u) := (Real.exp_pos _).le
      have hq : criticalEndpointDefect n =
          (pickupWeightedPrefix n -
            Real.exp (-u / 2) * pickupMertensPrefix n) -
          ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) *
            pickupMertensPrefix n := by
        linarith
      apply mul_le_mul_of_nonneg_left _ hexp
      rw [hq]
      nlinarith [sq_nonneg
        ((pickupWeightedPrefix n -
            Real.exp (-u / 2) * pickupMertensPrefix n) +
          ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) *
            pickupMertensPrefix n)]
    _ = (1 / 2) * criticalIntervalBlock n +
          2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n := by
      unfold criticalIntervalBlock criticalEndpointDrift
      rw [show (fun u : ℝ => Real.exp (-u) *
          (2 * (pickupWeightedPrefix n -
            Real.exp (-u / 2) * pickupMertensPrefix n) ^ 2 +
          2 * (((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) *
            pickupMertensPrefix n) ^ 2)) =
          (fun u : ℝ =>
            (1 / 2) * (Real.exp (-u) *
              (2 * (pickupWeightedPrefix n -
                Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2) +
            2 * pickupMertensPrefix n ^ 2 *
              (Real.exp (-u) *
                ((Real.sqrt n)⁻¹ - Real.exp (-u / 2)) ^ 2)) by
        funext u
        ring]
      rw [intervalIntegral.integral_add,
        intervalIntegral.integral_const_mul,
        intervalIntegral.integral_const_mul]
      all_goals
        apply Continuous.intervalIntegrable
        fun_prop

theorem criticalIntervalBlock_nonneg_all (n : ℕ) :
    0 ≤ criticalIntervalBlock n := by
  cases n with
  | zero =>
      simp [criticalIntervalBlock, pickupWeightedPrefix, pickupMertensPrefix]
  | succ n => exact criticalIntervalBlock_nonneg (by omega)

/-- `range (N+1)` differs from the canonical block sum only by the zero
block. -/
theorem sum_range_succ_criticalIntervalBlock (N : ℕ) :
    (∑ n ∈ Finset.range (N + 1), criticalIntervalBlock n) =
      criticalIntervalBlockSum N := by
  induction N with
  | zero =>
      simp [criticalIntervalBlockSum, criticalIntervalBlock,
        pickupWeightedPrefix, pickupMertensPrefix]
  | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      change (∑ n ∈ Finset.Icc 1 N, criticalIntervalBlock n) +
          criticalIntervalBlock (N + 1) =
        ∑ n ∈ Finset.Icc 1 (N + 1), criticalIntervalBlock n
      rw [Finset.sum_Icc_succ_top (by omega : 1 ≤ N + 1)]

/-- For the nonnegative exact blocks, bounded canonical partial sums imply
ordinary series summability. -/
theorem summable_criticalIntervalBlock_of_uniform
    (hB : CriticalIntervalBlockUniform) :
    Summable criticalIntervalBlock := by
  obtain ⟨C, _hC, hbound⟩ := hB
  apply summable_of_sum_range_le criticalIntervalBlock_nonneg_all
  intro N
  cases N with
  | zero => simpa using _hC
  | succ N =>
      rw [sum_range_succ_criticalIntervalBlock]
      exact hbound N

theorem criticalEndpointDefectEnergy_nonneg (n : ℕ) :
    0 ≤ criticalEndpointDefectEnergy n := by
  unfold criticalEndpointDefectEnergy
  exact mul_nonneg (sq_nonneg _)
    (exponentialLogDrop_nonneg (by norm_num) n)

/-- The exact critical boundary also forces endpoint-defect summability. -/
theorem endpointDefectSummable_of_criticalBoundary
    (hB : CriticalBoundaryVerticalLineUniform) :
    CriticalEndpointDefectSummable := by
  have hblock : Summable criticalIntervalBlock :=
    summable_criticalIntervalBlock_of_uniform
      (criticalIntervalBlockUniform_of_boundary hB)
  have hdrift : Summable (fun n : ℕ =>
      2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n) := by
    have h := summable_mertens_drift_error.mul_left (1 / 4)
    have heq : (fun n : ℕ =>
        2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n) =
        (fun n : ℕ => (1 / 4) *
          (8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n)) := by
      funext n
      ring
    rw [heq]
    exact h
  have hmajor : Summable (fun n : ℕ =>
      (1 / 2) * criticalIntervalBlock n +
        2 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n) :=
    (hblock.mul_left (1 / 2)).add hdrift
  unfold CriticalEndpointDefectSummable
  apply hmajor.of_nonneg_of_le criticalEndpointDefectEnergy_nonneg
  intro n
  cases n with
  | zero =>
      simp [criticalEndpointDefectEnergy, criticalEndpointDefect,
        criticalEndpointDrift, criticalIntervalBlock, pickupWeightedPrefix,
        pickupMertensPrefix, exponentialLogDrop]
  | succ n =>
      exact criticalEndpointDefectEnergy_le_block_add_drift (by omega)

theorem criticalIntervalBlock_le_endpointDefectMajorant {n : ℕ}
    (hn : 1 ≤ n) :
    criticalIntervalBlock n ≤ criticalEndpointDefectMajorant n := by
  unfold criticalEndpointDefectMajorant criticalEndpointDefectEnergy
  calc
    criticalIntervalBlock n ≤
        8 * criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n +
          8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n :=
      criticalIntervalBlock_le_endpointDefect_add_drift hn
    _ = 8 * (criticalEndpointDefect n ^ 2 * exponentialLogDrop 1 n) +
          8 * pickupMertensPrefix n ^ 2 * criticalEndpointDrift n := by ring

/-- Square summability of the sampled signed endpoint defect pays the complete
critical boundary.  The Mertens coefficient drift between samples has already
been discharged unconditionally. -/
theorem criticalBoundary_of_endpointDefectSummable
    (hQ : CriticalEndpointDefectSummable) :
    CriticalBoundaryVerticalLineUniform := by
  have hs := summable_endpointDefectMajorant hQ
  apply criticalBoundary_of_intervalBlockUniform
  refine ⟨∑' n : ℕ, criticalEndpointDefectMajorant n,
    tsum_nonneg criticalEndpointDefectMajorant_nonneg, ?_⟩
  intro N
  unfold criticalIntervalBlockSum
  calc
    (∑ n ∈ Finset.Icc 1 N, criticalIntervalBlock n) ≤
        ∑ n ∈ Finset.Icc 1 N, criticalEndpointDefectMajorant n := by
      apply Finset.sum_le_sum
      intro n hn
      exact criticalIntervalBlock_le_endpointDefectMajorant
        (Finset.mem_Icc.mp hn).1
    _ ≤ ∑' n : ℕ, criticalEndpointDefectMajorant n :=
      hs.sum_le_tsum _ (fun n _ => criticalEndpointDefectMajorant_nonneg n)

/-- The signed endpoint-defect square series is exactly equivalent to the
completed critical boundary. -/
theorem criticalBoundary_iff_endpointDefectSummable :
    CriticalBoundaryVerticalLineUniform ↔ CriticalEndpointDefectSummable :=
  ⟨endpointDefectSummable_of_criticalBoundary,
    criticalBoundary_of_endpointDefectSummable⟩

end GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect.criticalEndpointDefect_eq_half_wholePickup
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect.prefixFlux_eq_endpointDefect_add_drift
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect.criticalEndpointDrift_nonneg
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect.criticalIntervalBlock_le_endpointDefect_add_drift
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect.summable_mertens_drift_error
#print axioms GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect.criticalBoundary_iff_endpointDefectSummable
```
