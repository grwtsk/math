/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.BinaryGateDwellTime
import GRWTSK.NumberTheory.OrderedPrimeGroupAddress
import GRWTSK.OperatorTheory.OrderedHeatSchedule

/-!
# Heat on an ordered window of 95 primes

Stage `j` uses the gate, calibration, and modal rates at the actual prime
with index `95 * window + j`. Every stage acts on one common vector, with a
shared spectral chart. The cumulative operator recovers all input modes
from their full exact output. Local forward error and inverse amplification
are bounded separately, using the same ordered prime stages.
-/

set_option autoImplicit false

noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.PrimeWindowHeatSchedule

open BitMatrix.Carrier.SequentialPrimeSpecification
open GRWTSK.BinaryGateDwellTime (Gate)
open GRWTSK.NumberTheory.OrderedPrimeGroupAddress (OrderedPrimeAxes PrimeIndex)
open GRWTSK.OperatorTheory
open GRWTSK.Algebra.LinearAlgebra.FiniteSpectralHeat (Model spectralHeat)

/-- Cutting one gate interval gives chronological composition of its heat maps. -/
theorem heat_calibrated_split {ι E : Type*} [Fintype ι] [AddCommGroup E] [Module ℝ E]
    (model : Model ι E) (gate : Gate) (κ a b c : ℝ) :
    model.heat (gate.calibrated κ a c) =
      (model.heat (gate.calibrated κ b c)).comp (model.heat (gate.calibrated κ a b)) := by
  rw [← gate.calibrated_add κ a b c, add_comm, model.heat_add]

/-- The canonical prime at an index measured from the start of a window. -/
def primeAt (window stage : ℕ) : PrimeIndex :=
  ⟨canonicalPrimeEnumeration.value (95 * window + stage),
    canonicalPrimeEnumeration_prime (95 * window + stage)⟩

theorem primeAt_value (window stage : ℕ) :
    (primeAt window stage).val = Nat.nth Nat.Prime (95 * window + stage) :=
  canonicalPrimeEnumeration_value _

theorem primeAt_strictMono (window : ℕ) : StrictMono fun j => (primeAt window j).val := by
  intro j k hjk
  exact canonicalPrimeEnumeration_strictlyIncreasing (Nat.add_lt_add_left hjk _)

/-- The exact ordered 95-position carrier of this window. -/
def windowAxes (window : ℕ) : OrderedPrimeAxes where
  length := 95
  primeAt j := primeAt window j.val

theorem windowAxes_primeAt_injective (window : ℕ) :
    Function.Injective (windowAxes window).primeAt := by
  intro j k h
  exact Fin.ext ((primeAt_strictMono window).injective (congrArg Subtype.val h))

/-- Each gate and calibration is attached to a prime, with a common observation horizon. -/
structure Schedule where
  window : ℕ
  gate : PrimeIndex → Gate
  calibration : PrimeIndex → ℝ
  calibration_nonneg : ∀ p, 0 ≤ calibration p
  horizon : ℝ
  horizon_nonneg : 0 ≤ horizon

namespace Schedule

/-- Calibrated dwell for the gate at the canonical prime of a stage. -/
def time (schedule : Schedule) (j : ℕ) : ℝ :=
  let p := primeAt schedule.window j
  (schedule.gate p).calibrated (schedule.calibration p) 0 schedule.horizon

theorem time_window_prime (schedule : Schedule) (j : Fin (windowAxes schedule.window).length) :
    schedule.time j.val = ((schedule.gate ((windowAxes schedule.window).primeAt j)).calibrated
      (schedule.calibration ((windowAxes schedule.window).primeAt j)) 0 schedule.horizon) :=
  rfl

theorem time_bounds (schedule : Schedule) (j : ℕ) :
    0 ≤ schedule.time j ∧
      schedule.time j ≤ schedule.calibration (primeAt schedule.window j) * schedule.horizon := by
  simpa only [time, sub_zero] using
    (schedule.gate (primeAt schedule.window j)).calibrated_bounds
      (schedule.calibration_nonneg _) schedule.horizon_nonneg

theorem time_error_le (schedule : Schedule) (alternate : PrimeIndex → Gate) (j : ℕ) :
    let p := primeAt schedule.window j
    |schedule.time j - ({ schedule with gate := alternate } : Schedule).time j| ≤
      schedule.calibration p *
        ((schedule.gate p).disagreement (alternate p)).dwell 0 schedule.horizon := by
  simpa only [time, abs_of_nonneg (schedule.calibration_nonneg _)] using
    (schedule.gate (primeAt schedule.window j)).abs_calibrated_sub_le
      (alternate (primeAt schedule.window j)) (schedule.calibration (primeAt schedule.window j))
      schedule.horizon_nonneg

variable {ι : Type*}

/-- The modal exposure accrued over the 95 prime gates. -/
def exposure (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ) : ι → ℝ :=
  OrderedHeatSchedule.exposure schedule.time
    (fun j => spectrum (primeAt schedule.window j)) 95

theorem exposure_le (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ)
    (bound : ℝ) (nonnegative : ∀ p i, 0 ≤ spectrum p i)
    (bounded : ∀ p i, spectrum p i ≤ bound) (i : ι) :
    schedule.exposure spectrum i ≤
      bound * ∑ j ∈ Finset.range 95,
        schedule.calibration (primeAt schedule.window j) * schedule.horizon := by
  rw [exposure, OrderedHeatSchedule.exposure, Finset.mul_sum]
  apply Finset.sum_le_sum
  intro j _
  let p := primeAt schedule.window j
  calc
    schedule.time j * spectrum p i ≤ (schedule.calibration p * schedule.horizon) * bound :=
      mul_le_mul (schedule.time_bounds j).2 (bounded p i) (nonnegative p i)
        (mul_nonneg (schedule.calibration_nonneg p) schedule.horizon_nonneg)
    _ = _ := mul_comm _ _

/-- One prime stage acts on the complete common spectral state. -/
def step (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ) (j : ℕ)
    (state : ι → ℝ) : ι → ℝ :=
  spectralHeat (spectrum (primeAt schedule.window j)) (schedule.time j) state

/-- The ordered composition of the 95 stages of the window. -/
def evolve (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ) (initial : ι → ℝ) : ι → ℝ :=
  OrderedHeatSchedule.run (schedule.step spectrum) initial 95

theorem evolve_eq (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ) (initial : ι → ℝ) :
    schedule.evolve spectrum initial = spectralHeat (schedule.exposure spectrum) 1 initial :=
  OrderedHeatSchedule.run_spectral_eq schedule.time
    (fun j => spectrum (primeAt schedule.window j)) initial 95

theorem evolve_same_generator (schedule : Schedule) (rates initial : ι → ℝ) :
    schedule.evolve (fun _ => rates) initial =
      spectralHeat rates (∑ j ∈ Finset.range 95, schedule.time j) initial :=
  OrderedHeatSchedule.run_same_generator_eq schedule.time rates initial 95

theorem recover_evolve (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ) (initial : ι → ℝ) :
    spectralHeat (schedule.exposure spectrum) (-1) (schedule.evolve spectrum initial) = initial :=
  OrderedHeatSchedule.recover_run schedule.time
    (fun j => spectrum (primeAt schedule.window j)) initial 95

theorem recover_encoded_source {Source : Type*} (schedule : Schedule)
    (spectrum : PrimeIndex → ι → ℝ) (encode : Source → ι → ℝ) (decode : (ι → ℝ) → Source)
    (roundTrip : Function.LeftInverse decode encode) (source : Source) :
    decode (spectralHeat (schedule.exposure spectrum) (-1)
      (schedule.evolve spectrum (encode source))) = source := by
  rw [schedule.recover_evolve]
  exact roundTrip source

variable [Fintype ι]

theorem evolve_error_le (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ)
    (nonnegative : ∀ p i, 0 ≤ spectrum p i) (initial : ι → ℝ)
    (observed : ℕ → ι → ℝ) (error : ℕ → ℝ)
    (localError : ∀ j < 95, dist (observed (j + 1)) (schedule.step spectrum j (observed j)) ≤
      error j) :
    dist (observed 95) (schedule.evolve spectrum initial) ≤
      dist (observed 0) initial + ∑ j ∈ Finset.range 95, error j :=
  OrderedHeatSchedule.run_error_le (schedule.step spectrum) initial observed error 95
    (fun j _ => OrderedHeatSchedule.spectral_stage_dist_le _
      (nonnegative (primeAt schedule.window j)) _ (schedule.time_bounds j).1) localError

theorem recover_error_le (schedule : Schedule) (spectrum : PrimeIndex → ι → ℝ)
    (bound : ℝ) (nonnegative : ∀ p i, 0 ≤ spectrum p i) (bounded : ∀ p i, spectrum p i ≤ bound)
    (initial : ι → ℝ) (observed : ℕ → ι → ℝ) (error : ℕ → ℝ)
    (localError : ∀ j < 95, dist (observed (j + 1)) (schedule.step spectrum j (observed j)) ≤
      error j) :
    dist (spectralHeat (schedule.exposure spectrum) (-1) (observed 95)) initial ≤
      Real.exp (bound * ∑ j ∈ Finset.range 95,
        schedule.calibration (primeAt schedule.window j) * schedule.horizon) *
        (dist (observed 0) initial + ∑ j ∈ Finset.range 95, error j) := by
  have inverse := OrderedHeatSchedule.recover_dist_le (schedule.exposure spectrum) _
    (schedule.exposure_le spectrum bound nonnegative bounded)
    (observed 95) (schedule.evolve spectrum initial)
  rw [schedule.recover_evolve] at inverse
  exact inverse.trans (mul_le_mul_of_nonneg_left
    (schedule.evolve_error_le spectrum nonnegative initial observed error localError)
    (Real.exp_nonneg _))

end Schedule

end GRWTSK.NumberTheory.PrimeWindowHeatSchedule
