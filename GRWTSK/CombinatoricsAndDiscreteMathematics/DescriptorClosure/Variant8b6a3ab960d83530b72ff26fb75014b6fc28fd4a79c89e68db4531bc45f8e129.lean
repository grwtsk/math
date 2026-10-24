import Mathematics.Concept.PointUniverse
import Mathematics.Discovery.OpenElement
import Mathlib.Data.Finset.Basic

/-!
# Open target: intrinsic descriptor closure

The target asks for the least finite point set containing a seed, every
descriptor-referenced point, and every target of an admitted relation whose
source has entered the set.  It is a low-dependency finite closure obligation;
it does not use names, paths, embeddings, or model similarity.
-/

namespace Mathematics.Concept

def DescriptorRelationClosed
    (pointUniverse : PointUniverse)
    (points : Finset ElementId) : Prop :=
  points ⊆
      (pointUniverse.points.map MathematicalPoint.pointId).toFinset ∧
  (∀ descriptor ∈ pointUniverse.descriptors.descriptors,
    ∀ pointId ∈ descriptor.disposition.pointReferences,
      pointId ∈ points) ∧
  (∀ relation ∈ pointUniverse.relations,
    relation.source ∈ points →
      relation.target ∈ points)

def LeastDescriptorRelationClosure
    (pointUniverse : PointUniverse)
    (seed closure : Finset ElementId) : Prop :=
  seed ⊆ closure ∧
  DescriptorRelationClosed pointUniverse closure ∧
  ∀ candidate,
    seed ⊆ candidate →
    DescriptorRelationClosed pointUniverse candidate →
      closure ⊆ candidate

/-- Closed finite target emitted as an immutable proposal element. -/
def IntrinsicDescriptorClosureStatement : Prop :=
  ∀ (pointUniverse : PointUniverse)
    (seed : Finset ElementId),
      seed ⊆
        (pointUniverse.points.map
          MathematicalPoint.pointId).toFinset →
      ∃ closure,
        LeastDescriptorRelationClosure
          pointUniverse seed closure

/-- Immutable proposal-only element for the finite closure target. -/
def intrinsicDescriptorClosureOpenElement :
    Discovery.OpenConjectureElement
      IntrinsicDescriptorClosureStatement where
  elementId := {
    id := {
      value := "open:concept:intrinsic-descriptor-closure"
    }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Intrinsic descriptor and relation closure"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Concept.IntrinsicDescriptorClosureStatement"
  leanDeclarationName_nonempty := by
    decide

end Mathematics.Concept
