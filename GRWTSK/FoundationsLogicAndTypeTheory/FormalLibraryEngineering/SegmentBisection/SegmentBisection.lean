import Mathematics.Geometry.Construction
import Mathematics.Geometry.CorpusElement

/-!
# Exact consequence of a segment-bisection constructor

Historical coordinate: Book I, proposition 10.  Betweenness and congruence are
both retained in the conclusion instead of being collapsed into “midpoint.”
-/

namespace Mathematics.Geometry.ConstructionConsequences

open Mathematics.Discovery

def SegmentBisectionExactStatement : Prop :=
  ∀ (Point : Type)
    (order : OrderSignature Point)
    (congruence : CongruenceSignature Point)
    (constructor : SegmentBisectionConstructor Point order congruence)
    (segment : Segment Point),
      order.between
          segment.start
          (constructor.midpoint segment)
          segment.finish ∧
        congruence.segmentCongruent
          ⟨segment.start, constructor.midpoint segment⟩
          ⟨constructor.midpoint segment, segment.finish⟩

def segmentBisectionExactOpenElement :
    OpenConjectureElement SegmentBisectionExactStatement where
  elementId := {
    id := { value := "open:geometry:construction:segment-bisection-exact" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "An exact bisection constructor returns an interior congruent split"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.ConstructionConsequences.SegmentBisectionExactStatement"
  leanDeclarationName_nonempty := by
    decide

def bisectionOrderDependency :
    DependencyEdge segmentBisectionExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:bisection:order"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .order orderAssumptionId
  role := .statementVocabulary

def bisectionCongruenceDependency :
    DependencyEdge segmentBisectionExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:bisection:congruence"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .congruence congruenceAssumptionId
  role := .statementVocabulary

def bisectionConstructionDependency :
    DependencyEdge segmentBisectionExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:bisection:certificate"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .construction constructionAssumptionId
  role := .constructionCertificate

def segmentBisectionExactSeed :
    EuclideanSeed SegmentBisectionExactStatement where
  proposal := segmentBisectionExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      10
      (by decide)
      "Book I, proposition 10"
      "Conditional exactness consequence; construction existence is not claimed."
  ]
  dependencies := [
    bisectionOrderDependency,
    bisectionCongruenceDependency,
    bisectionConstructionDependency
  ]

theorem segmentBisectionExact :
    SegmentBisectionExactStatement := by
  intro Point order congruence constructor segment
  exact
    ⟨constructor.midpointBetween segment,
      constructor.halvesCongruent segment⟩

def segmentBisectionExactTheoremElement :
    LeanTheoremElement segmentBisectionExactOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:construction:segment-bisection-exact" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := segmentBisectionExactOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := segmentBisectionExact

def segmentBisectionExactCorpusItem :
    KernelProvedEuclideanItem segmentBisectionExactSeed where
  theoremElement := segmentBisectionExactTheoremElement

end Mathematics.Geometry.ConstructionConsequences
