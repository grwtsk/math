/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.ProbeSoficYoneda
import GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesSoficPort

/-!
# A single certified periodic-fluid word returns every physical port probe

This applies the probe-indexed theorem to the actual velocity, pressure,
forcing, Navier--Stokes residual and incompressibility probes already used by
PeriodicNavierStokesSoficPort. It does NOT create a global solution, import an
OpenAI theorem, change the forcing, or replace the real PDE with CHSH signs.
The underlying original source/torus state and word are the same for all probes.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PeriodicPortProbeApplication

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ProbeSoficYoneda
open GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesPortCovariance
open GRWTSK.PartialDifferentialEquations.PeriodicNavierStokesSoficPort

/-- The entire real observation record is measured from one and the same
certified periodic-fluid transition relation. -/
def fluidProbeFamily (ν : ℝ) :
    ProbeSoficSystem FluidPortState Space Probe where
  sandwich := fluidPortSandwich
  value := probeValue ν
  signed := fun _ _ _ _ => 0
  allowance := fun _ _ _ _ => 0
  edgeReturn := by
    intro probe source target label h
    change probeValue ν probe source = probeValue ν probe target + 0
    simpa only [add_zero] using actualPortShift_preserves_probe ν probe h
  edgeNonneg := by
    intro probe source target label h
    exact le_refl 0
  edgeBound := by
    intro probe source target label h
    simp

/-- One certified word simultaneously fixes every one of the eleven scalar
components, including ALL three signed residual components and divergence. -/
theorem one_word_preserves_all_fluid_probes
    (ν : ℝ) {source target : FluidPortState} {word : List Space}
    (path : WordPath fluidPortSandwich.lower source word target) :
    ∀ p : Probe, probeValue ν p source = probeValue ν p target := by
  apply (fluidProbeFamily ν).zero_budget_signature
    (hzero := by intro probe s t label h; rfl)
    path

/-- The source/target states are NOT asserted equal: simultaneous spatial
translation can preserve all local readouts while changing coordinates. -/
theorem one_word_preserves_residual_coordinate
    (ν : ℝ) (i : Fin 3)
    {source target : FluidPortState} {word : List Space}
    (path : WordPath fluidPortSandwich.lower source word target) :
    (observe ν source.1 source.2).pdeResidual i =
      (observe ν target.1 target.2).pdeResidual i :=
  one_word_preserves_all_fluid_probes ν path (.residual i)

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PeriodicPortProbeApplication
