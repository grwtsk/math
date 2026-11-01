/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy
import GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath
import GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity
import GRWTSK.Geometry.SphereFourThreeTorusDrape
import Mathlib

/-!
# The actual visualizer as a chain of typed mathematical observations

Local mathematical attribution: grwtsk contributors.

The static browser reference is the original stand-alone single-page
`sphere_torus_godel_observer.html` (SHA-256 recorded in the attached review).
This file describes the mathematical objects and exact finite real/complex
identities that implementation aims to refine. It does NOT claim a proof of
JavaScript/WebGL floating-point refinement.

The full path is:
  two-inertia spring state -> ordered 64-sample rotor history
  -> 33 nonnegative DFT bins -> seven residue channels
  -> a symmetric positive finite band form / post-filter modes
  -> exact 14-state sofic word route -> bounded 3D displacement
  -> Gödel observer's spatial form and vorticity 2-form.

The finite DFT is *temporal*. The JS samples once per variable browser
substep, despite an earlier comment saying 120 Hz. No uniform real-time
sampling theorem, Fourier inversion or Navier--Stokes Galerkin equivalence
is claimed. The 3-torus/S^4 and ABC observations retain their separate types.
All nonunit prime classes and signed RH causal terms remain separate sources.

LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOMS_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain

open scoped BigOperators


abbrev SampleIndex := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.SampleIndex
abbrev FrequencyIndex := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.FrequencyIndex
abbrev Residue := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.Residue
abbrev Vec3 := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.SpaceIndex → ℝ
abbrev ComplexModes := Residue → ℂ
abbrev WordState := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.WordState

/-- The browser has seven distinct color channels, but neither 7 nor the
periodic index maps are asserted to be universal physical constants. -/
def paletteIndex (k : ℕ) : Residue := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.frequencyResidue k

/-- Ordered samples, including the zeroth sample and all 64 positions. -/
def rotorHistory (trajectory : ℕ → GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.State) (start : ℕ) :
    SampleIndex → ℂ :=
  fun j => (trajectory (start + j.val)).rotorSpeed

/-- The finite complex observation is the ACTUAL 64-term DFT. -/
def finiteRotorFourier (history : SampleIndex → ℂ) :
    FrequencyIndex → ℂ :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.rotorDFT history

/-- The complete signed residue bin is assembled BEFORE taking its norm. -/
def finiteResidueChannel (history : SampleIndex → ℂ)
    (cutoff : ℕ) : ComplexModes :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.residueBin history cutoff

/-- All retained frequency contributions are reassembled over seven colors;
there is no replacement of signed complex sums by absolute values. -/
theorem sum_residue_channels (history : SampleIndex → ℂ) (cutoff : ℕ) :
    (∑ r : Residue, finiteResidueChannel history cutoff r) =
      ∑ k : FrequencyIndex,
        if k.val ≤ cutoff then finiteRotorFourier history k else 0 := by
  classical
  unfold finiteResidueChannel finiteRotorFourier GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.residueBin
  calc
    (∑ r : Residue, ∑ k : FrequencyIndex,
        if k.val ≤ cutoff ∧ GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.frequencyResidue k.val = r
          then GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.rotorDFT history k else 0) =
      ∑ k : FrequencyIndex, ∑ r : Residue,
        if k.val ≤ cutoff ∧ GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.frequencyResidue k.val = r
          then GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.rotorDFT history k else 0 := by
        rw [Finset.sum_comm]
    _ = ∑ k : FrequencyIndex,
        if k.val ≤ cutoff then GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.rotorDFT history k else 0 := by
      apply Finset.sum_congr rfl
      intro k _
      by_cases hk : k.val ≤ cutoff
      · simp [hk]
      · simp [hk]

/-- The actual cutoff residual is an independently tracked NONNEGATIVE sum
of squared discarded coefficients, with Fourier conjugate multiplicity. -/
def discardedSpectralEnergy (history : SampleIndex → ℂ)
    (cutoff : ℕ) : ℝ := GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.cutoffResidual history cutoff

theorem discardedSpectralEnergy_nonneg (history : SampleIndex → ℂ)
    (cutoff : ℕ) : 0 ≤ discardedSpectralEnergy history cutoff :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.cutoffResidual_nonneg history cutoff

/-- The exact diagonal damping factor of the seven-by-seven browser matrix:
I + h*diag(0.12 + nu*(1+(r+1)^2/16)) + h*kappa*L_band. -/
def diagonalDamping (viscosity : ℝ) (r : Residue) : ℝ :=
  (3 : ℝ) / 25 + viscosity *
    (1 + (((r.val + 1 : ℕ) : ℝ) ^ 2) / 16)

theorem diagonalDamping_nonneg (viscosity : ℝ)
    (hvisc : 0 ≤ viscosity) (r : Residue) :
    0 ≤ diagonalDamping viscosity r := by
  unfold diagonalDamping
  positivity

/-- The precise real quadratic form associated with the symmetric banded
operator. The ordered Laplacian edges are counted twice and thus get h/2. -/
def bandQuadratic (stepWidth viscosity coupling : ℝ) (band : ℕ)
    (z : ComplexModes) : ℝ :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy z +
    stepWidth * (∑ r : Residue,
      diagonalDamping viscosity r * ‖z r‖ ^ 2) +
    (stepWidth / 2) * GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.bandDissipation band coupling z

/-- Positive-definite quadratic structure, independent of any Cholesky
floating-point implementation or roundoff assumption. -/
theorem harmonicEnergy_le_bandQuadratic
    (stepWidth viscosity coupling : ℝ) (band : ℕ)
    (z : ComplexModes)
    (hh : 0 ≤ stepWidth) (hv : 0 ≤ viscosity)
    (hc : 0 ≤ coupling) :
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy z ≤
      bandQuadratic stepWidth viscosity coupling band z := by
  have hd : 0 ≤ (∑ r : Residue,
      diagonalDamping viscosity r * ‖z r‖ ^ 2) := by
    apply Finset.sum_nonneg
    intro r hr
    exact mul_nonneg (diagonalDamping_nonneg viscosity hv r)
      (sq_nonneg _)
  have hb : 0 ≤ GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.bandDissipation band coupling z :=
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.bandDissipation_nonneg band coupling hc z
  have hfirst : 0 ≤ stepWidth * (∑ r : Residue,
      diagonalDamping viscosity r * ‖z r‖ ^ 2) :=
    mul_nonneg hh hd
  have hsecond : 0 ≤ (stepWidth / 2) *
      GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.bandDissipation band coupling z :=
    mul_nonneg (div_nonneg hh (by norm_num)) hb
  unfold bandQuadratic
  linarith

/-- The browser's time-varying 7x7 solve is a source-specific CHOLESKY
implementation of this typed matrix equation; finite-precision refinement
and numerical stability of its added diagonal-floor remain open gates. -/
def bandedLinearAction (stepWidth viscosity coupling : ℝ)
    (band : ℕ) (z : ComplexModes) (r : Residue) : ℂ :=
  z r + ((stepWidth * diagonalDamping viscosity r : ℝ) : ℂ) * z r +
    (stepWidth : ℂ) * GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.bandRow band coupling z r

/-- A real-linear complex band solve is recorded by the equation it MUST
satisfy, rather than treating a returned array as an exact inverse. -/
structure BandedSolve (stepWidth viscosity coupling : ℝ)
    (band : ℕ) (rhs : ComplexModes) where
  solution : ComplexModes
  satisfies : ∀ r : Residue,
    bandedLinearAction stepWidth viscosity coupling band solution r = rhs r

/-- The browser's final energy clip is an additional operation. This record
certifies its output energy; Cholesky alone does not certify the budget. -/
structure FilteredModes (budget : ℝ) where
  modes : ComplexModes
  nonnegativeBudget : 0 ≤ budget
  withinBudget : GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy modes ≤ budget

/-- The post-filter output is bounded by its own ACTUAL input limit. -/
theorem FilteredModes.energy_bounded {budget : ℝ}
    (v : FilteredModes budget) :
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy v.modes ≤ budget := v.withinBudget

/-- The Boolean finite path is the existing exact 14-state graph language.
No path of an unrelated trace is thereby proved to have a sofic orbit language. -/
def IsAdmittedRoute (word : List Bool)
    (route : Fin (word.length + 1) → WordState) : Prop :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.AdmissibleRoute word route

/-- A concrete edge cost is supplied by each selected harmonic state.
Its only required contract here is a real value; optimality is relative to
this chosen cost and does not imply a physical optimal-control theorem. -/
def routeCost (word : List Bool)
    (edgeCost : WordState → Bool → WordState → ℝ)
    (route : Fin (word.length + 1) → WordState) : ℝ :=
  ∑ i : Fin word.length,
    edgeCost (route ⟨i.val, by omega⟩)
      (word.get i) (route ⟨i.val + 1, by omega⟩)

/-- For every admitted word, the all-start-states minimum exists over the
actual finite graph, including repeated residue visits and both successors. -/
theorem optimalRoute_of_admissible
    (word : List Bool)
    (edgeCost : WordState → Bool → WordState → ℝ)
    (h : (GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.admissibleRoutes word).Nonempty) :
    ∃ route ∈ GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.admissibleRoutes word,
      ∀ other ∈ GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.admissibleRoutes word,
        routeCost word edgeCost route ≤ routeCost word edgeCost other := by
  exact GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.optimal_route_exists word (routeCost word edgeCost) h

/-- The browser's next-position clip consumes the *same* declared radius
boundary as the reference three-dimensional geometry. -/
def boundedPosition (radius : ℝ) (raw : Vec3) : Vec3 :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.radialClip radius raw

theorem boundedPosition_within_radius (radius : ℝ) (raw : Vec3)
    (hr : 0 ≤ radius) :
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.spatialEnergy (boundedPosition radius raw) ≤ radius ^ 2 :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.radialClip_bounded radius raw hr

/-- The browser clips the velocity vector before the optional outward
boundary-normal correction. This is the certified pre-correction speed. -/
def boundedVelocity (speed : ℝ) (raw : Vec3) : Vec3 :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.radialClip speed raw

theorem boundedVelocity_within_speed (speed : ℝ) (raw : Vec3)
    (hs : 0 ≤ speed) :
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.spatialEnergy (boundedVelocity speed raw) ≤ speed ^ 2 :=
  GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.radialClip_bounded speed raw hs

/-- The browser couples a 3D toy velocity to a 4D Gödel tangent *PROBE*.
The physical target is a readout, not an Einstein equation of motion. -/
def velocityProbe (vel : Vec3) : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Tangent :=
  { t := 1
    x := (8 : ℝ) / 25 * vel 0
    y := (3 : ℝ) / 10 * vel 2
    z := (3 : ℝ) / 10 * vel 1 }

/-- The chosen chart coordinate is the toy's first displacement times 0.32. -/
def physicalChartX (position : Vec3) : ℝ :=
  (8 : ℝ) / 25 * position 0

/-- The observer reads only the trajectory data already produced. -/
def spatialReadout (p : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters)
    (position velocity : Vec3) : ℝ :=
  GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.spatialMetric p (physicalChartX position)
    (velocityProbe velocity) (velocityProbe velocity)

/-- A zero spatial readout means the observer probe lies in its measured
rest-space root, not that the Gödel vorticity vanishes. -/
theorem spatialReadout_zero_iff_root (p : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters)
    (position velocity : Vec3) :
    spatialReadout p position velocity = 0 ↔
    GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.SpatialRoot p (physicalChartX position)
      (velocityProbe velocity) := by
  exact GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.spatialMetric_self_zero_iff_root p
    (physicalChartX position) (velocityProbe velocity)

/-- Source-faithful chart readout: the Lorentz metric, spatial metric and
vorticity see the same shiftTangent pushed forward by the same isometry. -/
theorem spatialReadout_chart_transport
    (p : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters) (position velocity : Vec3) (s : ℝ) :
    GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.spatialMetric p (physicalChartX position + s)
      (GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.shiftTangent s (velocityProbe velocity))
      (GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.shiftTangent s (velocityProbe velocity)) =
      spatialReadout p position velocity := by
  exact GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.spatialMetric_shift p (physicalChartX position) s
    (velocityProbe velocity) (velocityProbe velocity)

/-- The vorticity is not a mechanical force in the toy's velocity update;
its exact two-form is a separate, observer-specific display. -/
theorem vorticity_chart_transport
    (p : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters) (position velocity : Vec3)
    (w : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Tangent) (s : ℝ) :
    GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.vorticity p (physicalChartX position + s)
      (GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.shiftTangent s (velocityProbe velocity))
      (GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.shiftTangent s w) =
    GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.vorticity p (physicalChartX position)
      (velocityProbe velocity) w := by
  exact GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.vorticity_shift p (physicalChartX position) s
    (velocityProbe velocity) w

/-- Fully typed readout packet: every arrow has an actual source type, and
the source spectra and filters are not silently replaced by arbitrary data. -/
structure Frame (word : List Bool) (budget radius : ℝ) where
  spring : GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.State
  history : SampleIndex → ℂ
  frequency : FrequencyIndex → ℂ
  frequency_eq : frequency = finiteRotorFourier history
  cutoff : ℕ
  residue : ComplexModes
  residue_eq : residue = finiteResidueChannel history cutoff
  filtered : FilteredModes budget
  wordRoute : Fin (word.length + 1) → WordState
  accepted : IsAdmittedRoute word wordRoute
  position : Vec3
  radius_nonneg : 0 ≤ radius
  position_within_radius : GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.spatialEnergy position ≤ radius ^ 2
  velocity : Vec3
  observerParameters : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters

/-- A constructor that binds the Fourier and residue stages DEFINITIONALLY.
The filtered output and accepted graph route remain explicit proof objects;
they cannot be fabricated from an arbitrary browser array. -/
def makeFrame (word : List Bool) (budget radius : ℝ)
    (hr : 0 ≤ radius) (spring : GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.State)
    (history : SampleIndex → ℂ)
    (cutoff : ℕ) (filtered : FilteredModes budget)
    (route : Fin (word.length + 1) → WordState)
    (hroute : IsAdmittedRoute word route)
    (rawPosition velocity : Vec3) (observer : GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.Parameters) :
    Frame word budget radius where
  spring := spring
  history := history
  frequency := finiteRotorFourier history
  frequency_eq := rfl
  cutoff := cutoff
  residue := finiteResidueChannel history cutoff
  residue_eq := rfl
  filtered := filtered
  wordRoute := route
  accepted := hroute
  position := boundedPosition radius rawPosition
  radius_nonneg := hr
  position_within_radius := boundedPosition_within_radius radius rawPosition hr
  velocity := velocity
  observerParameters := observer

/-- The observable rest-space energy is nonnegative for EVERY frame.
This is a result about the actual Gödel spatial tensor, not about the RH
causal Gram nor the nonlinear Navier--Stokes problem. -/
theorem Frame.spatialReadout_nonneg {word : List Bool}
    {budget radius : ℝ} (f : Frame word budget radius) :
    0 ≤ spatialReadout f.observerParameters f.position f.velocity := by
  unfold spatialReadout
  exact GRWTSK.DifferentialGeometry.GodelObserverMetricVorticity.spatialMetric_self_nonneg f.observerParameters
    (physicalChartX f.position) (velocityProbe f.velocity)

/-- Exact radius, harmonic-budget and observer bounds coexist without
identifying them as one conserved physical energy. -/
theorem Frame.three_separate_bounds {word : List Bool}
    {budget radius : ℝ} (f : Frame word budget radius) :
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.spatialEnergy f.position ≤ radius ^ 2 ∧
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy f.filtered.modes ≤ budget ∧
    0 ≤ spatialReadout f.observerParameters f.position f.velocity := by
  exact ⟨f.position_within_radius, f.filtered.withinBudget,
    f.spatialReadout_nonneg⟩

/-- The special analytical ABC wave used by the visualizer is independently
bounded at every torus phase when viscosity,time >= 0. -/
theorem abc_sample_bound (viscosity time : ℝ)
    (phase : Fin 3 → ℝ)
    (hv : 0 ≤ viscosity) (ht : 0 ≤ time) :
    GRWTSK.Geometry.SphereFourThreeTorusDrape.abc viscosity time phase 0 ^ 2 +
      GRWTSK.Geometry.SphereFourThreeTorusDrape.abc viscosity time phase 1 ^ 2 +
      GRWTSK.Geometry.SphereFourThreeTorusDrape.abc viscosity time phase 2 ^ 2 ≤ 12 :=
  GRWTSK.Geometry.SphereFourThreeTorusDrape.abc_energy_le_twelve viscosity time phase hv ht

end GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain
end
