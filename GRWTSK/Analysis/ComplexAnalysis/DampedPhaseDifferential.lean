/- Copyright (c) 2026 GRWTSK contributors. MIT.
Uses the existing exact cubic phase and selected coefficient-heat scalar.
Formalization assistance: OpenAI.

Differential laws for a coherent plus decaying complex coefficient. The
phase clock and residual-heat clock are independent. Real derivatives
are used even though the values are complex. No geometric Hodge generator,
arithmetic lattice preservation or Lean acceptance is asserted.
Unelaborated source proof scripts.
-/
import GRWTSK.Analysis.ComplexAnalysis.CubicWavePhase
import GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat
import Mathlib.Analysis.Complex.RealDeriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.ComplexAnalysis.DampedPhaseDifferential

open CubicWavePhase
open GRWTSK.Algebra.LinearAlgebra.ThreePhaseCoefficientHeat

/-- Same scalar oscillator as the existing raw waveform; real-angle derivative. -/
theorem rotation_hasDerivAt (theta : ℝ) :
    HasDerivAt rotation (Complex.I * rotation theta) theta := by
  have h := (Real.hasDerivAt_cos theta).ofReal_comp.add
    ((Real.hasDerivAt_sin theta).ofReal_comp.const_mul Complex.I)
  have he : Complex.I * rotation theta =
      ((-Real.sin theta : ℝ) : ℂ) + Complex.I * (Real.cos theta : ℂ) := by
    apply Complex.ext <;> simp [rotation, Complex.mul_re, Complex.mul_im]
  rw [he]
  exact h

/-- The existing real heat attenuation, explicitly embedded in C. -/
theorem decay_hasDerivAt (tau : ℝ) :
    HasDerivAt (fun t : ℝ => (decay t : ℂ)) (-3 * (decay tau : ℂ)) tau := by
  have h := (((hasDerivAt_id tau).const_mul (-3 : ℝ)).exp).ofReal_comp
  convert h using 1 <;> simp [decay, Complex.ofReal_mul] <;> ring

/-- A is the stationary corrected-frame coefficient; B is its residual part. -/
def profile (badge A B : ℂ) (theta tau : ℝ) : ℂ :=
  badge * rotation theta * (A + (decay tau : ℂ) * B)

/-- Only this part is damped by changing the heat clock. -/
def residual (badge B : ℂ) (theta tau : ℝ) : ℂ :=
  badge * rotation theta * ((decay tau : ℂ) * B)

/-- Ordinary product-real input and ordinary complex output topology. -/
theorem profile_continuous (badge A B : ℂ) :
    Continuous (fun p : ℝ × ℝ => profile badge A B p.1 p.2) := by
  unfold profile rotation decay
  fun_prop

/-- Two arbitrary differentiable clocks, including negative or stationary speeds.
The initial coefficient data are fixed; there is no omitted derivative of A or B. -/
theorem profile_hasDerivAt (badge A B : ℂ) (theta tau : ℝ → ℝ)
    (dtheta dtau t : ℝ) (htheta : HasDerivAt theta dtheta t)
    (htau : HasDerivAt tau dtau t) :
    HasDerivAt (fun s => profile badge A B (theta s) (tau s))
      (Complex.I * (dtheta : ℂ) * profile badge A B (theta t) (tau t) -
        3 * (dtau : ℂ) * residual badge B (theta t) (tau t)) t := by
  have hr := (rotation_hasDerivAt (theta t)).scomp t htheta
  have hd := (decay_hasDerivAt (tau t)).scomp t htau
  have h := (hr.const_mul badge).mul ((hasDerivAt_const t A).add (hd.mul_const B))
  convert h using 1 <;>
    simp only [profile, residual, Function.comp_apply, Complex.real_smul, zero_add] <;> ring

/-- Phase differentiation rotates the entire coefficient, including its coherent part. -/
theorem profile_angle_derivative (badge A B : ℂ) (theta tau : ℝ) :
    HasDerivAt (fun s => profile badge A B s tau)
      (Complex.I * profile badge A B theta tau) theta := by
  simpa using profile_hasDerivAt badge A B id (fun _ => tau) 1 0 theta
    (hasDerivAt_id theta) (hasDerivAt_const theta tau)

/-- Heat differentiation does not spuriously damp A. -/
theorem profile_heat_derivative (badge A B : ℂ) (theta tau : ℝ) :
    HasDerivAt (fun s => profile badge A B theta s)
      (-3 * residual badge B theta tau) tau := by
  simpa using profile_hasDerivAt badge A B (fun _ => theta) id 0 1 tau
    (hasDerivAt_const tau theta) (hasDerivAt_id tau)

/-- A pure mismatch has no coherent part and satisfies a homogeneous damped ODE. -/
theorem residual_hasDerivAt (badge B : ℂ) (theta tau : ℝ → ℝ)
    (dtheta dtau t : ℝ) (htheta : HasDerivAt theta dtheta t)
    (htau : HasDerivAt tau dtau t) :
    HasDerivAt (fun s => residual badge B (theta s) (tau s))
      ((Complex.I * (dtheta : ℂ) - 3 * (dtau : ℂ)) *
        residual badge B (theta t) (tau t)) t := by
  have h := profile_hasDerivAt badge 0 B theta tau dtheta dtau t htheta htau
  convert h using 1 <;> simp only [profile, residual, zero_add] <;> ring

/-- The derivative of squared mismatch energy has rate SIX, not three.
D is fixed input energy. No nonnegative-time or contraction claim is implicit. -/
theorem squared_decay_hasDerivAt (D : ℝ) (tau : ℝ → ℝ) (dtau t : ℝ)
    (htau : HasDerivAt tau dtau t) :
    HasDerivAt (fun s => Real.exp (-6 * tau s) * D)
      (-6 * dtau * (Real.exp (-6 * tau t) * D)) t := by
  have h := ((htau.const_mul (-6 : ℝ)).exp).mul_const D
  convert h using 1 <;> ring

end GRWTSK.Analysis.ComplexAnalysis.DampedPhaseDifferential
