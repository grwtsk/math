# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CorpusElement.Variantb8900886c58da6db008a001ff3d21c4a4e103b87538a959779541cec832f8309

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e72c2d8e84abd75c25e8016b287e3b213dff104` · SHA-256 `b8900886c58da6db008a001ff3d21c4a4e103b87538a959779541cec832f8309`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
