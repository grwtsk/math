/- Copyright (c) 2026 grwtsk contributors. MIT.
The actual special-unitary carrier retains upstream attribution and licenses. -/
import GRWTSK.TopologicalGroupsLieGroups.CompactGroups.SU2DiagonalTrace
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

/-!
# An actual diagonal SU2 path with differentiated trace and Wilson penalty

The entry uses cos(t)+i sin(t), avoiding the square-root parametrization's
endpoint singularities. The curve is not asserted to be unit speed in any
unspecified metric. Matrix-word derivatives and a full gauge Hessian remain
separate. SOURCE_PROOF_CANDIDATE; all four qualification facets NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Geometry.GaugeTheory.SU2TrigonometricPath
open GRWTSK.Geometry.GaugeTheory.SU2Wilson
open GRWTSK.Geometry.GaugeTheory.SU2DiagonalTrace

def entry (t : ℝ) : ℂ := ⟨Real.cos t,Real.sin t⟩

theorem entry_normSq (t : ℝ) : Complex.normSq (entry t) = 1 := by
  rw [Complex.normSq_apply]
  change Real.cos t*Real.cos t+Real.sin t*Real.sin t = 1
  nlinarith [Real.sin_sq_add_cos_sq t]

def path (t : ℝ) : SU2 := diagonalSU2 (entry t) (entry_normSq t)

theorem trace_eq (t : ℝ) : (Matrix.trace (matrix (path t))).re = 2*Real.cos t := by
  exact diagonalSU2_trace (entry t) (entry_normSq t)

theorem penalty_eq (t : ℝ) : penalty (path t) = 1-Real.cos t := by
  unfold penalty
  rw [trace_eq]
  ring

theorem trace_hasDerivAt (t : ℝ) :
    HasDerivAt (fun s => (Matrix.trace (matrix (path s))).re) (-2*Real.sin t) t := by
  have heq : (fun s => (Matrix.trace (matrix (path s))).re) =
      (fun s => 2*Real.cos s) := funext trace_eq
  rw [heq]
  convert (Real.hasDerivAt_cos t).const_mul 2 using 1 <;> ring

theorem penalty_hasDerivAt (t : ℝ) :
    HasDerivAt (fun s => penalty (path s)) (Real.sin t) t := by
  have heq : (fun s => penalty (path s)) = (fun s => 1-Real.cos s) := funext penalty_eq
  rw [heq]
  convert (hasDerivAt_const t (1 : ℝ)).sub (Real.hasDerivAt_cos t) using 1 <;> ring

theorem penalty_deriv (t : ℝ) : deriv (fun s => penalty (path s)) t = Real.sin t :=
  (penalty_hasDerivAt t).deriv

theorem penalty_second_hasDerivAt (t : ℝ) :
    HasDerivAt (deriv (fun s => penalty (path s))) (Real.cos t) t := by
  have heq : deriv (fun s => penalty (path s)) = Real.sin := funext penalty_deriv
  rw [heq]
  exact Real.hasDerivAt_sin t

theorem trace_deriv (t : ℝ) :
    deriv (fun s => (Matrix.trace (matrix (path s))).re) t = -2*Real.sin t :=
  (trace_hasDerivAt t).deriv

theorem trace_second_hasDerivAt (t : ℝ) :
    HasDerivAt (deriv (fun s => (Matrix.trace (matrix (path s))).re)) (-2*Real.cos t) t := by
  have heq : deriv (fun s => (Matrix.trace (matrix (path s))).re) =
      (fun s => -2*Real.sin s) := funext trace_deriv
  rw [heq]
  exact (Real.hasDerivAt_sin t).const_mul (-2)

end GRWTSK.Geometry.GaugeTheory.SU2TrigonometricPath
