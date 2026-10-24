# Complete source: GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · SHA-256 `3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
import GRWTSK.Analysis.Integration.ExponentialInterval
import GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop
import GRWTSK.Analysis.AsymptoticAnalysis.PowerWeightedSquareSummability

/-!
# Exact arithmetic blocks on the critical completed vertical line

Between consecutive logarithmic arrival times, the closed Möbius inventory is
constant.  The pickup therefore has an exact two-prefix formula involving the
weighted Möbius prefix and the Mertens prefix.  Integrating its square with the
critical weight `exp (-u)` produces nonnegative arithmetic blocks whose partial
sums are exactly the completed mass at `σ = 1/2`.

This is a source-exact discretization, not a cancellation estimate.  In
particular, it preserves the coupling between the two signed prefixes.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.VerticalLineCriterion
open GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity
open GRWTSK.Analysis.Integration.ExponentialInterval
open GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop
open GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability

/-- Exact endpoint form of Abel summation: the weighted prefix is the scaled
Mertens endpoint plus half of the accumulated pickup. -/
theorem pickupWeightedPrefix_eq_mertens_add_wholePickup {n : ℕ}
    (hn : 1 ≤ n) :
    pickupWeightedPrefix n =
      (Real.sqrt n)⁻¹ * pickupMertensPrefix n +
        wholePickup (Real.log (n : ℝ)) / 2 := by
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have hflux := wholePickup_closed_prefix_flux hlog
  rw [Real.exp_log hnpos] at hflux
  have hflux' : wholePickup (Real.log (n : ℝ)) =
      2 * pickupWeightedPrefix n -
        2 * Real.exp (-Real.log (n : ℝ) / 2) * pickupMertensPrefix n := by
    simpa only [pickupWeightedPrefix, pickupMertensPrefix, mertensPrefix,
      Nat.floor_natCast] using hflux
  rw [← pickup_exp_negative_log_half hn]
  linarith

/-- The same endpoint identity with the actual defining Mertens integral
exposed.  No cancellation estimate is used. -/
theorem pickupWeightedPrefix_eq_mertens_add_integral {n : ℕ}
    (hn : 1 ≤ n) :
    pickupWeightedPrefix n =
      (Real.sqrt n)⁻¹ * pickupMertensPrefix n +
        (∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)) / 2 := by
  rw [pickupWeightedPrefix_eq_mertens_add_wholePickup hn]
  rfl

/-- A natural-cutoff power bound lifts to the exact real-floor Mertens
envelope occurring in the Abel integral. -/
theorem mertensPrefix_exp_le_of_powerBound {C β u : ℝ}
    (hC : 0 ≤ C) (hβ : 0 ≤ β)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β)
    (hu : 0 ≤ u) :
    |mertensPrefix (Real.exp u)| ≤ C * Real.exp (β * u) := by
  rw [← pickupMertensPrefix_at_cutoff]
  have hk : 1 ≤ ⌊Real.exp u⌋₊ := by
    rw [Nat.one_le_floor_iff]
    simpa using Real.exp_le_exp.mpr hu
  have hfloor : ((⌊Real.exp u⌋₊ : ℕ) : ℝ) ≤ Real.exp u :=
    Nat.floor_le (Real.exp_pos u).le
  calc
    |pickupMertensPrefix ⌊Real.exp u⌋₊| ≤
        C * ((⌊Real.exp u⌋₊ : ℕ) : ℝ) ^ β := hM _ hk
    _ ≤ C * (Real.exp u) ^ β :=
      mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow (Nat.cast_nonneg _) hfloor hβ) hC
    _ = C * Real.exp (β * u) := by
      rw [Real.rpow_def_of_pos (Real.exp_pos u), Real.log_exp]
      congr 2
      ring

/-- For a Mertens power bound above the square-root scale, the Abel kernel has
an explicit finite-interval allowance.  The estimate retains the exact
positive rate `β - 1 / 2`; no arithmetic cancellation is introduced here. -/
theorem abelIntegral_abs_le_of_mertensPowerBound {C β : ℝ} {n : ℕ}
    (hC : 0 ≤ C) (hβ : 1 / 2 < β)
    (hM : ∀ k : ℕ, 1 ≤ k →
      |pickupMertensPrefix k| ≤ C * (k : ℝ) ^ β)
    (hn : 1 ≤ n) :
    |∫ u in (0 : ℝ)..Real.log (n : ℝ),
        Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
      C * ((n : ℝ) ^ (β - 1 / 2) - 1) / (β - 1 / 2) := by
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have hr : 0 < β - 1 / 2 := sub_pos.mpr hβ
  have hf : IntervalIntegrable
      (fun u : ℝ => |Real.exp (-u / 2) * mertensPrefix (Real.exp u)|)
      volume 0 (Real.log (n : ℝ)) := by
    simpa only [pickupVelocity, Real.norm_eq_abs] using
      (pickupVelocity_intervalIntegrable 0 (Real.log (n : ℝ))).norm
  have hg : IntervalIntegrable
      (fun u : ℝ => C * Real.exp ((β - 1 / 2) * u))
      volume 0 (Real.log (n : ℝ)) :=
    (continuous_const.mul
      (Real.continuous_exp.comp
        (continuous_const.mul continuous_id))).intervalIntegrable _ _
  calc
    |∫ u in (0 : ℝ)..Real.log (n : ℝ),
        Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
        ∫ u in (0 : ℝ)..Real.log (n : ℝ),
          |Real.exp (-u / 2) * mertensPrefix (Real.exp u)| :=
      intervalIntegral.abs_integral_le_integral_abs hlog
    _ ≤ ∫ u in (0 : ℝ)..Real.log (n : ℝ),
          C * Real.exp ((β - 1 / 2) * u) := by
      apply intervalIntegral.integral_mono_on hlog hf hg
      intro u hu
      rw [abs_mul, abs_of_pos (Real.exp_pos _)]
      calc
        Real.exp (-u / 2) * |mertensPrefix (Real.exp u)| ≤
            Real.exp (-u / 2) * (C * Real.exp (β * u)) :=
          mul_le_mul_of_nonneg_left
            (mertensPrefix_exp_le_of_powerBound hC (by linarith) hM hu.1)
            (Real.exp_pos _).le
        _ = C * Real.exp ((β - 1 / 2) * u) := by
          calc
            Real.exp (-u / 2) * (C * Real.exp (β * u)) =
                C * (Real.exp (-u / 2) * Real.exp (β * u)) := by ring
            _ = C * Real.exp ((β - 1 / 2) * u) := by
              rw [← Real.exp_add]
              congr 1
              ring_nf
    _ = C * ((n : ℝ) ^ (β - 1 / 2) - 1) / (β - 1 / 2) := by
      rw [intervalIntegral.integral_const_mul,
        integral_exp_mul hr.ne' 0 (Real.log (n : ℝ))]
      rw [Real.rpow_def_of_pos hnpos]
      simp
      ring_nf

/-- Abel summation propagates a Mertens `n ^ β` bound, for `β > 1 / 2`,
to the weighted prefix at its natural exponent `β - 1 / 2`. -/
theorem pickupWeightedPrefix_le_of_mertensPowerBound {C β : ℝ}
    (hC : 0 ≤ C) (hβ : 1 / 2 < β)
    (hM : ∀ k : ℕ, 1 ≤ k →
      |pickupMertensPrefix k| ≤ C * (k : ℝ) ^ β) :
    ∀ n : ℕ, 1 ≤ n →
      |pickupWeightedPrefix n| ≤
        (C + C / (2 * (β - 1 / 2))) * (n : ℝ) ^ (β - 1 / 2) := by
  intro n hn
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hr : 0 < β - 1 / 2 := sub_pos.mpr hβ
  have hend : |(Real.sqrt n)⁻¹ * pickupMertensPrefix n| ≤
      C * (n : ℝ) ^ (β - 1 / 2) := by
    rw [← pickup_exp_negative_log_half hn, abs_mul,
      abs_of_pos (Real.exp_pos _)]
    calc
      Real.exp (-Real.log (n : ℝ) / 2) * |pickupMertensPrefix n| ≤
          Real.exp (-Real.log (n : ℝ) / 2) *
            (C * (n : ℝ) ^ β) :=
        mul_le_mul_of_nonneg_left (hM n hn) (Real.exp_pos _).le
      _ = C * (n : ℝ) ^ (β - 1 / 2) := by
        rw [Real.rpow_def_of_pos hnpos, Real.rpow_def_of_pos hnpos]
        calc
          Real.exp (-Real.log (n : ℝ) / 2) *
              (C * Real.exp (Real.log (n : ℝ) * β)) =
              C * (Real.exp (-Real.log (n : ℝ) / 2) *
                Real.exp (Real.log (n : ℝ) * β)) := by ring
          _ = C * Real.exp
              (Real.log (n : ℝ) * (β - 1 / 2)) := by
            rw [← Real.exp_add]
            congr 1
            ring_nf
  have hint := abelIntegral_abs_le_of_mertensPowerBound hC hβ hM hn
  have hint' :
      |∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
        (C / (β - 1 / 2)) * (n : ℝ) ^ (β - 1 / 2) := by
    calc
      |∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)| ≤
          C * ((n : ℝ) ^ (β - 1 / 2) - 1) / (β - 1 / 2) := hint
      _ ≤ C * (n : ℝ) ^ (β - 1 / 2) / (β - 1 / 2) := by
        exact div_le_div_of_nonneg_right
          (mul_le_mul_of_nonneg_left (sub_le_self _ (by norm_num)) hC) hr.le
      _ = (C / (β - 1 / 2)) * (n : ℝ) ^ (β - 1 / 2) := by ring
  rw [pickupWeightedPrefix_eq_mertens_add_integral hn]
  calc
    |(Real.sqrt n)⁻¹ * pickupMertensPrefix n +
        (∫ u in (0 : ℝ)..Real.log (n : ℝ),
          Real.exp (-u / 2) * mertensPrefix (Real.exp u)) / 2| ≤
        |(Real.sqrt n)⁻¹ * pickupMertensPrefix n| +
          |(∫ u in (0 : ℝ)..Real.log (n : ℝ),
            Real.exp (-u / 2) * mertensPrefix (Real.exp u)) / 2| := abs_add_le _ _
    _ ≤ C * (n : ℝ) ^ (β - 1 / 2) +
        ((C / (β - 1 / 2)) * (n : ℝ) ^ (β - 1 / 2)) / 2 := by
      apply add_le_add hend
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact div_le_div_of_nonneg_right hint' (by norm_num)
    _ = (C + C / (2 * (β - 1 / 2))) *
        (n : ℝ) ^ (β - 1 / 2) := by
      field_simp [hr.ne']

/-- On the open logarithmic cell from `n` to `n+1`, the pickup is the exact
coupled weighted-prefix/Mertens-prefix expression with cutoff `n`. -/
theorem wholePickup_eq_prefix_flux_on_log_cell {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (hlo : Real.log (n : ℝ) < u)
    (hhi : u < Real.log ((n + 1 : ℕ) : ℝ)) :
    wholePickup u =
      2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n) := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hsuccpos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  have hu : 0 ≤ u := (Real.log_nonneg (by exact_mod_cast hn)).trans hlo.le
  have hfloor : ⌊Real.exp u⌋₊ = n := by
    apply (Nat.floor_eq_iff (Real.exp_pos u).le).2
    constructor
    · exact (Real.log_lt_iff_lt_exp hnpos).mp hlo |>.le
    · simpa only [Nat.cast_add, Nat.cast_one] using
        (Real.lt_log_iff_exp_lt hsuccpos).mp hhi
  have hflux := wholePickup_closed_prefix_flux hu
  unfold mertensPrefix at hflux
  rw [hfloor] at hflux
  change wholePickup u =
    2 * pickupWeightedPrefix n -
      2 * Real.exp (-u / 2) * pickupMertensPrefix n at hflux
  calc
    wholePickup u =
        2 * pickupWeightedPrefix n -
          2 * Real.exp (-u / 2) * pickupMertensPrefix n := hflux
    _ = 2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n) := by ring

/-- The explicit positive arithmetic contribution of the `n`th logarithmic
cell to the completed line `σ = 1/2`. -/
def criticalIntervalBlock (n : ℕ) : ℝ :=
  ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
    Real.exp (-u) *
      (2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2

/-- Each explicit block is the actual weighted pickup energy on its cell. -/
theorem criticalIntervalBlock_eq_pickup {n : ℕ} (hn : 1 ≤ n) :
    criticalIntervalBlock n =
      ∫ u in Real.log (n : ℝ)..Real.log ((n + 1 : ℕ) : ℝ),
        Real.exp (-u) * wholePickup u ^ 2 := by
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hlog : Real.log (n : ℝ) ≤ Real.log ((n + 1 : ℕ) : ℝ) :=
    Real.log_le_log hnpos (by exact_mod_cast Nat.le_add_right n 1)
  unfold criticalIntervalBlock
  symm
  apply intervalIntegral.integral_congr_Ioo_of_le hlog
  intro u hu
  change Real.exp (-u) * wholePickup u ^ 2 =
    Real.exp (-u) *
      (2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2
  rw [wholePickup_eq_prefix_flux_on_log_cell hn hu.1 hu.2]

theorem criticalIntervalBlock_nonneg {n : ℕ} (hn : 1 ≤ n) :
    0 ≤ criticalIntervalBlock n := by
  rw [criticalIntervalBlock_eq_pickup hn]
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  apply intervalIntegral.integral_nonneg_of_forall
    (Real.log_le_log hnpos (by exact_mod_cast Nat.le_add_right n 1))
  intro u
  exact mul_nonneg (Real.exp_pos _).le (sq_nonneg _)

/-- The endpoint drop of the exponential with rate `a` across the `n`th
logarithmic cell. -/
def exponentialLogDrop (a : ℝ) (n : ℕ) : ℝ :=
  Real.exp (-a * Real.log (n : ℝ)) -
    Real.exp (-a * Real.log ((n + 1 : ℕ) : ℝ))

/-- Closed quadratic form of a critical arithmetic block.  The mixed term is
retained with its negative sign; estimating the two prefixes separately would
erase precisely this cancellation. -/
theorem criticalIntervalBlock_closedForm (n : ℕ) :
    criticalIntervalBlock n =
      4 * pickupWeightedPrefix n ^ 2 * exponentialLogDrop 1 n -
      (16 / 3) * pickupWeightedPrefix n * pickupMertensPrefix n *
        exponentialLogDrop (3 / 2) n +
      2 * pickupMertensPrefix n ^ 2 * exponentialLogDrop 2 n := by
  unfold criticalIntervalBlock
  have hfun : (fun u : ℝ => Real.exp (-u) *
      (2 * (pickupWeightedPrefix n -
        Real.exp (-u / 2) * pickupMertensPrefix n)) ^ 2) =
      (fun u : ℝ =>
        4 * pickupWeightedPrefix n ^ 2 * Real.exp (-(1 : ℝ) * u) -
        8 * pickupWeightedPrefix n * pickupMertensPrefix n *
          Real.exp (-(3 / 2 : ℝ) * u) +
        4 * pickupMertensPrefix n ^ 2 * Real.exp (-(2 : ℝ) * u)) := by
    funext u
    have h1 : Real.exp (-u) * Real.exp (-u / 2) =
        Real.exp (-(3 / 2 : ℝ) * u) := by
      rw [← Real.exp_add]
      congr 1
      ring
    have h2 : Real.exp (-u) * Real.exp (-u / 2) ^ 2 =
        Real.exp (-(2 : ℝ) * u) := by
      rw [pow_two, ← mul_assoc, ← Real.exp_add, ← Real.exp_add]
      congr 1
      ring
    calc
      _ = 4 * pickupWeightedPrefix n ^ 2 * Real.exp (-u) -
          8 * pickupWeightedPrefix n * pickupMertensPrefix n *
            (Real.exp (-u) * Real.exp (-u / 2)) +
          4 * pickupMertensPrefix n ^ 2 *
            (Real.exp (-u) * Real.exp (-u / 2) ^ 2) := by ring
      _ = _ := by rw [h1, h2]; ring_nf
  rw [hfun, intervalIntegral.integral_add, intervalIntegral.integral_sub,
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul,
    intervalIntegral.integral_const_mul]
  · rw [integral_exp_neg_mul (by norm_num : (1 : ℝ) ≠ 0),
      integral_exp_neg_mul (by norm_num : (3 / 2 : ℝ) ≠ 0),
      integral_exp_neg_mul (by norm_num : (2 : ℝ) ≠ 0)]
    unfold exponentialLogDrop
    ring
  all_goals
    apply Continuous.intervalIntegrable
    fun_prop

theorem exponentialLogDrop_eq_rpow {a : ℝ} {n : ℕ} (hn : 1 ≤ n) :
    exponentialLogDrop a n =
      (n : ℝ) ^ (-a) - ((n + 1 : ℕ) : ℝ) ^ (-a) := by
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hspos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
  unfold exponentialLogDrop
  rw [Real.rpow_def_of_pos hnpos, Real.rpow_def_of_pos hspos]
  congr 1 <;> ring

theorem exponentialLogDrop_nonneg {a : ℝ} (ha : 0 ≤ a) (n : ℕ) :
    0 ≤ exponentialLogDrop a n := by
  cases n with
  | zero => simp [exponentialLogDrop]
  | succ n =>
      have hnpos : (0 : ℝ) < ((n + 1 : ℕ) : ℝ) := by positivity
      have hlog : Real.log ((n + 1 : ℕ) : ℝ) ≤
          Real.log ((n + 1 + 1 : ℕ) : ℝ) :=
        Real.log_le_log hnpos
          (by exact_mod_cast Nat.le_add_right (n + 1) 1)
      unfold exponentialLogDrop
      exact sub_nonneg.mpr (Real.exp_le_exp.mpr
        (mul_le_mul_of_nonpos_left hlog (neg_nonpos.mpr ha)))

/-- A positive termwise majorant that keeps the exact three endpoint scales
but pays absolute value only for the mixed prefix product. -/
def criticalIntervalMajorant (n : ℕ) : ℝ :=
  4 * pickupWeightedPrefix n ^ 2 * exponentialLogDrop 1 n +
  (16 / 3) * |pickupWeightedPrefix n * pickupMertensPrefix n| *
    exponentialLogDrop (3 / 2) n +
  2 * pickupMertensPrefix n ^ 2 * exponentialLogDrop 2 n

theorem criticalIntervalMajorant_nonneg (n : ℕ) :
    0 ≤ criticalIntervalMajorant n := by
  have h1 := exponentialLogDrop_nonneg (a := (1 : ℝ)) (by norm_num) n
  have h32 := exponentialLogDrop_nonneg (a := (3 / 2 : ℝ)) (by norm_num) n
  have h2 := exponentialLogDrop_nonneg (a := (2 : ℝ)) (by norm_num) n
  unfold criticalIntervalMajorant
  positivity

theorem criticalIntervalBlock_le_majorant (n : ℕ) :
    criticalIntervalBlock n ≤ criticalIntervalMajorant n := by
  rw [criticalIntervalBlock_closedForm]
  unfold criticalIntervalMajorant
  have hd : 0 ≤ exponentialLogDrop (3 / 2) n :=
    exponentialLogDrop_nonneg (by norm_num) n
  have hm : -(pickupWeightedPrefix n * pickupMertensPrefix n) *
      exponentialLogDrop (3 / 2) n ≤
      |pickupWeightedPrefix n * pickupMertensPrefix n| *
        exponentialLogDrop (3 / 2) n :=
    mul_le_mul_of_nonneg_right (neg_le_abs _) hd
  have hmiddle : (16 / 3) *
        (-(pickupWeightedPrefix n * pickupMertensPrefix n) *
          exponentialLogDrop (3 / 2) n) ≤
      (16 / 3) *
        (|pickupWeightedPrefix n * pickupMertensPrefix n| *
          exponentialLogDrop (3 / 2) n) :=
    mul_le_mul_of_nonneg_left hm (by norm_num)
  linear_combination hmiddle

/-- An explicit sufficient arithmetic target for the critical boundary: the
positive majorant series of the two signed prefixes converges. -/
def CriticalIntervalMajorantSummable : Prop :=
  Summable criticalIntervalMajorant

/-- The power-scale majorant obtained by replacing each unit-interval drop by
the derivative magnitude of its negative power at the left endpoint. -/
def criticalPrefixPowerMajorant (n : ℕ) : ℝ :=
  4 * pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) +
  8 * |pickupWeightedPrefix n * pickupMertensPrefix n| *
    (n : ℝ) ^ (-(5 / 2 : ℝ)) +
  4 * pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ))

theorem criticalPrefixPowerMajorant_nonneg (n : ℕ) :
    0 ≤ criticalPrefixPowerMajorant n := by
  unfold criticalPrefixPowerMajorant
  positivity

theorem exponentialLogDrop_le_rpow {a : ℝ} (ha : 0 ≤ a) {n : ℕ}
    (hn : 1 ≤ n) :
    exponentialLogDrop a n ≤ a * (n : ℝ) ^ (-a - 1) := by
  rw [exponentialLogDrop_eq_rpow hn]
  have hnpos : (0 : ℝ) < n := by positivity
  simpa only [Nat.cast_add, Nat.cast_one] using
    rpow_sub_rpow_add_one_le hnpos ha

theorem criticalIntervalMajorant_le_prefixPowerMajorant {n : ℕ}
    (hn : 1 ≤ n) :
    criticalIntervalMajorant n ≤ criticalPrefixPowerMajorant n := by
  have h1 : exponentialLogDrop 1 n ≤ (n : ℝ) ^ (-(2 : ℝ)) := by
    have h := exponentialLogDrop_le_rpow (a := (1 : ℝ)) (by norm_num) hn
    norm_num at h ⊢
    exact h
  have h32 : exponentialLogDrop (3 / 2) n ≤
      (3 / 2 : ℝ) * (n : ℝ) ^ (-(5 / 2 : ℝ)) := by
    have h := exponentialLogDrop_le_rpow (a := (3 / 2 : ℝ)) (by norm_num) hn
    norm_num at h ⊢
    exact h
  have h2 : exponentialLogDrop 2 n ≤
      2 * (n : ℝ) ^ (-(3 : ℝ)) := by
    have h := exponentialLogDrop_le_rpow (a := (2 : ℝ)) (by norm_num) hn
    norm_num at h ⊢
    exact h
  have hA : 4 * pickupWeightedPrefix n ^ 2 * exponentialLogDrop 1 n ≤
      4 * pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) :=
    mul_le_mul_of_nonneg_left h1
      (mul_nonneg (by norm_num) (sq_nonneg (pickupWeightedPrefix n)))
  have hAM : (16 / 3) * |pickupWeightedPrefix n * pickupMertensPrefix n| *
        exponentialLogDrop (3 / 2) n ≤
      (16 / 3) * |pickupWeightedPrefix n * pickupMertensPrefix n| *
        ((3 / 2 : ℝ) * (n : ℝ) ^ (-(5 / 2 : ℝ))) :=
    mul_le_mul_of_nonneg_left h32
      (mul_nonneg (by norm_num) (abs_nonneg _))
  have hM : 2 * pickupMertensPrefix n ^ 2 * exponentialLogDrop 2 n ≤
      2 * pickupMertensPrefix n ^ 2 *
        (2 * (n : ℝ) ^ (-(3 : ℝ))) :=
    mul_le_mul_of_nonneg_left h2
      (mul_nonneg (by norm_num) (sq_nonneg (pickupMertensPrefix n)))
  unfold criticalIntervalMajorant criticalPrefixPowerMajorant
  linear_combination hA + hAM + hM

/-- A source-readable sufficient condition at the natural power scales of the
two Möbius prefixes. -/
def CriticalPrefixPowerSummable : Prop :=
  Summable criticalPrefixPowerMajorant

/-- The two square energies that dominate the mixed power-scale term by
`2xy ≤ x² + y²`. -/
def criticalPrefixSquareMajorant (n : ℕ) : ℝ :=
  8 * (pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) +
    pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ)))

theorem criticalPrefixSquareMajorant_nonneg (n : ℕ) :
    0 ≤ criticalPrefixSquareMajorant n := by
  unfold criticalPrefixSquareMajorant
  positivity

theorem criticalPrefixPowerMajorant_le_squareMajorant {n : ℕ}
    (hn : 1 ≤ n) :
    criticalPrefixPowerMajorant n ≤ criticalPrefixSquareMajorant n := by
  have hnpos : (0 : ℝ) < n := by positivity
  have hmixpow : (n : ℝ) ^ (-(5 / 2 : ℝ)) =
      (n : ℝ) ^ (-(1 : ℝ)) * (n : ℝ) ^ (-(3 / 2 : ℝ)) := by
    rw [← Real.rpow_add hnpos]
    congr 1
    norm_num
  have hApow : (n : ℝ) ^ (-(2 : ℝ)) =
      ((n : ℝ) ^ (-(1 : ℝ))) ^ 2 := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul hnpos.le]
    norm_num
  have hMpow : (n : ℝ) ^ (-(3 : ℝ)) =
      ((n : ℝ) ^ (-(3 / 2 : ℝ))) ^ 2 := by
    rw [← Real.rpow_natCast, ← Real.rpow_mul hnpos.le]
    norm_num
  have hyoung :
      2 * (|pickupWeightedPrefix n| * (n : ℝ) ^ (-(1 : ℝ))) *
          (|pickupMertensPrefix n| * (n : ℝ) ^ (-(3 / 2 : ℝ))) ≤
        (|pickupWeightedPrefix n| * (n : ℝ) ^ (-(1 : ℝ))) ^ 2 +
          (|pickupMertensPrefix n| * (n : ℝ) ^ (-(3 / 2 : ℝ))) ^ 2 := by
    nlinarith [sq_nonneg
      (|pickupWeightedPrefix n| * (n : ℝ) ^ (-(1 : ℝ)) -
        |pickupMertensPrefix n| * (n : ℝ) ^ (-(3 / 2 : ℝ)))]
  have hmixed :
      2 * |pickupWeightedPrefix n * pickupMertensPrefix n| *
          (n : ℝ) ^ (-(5 / 2 : ℝ)) ≤
        pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)) +
          pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ)) := by
    rw [abs_mul, hmixpow, hApow, hMpow]
    nlinarith [hyoung, sq_abs (pickupWeightedPrefix n),
      sq_abs (pickupMertensPrefix n)]
  unfold criticalPrefixPowerMajorant criticalPrefixSquareMajorant
  nlinarith

/-- Summability of the two-square majorant for the normalized prefixes. -/
def CriticalPrefixSquareSummable : Prop :=
  Summable criticalPrefixSquareMajorant

/-- Square summability of the weighted Möbius prefix at scale `n⁻¹`. -/
def CriticalWeightedPrefixSquareSummable : Prop :=
  Summable (fun n : ℕ =>
    pickupWeightedPrefix n ^ 2 * (n : ℝ) ^ (-(2 : ℝ)))

/-- Square summability of the Mertens prefix at scale `n⁻³ᐟ²`. -/
def CriticalMertensPrefixSquareSummable : Prop :=
  Summable (fun n : ℕ =>
    pickupMertensPrefix n ^ 2 * (n : ℝ) ^ (-(3 : ℝ)))

theorem criticalPrefixSquareSummable_of_components
    (hA : CriticalWeightedPrefixSquareSummable)
    (hM : CriticalMertensPrefixSquareSummable) :
    CriticalPrefixSquareSummable := by
  unfold CriticalWeightedPrefixSquareSummable at hA
  unfold CriticalMertensPrefixSquareSummable at hM
  unfold CriticalPrefixSquareSummable criticalPrefixSquareMajorant
  exact (hA.add hM).mul_left 8

theorem criticalPrefixPowerSummable_of_squareSummable
    (hs : CriticalPrefixSquareSummable) : CriticalPrefixPowerSummable := by
  apply hs.of_nonneg_of_le criticalPrefixPowerMajorant_nonneg
  intro n
  by_cases hn : 1 ≤ n
  · exact criticalPrefixPowerMajorant_le_squareMajorant hn
  · have hnzero : n = 0 := by omega
    subst n
    simp [criticalPrefixPowerMajorant, criticalPrefixSquareMajorant]

theorem criticalIntervalMajorantSummable_of_prefixPowerSummable
    (hs : CriticalPrefixPowerSummable) : CriticalIntervalMajorantSummable := by
  apply hs.of_nonneg_of_le criticalIntervalMajorant_nonneg
  intro n
  by_cases hn : 1 ≤ n
  · exact criticalIntervalMajorant_le_prefixPowerMajorant hn
  · have hnzero : n = 0 := by omega
    subst n
    simp [criticalIntervalMajorant, criticalPrefixPowerMajorant,
      exponentialLogDrop]

/-- Partial sum of the exact critical arithmetic blocks. -/
def criticalIntervalBlockSum (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 1 N, criticalIntervalBlock n

/-- The first `N` blocks telescope to the critical weighted energy through the
arrival time `log (N+1)`. -/
theorem criticalIntervalBlockSum_eq_integral (N : ℕ) :
    criticalIntervalBlockSum N =
      ∫ u in (0 : ℝ)..Real.log ((N + 1 : ℕ) : ℝ),
        Real.exp (-u) * wholePickup u ^ 2 := by
  induction N with
  | zero => simp [criticalIntervalBlockSum]
  | succ N ih =>
      rw [criticalIntervalBlockSum, Finset.sum_Icc_succ_top (by omega),
        ← criticalIntervalBlockSum, ih,
        criticalIntervalBlock_eq_pickup (by omega : 1 ≤ N + 1)]
      have hc : Continuous (fun u : ℝ =>
          Real.exp (-u) * wholePickup u ^ 2) :=
        (Real.continuous_exp.comp continuous_id.neg).mul
          (wholePickup_continuous.pow 2)
      exact intervalIntegral.integral_add_adjacent_intervals (μ := volume)
        (hc.intervalIntegrable 0 (Real.log ((N + 1 : ℕ) : ℝ)))
        (hc.intervalIntegrable (Real.log ((N + 1 : ℕ) : ℝ))
          (Real.log ((N + 1 + 1 : ℕ) : ℝ)))

/-- At logarithmic arithmetic horizons, the completed `σ = 1/2` mass is
exactly the finite sum of positive source blocks. -/
theorem criticalIntervalBlockSum_eq_verticalLineMass (N : ℕ) :
    criticalIntervalBlockSum N =
      verticalLineMass (1 / 2) (Real.log ((N + 1 : ℕ) : ℝ)) := by
  have hlog : 0 ≤ Real.log ((N + 1 : ℕ) : ℝ) :=
    Real.log_nonneg (by exact_mod_cast (Nat.succ_le_succ (Nat.zero_le N)))
  rw [criticalIntervalBlockSum_eq_integral]
  change (∫ u in (0 : ℝ)..Real.log ((N + 1 : ℕ) : ℝ),
      Real.exp (-u) * wholePickup u ^ 2) =
    verticalLineMass (1 / 2) (Real.log ((N + 1 : ℕ) : ℝ))
  rw [verticalLineMass_eq_weightedWindow (σ := 1 / 2) hlog,
    intervalIntegral.integral_of_le hlog, ← integral_Icc_eq_integral_Ioc]
  apply setIntegral_congr_fun measurableSet_Icc
  intro u _hu
  ring_nf

/-- Extending a finite recording horizon can only add nonnegative weighted
pickup energy. -/
theorem verticalLineMass_mono_horizon {σ S T : ℝ} (hS : 0 ≤ S) (hST : S ≤ T) :
    verticalLineMass σ S ≤ verticalLineMass σ T := by
  rw [verticalLineMass_eq_weightedWindow hS,
    verticalLineMass_eq_weightedWindow (hS.trans hST)]
  have hc : Continuous (fun u : ℝ =>
      Real.exp (-2 * σ * u) * wholePickup u ^ 2) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (wholePickup_continuous.pow 2)
  apply setIntegral_mono_set hc.integrableOn_Icc
    (ae_of_all _ (fun u => mul_nonneg (Real.exp_pos _).le (sq_nonneg _)))
  exact ae_of_all _ (fun _ hu => ⟨hu.1, hu.2.trans hST⟩)

/-- Uniform-in-horizon control of the single boundary line `σ = 1/2`.  This
is a necessary but not sufficient part of the all-positive-lines criterion. -/
def CriticalBoundaryVerticalLineUniform : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ T : ℝ, 0 ≤ T → verticalLineMass (1 / 2) T ≤ C

/-- Uniform boundedness of the exact positive arithmetic block partial sums. -/
def CriticalIntervalBlockUniform : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∀ N : ℕ, criticalIntervalBlockSum N ≤ C

theorem criticalIntervalBlockUniform_of_majorantSummable
    (hs : CriticalIntervalMajorantSummable) : CriticalIntervalBlockUniform := by
  refine ⟨∑' n : ℕ, criticalIntervalMajorant n,
    tsum_nonneg criticalIntervalMajorant_nonneg, ?_⟩
  intro N
  unfold criticalIntervalBlockSum
  calc
    (∑ n ∈ Finset.Icc 1 N, criticalIntervalBlock n) ≤
        ∑ n ∈ Finset.Icc 1 N, criticalIntervalMajorant n := by
      apply Finset.sum_le_sum
      intro n _hn
      exact criticalIntervalBlock_le_majorant n
    _ ≤ ∑' n : ℕ, criticalIntervalMajorant n :=
      hs.sum_le_tsum _ (fun n _ => criticalIntervalMajorant_nonneg n)

theorem criticalIntervalBlockUniform_of_boundary
    (hB : CriticalBoundaryVerticalLineUniform) : CriticalIntervalBlockUniform := by
  obtain ⟨C, hC, hbound⟩ := hB
  refine ⟨C, hC, ?_⟩
  intro N
  rw [criticalIntervalBlockSum_eq_verticalLineMass]
  exact hbound _ (Real.log_nonneg
    (by exact_mod_cast (Nat.succ_le_succ (Nat.zero_le N))))

theorem criticalBoundary_of_intervalBlockUniform
    (hB : CriticalIntervalBlockUniform) : CriticalBoundaryVerticalLineUniform := by
  obtain ⟨C, hC, hbound⟩ := hB
  refine ⟨C, hC, ?_⟩
  intro T hT
  obtain ⟨N, hN⟩ := exists_nat_gt (Real.exp T)
  have hNpos : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hTlog : T ≤ Real.log ((N + 1 : ℕ) : ℝ) := by
    apply (Real.le_log_iff_exp_le hNpos).2
    exact hN.le.trans (by exact_mod_cast Nat.le_add_right N 1)
  calc
    verticalLineMass (1 / 2) T ≤
        verticalLineMass (1 / 2) (Real.log ((N + 1 : ℕ) : ℝ)) :=
      verticalLineMass_mono_horizon hT hTlog
    _ = criticalIntervalBlockSum N :=
      (criticalIntervalBlockSum_eq_verticalLineMass N).symm
    _ ≤ C := hbound N

/-- The continuous boundary-line estimate is exactly boundedness of the
source-exact positive arithmetic block partial sums. -/
theorem criticalBoundary_iff_intervalBlockUniform :
    CriticalBoundaryVerticalLineUniform ↔ CriticalIntervalBlockUniform :=
  ⟨criticalIntervalBlockUniform_of_boundary,
    criticalBoundary_of_intervalBlockUniform⟩

theorem criticalBoundary_of_majorantSummable
    (hs : CriticalIntervalMajorantSummable) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_intervalBlockUniform
    (criticalIntervalBlockUniform_of_majorantSummable hs)

theorem criticalBoundary_of_prefixPowerSummable
    (hs : CriticalPrefixPowerSummable) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_majorantSummable
    (criticalIntervalMajorantSummable_of_prefixPowerSummable hs)

theorem criticalBoundary_of_prefixSquareComponents
    (hA : CriticalWeightedPrefixSquareSummable)
    (hM : CriticalMertensPrefixSquareSummable) :
    CriticalBoundaryVerticalLineUniform :=
  criticalBoundary_of_prefixPowerSummable
    (criticalPrefixPowerSummable_of_squareSummable
      (criticalPrefixSquareSummable_of_components hA hM))

/-- Separate power bounds below the two exact square-summability thresholds
are sufficient for the critical completed line.  This is a conditional
consumer: it does not assert either arithmetic bound. -/
theorem criticalBoundary_of_prefixPowerBounds {CA CM α β : ℝ}
    (hα : α < 1 / 2)
    (hβ : β < 1)
    (hA : ∀ n : ℕ, 1 ≤ n →
      |pickupWeightedPrefix n| ≤ CA * (n : ℝ) ^ α)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ CM * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform := by
  have hA0 : pickupWeightedPrefix 0 = 0 := by simp [pickupWeightedPrefix]
  have hM0 : pickupMertensPrefix 0 = 0 := by simp [pickupMertensPrefix]
  have hAs : CriticalWeightedPrefixSquareSummable := by
    unfold CriticalWeightedPrefixSquareSummable
    apply summable_sq_mul_rpow_of_abs_le_rpow pickupWeightedPrefix hA0 hA
    linarith
  have hMs : CriticalMertensPrefixSquareSummable := by
    unfold CriticalMertensPrefixSquareSummable
    apply summable_sq_mul_rpow_of_abs_le_rpow pickupMertensPrefix hM0 hM
    linarith
  exact criticalBoundary_of_prefixSquareComponents hAs hMs

/-- A single genuine Mertens power saving, at any exponent strictly between
the square-root scale and `1`, pays both prefix-energy obligations and hence
the completed critical vertical line.  This theorem is conditional: it does
not assert the Mertens power bound. -/
theorem criticalBoundary_of_mertensPowerSaving {C β : ℝ}
    (hC : 0 ≤ C) (hβlower : 1 / 2 < β) (hβupper : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform := by
  apply criticalBoundary_of_prefixPowerBounds
      (CA := C + C / (2 * (β - 1 / 2))) (CM := C)
      (α := β - 1 / 2) (β := β)
  · linarith
  · exact hβupper
  · exact pickupWeightedPrefix_le_of_mertensPowerBound hC hβlower hM
  · exact hM

/-- Any nonnegative strict power saving for the Mertens prefix suffices.  A
small exponent is first enlarged to `(β + 2) / 3`, which lies strictly between
`1 / 2` and `1`; this loses no information needed by the critical consumer. -/
theorem criticalBoundary_of_nonnegative_mertensPowerSaving {C β : ℝ}
    (hC : 0 ≤ C) (hβnonneg : 0 ≤ β) (hβupper : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform := by
  have hγlower : 1 / 2 < (β + 2) / 3 := by linarith
  have hγupper : (β + 2) / 3 < 1 := by linarith
  apply criticalBoundary_of_mertensPowerSaving hC hγlower hγupper
  intro n hn
  calc
    |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β := hM n hn
    _ ≤ C * (n : ℝ) ^ ((β + 2) / 3) := by
      apply mul_le_mul_of_nonneg_left _ hC
      apply Real.rpow_le_rpow_of_exponent_le
      · exact_mod_cast hn
      · linarith

/-- Any solution of the countable RH-equivalent reciprocal-line problem must,
in particular, settle the explicit critical arithmetic block problem. -/
theorem criticalBoundary_of_criticalReciprocal
    (hR : CriticalReciprocalVerticalLineUniform) :
    CriticalBoundaryVerticalLineUniform := by
  obtain ⟨C, hC, hbound⟩ := hR 1 (by norm_num)
  refine ⟨C, hC, ?_⟩
  norm_num at hbound ⊢
  exact hbound

end GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.wholePickup_eq_prefix_flux_on_log_cell
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.pickupWeightedPrefix_eq_mertens_add_integral
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.mertensPrefix_exp_le_of_powerBound
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.abelIntegral_abs_le_of_mertensPowerBound
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.pickupWeightedPrefix_le_of_mertensPowerBound
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlock_eq_pickup
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlock_closedForm
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlockUniform_of_majorantSummable
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalMajorantSummable_of_prefixPowerSummable
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_prefixSquareComponents
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_prefixPowerBounds
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_mertensPowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_of_nonnegative_mertensPowerSaving
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalIntervalBlockSum_eq_verticalLineMass
#print axioms GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks.criticalBoundary_iff_intervalBlockUniform
```
