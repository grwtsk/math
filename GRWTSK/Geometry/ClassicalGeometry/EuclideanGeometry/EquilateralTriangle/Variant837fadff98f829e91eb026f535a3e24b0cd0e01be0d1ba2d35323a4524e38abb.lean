import Mathematics.Geometry.Construction
import Mathematics.Geometry.CorpusElement

/-!
# Exact consequence of an equilateral-triangle constructor

Historical coordinate: Book I, proposition 1.  The theorem consumes an explicit
constructor certificate and proves only its fixed equilateral consequence.
-/

namespace Mathematics.Geometry.ConstructionConsequences

open Mathematics.Discovery

def EquilateralTriangleExactStatement : Prop :=
  ∀ (Point : Type)
    (congruence : CongruenceSignature Point)
    (constructor : EquilateralTriangleConstructor Point congruence)
    (base : Segment Point),
      IsEquilateral congruence {
        first := base.start
        second := base.finish
        third := constructor.apex base
      }

def equilateralTriangleExactOpenElement :
    OpenConjectureElement EquilateralTriangleExactStatement where
  elementId := {
    id := { value := "open:geometry:construction:equilateral-triangle-exact" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "An exact equilateral constructor yields three congruent sides"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.ConstructionConsequences.EquilateralTriangleExactStatement"
  leanDeclarationName_nonempty := by
    decide

def equilateralCongruenceDependency :
    DependencyEdge equilateralTriangleExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:equilateral:congruence"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .congruence congruenceAssumptionId
  role := .statementVocabulary

def equilateralConstructionDependency :
    DependencyEdge equilateralTriangleExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:equilateral:certificate"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .construction constructionAssumptionId
  role := .constructionCertificate

def equilateralTriangleExactSeed :
    EuclideanSeed EquilateralTriangleExactStatement where
  proposal := equilateralTriangleExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      1
      (by decide)
      "Book I, proposition 1"
      "Conditional exactness consequence; compass intersection existence is not claimed."
  ]
  dependencies := [
    equilateralCongruenceDependency,
    equilateralConstructionDependency
  ]

theorem equilateralTriangleExact :
    EquilateralTriangleExactStatement := by
  intro Point congruence constructor base
  constructor
  · exact constructor.firstSideCongruent base
  · exact constructor.secondSideCongruent base

def equilateralTriangleExactTheoremElement :
    LeanTheoremElement equilateralTriangleExactOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:construction:equilateral-triangle-exact" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := equilateralTriangleExactOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := equilateralTriangleExact

def equilateralTriangleExactCorpusItem :
    KernelProvedEuclideanItem equilateralTriangleExactSeed where
  theoremElement := equilateralTriangleExactTheoremElement

end Mathematics.Geometry.ConstructionConsequences
