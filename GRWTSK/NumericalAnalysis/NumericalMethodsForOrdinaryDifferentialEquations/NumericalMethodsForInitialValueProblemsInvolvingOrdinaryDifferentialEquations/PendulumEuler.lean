import GRWTSK.OrdinaryDifferentialEquations.QualitativeTheoryForOrdinaryDifferentialEquations.NonlinearOscillationsAndCoupledOscillatorsForOrdinaryDifferentialEquations.PendulumEnergy
import Mathlib.Analysis.Calculus.Deriv.Prod
import Mathlib.Analysis.Calculus.Deriv.Slope
import Mathlib.Logic.Function.Iterate

/-!
# Exact-real explicit Euler substeps of the source pendulum update

Local attribution: grwtsk contributors.
Grant Sanderson, Differential equations, studying the unsolvable (2019-03-31),
https://www.3blue1brown.com/lessons/differential-equations/ .
Current 3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2019/diffyq/part1/pendulum.py184..198; CC BY-NC-SA4.0/public bylines retained.
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

Both increments use the old theta and omega, as in the literal source loop.
This is an exact-real model, not Python floating-point refinement. Finite frame
iteration and step-size consistency do not assert global numerical convergence.
The finite energy defect is distinct from the continuous energy derivative.
-/
namespace GRWTSK.NumericalAnalysis.PendulumEuler

open Filter
open scoped Topology
open GRWTSK.ODE.PendulumEnergy

noncomputable def eulerStep (μ g L h : ℝ) (p : ℝ × ℝ) : ℝ × ℝ :=
  (p.1+h*p.2,p.2+h*acceleration μ g L p.1 p.2)
noncomputable def eulerOrbit (μ g L h : ℝ) (p : ℝ × ℝ) (n : ℕ) : ℝ × ℝ :=
  (eulerStep μ g L h)^[n] p
noncomputable def eulerFrame (μ g L dt : ℝ) (N : ℕ) (p : ℝ × ℝ) : ℝ × ℝ :=
  eulerOrbit μ g L (dt/(N : ℝ)) p N
noncomputable def stepEnergy (μ g L θ ω h : ℝ) : ℝ :=
  energy g L (eulerStep μ g L h (θ,ω)).1 (eulerStep μ g L h (θ,ω)).2

theorem step_increments (μ g L h θ ω : ℝ) :
    (eulerStep μ g L h (θ,ω)).1-θ = h*ω ∧
    (eulerStep μ g L h (θ,ω)).2-ω = h*acceleration μ g L θ ω := by
  simp [eulerStep]

theorem zero_step (μ g L : ℝ) (p : ℝ × ℝ) : eulerStep μ g L 0 p = p := by
  simp [eulerStep]

theorem orbit_successor (μ g L h : ℝ) (p : ℝ × ℝ) (n : ℕ) :
    eulerOrbit μ g L h p (n+1) = eulerStep μ g L h (eulerOrbit μ g L h p n) := by
  exact Function.iterate_succ_apply' _ _ _

/-- A zero-iteration frame is the identity, not a positive-substep simulation. -/
theorem zero_frame (μ g L dt : ℝ) (p : ℝ × ℝ) : eulerFrame μ g L dt 0 p = p := by
  simp [eulerFrame,eulerOrbit]

theorem one_frame (μ g L dt : ℝ) (p : ℝ × ℝ) :
    eulerFrame μ g L dt 1 p = eulerStep μ g L dt p := by
  simp [eulerFrame,eulerOrbit]

/-- Positive substep count supplies the actual nonzero natural cast. -/
theorem frame_uniform_width (dt : ℝ) (N : ℕ) (hN : 0 < N) :
    (N : ℝ)*(dt/(N : ℝ)) = dt := by
  have hn : (N : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hN)
  field_simp [hn]
  <;> ring

theorem step_equilibria (μ g L h : ℝ) :
    eulerStep μ g L h (0,0) = (0,0) ∧
    eulerStep μ g L h (Real.pi,0) = (Real.pi,0) := by
  simp [eulerStep,acceleration]

theorem frame_equilibria (μ g L dt : ℝ) (N : ℕ) :
    eulerFrame μ g L dt N (0,0) = (0,0) ∧
    eulerFrame μ g L dt N (Real.pi,0) = (Real.pi,0) := by
  have hfixed (h : ℝ) (n : ℕ) :
      eulerOrbit μ g L h (0,0) n = (0,0) ∧
      eulerOrbit μ g L h (Real.pi,0) n = (Real.pi,0) := by
    induction n with
    | zero => simp [eulerOrbit]
    | succ n ih =>
      rw [orbit_successor,orbit_successor,ih.1,ih.2]
      exact step_equilibria μ g L h
  exact hfixed (dt/(N : ℝ)) N

/-- The step-size derivative at zero is the actual displayed phase vector. -/
theorem step_size_derivative (μ g L θ ω : ℝ) :
    HasDerivAt (fun h => eulerStep μ g L h (θ,ω))
      (ω,acceleration μ g L θ ω) 0 := by
  have hθ := ((hasDerivAt_id (0 : ℝ)).mul_const ω).const_add θ
  have hω := ((hasDerivAt_id (0 : ℝ)).mul_const (acceleration μ g L θ ω)).const_add ω
  simpa [eulerStep] using hθ.prodMk hω

theorem step_energy_derivative (μ g L θ ω : ℝ) :
    HasDerivAt (stepEnergy μ g L θ ω) (-μ*ω^2) 0 := by
  have hθ : HasDerivAt (fun h : ℝ => θ+h*ω) ω 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).mul_const ω).const_add θ
  have hω : HasDerivAt (fun h : ℝ => ω+h*acceleration μ g L θ ω)
      (acceleration μ g L θ ω) 0 := by
    simpa using ((hasDerivAt_id (0 : ℝ)).mul_const (acceleration μ g L θ ω)).const_add ω
  have hd := energy_chain_derivative g L 0 ω (acceleration μ g L θ ω)
    (fun h => θ+h*ω) (fun h => ω+h*acceleration μ g L θ ω) hθ hω
  convert hd using 1 <;> simp [stepEnergy,eulerStep,acceleration] <;> ring

theorem step_energy_quotient_limit (μ g L θ ω : ℝ) :
    Tendsto (fun h => (stepEnergy μ g L θ ω h-energy g L θ ω)/h)
      (𝓝[≠] (0 : ℝ)) (𝓝 (-μ*ω^2)) := by
  simpa [stepEnergy,eulerStep,div_eq_mul_inv,smul_eq_mul,mul_comm] using
    (step_energy_derivative μ g L θ ω).tendsto_slope_zero

/-- Exact finite-step defect, with no limiting substitution for h. -/
theorem step_energy_defect (μ g L θ ω h : ℝ) :
    stepEnergy μ g L θ ω h-energy g L θ ω =
      -μ*ω^2*h+h^2*(acceleration μ g L θ ω)^2/2+
      (g/L)*(Real.cos θ-Real.cos (θ+h*ω)-h*ω*Real.sin θ) := by
  unfold stepEnergy eulerStep energy acceleration
  ring

theorem undamped_zero_angle_gain (g L h : ℝ) :
    stepEnergy 0 g L 0 1 h-energy g L 0 1 = (g/L)*(1-Real.cos h) := by
  simp [stepEnergy,eulerStep,energy,acceleration]
  <;> ring

theorem undamped_zero_angle_nonnegative_gain (g L h : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    0 ≤ stepEnergy 0 g L 0 1 h-energy g L 0 1 := by
  rw [undamped_zero_angle_gain]
  exact mul_nonneg (div_nonneg hg hL.le) (sub_nonneg.mpr (Real.cos_le_one h))

/-- A local model boundary, not a quoted source numerical parameter. -/
theorem finite_step_not_energy_conserving (g L : ℝ) (hg : 0 < g) (hL : 0 < L) :
    stepEnergy 0 g L 0 1 Real.pi-energy g L 0 1 = 2*(g/L) ∧
    energy g L 0 1 < stepEnergy 0 g L 0 1 Real.pi := by
  have he : stepEnergy 0 g L 0 1 Real.pi-energy g L 0 1 = 2*(g/L) := by
    rw [undamped_zero_angle_gain,Real.cos_pi]
    ring
  refine ⟨he,?_⟩
  have hp := div_pos hg hL
  linarith

end GRWTSK.NumericalAnalysis.PendulumEuler
