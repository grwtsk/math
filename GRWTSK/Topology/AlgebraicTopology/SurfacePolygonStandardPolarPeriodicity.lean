/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Parent PR #986 exact head 9df9bac939a89b407f614494841d668f4fb78095.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarRadiusFibers
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic

/-!
# Integer-periodic angular coordinates: an isolated source candidate

The real-angle polar formula has period one. This is the missing
well-definedness supplier for descent from real angles to the genuine
UnitAddCircle. The periodicity lemma below is a Lean proof candidate;
its pinned-Mathlib elaboration has NOT been run.

This file does not introduce an arbitrary representative selector for
UnitAddCircle and does not assert a descended circle map without the
actual quotient API and continuity proof.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriodicity

open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardConeDisk

/-- Multiplying a real-angle polar point by a unit-period shift does not
change its complex value. -/
theorem realAnglePolar_add_one (θ r : ℝ) :
    realAnglePolar (θ + 1) r = realAnglePolar θ r := by
  unfold realAnglePolar
  have hphase :
      ((2 * Real.pi * (θ + 1) : ℝ) : ℂ) * Complex.I =
        ((2 * Real.pi * θ : ℝ) : ℂ) * Complex.I +
          (2 * Real.pi : ℂ) * Complex.I := by
    push_cast
    ring
  rw [hphase, Complex.exp_add]
  have hperiod : Complex.exp ((2 * Real.pi : ℂ) * Complex.I) = 1 := by
    simpa only [mul_comm] using Complex.exp_two_pi_mul_I
  rw [hperiod, mul_one]

/-- A period-one identity gives the corresponding period for every
natural number, without choosing a representative of the quotient. -/
theorem realAnglePolar_add_nat (θ r : ℝ) (n : ℕ) :
    realAnglePolar (θ + n) r = realAnglePolar θ r := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Nat.cast_succ]
      have h : θ + (n + 1 : ℝ) = (θ + n) + 1 := by ring
      rw [h, realAnglePolar_add_one, ih]

/-- The same periodicity extends to all integral winding numbers. -/
theorem realAnglePolar_add_int (θ r : ℝ) (n : ℤ) :
    realAnglePolar (θ + n) r = realAnglePolar θ r := by
  cases n with
  | ofNat n =>
      simpa using realAnglePolar_add_nat θ r n
  | negSucc n =>
      have h := realAnglePolar_add_nat
        (θ - (n + 1 : ℕ)) r (n + 1)
      have hadd : θ - (n + 1 : ℝ) + (n + 1 : ℝ) = θ := by ring
      rw [hadd] at h
      simpa using h.symm

/-
Next obligations:
* identify the additive-circle quotient's exact integer-translation
  relation with realAnglePolar_add_int;
* descend a continuous map UnitAddCircle × unitInterval → closed disk;
* prove angular uniqueness at positive radius, and then cone fibers.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPeriodicity
