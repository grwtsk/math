import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Tactic

/-!
# Energy of the displayed damped pendulum equation

Local attribution: grwtsk contributors.
Grant Sanderson, Differential equations, studying the unsolvable (2019-03-31),
https://www.3blue1brown.com/lessons/differential-equations/ .
Current animation 3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2019/diffyq/part1/shared_constructs.py get_ode and pendulum.py184..198.
Source license CC BY-NC-SA4.0/public attribution retained.
All bodies: NOT_RUN_USER_DEFERRED.

The displayed ODE and numerical update use g/L. The separate current helper
pendulum_vector_field_func uses sqrt(g/L); it is not silently identified here.
These are exact-real energy identities along supplied actual derivatives, not
arbitrary solution existence, numerical refinement, or physical model derivation.
-/
namespace GRWTSK.ODE.PendulumEnergy

noncomputable def acceleration (μ g L θ ω : ℝ) : ℝ := -μ*ω-(g/L)*Real.sin θ
noncomputable def energy (g L θ ω : ℝ) : ℝ := ω^2/2+(g/L)*(1-Real.cos θ)

/-- The actual energy chain derivative before imposing the acceleration equation. -/
theorem energy_chain_derivative (g L t θ' ω' : ℝ) (θ ω : ℝ → ℝ)
    (hθ : HasDerivAt θ θ' t) (hω : HasDerivAt ω ω' t) :
    HasDerivAt (fun s => energy g L (θ s) (ω s))
      (ω t*ω'+(g/L)*Real.sin (θ t)*θ') t := by
  have hk := (hω.pow 2).div_const 2
  have hp := ((Real.hasDerivAt_cos (θ t)).comp t hθ).const_sub 1
  have hd := hk.add (hp.const_mul (g/L))
  convert hd using 1 <;> simp [energy] <;> ring

theorem energy_derivative (μ g L t : ℝ) (θ ω : ℝ → ℝ)
    (hθ : HasDerivAt θ (ω t) t)
    (hω : HasDerivAt ω (acceleration μ g L (θ t) (ω t)) t) :
    HasDerivAt (fun s => energy g L (θ s) (ω s)) (-μ*(ω t)^2) t := by
  have hd := energy_chain_derivative g L t (ω t)
    (acceleration μ g L (θ t) (ω t)) θ ω hθ hω
  convert hd using 1 <;> simp [acceleration] <;> ring

theorem energy_rate_nonpositive (μ g L t : ℝ) (θ ω : ℝ → ℝ) (hμ : 0 ≤ μ)
    (hθ : HasDerivAt θ (ω t) t)
    (hω : HasDerivAt ω (acceleration μ g L (θ t) (ω t)) t) :
    deriv (fun s => energy g L (θ s) (ω s)) t ≤ 0 := by
  rw [(energy_derivative μ g L t θ ω hθ hω).deriv]
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hμ) (sq_nonneg _)

/-- All-time derivative premises precede the global mean-value conclusion. -/
theorem energy_antitone (μ g L : ℝ) (θ ω : ℝ → ℝ) (hμ : 0 ≤ μ)
    (hθ : ∀ t, HasDerivAt θ (ω t) t)
    (hω : ∀ t, HasDerivAt ω (acceleration μ g L (θ t) (ω t)) t) :
    Antitone (fun t => energy g L (θ t) (ω t)) := by
  apply antitone_of_hasDerivAt_nonpos
    (fun t => energy_derivative μ g L t θ ω (hθ t) (hω t))
  intro t
  exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hμ) (sq_nonneg _)

theorem undamped_energy_derivative (g L t : ℝ) (θ ω : ℝ → ℝ)
    (hθ : HasDerivAt θ (ω t) t)
    (hω : HasDerivAt ω (acceleration 0 g L (θ t) (ω t)) t) :
    HasDerivAt (fun s => energy g L (θ s) (ω s)) 0 t := by
  simpa using energy_derivative 0 g L t θ ω hθ hω

theorem kinetic_le_energy (g L θ ω : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    ω^2/2 ≤ energy g L θ ω := by
  have hp : 0 ≤ (g/L)*(1-Real.cos θ) :=
    mul_nonneg (div_nonneg hg hL.le) (sub_nonneg.mpr (Real.cos_le_one θ))
  unfold energy
  linarith

theorem energy_nonnegative (g L θ ω : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    0 ≤ energy g L θ ω := by
  exact (div_nonneg (sq_nonneg ω) (by norm_num)).trans (kinetic_le_energy g L θ ω hg hL)

/-- A real consequence for any already supplied all-time solution. -/
theorem later_velocity_bound (μ g L s t : ℝ) (θ ω : ℝ → ℝ)
    (hμ : 0 ≤ μ) (hg : 0 ≤ g) (hL : 0 < L) (hst : s ≤ t)
    (hθ : ∀ u, HasDerivAt θ (ω u) u)
    (hω : ∀ u, HasDerivAt ω (acceleration μ g L (θ u) (ω u)) u) :
    (ω t)^2/2 ≤ energy g L (θ s) (ω s) :=
  (kinetic_le_energy g L (θ t) (ω t) hg hL).trans
    (energy_antitone μ g L θ ω hμ hθ hω hst)

theorem zero_equilibrium (μ g L t : ℝ) :
    HasDerivAt (fun _ : ℝ => (0 : ℝ)) 0 t ∧
    HasDerivAt (fun _ : ℝ => (0 : ℝ)) (acceleration μ g L 0 0) t := by
  simp only [acceleration,Real.sin_zero,mul_zero,neg_zero,sub_zero]
  exact ⟨hasDerivAt_const t 0,hasDerivAt_const t 0⟩

theorem pi_equilibrium (μ g L t : ℝ) :
    HasDerivAt (fun _ : ℝ => Real.pi) 0 t ∧
    HasDerivAt (fun _ : ℝ => (0 : ℝ)) (acceleration μ g L Real.pi 0) t := by
  simp only [acceleration,Real.sin_pi,mul_zero,neg_zero,sub_zero]
  exact ⟨hasDerivAt_const t Real.pi,hasDerivAt_const t 0⟩

theorem equilibrium_energies (g L : ℝ) :
    energy g L 0 0 = 0 ∧ energy g L Real.pi 0 = 2*(g/L) := by
  simp [energy]
  <;> ring

/-- Negative damping does not support the nonincrease inference. -/
theorem negative_damping_positive_rate (μ ω : ℝ) (hμ : μ < 0) (hω : ω ≠ 0) :
    0 < -μ*ω^2 := mul_pos (neg_pos.mpr hμ) (sq_pos_of_ne_zero hω)

end GRWTSK.ODE.PendulumEnergy
