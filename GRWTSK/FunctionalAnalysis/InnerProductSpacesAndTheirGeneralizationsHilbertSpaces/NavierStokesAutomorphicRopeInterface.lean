/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.

Automorphic ropes are invertible, source-labelled arrows between the same Fourier
source in two coordinate charts. No PDE estimate or sofic trace equivalence is
inferred from finite representations.
-/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.NavierStokesMomentGap
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
import Mathlib

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesAutomorphicRopeInterface

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

variable {Ξ U : Type*} [NormedAddCommGroup Ξ] [NormedSpace ℝ Ξ] [AddCommGroup U]

/-- Frequencies and coefficients have independent additive equivalences;
frequency norm preservation is a required shell-compatibility witness.
This alone DOES NOT imply covariance of the physical NS quadratic kernel. -/
structure AutomorphicShell (Ξ U : Type*)
    [NormedAddCommGroup Ξ] [NormedSpace ℝ Ξ] [AddCommGroup U] where
  frequency : Ξ ≃+ Ξ
  coefficient : U ≃+ U
  norm_eq : ∀ ξ, ‖frequency ξ‖ = ‖ξ‖

/-- Transport the entire original source, not a lossy symbolic factor. -/
def AutomorphicShell.push (A : AutomorphicShell Ξ U) (u : Ξ → U) : Ξ → U :=
  fun η => A.coefficient (u (A.frequency.symm η))

@[simp] theorem AutomorphicShell.push_at_image (A : AutomorphicShell Ξ U)
    (u : Ξ → U) (ξ : Ξ) :
    A.push u (A.frequency ξ) = A.coefficient (u ξ) := by
  simp [AutomorphicShell.push]

/-- Source and target are both retained, with a proof of their relation. -/
structure Rope (A : AutomorphicShell Ξ U) where
  source : Ξ
  target : Ξ
  connects : A.frequency source = target

def AutomorphicShell.rope (A : AutomorphicShell Ξ U) (ξ : Ξ) : Rope A :=
  ⟨ξ, A.frequency ξ, rfl⟩

theorem Rope.reversible (A : AutomorphicShell Ξ U) (r : Rope A) :
    A.frequency.symm r.target = r.source := by
  rw [← r.connects]
  simp

theorem Rope.shell_side (A : AutomorphicShell Ξ U) (r : Rope A) (R : ℝ) :
    ‖r.source‖ ≤ R ↔ ‖r.target‖ ≤ R := by
  rw [← r.connects, A.norm_eq]

/-- Exact naturality of the retained shell including the boundary. -/
theorem AutomorphicShell.shell_naturality (A : AutomorphicShell Ξ U)
    (u : Ξ → U) (R : ℝ) (ξ : Ξ) :
    shellPart R (A.push u) (A.frequency ξ) =
      A.coefficient (shellPart R u ξ) := by
  change (if ‖A.frequency ξ‖ ≤ R then A.push u (A.frequency ξ) else 0) =
    A.coefficient (if ‖ξ‖ ≤ R then u ξ else 0)
  rw [A.norm_eq ξ]
  by_cases h : ‖ξ‖ ≤ R
  · simp [h, A.push_at_image]
  · simp [h]

/-- Exact naturality of the high-frequency tail, including mixed-sector data. -/
theorem AutomorphicShell.tail_naturality (A : AutomorphicShell Ξ U)
    (u : Ξ → U) (R : ℝ) (ξ : Ξ) :
    tailPart R (A.push u) (A.frequency ξ) =
      A.coefficient (tailPart R u ξ) := by
  change (if R < ‖A.frequency ξ‖ then A.push u (A.frequency ξ) else 0) =
    A.coefficient (if R < ‖ξ‖ then u ξ else 0)
  rw [A.norm_eq ξ]
  by_cases h : R < ‖ξ‖
  · simp [h, A.push_at_image]
  · simp [h]

/-- The two input addresses are distinct even when their outputs coincide. -/
def AutomorphicShell.pushTriad (A : AutomorphicShell Ξ U)
    (t : TriadSource Ξ) : TriadSource Ξ :=
  ⟨A.frequency t.left, A.frequency t.right⟩

theorem AutomorphicShell.triad_output_naturality (A : AutomorphicShell Ξ U)
    (t : TriadSource Ξ) :
    (A.pushTriad t).outputFrequency = A.frequency t.outputFrequency := by
  simp [AutomorphicShell.pushTriad, TriadSource.outputFrequency, map_add]

/-- These are metadata labels, not a replacement for ordered triad inputs. -/
inductive Sector where
  | SS | ST | TS | TT
  deriving DecidableEq, Fintype, Repr

def sector (R : ℝ) (t : TriadSource Ξ) : Sector :=
  if ‖t.left‖ ≤ R then
    if ‖t.right‖ ≤ R then .SS else .ST
  else if ‖t.right‖ ≤ R then .TS else .TT

theorem AutomorphicShell.sector_naturality (A : AutomorphicShell Ξ U)
    (R : ℝ) (t : TriadSource Ξ) :
    sector R (A.pushTriad t) = sector R t := by
  simp [sector, AutomorphicShell.pushTriad, A.norm_eq]

/-- Physical Fourier covariance must be supplied separately. -/
structure FourierTriadCompatible
    (A : AutomorphicShell FourierFrequency3 FourierVelocity3) : Prop where
  divergence : ∀ ξ v,
    fourierDivergencePairing (A.frequency ξ) (A.coefficient v) =
      fourierDivergencePairing ξ v
  projectedTriad : ∀ t a b,
    navierStokesLerayTriad (A.pushTriad t)
      (A.coefficient a) (A.coefficient b) =
    A.coefficient (navierStokesLerayTriad t a b)

/-- A source still satisfies the concrete divergence constraint when the
source-specific intertwining certificate is present. -/
theorem AutomorphicShell.push_incompressible
    (A : AutomorphicShell FourierFrequency3 FourierVelocity3)
    (h : FourierTriadCompatible A)
    (u : FourierFrequency3 → FourierVelocity3)
    (hu : IsFourierDivergenceFree u) :
    IsFourierDivergenceFree (A.push u) := by
  intro η
  have heq : A.frequency (A.frequency.symm η) = η :=
    A.frequency.apply_symm_apply η
  rw [← heq]
  rw [A.push_at_image]
  rw [h.divergence]
  exact hu (A.frequency.symm η)

/-- A model controls a finite labeled graph, not the source dynamics. -/
structure SoficRopePort (State Alphabet : Type) [Fintype State] where
  graph : LabeledGraph State Alphabet
  label : TriadSource FourierFrequency3 → Alphabet

def SoficRopePort.word {State Alphabet : Type} [Fintype State]
    (P : SoficRopePort State Alphabet)
    (triads : List (TriadSource FourierFrequency3)) : List Alphabet :=
  triads.map P.label

/-- True of the graph's OWN language, not of an arbitrary NS trajectory. -/
theorem SoficRopePort.own_language_sofic
    {State Alphabet : Type} [Fintype State]
    (P : SoficRopePort State Alphabet) :
    IsSoficFactorLanguage (GraphLanguage P.graph) := by
  exact ⟨{ State := State, finiteState := inferInstance,
            graph := P.graph, exactLanguage := by intro _; rfl }⟩

/-- Require the ENTIRE external factor language, rather than an admitted
single path or a full-shift container, before using the sofic conclusion. -/
theorem SoficRopePort.trace_sofic_of_exact_language
    {State Alphabet : Type} [Fintype State]
    (P : SoficRopePort State Alphabet)
    (trace : ℕ → TriadSource FourierFrequency3)
    (hexact : ∀ word,
      HasFiniteBlock (fun n => P.label (trace n)) word ↔
        GraphLanguage P.graph word) :
    IsSoficTrace (fun n => P.label (trace n)) := by
  exact sofic_of_exact_language
    { State := State, finiteState := inferInstance,
      graph := P.graph, exactLanguage := hexact }

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesAutomorphicRopeInterface
