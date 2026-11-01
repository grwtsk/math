/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain
import GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy
import GRWTSK.FunctionalAnalysis.ExactRootAndTransportContract
import Mathlib

/-!
# Source-bound energy, implementation refinement and signed-defect ledger

Local mathematical attribution: grwtsk contributors.

The simulation has multiple distinct energy accounts. Its mechanical
crank/rotor energy admits EXTERNAL hand work and implicit dissipation. The
seven decorative cloth pairs rotate and contract WITHOUT claiming a
Navier--Stokes discretization. The observed seven complex harmonic channels
are forced by a finite temporal DFT and then damped/projected; this is not
identical to the conservative decorative cloth energy. A speed/radius clip
is a mathematical projection, not a theorem of unprojected ODE evolution.

We use the real Step relation defined by the original physical source.
Browser-specific pointer angle override, immediate click impulse, variable
frame rate, floating-point Cholesky and a nonuniformly sampled temporal DFT
are intentionally NOT asserted to satisfy that relation without an exact
refinement theorem. They require their own signed work or error accounting.

Each frame's geometric readout uses the actual Gödel g, h and omega at the
same chart/observer. It does not back-react into the toy's dynamics. The
14-state graph's declared word language is not an assertion about the whole
factor language of an arbitrary physical trace.

LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumericalAnalysis.GodelFourierSoficRefinementBoundary

open scoped BigOperators

abbrev SpringParameters := GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.Parameters
abbrev SpringState := GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.State
abbrev ClothModes := Fin 7 → ℝ × ℝ

/-- A genuine physical path, with the original implicit step relation at
EACH possibly different step width, and signed torque at each step. -/
structure DrivenMechanicalTrace where
  params : SpringParameters
  path : ℕ → SpringState
  stepWidth : ℕ → ℝ
  torque : ℕ → ℝ
  stepNonneg : ∀ n, 0 ≤ stepWidth n
  inertiaCrankNonneg : 0 ≤ params.inertiaCrank
  inertiaRotorNonneg : 0 ≤ params.inertiaRotor
  stiffnessNonneg : 0 ≤ params.stiffness
  dampingCrankNonneg : 0 ≤ params.dampingCrank
  dampingRotorNonneg : 0 ≤ params.dampingRotor
  sourceSteps : ∀ n,
    GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.Step params
      (stepWidth n) (torque n) (path n) (path (n + 1))

/-- Preserve every signed user-work increment at its ORIGINAL physical
step width; the observable is the next crank speed, not an arbitrary rate. -/
def DrivenMechanicalTrace.signedHandWork
    (trace : DrivenMechanicalTrace) (n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range n,
    trace.stepWidth j * trace.torque j * (trace.path (j + 1)).crankSpeed

/-- The original energy law extends to varying nonnegative substep widths,
without replacing negative work by positive work or dropping dissipation. -/
theorem DrivenMechanicalTrace.energy_le_signed_work
    (trace : DrivenMechanicalTrace) (n : ℕ) :
    GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
      trace.params (trace.path n) ≤
    GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
      trace.params (trace.path 0) + trace.signedHandWork n := by
  induction n with
  | zero =>
      simp [DrivenMechanicalTrace.signedHandWork]
  | succ n ih =>
      have stepBound :=
        GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.step_energy_le_work
          trace.params (trace.stepWidth n) (trace.torque n)
          (trace.path n) (trace.path (n + 1))
          (trace.sourceSteps n) (trace.stepNonneg n)
          trace.inertiaCrankNonneg trace.inertiaRotorNonneg
          trace.stiffnessNonneg trace.dampingCrankNonneg
          trace.dampingRotorNonneg
      change
        GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
          trace.params (trace.path (n + 1)) ≤
        GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
          trace.params (trace.path 0) +
        trace.signedHandWork (n + 1)
      rw [DrivenMechanicalTrace.signedHandWork, Finset.sum_range_succ]
      dsimp [DrivenMechanicalTrace.signedHandWork] at ih
      linarith

/-- Exactly zero hand torque at all stages preserves the separate passive
mechanical bound. This includes time-dependent nonnegative step widths. -/
theorem DrivenMechanicalTrace.free_energy_le
    (trace : DrivenMechanicalTrace) (hfree : ∀ n, trace.torque n = 0)
    (n : ℕ) :
    GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
      trace.params (trace.path n) ≤
    GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
      trace.params (trace.path 0) := by
  have hwork : trace.signedHandWork n = 0 := by
    unfold DrivenMechanicalTrace.signedHandWork
    apply Finset.sum_eq_zero
    intro j hj
    rw [hfree j]
    ring
  have he := trace.energy_le_signed_work n
  rw [hwork, add_zero] at he
  exact he

/-- A separately typed seven-pair drape update, with arbitrary nonlinear
state-dependent phase feedback and contractive q. -/
structure ClothStep where
  before : ClothModes
  phase : ClothModes → Fin 7 → ℝ
  damping : ℝ
  damping_nonneg : 0 ≤ damping
  damping_le_one : damping ≤ 1

/-- The displayed drape mode energy is governed by the ACTUAL imported
rotation-plus-damping theorem; hand work cannot be silently equated to it. -/
theorem ClothStep.next_energy_le (s : ClothStep) :
    GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy.modalEnergy
      (GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy.advance
        s.damping s.phase s.before) ≤
    GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy.modalEnergy s.before :=
  GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy.advance_energy_le
    s.damping s.phase s.before s.damping_nonneg s.damping_le_one

/-- Complete chain result: three different numerical accounts with their
ACTUAL source-specific proofs, without summing away any cross-residual. -/
structure SimulationCertificate where
  mechanical : DrivenMechanicalTrace
  stage : ℕ
  cloth : ClothStep
  word : List Bool
  budget : ℝ
  radius : ℝ
  view : GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain.Frame
    word budget radius

/-- A complete proof-carrying observation has the four physically distinct
results: spring budget; decorative cloth contraction; harmonic budget;
spatial radius bound; and observer-positive rest-space energy. -/
theorem SimulationCertificate.five_independent_bounds
    (c : SimulationCertificate) :
    GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
      c.mechanical.params (c.mechanical.path c.stage) ≤
      GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy.mechanicalEnergy
        c.mechanical.params (c.mechanical.path 0) +
        c.mechanical.signedHandWork c.stage ∧
    GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy.modalEnergy
      (GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy.advance
        c.cloth.damping c.cloth.phase c.cloth.before) ≤
      GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy.modalEnergy
        c.cloth.before ∧
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.harmonicEnergy
      c.view.filtered.modes ≤ c.budget ∧
    GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath.spatialEnergy
      c.view.position ≤ c.radius ^ 2 ∧
    0 ≤
      GRWTSK.NumericalAnalysis.GodelFourierSoficImplementationChain.spatialReadout
        c.view.observerParameters c.view.position c.view.velocity := by
  exact ⟨c.mechanical.energy_le_signed_work c.stage,
    c.cloth.next_energy_le,
    c.view.filtered.withinBudget,
    c.view.position_within_radius,
    c.view.spatialReadout_nonneg⟩

/-- Source-exact visualizer interface: each numerical stage is an explicit
refinement obligation. Functions encode the actual arrays/controls, but
missing proof terms are kept as visible logical gates, not assumed facts. -/
structure BrowserRefinementObligations where
  variableSubstepMatchesPhysicalStep : Prop
  pointerAndBrakeWorkIsAccounted : Prop
  finiteDFTMatchesStored64Samples : Prop
  uniformClockSamplingOrNonuniformCorrection : Prop
  exactComplexResidueAggregation : Prop
  bandedCholeskyRefinesLinearEquation : Prop
  floatingPointSpectralEnergyBound : Prop
  graphPredecessorsRefineAllStartOptimum : Prop
  splineNormalizationAndForceBound : Prop
  translationAndTangentClipBounds : Prop
  godelTensorReadoutMatchesChart : Prop
  fullWebGLAndFallbackRenderAgreement : Prop

/-- A caller seeking a COMPLETE browser correctness claim must discharge
all twelve independent obligations. There is deliberately no inhabitant
or automatic proof of this conjunction in the module. -/
def BrowserRefinementObligations.Accepted
    (r : BrowserRefinementObligations) : Prop :=
  r.variableSubstepMatchesPhysicalStep ∧
    r.pointerAndBrakeWorkIsAccounted ∧
    r.finiteDFTMatchesStored64Samples ∧
    r.uniformClockSamplingOrNonuniformCorrection ∧
    r.exactComplexResidueAggregation ∧
    r.bandedCholeskyRefinesLinearEquation ∧
    r.floatingPointSpectralEnergyBound ∧
    r.graphPredecessorsRefineAllStartOptimum ∧
    r.splineNormalizationAndForceBound ∧
    r.translationAndTangentClipBounds ∧
    r.godelTensorReadoutMatchesChart ∧
    r.fullWebGLAndFallbackRenderAgreement

end GRWTSK.NumericalAnalysis.GodelFourierSoficRefinementBoundary
end
