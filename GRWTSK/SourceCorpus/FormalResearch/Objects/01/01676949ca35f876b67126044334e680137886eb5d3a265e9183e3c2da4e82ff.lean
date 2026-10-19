import Mathematics.NeuralDiffusion.PrimeSectorObligation
import Mathematics.NeuralDiffusion.Transport
import Mathematics.Projection.PoleSurgery
import Mathematics.Surgery.Request
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.Analysis.Normed.Algebra.Exponential
import Mathlib.Tactic

/-!
# Certified spectral-orbit diffuser

This module formalizes the finite-shell operative core:

* a Banach carrier has an injective Hilbert realization and a partial decoder;
* convolution and involution remain separate operations;
* the shell Dirac operator is supplied with a finite-dimensional
  self-adjointness certificate;
* even state, odd residue, heat contraction, spectral activation, and orbit
  distribution remain separately typed;
* the exact activated residue is retained even when its orbit view is lossy;
* heat returns proposals only and stops at a certified surgery request.

No construction in this module discharges `SEP-PRIME-PRIMORIAL`.
-/

namespace Mathematics.NeuralDiffusion

open Mathematics.Projection
open scoped InnerProductSpace

universe u v w

noncomputable section

/--
Injective Banach-to-Hilbert realization with a decoder defined only on its
certified domain.
-/
structure CertifiedPartialRealization
    (B : Type u) (H : Type v)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    [NormedAddCommGroup H] [NormedSpace ℝ H] where
  encode : B →L[ℝ] H
  encode_injective : Function.Injective encode
  decodeDomain : Set H
  encoded_mem : ∀ value, encode value ∈ decodeDomain
  decode : decodeDomain → B
  decode_encode :
    ∀ value,
      decode ⟨encode value, encoded_mem value⟩ = value
  realizationCertificate : ObjectAddress

/--
Finite operative spectral profile.

This is deliberately not called a Connes spectral triple: the current data
give an associative represented convolution and a self-adjoint finite
operator, but do not yet include a unital involutive algebra representation,
bounded-commutator interface, grading compatibility, or real-structure axioms.
-/
structure FiniteOperativeSpectralProfile
    (A : Type u) (H : Type v)
    [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    [FiniteDimensional ℝ H] where
  convolutionInvolution : ConvolutionInvolution A
  representation : A → H →L[ℝ] H
  representation_convolution :
    ∀ left right,
      representation
          (convolutionInvolution.conv left right) =
        (representation left).comp (representation right)
  dirac : H →L[ℝ] H
  dirac_selfAdjoint :
    ∀ left right,
      ⟪dirac left, right⟫_ℝ =
        ⟪left, dirac right⟫_ℝ
  tripleCertificate : ObjectAddress

/--
The reciprocal involution and cochain grading are independently supplied
structures.  Distinct mathematical roles do not imply unequal operators.
-/
structure ShellSymmetry
    (H : Type v)
    [NormedAddCommGroup H] [InnerProductSpace ℝ H] where
  involution : H →L[ℝ] H
  involution_squared :
    involution.comp involution = ContinuousLinearMap.id ℝ H
  involution_selfAdjoint :
    ∀ left right,
      ⟪involution left, right⟫_ℝ =
        ⟪left, involution right⟫_ℝ
  grading : H →L[ℝ] H
  grading_squared :
    grading.comp grading = ContinuousLinearMap.id ℝ H
  grading_selfAdjoint :
    ∀ left right,
      ⟪grading left, right⟫_ℝ =
        ⟪left, grading right⟫_ℝ
  symmetryCertificate : ObjectAddress

namespace ShellSymmetry

variable
    {H : Type v}
    [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- Involution-invariant channel. -/
def evenPart (symmetry : ShellSymmetry H) (state : H) : H :=
  (2 : ℝ)⁻¹ • (state + symmetry.involution state)

/-- Cancellative involution-odd channel. -/
def oddPart (symmetry : ShellSymmetry H) (state : H) : H :=
  (2 : ℝ)⁻¹ • (state - symmetry.involution state)

/-- Exact involutive split; no information is lost. -/
theorem even_add_odd
    (symmetry : ShellSymmetry H) (state : H) :
    symmetry.evenPart state + symmetry.oddPart state = state := by
  simp only [evenPart, oddPart]
  module

end ShellSymmetry

/-- The square `D²` of a shell Dirac operator. -/
def diracLaplacian
    {H : Type v}
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    (dirac : H →L[ℝ] H) :
    H →L[ℝ] H :=
  dirac.comp dirac

/--
The actual finite-dimensional functional-calculus heat operator
`exp (-t D²)` in the Banach algebra of continuous endomorphisms.
-/
noncomputable def canonicalDiracHeat
    {H : Type v}
    [NormedAddCommGroup H] [NormedSpace ℝ H] [CompleteSpace H]
    (dirac : H →L[ℝ] H) (time : ℝ) :
    H →L[ℝ] H :=
  NormedSpace.exp ((-time) • diracLaplacian dirac)

/--
Proof-bearing realization of the Dirac heat semigroup.  `heat` is not an
arbitrary contractive semigroup: it is propositionally equal to
`exp (-t D²)` at every time.  The activation is defined, not learned, as
`I - heat`.
-/
structure CertifiedDiracHeat
    (H : Type v)
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    [CompleteSpace H]
    (dirac : H →L[ℝ] H) where
  heat : ℝ → H →L[ℝ] H
  heat_eq_functionalCalculus :
    ∀ time,
      heat time = canonicalDiracHeat dirac time
  heat_zero : heat 0 = ContinuousLinearMap.id ℝ H
  heat_add :
    ∀ {left right}, 0 ≤ left → 0 ≤ right →
      heat (left + right) = (heat left).comp (heat right)
  commutes_with_dirac :
    ∀ time,
      (heat time).comp dirac = dirac.comp (heat time)
  fixes_harmonic :
    ∀ {time state}, 0 ≤ time → dirac state = 0 →
      heat time state = state
  heat_contractive :
    ∀ {time}, 0 ≤ time → ∀ state,
      ‖heat time state‖ ≤ ‖state‖
  activation_contractive :
    ∀ {time}, 0 ≤ time → ∀ state,
      ‖(ContinuousLinearMap.id ℝ H - heat time) state‖ ≤ ‖state‖
  functionalCalculusCertificate : ObjectAddress

namespace CertifiedDiracHeat

variable
    {H : Type v}
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    [CompleteSpace H]
    {dirac : H →L[ℝ] H}

/-- The supplied heat operator is exactly the Dirac functional calculus. -/
theorem heat_eq_canonical
    (spectral : CertifiedDiracHeat H dirac)
    (time : ℝ) :
    spectral.heat time = canonicalDiracHeat dirac time :=
  spectral.heat_eq_functionalCalculus time

/-- Canonical spectral activation `I - exp(-t D²)`. -/
def activation
    (spectral : CertifiedDiracHeat H dirac) (time : ℝ) :
    H →L[ℝ] H :=
  ContinuousLinearMap.id ℝ H - spectral.heat time

/-- Exact continuous heat/activation decomposition. -/
theorem heat_add_activation
    (spectral : CertifiedDiracHeat H dirac)
    (time : ℝ) (state : H) :
    spectral.heat time state +
        spectral.activation time state =
      state := by
  simp [activation]

/-- Spectral activation vanishes on the certified harmonic kernel. -/
theorem activation_harmonic
    (spectral : CertifiedDiracHeat H dirac)
    {time : ℝ} (time_nonnegative : 0 ≤ time)
    {state : H} (harmonic : dirac state = 0) :
    spectral.activation time state = 0 := by
  simp [activation, spectral.fixes_harmonic time_nonnegative harmonic]

end CertifiedDiracHeat

/-- A certified projector onto the harmonic kernel. -/
structure CertifiedHarmonicProjector
    (H : Type v)
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    (dirac : H →L[ℝ] H) where
  projector : H →L[ℝ] H
  harmonic : ∀ state, dirac (projector state) = 0
  fixes_harmonic :
    ∀ {state}, dirac state = 0 → projector state = state
  idempotent : projector.comp projector = projector
  contractive : ∀ state, ‖projector state‖ ≤ ‖state‖
  projectorCertificate : ObjectAddress

/--
Certified contractive orbit-distribution semigroup.

The convergence field is the exact extra datum needed for orbit
equilibration; contractivity by itself does not imply convergence to an
invariant channel.
-/
structure CertifiedOrbitSemigroup
    (H : Type v)
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    (involution : H →L[ℝ] H) where
  step : ℝ → H →L[ℝ] H
  step_zero : step 0 = ContinuousLinearMap.id ℝ H
  step_add :
    ∀ {left right}, 0 ≤ left → 0 ≤ right →
      step (left + right) = (step left).comp (step right)
  contractive :
    ∀ {time}, 0 ≤ time → ∀ state,
      ‖step time state‖ ≤ ‖state‖
  commutes_involution :
    ∀ time,
      (step time).comp involution =
        involution.comp (step time)
  invariantProjector : H →L[ℝ] H
  invariantProjector_idempotent :
    invariantProjector.comp invariantProjector =
      invariantProjector
  fixes_invariant :
    ∀ time state,
      step time (invariantProjector state) =
        invariantProjector state
  equilibrates :
    ∀ state,
      Filter.Tendsto
        (fun time ↦ step time state)
        Filter.atTop
        (nhds (invariantProjector state))
  orbitCertificate : ObjectAddress

/-- One complete finite shell. -/
structure SpectralOrbitShell
    (A : Type u) (H : Type v)
    [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    [FiniteDimensional ℝ H] where
  shellId : ObjectAddress
  shellIndex : Nat
  spectralProfile : FiniteOperativeSpectralProfile A H
  symmetry : ShellSymmetry H
  laplacian_commutes_involution :
    (diracLaplacian spectralProfile.dirac).comp symmetry.involution =
      symmetry.involution.comp
        (diracLaplacian spectralProfile.dirac)
  spectral : CertifiedDiracHeat H spectralProfile.dirac
  heat_commutes_involution :
    ∀ time,
      (spectral.heat time).comp symmetry.involution =
        symmetry.involution.comp (spectral.heat time)
  harmonic :
    CertifiedHarmonicProjector H spectralProfile.dirac
  orbit :
    CertifiedOrbitSemigroup H symmetry.involution

namespace SpectralOrbitShell

variable
    {A : Type u} {H : Type v}
    [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    [FiniteDimensional ℝ H]

def compactCore (shell : SpectralOrbitShell A H) (state : H) : H :=
  shell.harmonic.projector state

def reduced
    (shell : SpectralOrbitShell A H) (time : ℝ) (state : H) : H :=
  shell.symmetry.evenPart state +
    shell.spectral.heat time (shell.symmetry.oddPart state)

def activatedResidue
    (shell : SpectralOrbitShell A H) (time : ℝ) (state : H) : H :=
  shell.spectral.activation time (shell.symmetry.oddPart state)

def orbitDistribution
    (shell : SpectralOrbitShell A H)
    (diffusionTime orbitTime : ℝ) (state : H) : H :=
  shell.orbit.step orbitTime
    (shell.activatedResidue diffusionTime state)

/-- The retained activated residue gives an exact split before orbit loss. -/
theorem reduced_add_activated
    (shell : SpectralOrbitShell A H)
    (time : ℝ) (state : H) :
    shell.reduced time state +
        shell.activatedResidue time state =
      state := by
  calc
    shell.reduced time state +
          shell.activatedResidue time state =
        shell.symmetry.evenPart state +
          (shell.spectral.heat time (shell.symmetry.oddPart state) +
            shell.spectral.activation time
              (shell.symmetry.oddPart state)) := by
      simp only [reduced, activatedResidue]
      abel
    _ =
        shell.symmetry.evenPart state +
          shell.symmetry.oddPart state := by
      rw [shell.spectral.heat_add_activation]
    _ = state :=
      shell.symmetry.even_add_odd state

/--
Functional-calculus heat fixes the odd part of a harmonic state.  This uses
heat/involution commutation and does not require the stronger law `[D, I]=0`.
-/
theorem heat_oddPart_harmonic
    (shell : SpectralOrbitShell A H)
    {time : ℝ} (time_nonnegative : 0 ≤ time)
    {state : H}
    (state_harmonic : shell.spectralProfile.dirac state = 0) :
    shell.spectral.heat time (shell.symmetry.oddPart state) =
      shell.symmetry.oddPart state := by
  have fixes :
      shell.spectral.heat time state = state :=
    shell.spectral.fixes_harmonic
      time_nonnegative state_harmonic
  have commuteAt :
      shell.spectral.heat time
          (shell.symmetry.involution state) =
        shell.symmetry.involution
          (shell.spectral.heat time state) :=
    DFunLike.congr_fun (shell.heat_commutes_involution time) state
  simp [ShellSymmetry.oddPart, fixes, commuteAt]

/-- Harmonic state has no activated odd residue. -/
theorem activatedResidue_harmonic
    (shell : SpectralOrbitShell A H)
    {time : ℝ} (time_nonnegative : 0 ≤ time)
    {state : H}
    (state_harmonic : shell.spectralProfile.dirac state = 0) :
    shell.activatedResidue time state = 0 := by
  simp [
    activatedResidue,
    CertifiedDiracHeat.activation,
    shell.heat_oddPart_harmonic time_nonnegative state_harmonic
  ]

/-- Orbit distribution converges to the explicitly certified invariant view. -/
theorem orbitDistribution_equilibrates
    (shell : SpectralOrbitShell A H)
    (diffusionTime : ℝ) (state : H) :
    Filter.Tendsto
      (fun orbitTime ↦
        shell.orbitDistribution diffusionTime orbitTime state)
      Filter.atTop
      (nhds
        (shell.orbit.invariantProjector
          (shell.activatedResidue diffusionTime state))) :=
  shell.orbit.equilibrates
    (shell.activatedResidue diffusionTime state)

end SpectralOrbitShell

/--
Accepted exact shell state, indexed by both its accepted source and the
realization used to place that source in the Hilbert carrier.

The Hilbert value is computed from the index; there is no public field through
which an unrelated value can be paired with certificate metadata.
-/
structure ExactShellState
    (Accepted : Type u) (H : Type v)
    (realize : Accepted → H) (source : Accepted) where
  stateId : ObjectAddress
  certificate : ObjectAddress

namespace ExactShellState

variable
    {Accepted : Type u} {H : Type v}
    {realize : Accepted → H} {source : Accepted}

/-- The exact Hilbert value is definitionally the accepted realization. -/
def value (_state : ExactShellState Accepted H realize source) : H :=
  realize source

@[simp] theorem value_eq_realization
    (state : ExactShellState Accepted H realize source) :
    state.value = realize source :=
  rfl

end ExactShellState

/-- Exact spectral residue retained before any orbit averaging. -/
structure ActivatedShellResidue (H : Type v) where
  value : H
  residueId : ObjectAddress

/-- Possibly lossy orbit realization of an exact retained residue. -/
structure OrbitResidueView (H : Type v) where
  value : H
  sourceResidueId : ObjectAddress
  convolutionKernelId : ObjectAddress

/-- A learned reconstruction has proposal authority only. -/
structure LearnedShellProposal (H : Type v) where
  value : H
  sourceResidueId : ObjectAddress
  activationKey : ActivationKey
  modelEvidence : List String

/--
The complete output packet is indexed by the actual shell computation, exact
source realization, and both times.  Every numerical channel carries an
equation to the corresponding shell operator; addresses and digests are replay
metadata and cannot manufacture a spectral result.
-/
structure SpectralShellPacket
    {A : Type u} {H : Type v} {Accepted : Type w}
    [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    [FiniteDimensional ℝ H]
    (shell : SpectralOrbitShell A H)
    (realize : Accepted → H)
    (source : Accepted)
    (exact : ExactShellState Accepted H realize source)
    (diffusionTime orbitTime : ℝ) where
  compactCore : H
  compactCore_eq :
    compactCore = shell.compactCore exact.value
  reducedState : H
  reducedState_eq :
    reducedState =
      shell.reduced diffusionTime exact.value
  activatedResidue : ActivatedShellResidue H
  activatedResidue_eq :
    activatedResidue.value =
      shell.activatedResidue diffusionTime exact.value
  orbitDistribution : OrbitResidueView H
  orbitDistribution_eq :
    orbitDistribution.value =
      shell.orbitDistribution diffusionTime orbitTime exact.value
  orbitSource_eq :
    orbitDistribution.sourceResidueId =
      activatedResidue.residueId
  sourceDigest : Digest
  outputDigest : Digest
  provenance : List ObjectAddress
  certificates : List ObjectAddress

namespace SpectralShellPacket

variable
    {A : Type u} {H : Type v} {Accepted : Type w}
    [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    [FiniteDimensional ℝ H]
    {shell : SpectralOrbitShell A H}
    {realize : Accepted → H}
    {source : Accepted}
    {exact : ExactShellState Accepted H realize source}
    {diffusionTime orbitTime : ℝ}

/-- The packet retains the exact pre-orbit split supplied by its shell. -/
theorem reduced_add_activated
    (packet :
      SpectralShellPacket shell realize source exact
        diffusionTime orbitTime) :
    packet.reducedState + packet.activatedResidue.value =
      exact.value := by
  rw [packet.reducedState_eq, packet.activatedResidue_eq]
  exact shell.reduced_add_activated diffusionTime exact.value

end SpectralShellPacket

/-- Exact or bounded compatibility of a shell monomorphism with Dirac. -/
inductive DiracIntertwining
    {H : Type v} {K : Type w}
    [NormedAddCommGroup H] [NormedSpace ℝ H]
    [NormedAddCommGroup K] [NormedSpace ℝ K]
    (sourceDirac : H →L[ℝ] H)
    (targetDirac : K →L[ℝ] K)
    (map : H →L[ℝ] K)
  | exact
      (proof : map.comp sourceDirac = targetDirac.comp map)
  | boundedDefect
      (bound : ℝ)
      (bound_nonnegative : 0 ≤ bound)
      (proof :
        ∀ state,
          ‖targetDirac (map state) - map (sourceDirac state)‖ ≤
            bound * ‖state‖)

/-- Certified shell-to-shell monomorphism. -/
structure ShellMonomorphism
    {SourceAlgebra : Type u} {TargetAlgebra : Type u}
    {H : Type v} {K : Type w}
    [NormedAddCommGroup H] [InnerProductSpace ℝ H]
    [FiniteDimensional ℝ H]
    [NormedAddCommGroup K] [InnerProductSpace ℝ K]
    [FiniteDimensional ℝ K]
    (source : SpectralOrbitShell SourceAlgebra H)
    (target : SpectralOrbitShell TargetAlgebra K) where
  map : H →L[ℝ] K
  injective : Function.Injective map
  involution_intertwining :
    map.comp source.symmetry.involution =
      target.symmetry.involution.comp map
  grading_intertwining :
    map.comp source.symmetry.grading =
      target.symmetry.grading.comp map
  dirac_intertwining :
    DiracIntertwining
      source.spectralProfile.dirac
      target.spectralProfile.dirac
      map
  certificate : ObjectAddress

/--
Unrestricted analytic heat evaluation.  Its codomain is proposal-only and it
is not an admission interface: governing transitions must pass through
`HeatSurgeryBoundary.AdmissibleTime`.
-/
structure AnalyticHeatFamily
    (Accepted : Type u) (Proposal : Type v) where
  evaluate : Accepted → ℝ → Proposal
  sourceCertificate : ObjectAddress

/--
Certified stopping boundary for heat.  Continuation at `stopTime` produces a
surgery request, not another accepted state.
-/
structure HeatSurgeryBoundary
    (Accepted : Type u) (Proposal : Type v) where
  initial : Accepted
  analytic : AnalyticHeatFamily Accepted Proposal
  stopTime : ℝ
  stopTime_nonnegative : 0 ≤ stopTime
  request : Mathematics.Surgery.Request
  sourceCertificate : ObjectAddress
  boundaryCertificate : ObjectAddress

namespace HeatSurgeryBoundary

variable
    {Accepted : Type u} {Proposal : Type v}
    (boundary : HeatSurgeryBoundary Accepted Proposal)

/-- The only times at which the boundary exposes a heat proposal. -/
def AdmissibleTime :=
  {time : ℝ // 0 ≤ time ∧ time < boundary.stopTime}

/--
The sole governing heat-proposal entry point.  The unrestricted analytic
family is evaluated only after the caller supplies an admissible-time witness.
-/
def proposeBefore (time : boundary.AdmissibleTime) : Proposal :=
  boundary.analytic.evaluate boundary.initial time.1

/-- No admitted heat time can lie at or beyond the surgery boundary. -/
theorem not_admissible_at_or_after
    (time : boundary.AdmissibleTime)
    (atOrAfter : boundary.stopTime ≤ time.1) :
    False :=
  (not_lt_of_ge atOrAfter) time.2.2

end HeatSurgeryBoundary

end

end Mathematics.NeuralDiffusion
