/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
SPDX-License-Identifier: MIT
-/
import GRWTSK.NumericalAnalysis.ProjectedFourier
import GRWTSK.NumericalAnalysis.RotorFourierObservation
import Mathlib.RingTheory.RootsOfUnity.Complex

/-!
# Exact correspondence with the 64-sample rotor projection

The correspondence applies to the complex signals accepted by the existing
rotor transform. The second, modulated evaluation provides the missing rows.
-/

namespace GRWTSK.NumericalAnalysis.ProjectedFourier

open GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath

/-- The negative phase generator in the rotor's 64-sample convention. -/
noncomputable def rotorPhaseGenerator : ℂ :=
  Complex.exp ((-Complex.I) * (↑(2 * Real.pi / 64) : ℂ))

theorem isPrimitiveRoot_rotorPhaseGenerator : IsPrimitiveRoot rotorPhaseGenerator 64 := by
  have phase : (-Complex.I) * (↑(2 * Real.pi / 64) : ℂ) =
      -(2 * (Real.pi : ℂ) * Complex.I / 64) := by
    push_cast
    ring
  rw [rotorPhaseGenerator, phase, Complex.exp_neg]
  exact (Complex.isPrimitiveRoot_exp 64 (by decide)).inv

theorem rotorPhaseGenerator_half_power : rotorPhaseGenerator ^ 32 = -1 := by
  rw [rotorPhaseGenerator, ← Complex.exp_nat_mul]
  have phase : ((32 : ℕ) : ℂ) * ((-Complex.I) * (↑(2 * Real.pi / 64) : ℂ)) =
      -((Real.pi : ℂ) * Complex.I) := by
    push_cast
    norm_num
    ring
  rw [phase, Complex.exp_neg_pi_mul_I]

theorem fourierPhase_eq_rotorPhaseGenerator_pow (k : FrequencyIndex) (j : SampleIndex) :
    fourierPhase k j = rotorPhaseGenerator ^ (k.val * j.val) := by
  rw [fourierPhase, rotorPhaseGenerator, ← Complex.exp_nat_mul]
  congr 1
  push_cast
  ring

/-- The rotor observable is exactly the first 33 rows of the negative-phase,
normalized 64-point transform. -/
theorem rotorDFT_eq_halfTransform (samples : SampleIndex → ℂ) :
    rotorDFT samples = halfTransform (m := 32) rotorPhaseGenerator samples := by
  funext k
  unfold rotorDFT halfTransform inverseRow
  simp only [fourierPhase_eq_rotorPhaseGenerator_pow]
  norm_num

/-- Recover all 64 Fourier rows using two calls to the exact rotor observable. -/
theorem rotorDFT_reassemble_eq_fullTransform (samples : SampleIndex → ℂ) :
    reassembleHalf (m := 32) (rotorDFT samples)
      (rotorDFT (modulate rotorPhaseGenerator samples 32)) =
        fullTransform rotorPhaseGenerator samples := by
  simp only [rotorDFT_eq_halfTransform]
  exact reassembleHalf_eq_fullTransform (m := 32) rotorPhaseGenerator samples

/-- For the actual order 64, the second call needs only alternating signs. -/
theorem rotorDFT_reassemble_alternating_eq_fullTransform (samples : SampleIndex → ℂ) :
    reassembleHalf (m := 32) (rotorDFT samples)
      (rotorDFT (fun j => samples j * (-1 : ℂ) ^ j.val)) =
        fullTransform rotorPhaseGenerator samples := by
  have modulation :
      modulate rotorPhaseGenerator samples 32 = fun j => samples j * (-1 : ℂ) ^ j.val :=
    modulate_half_eq_alternating (m := 32) rotorPhaseGenerator rotorPhaseGenerator_half_power samples
  rw [← modulation]
  exact rotorDFT_reassemble_eq_fullTransform samples

end GRWTSK.NumericalAnalysis.ProjectedFourier
