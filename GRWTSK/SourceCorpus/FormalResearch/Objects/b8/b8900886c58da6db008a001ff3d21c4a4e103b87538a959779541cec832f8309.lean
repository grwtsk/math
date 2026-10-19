import Mathematics.Discovery.OpenElement
import Mathematics.Geometry.Dependency
import Mathematics.Geometry.Provenance

/-!
# Euclidean corpus elements

An item begins as an immutable proposal-only seed.  A proof creates a distinct
ordinary `LeanTheoremElement`.  Historical placement can be replaced without
changing the proposal, semantic identity, dependencies, or proof.
-/

namespace Mathematics.Geometry

open Mathematics.Discovery

/-- A proposal seed plus detachable provenance and explicit dependency edges. -/
structure EuclideanSeed (statement : Prop) where
  proposal : OpenConjectureElement statement
  provenance : List HistoricalProvenance
  dependencies : List (DependencyEdge proposal.elementId.id)

namespace EuclideanSeed

/-- Replace historical presentation without changing mathematical content. -/
def withProvenance
    {statement : Prop}
    (seed : EuclideanSeed statement)
    (provenance : List HistoricalProvenance) :
    EuclideanSeed statement where
  proposal := seed.proposal
  provenance
  dependencies := seed.dependencies

@[simp] theorem withProvenance_proposal
    {statement : Prop}
    (seed : EuclideanSeed statement)
    (provenance : List HistoricalProvenance) :
    (seed.withProvenance provenance).proposal = seed.proposal := rfl

@[simp] theorem withProvenance_elementId
    {statement : Prop}
    (seed : EuclideanSeed statement)
    (provenance : List HistoricalProvenance) :
    (seed.withProvenance provenance).proposal.elementId =
      seed.proposal.elementId := rfl

@[simp] theorem withProvenance_dependencies
    {statement : Prop}
    (seed : EuclideanSeed statement)
    (provenance : List HistoricalProvenance) :
    (seed.withProvenance provenance).dependencies =
      seed.dependencies := rfl

end EuclideanSeed

/-- A corpus item whose exact indexed proposition has a Lean proof term. -/
structure KernelProvedEuclideanItem
    {statement : Prop}
    (seed : EuclideanSeed statement) where
  theoremElement : LeanTheoremElement seed.proposal

namespace KernelProvedEuclideanItem

/-- Forgetting Euclidean provenance yields an ordinary Mathematics theorem. -/
def asMathematicsTheoremElement
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed) :
    LeanTheoremElement seed.proposal :=
  item.theoremElement

/-- Relabeling or relocating provenance cannot change the proof object. -/
def withProvenance
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed)
    (provenance : List HistoricalProvenance) :
    KernelProvedEuclideanItem (seed.withProvenance provenance) where
  theoremElement := item.theoremElement

@[simp] theorem withProvenance_proof
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed)
    (provenance : List HistoricalProvenance) :
    (item.withProvenance provenance).theoremElement.proof =
      item.theoremElement.proof := rfl

@[simp] theorem withProvenance_theoremElementId
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed)
    (provenance : List HistoricalProvenance) :
    (item.withProvenance provenance).theoremElement.theoremElementId =
      item.theoremElement.theoremElementId := rfl

end KernelProvedEuclideanItem

/--
The only two corpus states represented here.  The proposal branch has no
theorem-element field; promotion requires constructing the proof-bearing branch.
-/
inductive EuclideanCorpusEntry (statement : Prop)
  | proposal (seed : EuclideanSeed statement)
  | kernelProved
      (seed : EuclideanSeed statement)
      (item : KernelProvedEuclideanItem seed)

end Mathematics.Geometry
