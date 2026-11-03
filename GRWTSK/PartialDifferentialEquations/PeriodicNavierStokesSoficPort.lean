/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.DefectEnrichedSoficLanguage
import GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesSolutionTranslation
import Mathlib.Tactic

/-!
# Actual periodic fluid and geometric-port probe as a certified sofic language

A state retains *all* original velocity, pressure, forcing and initial data
plus a source-indexed S⁴ geometric probe. Certified transitions apply the
same real spatial translation to both the full PDE data and the probe anchor.
The existing PDE theorem proves `observe` invariance under these exact
transformations, including the complete residual and divergence, not merely
four CHSH signs or a finite-mode surrogate.

The alphabet is an arbitrary real translation vector: the generic path/defect
theorem applies to every finite word, but this infinitely labeled graph is
NOT claimed to be a finite-state/finite-alphabet sofic presentation. Finite
alphabets and exact graph-language completeness require a separately proved
restriction. The original forced-breakdown theorem is not imported, and its
existential statement is not changed by this correspondence.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesSoficPort

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance

/-- Source-exact full fluid data together with the sphere-indexed observer. -/
abbrev FluidPortState := PDEData × GeometricPort

/-- Select a *particular scalar coordinate* of the full actual source
observation. Every component remains available; there is no scalar-only
redefinition of the fluid residual. -/
inductive Probe where
  | velocity (i : Fin 3)
  | pressure
  | forcing (i : Fin 3)
  | residual (i : Fin 3)
  | divergence
  deriving DecidableEq

/-- All probes read fields from the previously constructed complete
velocity-pressure-force-residual-divergence observation structure. -/
def probeValue (ν : ℝ) (probe : Probe) (state : FluidPortState) : ℝ :=
  let packet := observe ν state.1 state.2
  match probe with
  | .velocity i => packet.velocity i
  | .pressure => packet.pressure
  | .forcing i => packet.forcing i
  | .residual i => packet.pdeResidual i
  | .divergence => packet.divergenceDefect

/-- Certified edge translates both the complete source fields and their
sphere-attached observation anchor. A translation of only one is NOT certified. -/
def actualPortShift (source : FluidPortState) (label : Space)
    (target : FluidPortState) : Prop :=
  target.1 = shiftData label source.1 ∧
  target.2 = translatePort label source.2

def fluidPortSandwich : LabeledSandwich FluidPortState Space where
  lower := actualPortShift
  middle := fun _ _ _ => True
  upper := fun _ _ _ => True
  lower_le_middle := by
    intro source target label edge
    trivial
  middle_le_upper := by
    intro source target label edge
    trivial

/-- Genuine simultaneous translation preserves *every* scalar port, since
it preserves the entire FluidReadout structure. -/
theorem actualPortShift_preserves_probe
    (ν : ℝ) (probe : Probe)
    {source target : FluidPortState} {label : Space}
    (edge : actualPortShift source label target) :
    probeValue ν probe source = probeValue ν probe target := by
  rcases edge with ⟨hdata, hport⟩
  have hpacket : observe ν source.1 source.2 =
      observe ν target.1 target.2 := by
    rw [hdata, hport]
    exact (observation_translation ν label source.1 source.2).symm
  cases probe <;> simp only [probeValue] <;> rw [hpacket]

/-- The exact (nonzero-dimensional) periodic PDE data is the source; its
certified translation edges have zero signed defect by source theorem. -/
def fluidProbeSystem (ν : ℝ) (probe : Probe) :
    DefectSoficSystem FluidPortState Space where
  sandwich := fluidPortSandwich
  readout := probeValue ν probe
  edgeDefect := fun _ _ _ => 0
  edgeAllowance := fun _ _ _ => 0
  edgeReturn := by
    intro source target label h
    change probeValue ν probe source = probeValue ν probe target + 0
    simpa only [add_zero] using actualPortShift_preserves_probe ν probe h
  edgeAllowance_nonneg := by
    intro source target label h
    exact le_refl 0
  edgeBound := by
    intro source target label h
    simp

/-- Every source state is its own exact initial observation; all defects
are contributed only by subsequently certified transitions. -/
def fluidProbeSource (ν : ℝ) (probe : Probe) :
    SourceAnchored FluidPortState FluidPortState Space where
  system := fluidProbeSystem ν probe
  original := probeValue ν probe
  encode := id
  initialDefect := fun _ => 0
  initialAllowance := fun _ => 0
  initialReturn := by
    intro state
    simp [fluidProbeSystem]
  initialAllowance_nonneg := by
    intro state
    exact le_refl 0
  initialBound := by
    intro state
    simp

/-- The full typed path is the verification witness: no graph-rank or
candidate similarity is used to conclude observation equality. -/
theorem certified_fluid_word_preserves_probe
    (ν : ℝ) (probe : Probe) (source : FluidPortState)
    {target : FluidPortState} {word : List Space} {defect allowance : ℝ}
    (trace : CertifiedTrace (fluidProbeSystem ν probe)
      source word target defect allowance) :
    probeValue ν probe target = probeValue ν probe source := by
  have hzero : allowance = 0 := by
    apply CertifiedTrace.zeroAllowance (M := fluidProbeSystem ν probe)
    · intro s t label edge
      rfl
    · exact trace
  have hret := (fluidProbeSource ν probe).exact_of_zero_budget
    source trace rfl hzero
  exact hret.symm

/-- This works for every component of the original vector PDE residual,
with no discarded pressure, force or divergence data. -/
theorem certified_fluid_word_preserves_residual_component
    (ν : ℝ) (i : Fin 3) (source : FluidPortState)
    {target : FluidPortState} {word : List Space} {defect allowance : ℝ}
    (trace : CertifiedTrace (fluidProbeSystem ν (.residual i))
      source word target defect allowance) :
    (observe ν target.1 target.2).pdeResidual i =
      (observe ν source.1 source.2).pdeResidual i :=
  certified_fluid_word_preserves_probe ν (.residual i) source trace

/-- A SINGLE certified sofic word (whose graph is independent of the probe)
keeps all eleven scalar packet components, not just one chosen residual sign. -/
theorem certified_word_preserves_every_probe
    (ν : ℝ) (source target : FluidPortState) (word : List Space)
    (path : WordPath fluidPortSandwich.lower source word target) :
    ∀ probe : Probe, probeValue ν probe target = probeValue ν probe source := by
  intro probe
  obtain ⟨defect, allowance, trace⟩ :=
    exists_certifiedTrace (M := fluidProbeSystem ν probe) path
  exact certified_fluid_word_preserves_probe ν probe source trace

/-- The existing smooth-source structure, not a constructed solution to
arbitrary data, supplies zero residual at every nonnegative-time port. -/
theorem certified_solution_port_zero
    (ν : ℝ) (S : SmoothPeriodicSolution ν)
    (P : GeometricPort) (hP : 0 ≤ P.time) :
    (observe ν S.data P).pdeResidual = 0 ∧
    (observe ν S.data P).divergenceDefect = 0 :=
  solution_port_zero ν S P hP

end GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesSoficPort
