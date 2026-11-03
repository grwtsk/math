/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.Geometry.SphereFourMobiusTorusPorts
import Mathlib

/-!
Actual flat periodic Navier--Stokes fields and geometric port observations.
This is a source proof candidate, not an imported OpenAI theorem or a
consequence of a CHSH bound. Spatial translations preserve the standard flat
metric, unlike a general nonlinear Mobius coordinate change.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ContDiff

namespace GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance

open GRWTSK.Geometry.SphereFourThreeTorusDrape
open GRWTSK.Geometry.SphereFourMobiusTorusPorts

abbrev Space := Fin 3 → ℝ
abbrev SpaceTime := Space × ℝ

def spatialBasis (i : Fin 3) : Space := fun j => if j = i then 1 else 0
def spaceDirection (i : Fin 3) : SpaceTime := (spatialBasis i, 0)
def timeDirection : SpaceTime := (0, 1)
def spatialOffset (a : Space) : SpaceTime := (a, 0)
def shiftPoint (a : Space) (s : SpaceTime) : SpaceTime := s - spatialOffset a
def shiftField {V : Type*} (a : Space) (F : SpaceTime → V) : SpaceTime → V :=
  fun s => F (shiftPoint a s)

def directional {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (F : SpaceTime → V) (s d : SpaceTime) : V :=
  deriv (fun h : ℝ => F (s + h • d)) 0

theorem shiftPoint_direction (a : Space) (s d : SpaceTime) (h : ℝ) :
    shiftPoint a (s + h • d) = shiftPoint a s + h • d := by
  unfold shiftPoint
  abel

theorem directional_shift {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (a : Space) (F : SpaceTime → V) (s d : SpaceTime) :
    directional (shiftField a F) s d = directional F (shiftPoint a s) d := by
  have heq :
      (fun h : ℝ => F (shiftPoint a (s + h • d))) =
      (fun h : ℝ => F (shiftPoint a s + h • d)) := by
    funext h
    rw [shiftPoint_direction]
  simpa only [directional, shiftField] using
    congrArg (fun g : ℝ → V => deriv g 0) heq

def IsOnePeriodic {V : Type*} (F : SpaceTime → V) : Prop :=
  ∀ (s : SpaceTime) (i : Fin 3), F (s + spaceDirection i) = F s

theorem periodic_shift {V : Type*} (a : Space) (F : SpaceTime → V)
    (hF : IsOnePeriodic F) : IsOnePeriodic (shiftField a F) := by
  intro s i
  change F (shiftPoint a (s + spaceDirection i)) = F (shiftPoint a s)
  rw [show shiftPoint a (s + spaceDirection i) =
      shiftPoint a s + spaceDirection i by unfold shiftPoint; abel]
  exact hF (shiftPoint a s) i

theorem shiftPoint_smooth (a : Space) : ContDiff ℝ ⊤ (shiftPoint a) := by
  have hc : ContDiff ℝ ⊤ (fun _ : SpaceTime => spatialOffset a) := contDiff_const
  simpa only [shiftPoint] using (contDiff_id.sub hc)

theorem smooth_shift {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V]
    (a : Space) (F : SpaceTime → V) (hF : ContDiff ℝ ⊤ F) :
    ContDiff ℝ ⊤ (shiftField a F) := hF.comp (shiftPoint_smooth a)

theorem shiftPoint_time (a : Space) (s : SpaceTime) :
    (shiftPoint a s).2 = s.2 := by
  simp [shiftPoint, spatialOffset]

structure PDEData where
  velocity : SpaceTime → Space
  pressure : SpaceTime → ℝ
  forcing : SpaceTime → Space
  initial : Space → Space

def timeDerivative (u : SpaceTime → Space) (s : SpaceTime) : Space :=
  directional u s timeDirection

def spatialDerivative (u : SpaceTime → Space) (s : SpaceTime) (i : Fin 3) : Space :=
  directional u s (spaceDirection i)

def gradient (p : SpaceTime → ℝ) (s : SpaceTime) : Space :=
  fun i => directional p s (spaceDirection i)

def laplacian (u : SpaceTime → Space) (s : SpaceTime) : Space :=
  ∑ i : Fin 3, directional (fun r => spatialDerivative u r i) s (spaceDirection i)

def convection (u : SpaceTime → Space) (s : SpaceTime) : Space :=
  ∑ i : Fin 3, (u s i) • spatialDerivative u s i

def divergence (u : SpaceTime → Space) (s : SpaceTime) : ℝ :=
  ∑ i : Fin 3, (spatialDerivative u s i) i

def residual (ν : ℝ) (D : PDEData) (s : SpaceTime) : Space :=
  timeDerivative D.velocity s + convection D.velocity s +
    gradient D.pressure s - ν • laplacian D.velocity s - D.forcing s

def shiftInitial (a : Space) (u₀ : Space → Space) : Space → Space :=
  fun x => u₀ (x - a)

def shiftData (a : Space) (D : PDEData) : PDEData where
  velocity := shiftField a D.velocity
  pressure := shiftField a D.pressure
  forcing := shiftField a D.forcing
  initial := shiftInitial a D.initial

theorem timeDerivative_shift (a : Space) (u : SpaceTime → Space) (s : SpaceTime) :
    timeDerivative (shiftField a u) s = timeDerivative u (shiftPoint a s) :=
  directional_shift a u s timeDirection

theorem spatialDerivative_shift (a : Space) (u : SpaceTime → Space)
    (s : SpaceTime) (i : Fin 3) :
    spatialDerivative (shiftField a u) s i =
      spatialDerivative u (shiftPoint a s) i :=
  directional_shift a u s (spaceDirection i)

theorem gradient_shift (a : Space) (p : SpaceTime → ℝ) (s : SpaceTime) :
    gradient (shiftField a p) s = gradient p (shiftPoint a s) := by
  funext i
  exact directional_shift a p s (spaceDirection i)

theorem laplacian_shift (a : Space) (u : SpaceTime → Space) (s : SpaceTime) :
    laplacian (shiftField a u) s = laplacian u (shiftPoint a s) := by
  unfold laplacian
  apply Finset.sum_congr rfl
  intro i hi
  have hf : (fun r => spatialDerivative (shiftField a u) r i) =
      shiftField a (fun r => spatialDerivative u r i) := by
    funext r
    exact spatialDerivative_shift a u r i
  rw [hf]
  exact directional_shift a (fun r => spatialDerivative u r i) s (spaceDirection i)

theorem convection_shift (a : Space) (u : SpaceTime → Space) (s : SpaceTime) :
    convection (shiftField a u) s = convection u (shiftPoint a s) := by
  unfold convection
  apply Finset.sum_congr rfl
  intro i hi
  rw [spatialDerivative_shift]
  rfl

theorem divergence_shift (a : Space) (u : SpaceTime → Space) (s : SpaceTime) :
    divergence (shiftField a u) s = divergence u (shiftPoint a s) := by
  unfold divergence
  apply Finset.sum_congr rfl
  intro i hi
  rw [spatialDerivative_shift]

theorem residual_shift (ν : ℝ) (a : Space) (D : PDEData) (s : SpaceTime) :
    residual ν (shiftData a D) s = residual ν D (shiftPoint a s) := by
  change timeDerivative (shiftField a D.velocity) s +
    convection (shiftField a D.velocity) s + gradient (shiftField a D.pressure) s -
    ν • laplacian (shiftField a D.velocity) s - (shiftField a D.forcing) s =
    residual ν D (shiftPoint a s)
  rw [timeDerivative_shift, convection_shift, gradient_shift, laplacian_shift]
  rfl

structure GeometricPort where
  sphere : SphereFour
  anchor : Space
  time : ℝ
  sourceIndex : ℕ

def spherePosition (x : SphereFour) : Space := fun i => observedCoord x i
def portSite (P : GeometricPort) : SpaceTime :=
  (spherePosition P.sphere + P.anchor, P.time)
def visibleTorus (P : GeometricPort) : ThreeTorus := liftTorus (project P.sphere)
def translatePort (a : Space) (P : GeometricPort) : GeometricPort :=
  { P with anchor := P.anchor + a }

theorem portSite_translation (a : Space) (P : GeometricPort) :
    shiftPoint a (portSite (translatePort a P)) = portSite P := by
  apply Prod.ext
  · funext i
    simp [shiftPoint, portSite, translatePort, spatialOffset]
    ring
  · simp [shiftPoint, portSite, translatePort, spatialOffset]

structure FluidReadout where
  velocity : Space
  pressure : ℝ
  forcing : Space
  pdeResidual : Space
  divergenceDefect : ℝ

def observe (ν : ℝ) (D : PDEData) (P : GeometricPort) : FluidReadout where
  velocity := D.velocity (portSite P)
  pressure := D.pressure (portSite P)
  forcing := D.forcing (portSite P)
  pdeResidual := residual ν D (portSite P)
  divergenceDefect := divergence D.velocity (portSite P)

theorem observation_translation (ν : ℝ) (a : Space)
    (D : PDEData) (P : GeometricPort) :
    observe ν (shiftData a D) (translatePort a P) = observe ν D P := by
  have hr := residual_shift ν a D (portSite (translatePort a P))
  have hd := divergence_shift a D.velocity (portSite (translatePort a P))
  simp only [observe, hr, hd, portSite_translation, shiftData, shiftField]

theorem visibleTorus_translation (a : Space) (P : GeometricPort) :
    visibleTorus (translatePort a P) = visibleTorus P := rfl

theorem sourceIndex_translation (a : Space) (P : GeometricPort) :
    (translatePort a P).sourceIndex = P.sourceIndex := rfl

/-- CHSH for deterministic jointly defined residual-sign probes.
    It is not an external proof certificate or statement equivalence. -/
def spin (b : Bool) : ℝ := if b then 1 else -1
def chsh (a₀ a₁ b₀ b₁ : Bool) : ℝ :=
  spin a₀ * spin b₀ + spin a₀ * spin b₁ +
    spin a₁ * spin b₀ - spin a₁ * spin b₁

theorem chsh_abs_le_two (a₀ a₁ b₀ b₁ : Bool) :
    |chsh a₀ a₁ b₀ b₁| ≤ 2 := by
  cases a₀ <;> cases a₁ <;> cases b₀ <;> cases b₁ <;>
    norm_num [chsh, spin]

def residualBit (ν : ℝ) (D : PDEData) (P : GeometricPort) (i : Fin 3) : Bool :=
  decide (0 ≤ (observe ν D P).pdeResidual i)

def residualCHSH (ν : ℝ) (D : PDEData)
    (P₀ P₁ Q₀ Q₁ : GeometricPort) : ℝ :=
  chsh (residualBit ν D P₀ 0) (residualBit ν D P₁ 1)
    (residualBit ν D Q₀ 0) (residualBit ν D Q₁ 1)

theorem residualCHSH_abs_le_two (ν : ℝ) (D : PDEData)
    (P₀ P₁ Q₀ Q₁ : GeometricPort) :
    |residualCHSH ν D P₀ P₁ Q₀ Q₁| ≤ 2 :=
  chsh_abs_le_two _ _ _ _

theorem residualCHSH_translation (ν : ℝ) (a : Space) (D : PDEData)
    (P₀ P₁ Q₀ Q₁ : GeometricPort) :
    residualCHSH ν (shiftData a D) (translatePort a P₀) (translatePort a P₁)
      (translatePort a Q₀) (translatePort a Q₁) =
      residualCHSH ν D P₀ P₁ Q₀ Q₁ := by
  simp only [residualCHSH, residualBit, observation_translation]

end GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance
