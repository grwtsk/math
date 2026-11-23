/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.Calculus.Deriv.Add
import Mathlib.Analysis.Calculus.Deriv.Pow

/-! # Kernel primitive and finite harmonic estimates for modular scattering -/
namespace GRWTSK.NumberTheory.XiCuspScatteringImpulse
open Finset

/-- In the exponential variable w, the resolvent correction has primitive
sqrt(w²−1). This fixes the full smooth part of every delayed front. -/
theorem resolvent_primitive {w : ℝ} (hw : 1 < w) :
    HasDerivAt (fun u : ℝ => Real.sqrt (u^2-1))
      (w / Real.sqrt (w^2-1)) w := by
  have hp : 0 < w^2-1 := by nlinarith
  have h : HasDerivAt (fun u : ℝ => u^2-1) (2*w) w := by
    apply (hasDerivAt_sub_const_iff 1).2
    simpa using (hasDerivAt_pow 2 w)
  convert HasDerivAt.sqrt h hp.ne' using 1
  field_simp


/-- Sum by parts for the nonconstant Fourier phases in the squared impulse.
The boundary term is kept at every cut-off, including the empty cut-off. -/
theorem finite_harmonic_parts (f w : ℕ → ℂ) (hf : f 0 = 0) (N : ℕ) :
    (∑ j ∈ range N, (f (j+1)-f j)*w j) =
    f N*w N + ∑ j ∈ range N, f (j+1)*(w j-w (j+1)) := by
  induction N with
  | zero => simp [hf]
  | succ n ih => rw [sum_range_succ,sum_range_succ,ih]; ring

/-- The exact one-sided primitive of the archimedean multiplier, in its
algebraic variable; this identity keeps the constant and sign at a front. -/
theorem front_shape {w r : ℝ} (hw : w ≠ 0) (hr : r ≠ 0) (h : r^2 = w^2-1) :
    2/(r/w) - 4*(r/w) = 2*(2-w^2)/(w*r) := by
  field_simp
  nlinarith

end GRWTSK.NumberTheory.XiCuspScatteringImpulse
