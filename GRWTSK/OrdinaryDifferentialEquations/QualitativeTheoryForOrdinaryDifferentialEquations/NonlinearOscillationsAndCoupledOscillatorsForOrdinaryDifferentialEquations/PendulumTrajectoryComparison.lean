import GRWTSK.OrdinaryDifferentialEquations.QualitativeTheoryForOrdinaryDifferentialEquations.NonlinearOscillationsAndCoupledOscillatorsForOrdinaryDifferentialEquations.PendulumLinearization
import Mathlib.Analysis.ODE.Gronwall
import Mathlib.Analysis.Calculus.Deriv.Prod

/-!
# Finite-time comparison with the actual linearized pendulum

Local attribution: grwtsk contributors.
Grant Sanderson, Differential equations, studying the unsolvable (2019-03-31),
https://www.3blue1brown.com/lessons/differential-equations/ .
Current animation 3b1b/videos306a1346a356c7a7b097875ceb51c5cd67d0a56c,
_2019/diffyq/part1/get_ode and get_period_formula in shared_constructs.py;
Pendulum.update_by_gravity in pendulum.py; CC BY-NC-SA4.0/public bylines retained.
All bodies and inherited suppliers: NOT_RUN_USER_DEFERRED.

This local mathematical consumer compares a supplied nonlinear solution with the
constructed linearized path. The actual product norm is max, not Euclidean.
Actual Lipschitz, residual and initial-distance premises precede Gronwall.
No existence, numerical refinement, or original-video transcript claim follows.
-/
namespace GRWTSK.ODE.PendulumEnergy

open Set

noncomputable def phaseField (g L : ℝ) (p : ℝ × ℝ) : ℝ × ℝ :=
  (p.2,-(g/L)*Real.sin p.1)
noncomputable def phaseK (g L : ℝ) : ℝ≥0 := ⟨1+|g/L|,by positivity⟩
noncomputable def phaseError (A g L : ℝ) : ℝ := |g/L|*|A|^3/6
noncomputable def linearPhase (A g L t : ℝ) : ℝ × ℝ :=
  (linearTheta A g L t,linearOmega A g L t)
noncomputable def linearPhaseDerivative (A g L t : ℝ) : ℝ × ℝ :=
  (linearOmega A g L t,deriv (linearOmega A g L) t)

theorem phase_field_dist_bound (g L : ℝ) (p q : ℝ × ℝ) :
    dist (phaseField g L p) (phaseField g L q) ≤ (1+|g/L|)*dist p q := by
  have hfst : dist p.1 q.1 ≤ dist p q := le_max_left _ _
  have hsnd : dist p.2 q.2 ≤ dist p q := le_max_right _ _
  have hr : dist (phaseField g L p).2 (phaseField g L q).2 ≤ |g/L|*dist p q := by
    calc
      _ = |g/L|*|Real.sin p.1-Real.sin q.1| := by
        simp only [phaseField,Real.dist_eq]
        have he : -(g/L)*Real.sin p.1-(-(g/L)*Real.sin q.1) =
            -(g/L)*(Real.sin p.1-Real.sin q.1) := by ring
        rw [he,abs_mul,abs_neg]
      _ ≤ |g/L|*dist p.1 q.1 :=
        mul_le_mul_of_nonneg_left (Real.abs_sin_sub_sin_le p.1 q.1) (abs_nonneg _)
      _ ≤ |g/L|*dist p q := mul_le_mul_of_nonneg_left hfst (abs_nonneg _)
  change max (dist p.2 q.2)
    (dist (phaseField g L p).2 (phaseField g L q).2) ≤ (1+|g/L|)*dist p q
  apply max_le
  · change dist p.2 q.2 ≤ _
    have h := mul_nonneg (abs_nonneg (g/L)) (dist_nonneg (x := p) (y := q))
    nlinarith
  · have h := dist_nonneg (x := p) (y := q)
    nlinarith

theorem phase_field_lipschitz (g L : ℝ) : LipschitzWith (phaseK g L) (phaseField g L) := by
  apply LipschitzWith.of_dist_le_mul
  intro p q
  exact phase_field_dist_bound g L p q

theorem linear_phase_derivative (A g L t : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    HasDerivAt (linearPhase A g L) (linearPhaseDerivative A g L t) t := by
  have hd := linear_omega_derivative A g L t hg hL
  simpa only [linearPhase,linearPhaseDerivative,hd.deriv] using
    (linear_theta_derivative A g L t).prodMk hd

theorem linear_phase_residual_distance (A g L t : ℝ) :
    dist (linearPhaseDerivative A g L t) (phaseField g L (linearPhase A g L t)) =
      |nonlinearResidual A g L t| := by
  simp [linearPhaseDerivative,phaseField,linearPhase,nonlinearResidual,
    acceleration,Prod.dist_eq,Real.dist_eq]

theorem linear_phase_residual_bound (A g L t : ℝ) (hg : 0 ≤ g) (hL : 0 < L) :
    dist (linearPhaseDerivative A g L t) (phaseField g L (linearPhase A g L t)) ≤
      phaseError A g L := by
  rw [linear_phase_residual_distance]
  exact nonlinear_residual_amplitude_bound A g L t hg hL

theorem actual_phase_derivative (g L t : ℝ) (θ ω : ℝ → ℝ)
    (hθ : HasDerivAt θ (ω t) t)
    (hω : HasDerivAt ω (acceleration 0 g L (θ t) (ω t)) t) :
    HasDerivAt (fun s => (θ s,ω s)) (phaseField g L (θ t,ω t)) t := by
  simpa [phaseField,acceleration] using hθ.prodMk hω

/-- Actual interval regularity and derivative premises, not an assumed error interface. -/
theorem phase_comparison (A g L T : ℝ) (θ ω : ℝ → ℝ)
    (hg : 0 ≤ g) (hL : 0 < L) (hT : 0 ≤ T)
    (hcθ : ContinuousOn θ (Icc 0 T)) (hcω : ContinuousOn ω (Icc 0 T))
    (hθ : ∀ t ∈ Ico 0 T, HasDerivAt θ (ω t) t)
    (hω : ∀ t ∈ Ico 0 T, HasDerivAt ω (acceleration 0 g L (θ t) (ω t)) t)
    (hθ0 : θ 0 = A) (hω0 : ω 0 = 0) :
    ∀ t ∈ Icc 0 T, dist (θ t,ω t) (linearPhase A g L t) ≤
      gronwallBound 0 (phaseK g L) (phaseError A g L) t := by
  have hcont : Continuous (linearPhase A g L) :=
    continuous_iff_continuousAt.mpr (fun t =>
      (linear_phase_derivative A g L t hg hL).continuousAt)
  have hb := dist_le_of_approx_trajectories_ODE
    (v := fun _ => phaseField g L) (f := fun t => (θ t,ω t))
    (g := linearPhase A g L) (f' := fun t => phaseField g L (θ t,ω t))
    (g' := linearPhaseDerivative A g L) (a := 0) (b := T) (δ := 0)
    (εf := 0) (εg := phaseError A g L)
    (fun _ => phase_field_lipschitz g L) (hcθ.prodMk hcω)
    (fun t ht => (actual_phase_derivative g L t θ ω (hθ t ht) (hω t ht)).hasDerivWithinAt)
    (by intros; simp) hcont.continuousOn
    (fun t _ => (linear_phase_derivative A g L t hg hL).hasDerivWithinAt)
    (fun t _ => linear_phase_residual_bound A g L t hg hL)
    (by simp [linearPhase,linearTheta,linearOmega,hθ0,hω0])
  simpa using hb

theorem phase_comparison_explicit (A g L T : ℝ) (θ ω : ℝ → ℝ)
    (hg : 0 ≤ g) (hL : 0 < L) (hT : 0 ≤ T)
    (hcθ : ContinuousOn θ (Icc 0 T)) (hcω : ContinuousOn ω (Icc 0 T))
    (hθ : ∀ t ∈ Ico 0 T, HasDerivAt θ (ω t) t)
    (hω : ∀ t ∈ Ico 0 T, HasDerivAt ω (acceleration 0 g L (θ t) (ω t)) t)
    (hθ0 : θ 0 = A) (hω0 : ω 0 = 0) :
    ∀ t ∈ Icc 0 T, dist (θ t,ω t) (linearPhase A g L t) ≤
      phaseError A g L/(1+|g/L|)*(Real.exp ((1+|g/L|)*t)-1) := by
  have hK : (phaseK g L : ℝ) ≠ 0 := ne_of_gt (by dsimp [phaseK]; positivity)
  have hb := phase_comparison A g L T θ ω hg hL hT hcθ hcω hθ hω hθ0 hω0
  simpa [gronwallBound_of_K_ne_0 hK,phaseK] using hb

theorem coordinate_comparison (A g L T : ℝ) (θ ω : ℝ → ℝ)
    (hg : 0 ≤ g) (hL : 0 < L) (hT : 0 ≤ T)
    (hcθ : ContinuousOn θ (Icc 0 T)) (hcω : ContinuousOn ω (Icc 0 T))
    (hθ : ∀ t ∈ Ico 0 T, HasDerivAt θ (ω t) t)
    (hω : ∀ t ∈ Ico 0 T, HasDerivAt ω (acceleration 0 g L (θ t) (ω t)) t)
    (hθ0 : θ 0 = A) (hω0 : ω 0 = 0) (t : ℝ) (ht : t ∈ Icc 0 T) :
    |θ t-linearTheta A g L t| ≤ gronwallBound 0 (phaseK g L) (phaseError A g L) t ∧
    |ω t-linearOmega A g L t| ≤ gronwallBound 0 (phaseK g L) (phaseError A g L) t := by
  have hb := phase_comparison A g L T θ ω hg hL hT hcθ hcω hθ hω hθ0 hω0 t ht
  simpa only [linearPhase,Prod.dist_eq,Real.dist_eq,max_le_iff] using hb

end GRWTSK.ODE.PendulumEnergy
