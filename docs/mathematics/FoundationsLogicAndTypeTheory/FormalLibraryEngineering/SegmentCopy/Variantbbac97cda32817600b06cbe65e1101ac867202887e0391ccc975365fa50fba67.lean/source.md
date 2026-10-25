# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SegmentCopy.Variantbbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0a67b45327e60dbda4bab64f885bc2c7996aeab` · SHA-256 `bbac97cda32817600b06cbe65e1101ac867202887e0391ccc975365fa50fba67`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Geometry.Construction
import Mathematics.Geometry.CorpusElement

/-!
# Exact consequence of a segment-copy constructor

Historical coordinate: Book I, proposition 2.  This theorem checks the exact
output contract; it does not manufacture or assume existence of a constructor.
-/

namespace Mathematics.Geometry.ConstructionConsequences

open Mathematics.Discovery

def SegmentCopyExactStatement : Prop :=
  ∀ (Point : Type)
    (congruence : CongruenceSignature Point)
    (constructor : SegmentCopyConstructor Point congruence)
    (origin : Point)
    (model : Segment Point),
      congruence.segmentCongruent
        ⟨origin, constructor.endpoint origin model⟩
        model

def segmentCopyExactOpenElement :
    OpenConjectureElement SegmentCopyExactStatement where
  elementId := {
    id := { value := "open:geometry:construction:segment-copy-exact" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "An exact segment-copy constructor meets its congruence contract"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.ConstructionConsequences.SegmentCopyExactStatement"
  leanDeclarationName_nonempty := by
    decide

def segmentCopyCongruenceDependency :
    DependencyEdge segmentCopyExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:segment-copy:congruence"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .congruence congruenceAssumptionId
  role := .statementVocabulary

def segmentCopyConstructionDependency :
    DependencyEdge segmentCopyExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:segment-copy:certificate"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .construction constructionAssumptionId
  role := .constructionCertificate

def segmentCopyExactSeed :
    EuclideanSeed SegmentCopyExactStatement where
  proposal := segmentCopyExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      2
      (by decide)
      "Book I, proposition 2"
      "Conditional exactness consequence; constructor existence is not claimed."
  ]
  dependencies := [
    segmentCopyCongruenceDependency,
    segmentCopyConstructionDependency
  ]

theorem segmentCopyExact :
    SegmentCopyExactStatement := by
  intro Point congruence constructor origin model
  exact constructor.copiedSegmentCongruent origin model

def segmentCopyExactTheoremElement :
    LeanTheoremElement segmentCopyExactOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:construction:segment-copy-exact" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := segmentCopyExactOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := segmentCopyExact

def segmentCopyExactCorpusItem :
    KernelProvedEuclideanItem segmentCopyExactSeed where
  theoremElement := segmentCopyExactTheoremElement

end Mathematics.Geometry.ConstructionConsequences
```
