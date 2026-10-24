# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.06SourceSquarePrimitiveBalance.Variantbd97cbff836e667568bf650f1e4eea2dc9067fb5251fd3aa7df5d7b718e703e8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81755ef0f36e491240e17984071b962dc2d44310` · SHA-256 `bd97cbff836e667568bf650f1e4eea2dc9067fb5251fd3aa7df5d7b718e703e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceProperPowerMertens
import FormalResearch.RiemannHypothesis.WeightedPrimeAbel

/-! The actual closed square density has a bounded zero-drift primitive.
All prime squares and the original seven anchor are retained.
Direction and conceptual origin: grwtsk contributors.
Exact source construction and native formalization: OpenAI Codex assistance.
No signed first-prime or full RH estimate witness is supplied. -/
set_option autoImplicit false
noncomputable section
namespace RH16SquarePrimitiveBalance
open MeasureTheory Set
open FormalResearch.RiemannHypothesis
open WeightedPrimeAbel WeightedPrimeMertens RH16ProperPowerMertens
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

def squareTimeDensity (t : ℝ) : ℝ :=
  Chebyshev.theta (Real.exp (t / 2)) * Real.exp (-t / 2)

def squareAnchoredPrimitive (t : ℝ) : ℝ :=
  ∫ s in Real.log 7..t, squareTimeDensity s

def squarePrimitiveReadout (t : ℝ) : ℝ :=
  2 * primeLogPrefix (t / 2) -
    2 * Real.exp (-t / 2) * Chebyshev.theta (Real.exp (t / 2))

def squareZeroDrift (t : ℝ) : ℝ :=
  squareAnchoredPrimitive t - (t - Real.log 7)

private theorem theta_exp_eq_steps (b t : ℝ) (ht : t ≤ b) :
    Chebyshev.theta (Real.exp (t / 2)) =
      ∑ p ∈ primeLogInventory (b / 2),
        if 2 * Real.log (p : ℝ) ≤ t then Real.log p else 0 := by
  change (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ)) = _
  rw [← primeLogInventory_filter_log (b / 2) (t / 2) (by linarith)]
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro p _
  congr 1
  exact propext (by constructor <;> intro h <;> linarith)

private theorem primitive_antiderivative (t : ℝ) :
    HasDerivAt (fun t : ℝ => -2 * Real.exp (-t / 2)) (Real.exp (-t / 2)) t := by
  convert! (((hasDerivAt_id t).neg.div_const (2 : ℝ)).exp.const_mul (-2)) using 1
  dsimp
  ring

private theorem density_eq_steps (b t : ℝ) (ht : t ≤ b) :
    squareTimeDensity t =
      ∑ p ∈ primeLogInventory (b / 2), Real.log (p : ℝ) *
        (if 2 * Real.log (p : ℝ) ≤ t then Real.exp (-t / 2) else 0) := by
  rw [squareTimeDensity, theta_exp_eq_steps b t ht, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro p _
  split_ifs <;> simp

theorem squareTimeDensity_intervalIntegrable (a b : ℝ) (hab : a ≤ b) :
    IntervalIntegrable squareTimeDensity volume a b := by
  have hi : IntervalIntegrable
      (∑ p ∈ primeLogInventory (b / 2), fun t : ℝ => Real.log (p : ℝ) *
        (if 2 * Real.log (p : ℝ) ≤ t then Real.exp (-t / 2) else 0)) volume a b :=
    IntervalIntegrable.sum _ (fun p _ => by
      have hstep := intervalIntegrable_closed_step a b (2 * Real.log (p : ℝ)) _
        ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable a b)
      exact hstep.const_mul (Real.log (p : ℝ)))
  apply hi.congr
  intro t ht
  simp only [Finset.sum_apply]
  exact (density_eq_steps b t (uIoc_of_le hab ▸ ht |>.2)).symm

theorem square_prefix_integral_eq_readout (t : ℝ) (ht : 0 ≤ t) :
    (∫ s in 0..t, squareTimeDensity s) = squarePrimitiveReadout t := by
  have hf : ContDiff ℝ 1 (fun s : ℝ => -2 * Real.exp (-s / 2)) := by fun_prop
  have he := integral_finite_steps_deriv 0 t (primeLogInventory (t / 2))
    (fun p => 2 * Real.log (p : ℝ)) (fun p => Real.log (p : ℝ))
    (fun p hp => by
      have hh := primeLogInventory_log_bounds (t / 2) p hp
      constructor <;> linarith) _ hf
  have hd : (∫ s in 0..t, ∑ p ∈ primeLogInventory (t / 2),
      Real.log (p : ℝ) * (if 2 * Real.log (p : ℝ) ≤ s then
        deriv (fun s : ℝ => -2 * Real.exp (-s / 2)) s else 0)) =
        ∫ s in 0..t, squareTimeDensity s := by
    apply intervalIntegral.integral_congr
    intro s hs
    simp_rw [(primitive_antiderivative s).deriv]
    exact (density_eq_steps t s (uIcc_of_le ht ▸ hs |>.2)).symm
  rw [hd] at he
  rw [he]
  have hs : (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ) *
      ((-2 * Real.exp (-t / 2)) - (-2 * Real.exp (-(2 * Real.log p) / 2)))) =
      2 * primeLogPrefix (t / 2) -
        2 * Real.exp (-t / 2) * Chebyshev.theta (Real.exp (t / 2)) := by
    rw [primeLogPrefix_eq_sum]
    change _ = 2 * (∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ) / p) -
      2 * Real.exp (-t / 2) * ∑ p ∈ primeLogInventory (t / 2), Real.log (p : ℝ)
    simp_rw [Finset.mul_sum]
    rw [← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro p hp
    have hp0 : 0 < (p : ℝ) := by
      exact_mod_cast (Finset.mem_filter.mp hp).2.pos
    rw [show -(2 * Real.log (p : ℝ)) / 2 = -Real.log p by ring,
      Real.exp_neg, Real.exp_log hp0]
    ring
  exact hs

theorem squareAnchoredPrimitive_eq_readout (t : ℝ) (ht : Real.log 7 ≤ t) :
    squareAnchoredPrimitive t =
      squarePrimitiveReadout t - squarePrimitiveReadout (Real.log 7) := by
  have hL : 0 ≤ Real.log (7 : ℝ) := Real.log_nonneg (by norm_num)
  have he := intervalIntegral.integral_add_adjacent_intervals
    (squareTimeDensity_intervalIntegrable 0 (Real.log 7) hL)
    (squareTimeDensity_intervalIntegrable (Real.log 7) t ht)
  rw [square_prefix_integral_eq_readout (Real.log 7) hL,
    square_prefix_integral_eq_readout t (hL.trans ht)] at he
  change _ = _ at he
  unfold squareAnchoredPrimitive
  linarith only [he]

theorem squareAnchoredPrimitive_at_lower :
    squareAnchoredPrimitive (Real.log 7) = 0 := by
  simp [squareAnchoredPrimitive]

/-- The lower square inventory contains exactly the prime-two square four. -/
theorem squarePrimitiveReadout_at_log_seven :
    squarePrimitiveReadout (Real.log 7) =
      Real.log 2 - 2 * Real.log 2 / Real.sqrt 7 := by
  have he : Real.exp (Real.log (7 : ℝ) / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)
  have hf : ⌊Real.sqrt (7 : ℝ)⌋₊ = 2 := by
    apply (Nat.floor_eq_iff (Real.sqrt_nonneg _)).mpr
    norm_num only [Nat.cast_ofNat]
    constructor <;> nlinarith [Real.sqrt_nonneg (7 : ℝ)]
  have hp : primeLogPrefix (Real.log 7 / 2) = Real.log 2 / 2 := by
    norm_num [primeLogPrefix, weightedPrime, primeCoefficient, he, hf,
      Finset.sum_Ioc_succ_top, Nat.prime_two]
  have hI : (Finset.Ioc 0 2).filter Nat.Prime = {2} := by decide
  have htheta : Chebyshev.theta (Real.exp (Real.log 7 / 2)) = Real.log 2 := by
    norm_num [Chebyshev.theta, he, hf, hI]
  unfold squarePrimitiveReadout
  rw [hp, htheta, show -Real.log (7 : ℝ) / 2 = -(Real.log 7 / 2) by ring,
    Real.exp_neg, he]
  ring

theorem squareZeroDrift_eq_actual_error (t : ℝ) (ht : Real.log 7 ≤ t) :
    squareZeroDrift t =
      2 * primeLogError (t / 2) -
        2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) +
          Real.log 7 - squarePrimitiveReadout (Real.log 7) := by
  rw [squareZeroDrift, squareAnchoredPrimitive_eq_readout t ht]
  unfold squarePrimitiveReadout primeLogError
  rw [show -t / 2 = -(t / 2) by ring, Real.exp_neg]
  ring

theorem squareZeroDrift_uniform_bound (t : ℝ) (ht : Real.log 7 ≤ t) :
    |squareZeroDrift t| ≤
      2 * (Real.log 4 + 4) + 2 * Real.log 4 +
        |Real.log 7 - squarePrimitiveReadout (Real.log 7)| := by
  have ht0 : 0 ≤ t / 2 := by
    have := Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)
    linarith
  have hp := weightedPrime_logcutoff_fixed (t / 2) ht0
  have he : |primeLogError (t / 2)| ≤ Real.log 4 + 4 := by
    simpa only [primeLogError, primeLogPrefix, weightedPrime_eq_filtered, primeLogInventory]
      using hp
  have htheta : 0 ≤ Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) :=
    div_nonneg (Chebyshev.theta_nonneg _) (Real.exp_pos _).le
  have htheta2 : Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) ≤ Real.log 4 := by
    apply (div_le_iff₀ (Real.exp_pos _)).mpr
    simpa only [mul_comm] using
      Chebyshev.theta_le_log4_mul_x (Real.exp_pos (t / 2)).le
  rw [squareZeroDrift_eq_actual_error t ht]
  rw [show 2 * primeLogError (t / 2) -
    2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) + Real.log 7 -
    squarePrimitiveReadout (Real.log 7) =
      (2 * primeLogError (t / 2) -
        2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)) +
        (Real.log 7 - squarePrimitiveReadout (Real.log 7)) by ring]
  calc
    _ ≤ |2 * primeLogError (t / 2)| +
        |2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)| +
          |Real.log 7 - squarePrimitiveReadout (Real.log 7)| := by
      exact (abs_add_le _ _).trans (add_le_add (abs_sub _ _) (le_refl _))
    _ ≤ _ := by
      rw [abs_mul, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      have hh : |2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)| ≤
          2 * Real.log 4 := by
        rw [abs_of_nonneg (by positivity)]
        calc
          _ = 2 * (Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2)) := by ring
          _ ≤ _ := mul_le_mul_of_nonneg_left htheta2 (by norm_num)
      linarith

/-- The actual arithmetic error preserves its explicit prime-two lower correction. -/
theorem squareZeroDrift_eq_explicit_error (t : ℝ) (ht : Real.log 7 ≤ t) :
    squareZeroDrift t =
      2 * primeLogError (t / 2) -
        2 * Chebyshev.theta (Real.exp (t / 2)) / Real.exp (t / 2) +
          Real.log 7 - Real.log 2 + 2 * Real.log 2 / Real.sqrt 7 := by
  rw [squareZeroDrift_eq_actual_error t ht, squarePrimitiveReadout_at_log_seven]
  ring

end RH16SquarePrimitiveBalance
```
