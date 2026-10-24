# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DescriptorClosure.Variant8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89b4b9ba67ac1155e9e5172a3435bd06eb3f34b4` · SHA-256 `8b6a3ab960d83530b72ff26fb75014b6fc28fd4a79c89e68db4531bc45f8e129`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
