/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Geometry.SphereFourThreeTorusDrape
import GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy

/-!
# Bounded hand crank, helix cross-section, torus phase and cloth-mode drive

Local attribution: grwtsk contributors.

The visualizer's moving crank has a commanded angular velocity clamped to
[-Omega, Omega]. Its next angular velocity is the implicit relaxation update

  omega' = (omega + kappa * h * u) / (1 + kappa * h).

For nonnegative kappa, h and Omega, this is a convex combination of two
velocities in the same closed interval. The crank angle advances by h*omega'.
A fixed gear ratio advances the toy angle by gear*h*omega'. The signed rate
enters the phase of each seven-color cloth mode, but cannot inject modal
amplitude: the mode operation is a rotation followed by damping.

Thus, for every natural frame index and every possibly adversarial sequence
of raw inputs, |omega| <= Omega and modalEnergy <= initial modalEnergy.
The source states an exact-real deterministic finite-step safety property;
it does not assert browser floating-point refinement, a Galerkin discretization
of the Navier--Stokes equation, or regularity of arbitrary 3D fluids.

Lean build: NOT_RUN. Fresh kernel replay: NOT_RUN. Transitive axiom audit:
NOT_RUN. Theorems below are published proof candidates, not acceptance receipts.
-/

namespace GRWTSK.NumericalAnalysis.CorkscrewDrapeDrive

open GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy

/-- Clamp a raw hand/motor command to the admitted signed angular speed. -/
def command (Omega raw : ℝ) : ℝ := max (-Omega) (min Omega raw)

theorem command_bounds (Omega raw : ℝ) (hOmega : 0 ≤ Omega) :
    -Omega ≤ command Omega raw ∧ command Omega raw ≤ Omega := by
  constructor
  · exact le_max_left _ _
  · unfold command
    apply max_le
    · linarith
    · exact min_le_left _ _

/-- Exact-real damped response to a speed command. -/
noncomputable def nextSpeed (kappa h omega u : ℝ) : ℝ :=
  (omega + kappa * h * u) / (1 + kappa * h)

/-- Nonnegative step width and relaxation have no singular denominator. -/
theorem speed_denom_positive (kappa h : ℝ)
    (hkappa : 0 ≤ kappa) (hh : 0 ≤ h) : 0 < 1 + kappa * h := by
  have hk : 0 ≤ kappa * h := mul_nonneg hkappa hh
  linarith

/-- Every bounded crank input leaves a bounded crank rate. -/
theorem nextSpeed_bounds (kappa h Omega omega u : ℝ)
    (hkappa : 0 ≤ kappa) (hh : 0 ≤ h)
    (homega : -Omega ≤ omega ∧ omega ≤ Omega)
    (hu : -Omega ≤ u ∧ u ≤ Omega) :
    -Omega ≤ nextSpeed kappa h omega u ∧
      nextSpeed kappa h omega u ≤ Omega := by
  have hk : 0 ≤ kappa * h := mul_nonneg hkappa hh
  have hd : 0 < 1 + kappa * h := speed_denom_positive kappa h hkappa hh
  constructor
  · unfold nextSpeed
    apply (le_div_iff₀ hd).2
    have hp : 0 ≤ (kappa * h) * (u + Omega) :=
      mul_nonneg hk (by linarith [hu.1])
    nlinarith
  · unfold nextSpeed
    apply (div_le_iff₀ hd).2
    have hp : 0 ≤ (kappa * h) * (Omega - u) :=
      mul_nonneg hk (by linarith [hu.2])
    nlinarith

/-- The crank may turn arbitrarily many times while retaining an exact bound
    on each *one-step* angular increment. -/
theorem next_angle_increment_bound
    (kappa h Omega omega u : ℝ)
    (hkappa : 0 ≤ kappa) (hh : 0 ≤ h)
    (homega : -Omega ≤ omega ∧ omega ≤ Omega)
    (hu : -Omega ≤ u ∧ u ≤ Omega) :
    |h * nextSpeed kappa h omega u| ≤ h * Omega := by
  have hrate := nextSpeed_bounds kappa h Omega omega u hkappa hh homega hu
  rw [abs_mul, abs_of_nonneg hh]
  exact mul_le_mul_of_nonneg_left (abs_le.mpr hrate) hh

/-- Five full windings of a circular screw cross-section along an arm.
    Axial position is separately linear in the interpolation parameter. -/
noncomputable def screwSection (radius theta s : ℝ) : ℝ × ℝ :=
  (radius * Real.cos (theta + 2 * Real.pi * 5 * s),
   radius * Real.sin (theta + 2 * Real.pi * 5 * s))

/-- A corkscrew rotation changes angular phase, not its radial size. -/
theorem screwSection_radius_sq (radius theta s : ℝ) :
    (screwSection radius theta s).1 ^ 2 +
      (screwSection radius theta s).2 ^ 2 = radius ^ 2 := by
  have hc : Real.cos (theta + 2 * Real.pi * 5 * s) ^ 2 +
      Real.sin (theta + 2 * Real.pi * 5 * s) ^ 2 = 1 := by
    nlinarith [Real.sin_sq_add_cos_sq (theta + 2 * Real.pi * 5 * s)]
  change (radius * Real.cos (theta + 2 * Real.pi * 5 * s)) ^ 2 +
    (radius * Real.sin (theta + 2 * Real.pi * 5 * s)) ^ 2 = radius ^ 2
  calc
    (radius * Real.cos (theta + 2 * Real.pi * 5 * s)) ^ 2 +
        (radius * Real.sin (theta + 2 * Real.pi * 5 * s)) ^ 2 =
      radius ^ 2 * (Real.cos (theta + 2 * Real.pi * 5 * s) ^ 2 +
        Real.sin (theta + 2 * Real.pi * 5 * s) ^ 2) := by ring
    _ = radius ^ 2 := by rw [hc]; ring

/-- A crank phase acts on each torus circle by ordinary planar rotation. -/
noncomputable def circleTurn (theta : ℝ)
    (z : GRWTSK.Geometry.SphereFourThreeTorusDrape.CirclePoint) :
    GRWTSK.Geometry.SphereFourThreeTorusDrape.CirclePoint :=
  ⟨rotate theta z.1, by
    have hz : pairEnergy z.1 = 1 := by
      simpa [pairEnergy] using z.property
    have hr : pairEnergy (rotate theta z.1) = 1 :=
      (rotate_energy theta z.1).trans hz
    simpa [pairEnergy] using hr⟩

/-- The S^4-to-T^3 observation, with three explicitly weighted crank phases. -/
noncomputable def drivenProjection
    (x : GRWTSK.Geometry.SphereFourThreeTorusDrape.SphereFour)
    (theta : ℝ) : GRWTSK.Geometry.SphereFourThreeTorusDrape.ThreeTorus :=
  fun i => circleTurn (((i.val : ℝ) + 1) * theta / 7)
    (GRWTSK.Geometry.SphereFourThreeTorusDrape.project x i)

/-- A crank action cannot push a projected circle off the torus. -/
theorem drivenProjection_on_circle
    (x : GRWTSK.Geometry.SphereFourThreeTorusDrape.SphereFour)
    (theta : ℝ) (i : Fin 3) :
    ((drivenProjection x theta i).1.1) ^ 2 +
      ((drivenProjection x theta i).1.2) ^ 2 = 1 :=
  (drivenProjection x theta i).property

/-- The seven drape modes can depend on crank rate and each other's state,
    without using a fictitious energy-conservation assumption on NS. -/
noncomputable def coupledModes
    (nu h rate : ℝ)
    (feedback : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (z : Fin 7 → ℝ × ℝ) : Fin 7 → ℝ × ℝ :=
  advance (damping nu h)
    (fun m i => h * (feedback m i + (13 / 20 : ℝ) * rate)) z

theorem coupledModes_energy_le
    (nu h rate : ℝ)
    (feedback : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (z : Fin 7 → ℝ × ℝ)
    (hnu : 0 ≤ nu) (hh : 0 ≤ h) :
    modalEnergy (coupledModes nu h rate feedback z) ≤ modalEnergy z := by
  obtain ⟨hq0, hq1⟩ := damping_unit nu h hnu hh
  exact advance_energy_le (damping nu h)
    (fun m i => h * (feedback m i + (13 / 20 : ℝ) * rate)) z hq0 hq1

/-- The model includes independent source variables for drive, toy and fabric. -/
structure State where
  screwAngle : ℝ
  topAngle : ℝ
  speed : ℝ
  modes : Fin 7 → ℝ × ℝ

/-- One exact-real crank-gear-drape time step, matching the JS recurrence
    apart from explicit finite-precision, wrapped-angle and input-event effects. -/
noncomputable def tick
    (kappa nu h Omega gear raw : ℝ)
    (feedback : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (s : State) : State :=
  let rate := nextSpeed kappa h s.speed (command Omega raw)
  { screwAngle := s.screwAngle + h * rate
    topAngle := s.topAngle + gear * h * rate
    speed := rate
    modes := coupledModes nu h rate feedback s.modes }

/-- Gear motion and crank motion share the same measured incremental input. -/
theorem tick_gear_relation
    (kappa nu h Omega gear raw : ℝ)
    (feedback : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (s : State) :
    (tick kappa nu h Omega gear raw feedback s).topAngle - s.topAngle =
      gear * ((tick kappa nu h Omega gear raw feedback s).screwAngle - s.screwAngle) := by
  simp only [tick]
  ring

/-- One physical input step respects both the crank speed bound and cloth budget. -/
theorem tick_safety
    (kappa nu h Omega gear raw : ℝ)
    (feedback : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (s : State)
    (hkappa : 0 ≤ kappa) (hnu : 0 ≤ nu) (hh : 0 ≤ h) (hOmega : 0 ≤ Omega)
    (hspeed : -Omega ≤ s.speed ∧ s.speed ≤ Omega) :
    (-Omega ≤ (tick kappa nu h Omega gear raw feedback s).speed ∧
      (tick kappa nu h Omega gear raw feedback s).speed ≤ Omega) ∧
    modalEnergy (tick kappa nu h Omega gear raw feedback s).modes ≤
      modalEnergy s.modes := by
  constructor
  · exact nextSpeed_bounds kappa h Omega s.speed (command Omega raw)
      hkappa hh hspeed (command_bounds Omega raw hOmega)
  · exact coupledModes_energy_le nu h
      (nextSpeed kappa h s.speed (command Omega raw))
      feedback s.modes hnu hh

/-- The exact iteration retains arbitrary raw input traces and arbitrary
    bounded nonlinear phase feedback; it never assumes the safety conclusion. -/
noncomputable def orbit
    (kappa nu h Omega gear : ℝ)
    (raw : ℕ → ℝ)
    (feedback : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (start : State) : ℕ → State
  | 0 => start
  | n + 1 => tick kappa nu h Omega gear (raw n) feedback
      (orbit kappa nu h Omega gear raw feedback start n)

/-- Arbitrarily many discrete crank turns cannot cause a speed or mode-energy
    blowup in this exact finite-dimensional surrogate. -/
theorem orbit_safety
    (kappa nu h Omega gear : ℝ)
    (raw : ℕ → ℝ)
    (feedback : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (start : State)
    (hkappa : 0 ≤ kappa) (hnu : 0 ≤ nu) (hh : 0 ≤ h) (hOmega : 0 ≤ Omega)
    (hstart : -Omega ≤ start.speed ∧ start.speed ≤ Omega)
    (n : ℕ) :
    (-Omega ≤ (orbit kappa nu h Omega gear raw feedback start n).speed ∧
      (orbit kappa nu h Omega gear raw feedback start n).speed ≤ Omega) ∧
      modalEnergy (orbit kappa nu h Omega gear raw feedback start n).modes ≤
        modalEnergy start.modes := by
  induction n with
  | zero =>
      simpa [orbit] using And.intro hstart (le_refl (modalEnergy start.modes))
  | succ n ih =>
      change
        (-Omega ≤ (tick kappa nu h Omega gear (raw n) feedback
            (orbit kappa nu h Omega gear raw feedback start n)).speed ∧
          (tick kappa nu h Omega gear (raw n) feedback
            (orbit kappa nu h Omega gear raw feedback start n)).speed ≤ Omega) ∧
        modalEnergy (tick kappa nu h Omega gear (raw n) feedback
          (orbit kappa nu h Omega gear raw feedback start n)).modes ≤
          modalEnergy start.modes
      have hstep := tick_safety kappa nu h Omega gear (raw n) feedback
        (orbit kappa nu h Omega gear raw feedback start n)
        hkappa hnu hh hOmega ih.1
      exact ⟨hstep.1, hstep.2.trans ih.2⟩

end GRWTSK.NumericalAnalysis.CorkscrewDrapeDrive
