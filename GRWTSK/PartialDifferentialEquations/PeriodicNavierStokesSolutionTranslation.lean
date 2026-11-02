/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance
import Mathlib

/-!
C-infinity, all coordinate-jet time decay, divergence, PDE and initial-data
covariance for the ACTUAL periodic Navier--Stokes source fields.
No assumption that arbitrary initial/force data admit a global solution.
This full-all-time smooth class is stronger than the upstream Comparator's
closed-time-halfspace regularity class; no equivalence is claimed.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ContDiff

namespace GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance

/-- Coordinates for mixed spatial and time derivatives. -/
inductive Axis where
  | spatial (i : Fin 3)
  | time
  deriving DecidableEq

def axisDirection : Axis → SpaceTime
  | Axis.spatial i => spaceDirection i
  | Axis.time => timeDirection

/-- Actual repeated directional derivatives of the same source field. -/
def coordinateJet {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V] :
    List Axis → (SpaceTime → V) → SpaceTime → V
  | [], F, s => F s
  | axis :: rest, F, s =>
      coordinateJet rest (fun q => directional F q (axisDirection axis)) s

theorem coordinateJet_shift {V : Type*}
    [NormedAddCommGroup V] [NormedSpace ℝ V]
    (a : Space) (word : List Axis) :
    ∀ (F : SpaceTime → V) (s : SpaceTime),
      coordinateJet word (shiftField a F) s =
        coordinateJet word F (shiftPoint a s) := by
  induction word with
  | nil =>
      intro F s
      rfl
  | cons axis rest ih =>
      intro F s
      have hf :
          (fun q => directional (shiftField a F) q (axisDirection axis)) =
          shiftField a (fun q => directional F q (axisDirection axis)) := by
        funext q
        exact directional_shift a F q (axisDirection axis)
      change coordinateJet rest
        (fun q => directional (shiftField a F) q (axisDirection axis)) s =
        coordinateJet rest
          (fun q => directional F q (axisDirection axis)) (shiftPoint a s)
      rw [hf]
      exact ih (fun q => directional F q (axisDirection axis)) s

/-- A real uniform all-orders time decay property for source derivatives. -/
def UniformCoordinateJetDecay {V : Type*}
    [NormedAddCommGroup V] [NormedSpace ℝ V] (F : SpaceTime → V) : Prop :=
  ∀ (n K : ℕ), ∃ C : ℝ, 0 ≤ C ∧
    ∀ (word : List Axis), word.length = n →
      ∀ (s : SpaceTime), 0 ≤ s.2 →
        ‖coordinateJet word F s‖ ≤ C / (1 + s.2) ^ K

/-- The SAME all-order derivative constants survive any spatial shift. -/
theorem coordinateJetDecay_shift {V : Type*}
    [NormedAddCommGroup V] [NormedSpace ℝ V]
    (a : Space) (F : SpaceTime → V) (hF : UniformCoordinateJetDecay F) :
    UniformCoordinateJetDecay (shiftField a F) := by
  intro n K
  obtain ⟨C, hC, hbound⟩ := hF n K
  refine ⟨C, hC, ?_⟩
  intro word hlen s hs
  rw [coordinateJet_shift]
  have hs' : 0 ≤ (shiftPoint a s).2 := by
    simpa [shiftPoint_time] using hs
  simpa only [shiftPoint_time] using
    (hbound word hlen (shiftPoint a s) hs')

/-- A real solution space: field derivatives, periodicity, exact residual,
    forcing decay and initial data are all part of the object. -/
structure SmoothPeriodicSolution (ν : ℝ) where
  data : PDEData
  velocity_smooth : ContDiff ℝ ⊤ data.velocity
  pressure_smooth : ContDiff ℝ ⊤ data.pressure
  forcing_smooth : ContDiff ℝ ⊤ data.forcing
  forcing_decay : UniformCoordinateJetDecay data.forcing
  initial_smooth : ContDiff ℝ ⊤ data.initial
  velocity_periodic : IsOnePeriodic data.velocity
  pressure_periodic : IsOnePeriodic data.pressure
  forcing_periodic : IsOnePeriodic data.forcing
  initial_periodic : ∀ x i, data.initial (x + spatialBasis i) = data.initial x
  incompressible : ∀ s, 0 ≤ s.2 → divergence data.velocity s = 0
  equations : ∀ s, 0 ≤ s.2 → residual ν data s = 0
  initial_condition : ∀ x, data.velocity (x, 0) = data.initial x

theorem shiftInitial_smooth (a : Space) (u₀ : Space → Space)
    (hu : ContDiff ℝ ⊤ u₀) : ContDiff ℝ ⊤ (shiftInitial a u₀) := by
  have ht : ContDiff ℝ ⊤ (fun x : Space => x - a) := by
    simpa only using (contDiff_id.sub
      (contDiff_const : ContDiff ℝ ⊤ (fun _ : Space => a)))
  exact hu.comp ht

theorem shiftInitial_periodic (a : Space) (u₀ : Space → Space)
    (hu : ∀ x i, u₀ (x + spatialBasis i) = u₀ x) :
    ∀ x i, shiftInitial a u₀ (x + spatialBasis i) = shiftInitial a u₀ x := by
  intro x i
  change u₀ (x + spatialBasis i - a) = u₀ (x - a)
  rw [show x + spatialBasis i - a = (x - a) + spatialBasis i by abel]
  exact hu (x - a) i

/-- Actual solution translation, including pressure and force, is covariant. -/
def translateSolution (ν : ℝ) (a : Space)
    (S : SmoothPeriodicSolution ν) : SmoothPeriodicSolution ν where
  data := shiftData a S.data
  velocity_smooth := smooth_shift a S.data.velocity S.velocity_smooth
  pressure_smooth := smooth_shift a S.data.pressure S.pressure_smooth
  forcing_smooth := smooth_shift a S.data.forcing S.forcing_smooth
  forcing_decay := coordinateJetDecay_shift a S.data.forcing S.forcing_decay
  initial_smooth := shiftInitial_smooth a S.data.initial S.initial_smooth
  velocity_periodic := periodic_shift a S.data.velocity S.velocity_periodic
  pressure_periodic := periodic_shift a S.data.pressure S.pressure_periodic
  forcing_periodic := periodic_shift a S.data.forcing S.forcing_periodic
  initial_periodic := shiftInitial_periodic a S.data.initial S.initial_periodic
  incompressible := by
    intro s hs
    change divergence (shiftField a S.data.velocity) s = 0
    rw [divergence_shift]
    exact S.incompressible (shiftPoint a s)
      (by simpa [shiftPoint_time] using hs)
  equations := by
    intro s hs
    rw [residual_shift]
    exact S.equations (shiftPoint a s)
      (by simpa [shiftPoint_time] using hs)
  initial_condition := by
    intro x
    change S.data.velocity (shiftPoint a (x, 0)) = S.data.initial (x - a)
    simpa [shiftPoint, spatialOffset] using S.initial_condition (x - a)

/-- A smooth solution's observed PDE residual and divergence vanish at
    every nonnegative-time geometric port, with original source preserved. -/
theorem solution_port_zero (ν : ℝ) (S : SmoothPeriodicSolution ν)
    (P : GeometricPort) (hP : 0 ≤ P.time) :
    (observe ν S.data P).pdeResidual = 0 ∧
      (observe ν S.data P).divergenceDefect = 0 := by
  constructor
  · exact S.equations (portSite P) (by simpa [portSite] using hP)
  · exact S.incompressible (portSite P) (by simpa [portSite] using hP)

end GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance
