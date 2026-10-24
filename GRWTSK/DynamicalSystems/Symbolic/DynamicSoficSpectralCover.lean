/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover
import Mathlib

/-!
# Commuting dynamic partition, labeled graph and spectral-operator cover

An actual source X has stagewise refining observations. A finite labeled
graph carries the proposed presentation, and a complex linear operator
on a specified module supplies a labeled spectral orbit above it. The
symbol history commutes with the graph path, with the operator orbit
and with stage readouts; an explicit decoder is a left inverse.

This is a proof-relevant process cover. It does NOT follow that the
factor language of any single trace is sofic merely because the graph
admits that trace: exact equality of full languages is extra data.

The source-to-operator realization, trace labeling, zero-observation
identification, arithmetic to sofic classification and spectral
non-soficity are not constructed by this abstract structure.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover

open GRWTSK.Logic.InformationLoss
open GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery
open GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover

universe u v w q r

/-- A fully typed and explicitly commuting cover. The symbol alphabet and
graph states are finite, but the spectral space may be infinite.
This is not an assertion that the selected mathematical source admits
such a cover. -/
structure DynamicSpectralCover
    (X : Type u) (Observation : Type v)
    (Vertex : Type w) (Alphabet : Type q)
    (Spectral : Type r)
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral] where
  partitions : DynamicRefinement X Observation
  graph : LabeledGraph Vertex Alphabet
  graphState : X → ℕ → Vertex
  labelTrace : X → ℕ → Alphabet
  pathSound : ∀ x n,
    graph.edge (graphState x n) (labelTrace x n)
      (graphState x (n + 1))
  operator : Spectral →ₗ[ℂ] Spectral
  sourceSpectral : X → Spectral
  spectralLabel : Spectral → Alphabet
  spectralCommute : ∀ x n,
    labelTrace x n =
      spectralLabel (((fun s : Spectral => operator s)^[n])
        (sourceSpectral x))
  stageReadout : ℕ → (ℕ → Alphabet) → Observation
  stageCommute : ∀ n x,
    stageReadout n (labelTrace x) = partitions.observe n x
  decode : (ℕ → Alphabet) → X
  leftInverse : ∀ x, decode (labelTrace x) = x

/-- The graph is a real labeled finite-state presentation of each source
trace at the path level. This is not equality of full factor languages. -/
theorem DynamicSpectralCover.runs_on_graph
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover X Observation Vertex Alphabet Spectral)
    (x : X) :
    RunsOnGraph C.graph (C.labelTrace x) :=
  ⟨C.graphState x, C.pathSound x⟩

/-- Every refinement square also commutes when viewed through the
retained symbol trace, not just through the original analytic source. -/
theorem DynamicSpectralCover.refinement_commutes_on_trace
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover X Observation Vertex Alphabet Spectral)
    (x : X) (n : ℕ) :
    C.partitions.coarsen n
        (C.stageReadout (n + 1) (C.labelTrace x)) =
      C.stageReadout n (C.labelTrace x) := by
  calc
    C.partitions.coarsen n
        (C.stageReadout (n + 1) (C.labelTrace x)) =
      C.partitions.coarsen n (C.partitions.observe (n + 1) x) := by
        rw [C.stageCommute]
    _ = C.partitions.observe n x := C.partitions.commute n x
    _ = C.stageReadout n (C.labelTrace x) :=
      (C.stageCommute n x).symm

/-- A left-invertible symbolic cover retains the entire analytic source.
This does not mean the finite graph alone retains it. -/
theorem DynamicSpectralCover.trace_injective
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover X Observation Vertex Alphabet Spectral) :
    Function.Injective C.labelTrace := by
  intro x y hxy
  calc
    x = C.decode (C.labelTrace x) := (C.leftInverse x).symm
    _ = C.decode (C.labelTrace y) := by rw [hxy]
    _ = y := C.leftInverse y

/-- The decoder makes every target statistic factor through the FULL
symbol trace. Nothing here says a fixed bounded-length prefix suffices. -/
theorem DynamicSpectralCover.readout_factors_through_trace
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover X Observation Vertex Alphabet Spectral)
    {Target : Type*} (readout : X → Target) :
    FactorsThrough C.labelTrace readout := by
  refine ⟨readout ∘ C.decode, ?_⟩
  funext x
  simp [Function.comp_apply, C.leftInverse]

/-- Every stage observable also factors through the symbol trace,
using the specified commuting stage reader. -/
theorem DynamicSpectralCover.stage_factors_through_trace
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover X Observation Vertex Alphabet Spectral)
    (n : ℕ) :
    FactorsThrough C.labelTrace (C.partitions.observe n) := by
  refine ⟨C.stageReadout n, ?_⟩
  funext x
  exact (C.stageCommute n x).symm

/-- At each source, the trace is also a typed observation of its
actual supplied linear-operator orbit. -/
theorem DynamicSpectralCover.spectral_orbit_readout
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover X Observation Vertex Alphabet Spectral)
    (x : X) (n : ℕ) :
    C.labelTrace x n =
      C.spectralLabel (((fun s : Spectral => C.operator s)^[n])
        (C.sourceSpectral x)) :=
  C.spectralCommute x n

/-- Exact matching of a trace's *whole* factor language is additional
data beyond a spectral cover with one finite labeled graph path. -/
structure ExactLanguageAt
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover X Observation Vertex Alphabet Spectral)
    (x : X) where
  presentation :
    ExactLanguagePresentation.{0,q}
      Alphabet (HasFiniteBlock (C.labelTrace x))

theorem ExactLanguageAt.implies_sofic
    {X : Type u} {Observation : Type v}
    {Vertex : Type w} {Alphabet : Type q} {Spectral : Type r}
    [Fintype Vertex] [Fintype Alphabet]
    [AddCommGroup Spectral] [Module ℂ Spectral]
    {C : DynamicSpectralCover X Observation Vertex Alphabet Spectral}
    {x : X} (E : ExactLanguageAt C x) :
    IsSoficTrace (C.labelTrace x) :=
  ⟨E.presentation⟩

end GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover
