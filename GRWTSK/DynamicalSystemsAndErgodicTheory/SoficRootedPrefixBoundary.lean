/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficGraphRepresentationBridges
import GRWTSK.NumberTheory.DynamicSoficExactLanguageBoundary
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Rooted exact-prefix and unrooted exact-factor sofic source boundary

The original dynamic rooted graph has a SELECTED start vertex.
Its LabeledPath G s word t is the same source-ordered labeled-edge
relation as the finite graph WordPath, with no loss of labels or
intermediate vertices. We prove their exact path equivalence and
a source-preserving adapter to the original LabeledGraph.

A rooted accepted word gives an unrooted GraphLanguage witness.
The reverse is FALSE in general: a second disconnected component
may accept an unrooted word that is impossible from the selected
root. A concrete two-state two-label graph witnesses the failure.

Consequently a rooted exact-singleton-PREFIX language and the whole
finite-FACTOR language remain separate mathematics. No spectral
or arithmetic claim is returned without further sources.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRootedPrefixBoundary

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteSupportAutomaton
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficGraphRepresentationBridges
open GRWTSK.NumberTheory.Farey

universe u v
variable {Label : Type u} [Fintype Label]

/-- The actual root and full original labeled edge predicate are
preserved when forgetting only the selected initial state. -/
def rootedGraphAsOriginal
    (G : DynamicSoficExactLanguageBoundary.RootedSoficGraph.{u, v} Label) :
    LabeledGraph G.Vertex Label where
  edge := G.edge

/-- The rooted LabeledPath and the original unrooted WordPath
have exactly the same endpoint, word and per-edge proposition
whenever their starting state is the SAME state. -/
theorem rootedPath_iff_originalWordPath
    (G : DynamicSoficExactLanguageBoundary.RootedSoficGraph.{u, v} Label)
    (s t : G.Vertex) (word : List Label) :
    DynamicSoficExactLanguageBoundary.LabeledPath G s word t ↔
      WordPath (rootedGraphAsOriginal G) s word t := by
  constructor
  · intro hpath
    induction hpath with
    | nil s =>
        exact WordPath.nil s
    | cons hedge htail ih =>
        exact WordPath.cons _ _ hedge ih
  · intro hpath
    induction hpath with
    | nil s =>
        exact DynamicSoficExactLanguageBoundary.LabeledPath.nil s
    | cons a rest hedge htail ih =>
        exact DynamicSoficExactLanguageBoundary.LabeledPath.cons hedge ih

/-- Genuine rooted acceptance implies acceptance by the SAME
original unrooted graph. It retains the original source root. -/
theorem rootedAccepts_implies_graphLanguage
    (G : DynamicSoficExactLanguageBoundary.RootedSoficGraph.{u, v} Label)
    (word : List Label)
    (hAccept : DynamicSoficExactLanguageBoundary.Accepts G word) :
    GraphLanguage (rootedGraphAsOriginal G) word := by
  obtain ⟨finish, hpath⟩ := hAccept
  exact ⟨G.start, finish,
    (rootedPath_iff_originalWordPath G G.start finish word).mp hpath⟩

/-- Every original admitted PREFIX of a rooted stream is an
unrooted graph word. This does NOT assert that the unrooted
graph admits only those prefixes or that all factors are rooted. -/
theorem rootedAdmitsStream_implies_prefix_graphLanguage
    (G : DynamicSoficExactLanguageBoundary.RootedSoficGraph.{u, v} Label)
    (trace : ℕ → Label)
    (hAdmitted : DynamicSoficExactLanguageBoundary.AdmitsStream G trace) :
    ∀ n,
      GraphLanguage (rootedGraphAsOriginal G)
        (DynamicSoficExactLanguageBoundary.«prefix» trace n) := by
  intro n
  exact rootedAccepts_implies_graphLanguage G _ (hAdmitted n)

/-- Rooted admission also gives the existing finite support
automaton a nonempty result, after retaining the ORIGINAL
Fintype source from the rooted graph. -/
theorem rootedAccepts_implies_unrooted_support
    (G : DynamicSoficExactLanguageBoundary.RootedSoficGraph.{u, v} Label)
    (word : List Label)
    (hAccept : DynamicSoficExactLanguageBoundary.Accepts G word) :
    letI : Fintype G.Vertex := G.finiteVertex
    (sourceSupportAfter (rootedGraphAsOriginal G) Finset.univ word).Nonempty := by
  classical
  letI : Fintype G.Vertex := G.finiteVertex
  exact (graphLanguage_iff_supportAfter_nonempty
    (rootedGraphAsOriginal G) word).mp
    (rootedAccepts_implies_graphLanguage G word hAccept)

/-- The root matters: label false loops at the false root, while
label true loops in a DISCONNECTED true-state component. This is
a real finite graph with the same original edge predicate in both
representations. -/
def disconnectedRootedBool :
    DynamicSoficExactLanguageBoundary.RootedSoficGraph Bool where
  Vertex := Bool
  finiteVertex := inferInstance
  start := false
  edge := fun s a t =>
    (s = false ∧ a = false ∧ t = false) ∨
    (s = true ∧ a = true ∧ t = true)

/-- The original graph has a path spelling true, but the selected
root cannot accept that word. Thus unrooted finite-factor
admission does NOT imply rooted prefix admission. -/
theorem unrooted_true_word_not_rooted :
    GraphLanguage (rootedGraphAsOriginal disconnectedRootedBool) [true] ∧
      ¬ DynamicSoficExactLanguageBoundary.Accepts
          disconnectedRootedBool [true] := by
  constructor
  · refine ⟨true, true, ?_⟩
    exact WordPath.cons true [] (by
      simp [rootedGraphAsOriginal, disconnectedRootedBool])
      (WordPath.nil true)
  · rintro ⟨finish, hpath⟩
    cases hpath with
    | cons hedge tail =>
        simp [disconnectedRootedBool] at hedge

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficRootedPrefixBoundary
